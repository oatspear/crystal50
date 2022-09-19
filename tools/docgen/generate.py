# SPDX-License-Identifier: MIT
# Copyright © 2022 Santusk Oatspear

###############################################################################
# Imports
###############################################################################

from typing import Dict, List, Optional, Set, Tuple, Union

from collections import defaultdict
from dataclasses import dataclass, field
from enum import Enum
import logging
from pathlib import Path
import sys

###############################################################################
# Constants
###############################################################################

DATA_ENTRIES = ('db', 'dw', 'dba', 'dwb', 'li', 'dn')

THIS_PATH = Path(__file__).resolve(strict=True)
PROJECT_ROOT = THIS_PATH.parent.parent.parent

POKEMON_CONSTANTS = PROJECT_ROOT / 'constants' / 'pokemon_constants.asm'
POKEMON_DATA_DIR = PROJECT_ROOT / 'data' / 'pokemon'
BASE_STATS_DIR = POKEMON_DATA_DIR / 'base_stats'
EGG_MOVE_POINTERS = POKEMON_DATA_DIR / 'egg_move_pointers.asm'
EGG_MOVES = POKEMON_DATA_DIR / 'egg_moves.asm'
EVOS_ATTACKS_POINTERS = POKEMON_DATA_DIR / 'evos_attacks_pointers.asm'
EVOS_ATTACKS = POKEMON_DATA_DIR / 'evos_attacks.asm'
POKEMON_NAMES = POKEMON_DATA_DIR / 'names.asm'

ITEM_CONSTANTS = PROJECT_ROOT / 'constants' / 'item_constants.asm'
ITEM_DATA_DIR = PROJECT_ROOT / 'data' / 'items'
ITEM_NAMES = ITEM_DATA_DIR / 'names.asm'

MOVE_CONSTANTS = PROJECT_ROOT / 'constants' / 'move_constants.asm'
MOVE_DATA_DIR = PROJECT_ROOT / 'data' / 'moves'
MOVE_NAMES = MOVE_DATA_DIR / 'names.asm'

WILD_DATA_DIR = PROJECT_ROOT / 'data' / 'wild'
WILD_FISH = WILD_DATA_DIR / 'fish.asm'
WILD_JOHTO_GRASS = WILD_DATA_DIR / 'johto_grass.asm'
WILD_JOHTO_WATER = WILD_DATA_DIR / 'johto_water.asm'
WILD_KANTO_GRASS = WILD_DATA_DIR / 'kanto_grass.asm'
WILD_KANTO_WATER = WILD_DATA_DIR / 'kanto_water.asm'
TREE_MAPS = WILD_DATA_DIR / 'treemon_maps.asm'
WILD_TREES = WILD_DATA_DIR / 'treemons.asm'
WILD_TREES_SLEEP = WILD_DATA_DIR / 'treemons_asleep.asm'

PAGE_DEX_POKEMON = THIS_PATH.parent / 'dex-pokemon-page.html'
POKEDEX_PAGE_DIR = PROJECT_ROOT / 'docs' / 'dex' / 'pokemon'

logger = logging.getLogger(__name__)

###############################################################################
# Constants
###############################################################################


class Daytime(Enum):
    MORNING = 0
    DAY = 1
    NIGHT = 2


class TreeType(Enum):
    COMMON = 0
    RARE = 1


class PokemonType(Enum):
    NORMAL = 'NORMAL'
    FIGHTING = 'FIGHTING'
    FLYING = 'FLYING'
    POISON = 'POISON'
    GROUND = 'GROUND'
    ROCK = 'ROCK'
    BIRD = 'BIRD'
    BUG = 'BUG'
    GHOST = 'GHOST'
    STEEL = 'STEEL'
    CURSE = 'CURSE_TYPE'
    FIRE = 'FIRE'
    WATER = 'WATER'
    GRASS = 'GRASS'
    ELECTRIC = 'ELECTRIC'
    PSYCHIC = 'PSYCHIC_TYPE'
    ICE = 'ICE'
    DRAGON = 'DRAGON'
    DARK = 'DARK'
    FAIRY = 'FAIRY'


###############################################################################
# HTML Utilities
###############################################################################


def get_species_link(number: int, inner_text: str = '{p.name}') -> str:
    pokemon = pokemon_index[number]
    inner_text = inner_text.format(p=pokemon)
    return f'<a href="./{number:03}.html">{inner_text}</a>'


def get_item_link(number: int, inner_text: str = '{i.name}') -> str:
    item = item_index[number]
    inner_text = inner_text.format(i=item)
    # return f'<a href="./{number:03}.html">{inner_text}</a>'
    return f'<em>{inner_text}</em>'


def get_move_link(number: int, inner_text: str = '{m.name}') -> str:
    move = move_index[number]
    inner_text = inner_text.format(m=move)
    # return f'<a href="./{number:03}.html">{inner_text}</a>'
    return f'<em>{inner_text}</em>'


###############################################################################
# Parsing Utilities
###############################################################################


def read_nonempty_lines(path: Path, discard_comments: bool = True) -> List[str]:
    text = path.read_text(encoding='utf-8')
    lines = []
    for line in text.splitlines():
        stripped = line.strip()
        if stripped:
            if discard_comments:
                stripped = discard_line_comment(stripped)
                if not stripped:
                    continue
            lines.append(stripped)
    if lines:
        lines[-1] = lines[-1].rstrip('\\')
    for i in range(len(lines) - 2, -1, -1):
        line = lines[i]
        if line.endswith('\\'):
            lines[i] = line.rstrip('\\') + lines[i + 1]
            del lines[i + 1]
    return lines


def discard_line_comment(line: str) -> str:
    # split at the comment token
    line = line.split(';', maxsplit=1)[0]
    # discard leftover white space
    return line.rstrip()


def parse_data_parts(text: str) -> List[str]:
    text = text.strip()
    parts = []
    k = 0
    i = 0
    while i < len(text):
        if text[i] == '"':
            # safe to split up to this point
            parts.extend(s for s in text[k:i].split(','))
            # consume the string
            for j in range(i + 1, len(text)):
                if text[j] == '"':
                    k = j + 1
                    parts.append(text[i:k])
                    break
            else:
                raise ValueError(f'malformed text: {text!r}')
            # consume up until the comma
            for j in range(k, len(text)):
                if text[j].isspace():
                    continue
                if text[j] != ',':
                    raise ValueError(f'malformed text: {text!r}')
                break
            # consume remaining white space
            i = j
            k = j + 1
        i += 1
    # parse the leftovers
    if k < len(text):
        assert not text[k].isspace(), f'k = {k}'
        parts.extend(s for s in text[k:].split(','))
    # remove white space
    return [s.strip() for s in parts if s.strip()]


ParseData = Union[List[List[str]], List[str]]


@dataclass
class AsmDataParser:
    lines: List[str]
    const_value: int = 0
    _i: int = 0

    @classmethod
    def from_path(cls, path: Path) -> 'AsmDataParser':
        lines = read_nonempty_lines(path, discard_comments=True)
        return cls(lines)

    def reset(self):
        self._i = 0

    def skip_line(self):
        if self._i < len(self.lines) - 1:
            self._i += 1

    def rewind_line(self):
        if self._i > 0:
            self._i -= 1

    def skip_to_table(self, name: str, skip_table_width: bool = True):
        n = len(self.lines)
        while self._i < n:
            line = self.lines[self._i]
            self._i += 1
            if line.startswith(name):
                if line[len(name)] == ':':
                    if skip_table_width:
                        line = self.lines[self._i]
                        if line.startswith(('table_width', 'list_start')):
                            self._i += 1
                    return
        raise KeyError(name)

    def skip_to_constant(self, name: str):
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=2)
            if len(parts) >= 3:
                if parts[0] == name:
                    if parts[1].startswith('EQ'):
                        return
            self._i += 1
        raise KeyError(name)

    def rewind_to_const_def(self):
        while self._i >= 0:
            parts = self.lines[self._i].split(maxsplit=1)
            if parts[0] == 'const_def':
                return
            self._i -= 1
        else:
            self._i = 0
            raise RuntimeError('did not find const_def')

    def read_const_defs(self, allow_eq: bool = True) -> Dict[str, int]:
        parts = self.lines[self._i].split(maxsplit=1)
        assert len(parts) > 0, f'empty line: {self._i}'
        if parts[0] != 'const_def':
            raise RuntimeError(f'parser not in position (was at {self._i})')
        self._i += 1
        self.const_value = 0 if len(parts) == 1 else int(parts[1])
        constants = {}
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            self._i += 1
            if parts[0] == 'const_skip':
                self.const_value += 1
            elif parts[0] == 'const':
                if len(parts) < 2:
                    raise ValueError(f'malformed const at {self._i - 1}')
                name = parts[1]
                constants[name] = self.const_value
                self.const_value += 1
            elif len(parts) > 1 and parts[1].startswith('EQU'):
                name = parts[0]
                value = parts[1].split(maxsplit=1)[1]
                if 'const_value' not in value:
                    break
                # no math here; can do with eval if necessary
                continue
            else:
                break
        return constants

    def read_while_macro(self, macro: str, flatten: bool = False) -> ParseData:
        data = []
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            if parts[0] != macro:
                break
            self._i += 1
            # macro can have zero args
            if len(parts) == 2:
                entry = parse_data_parts(parts[1])
                data.append(entry)
        if flatten:
            return [datum for row in data for datum in row]
        return data

    def read_while_data(self, flatten: bool = False) -> ParseData:
        data = []
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            if parts[0] not in DATA_ENTRIES:
                break
            assert len(parts) == 2, self.lines[self._i]
            self._i += 1
            entry = parse_data_parts(parts[1])
            data.append(entry)
        if flatten:
            return [datum for row in data for datum in row]
        return data

    def read_data_until_assert(self, flatten: bool = False) -> ParseData:
        data = self.read_while_data(flatten=flatten)
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            self._i += 1
            if parts[0] == 'assert_table_length':
                break
            if parts[0] == 'assert_list_length':
                break
            data.extend(self.read_while_data(flatten=flatten))
        return data


###############################################################################
# Parsing Pokémon Data
###############################################################################


@dataclass(frozen=True)
class DaytimeEvolutionData:
    morning: Set[int] = field(default_factory=set)
    day: Set[int] = field(default_factory=set)
    night: Set[int] = field(default_factory=set)

    def __len__(self) -> int:
        return len(self.morning) + len(self.day) + len(self.night)


@dataclass(frozen=True, order=True)
class LevelUpEvolutionEntry:
    level: int
    species: int


@dataclass(frozen=True, order=True)
class ItemEvolutionEntry:
    item: int
    species: int


@dataclass(frozen=True, order=True)
class HoldItemEvolutionEntry:
    item: int
    level: int
    species: int


@dataclass(frozen=True)
class EvolutionData:
    level: Set[LevelUpEvolutionEntry] = field(default_factory=set)
    trade: Set[ItemEvolutionEntry] = field(default_factory=set)
    happiness: DaytimeEvolutionData = field(default_factory=DaytimeEvolutionData)
    item: Set[ItemEvolutionEntry] = field(default_factory=set)
    hold: Set[HoldItemEvolutionEntry] = field(default_factory=set)

    def add_levelup_evolution(self, level: int, species: int):
        self.level.add(LevelUpEvolutionEntry(level, species))

    def add_trade_evolution(self, item: int, species: int):
        self.trade.add(ItemEvolutionEntry(item, species))

    def add_happiness_evolution(self, time: Daytime, species: int):
        if time == Daytime.MORNING:
            self.happiness.morning.add(species)
        elif time == Daytime.DAY:
            self.happiness.day.add(species)
        elif time == Daytime.NIGHT:
            self.happiness.night.add(species)

    def add_item_evolution(self, item: int, species: int):
        self.item.add(ItemEvolutionEntry(item, species))

    def add_hold_evolution(self, item: int, level: int, species: int):
        self.hold.add(HoldItemEvolutionEntry(item, level, species))

    def __len__(self) -> int:
        return (
            len(self.level)
            + len(self.trade)
            + len(self.happiness)
            + len(self.item)
            + len(self.hold)
        )


@dataclass(frozen=True, order=True)
class LevelUpLearnsetEntry:
    level: int
    move: int


@dataclass(frozen=True, order=True)
class TMHMLearnsetEntry:
    number: int
    move: int


@dataclass(frozen=True)
class Learnset:
    level: Set[LevelUpLearnsetEntry] = field(default_factory=set)
    tm: Set[TMHMLearnsetEntry] = field(default_factory=set)
    hm: Set[TMHMLearnsetEntry] = field(default_factory=set)
    tutor: Set[int] = field(default_factory=set)
    egg: Set[int] = field(default_factory=set)

    def add_levelup_move(self, level: int, move: int):
        self.level.add(LevelUpLearnsetEntry(level, move))

    def add_tm_move(self, tm: int, move: int):
        self.tm.add(TMHMLearnsetEntry(tm, move))

    def add_hm_move(self, hm: int, move: int):
        self.hm.add(TMHMLearnsetEntry(hm, move))

    def __len__(self) -> int:
        return (
            len(self.level)
            + len(self.tm)
            + len(self.hm)
            + len(self.tutor)
            + len(self.egg)
        )


def parse_evolutions_and_levelup_moves():
    logger.info(f'parsing evolution/move pointers from {EVOS_ATTACKS_POINTERS}')
    parser = AsmDataParser.from_path(EVOS_ATTACKS_POINTERS)
    parser.skip_to_table('EvosAttacksPointers')
    pointers: List[str] = parser.read_data_until_assert(flatten=True)

    logger.info(f'parsing evolutions/moves from {EVOS_ATTACKS}')
    parser = AsmDataParser.from_path(EVOS_ATTACKS)
    for k in range(len(pointers)):
        pointer = pointers[k]
        pokemon = pokemon_index[k + 1]
        parser.reset()
        parser.skip_to_table(pointer)
        entries = parser.read_while_data()

        # evolutions come first
        for i in range(len(entries)):
            entry = entries[i]
            if not entry:
                raise ValueError(f'malformed data at {pointer}:{i}')
            # zero-terminated
            method = entry[0]
            if method == '0':
                break  # no more evolutions
            if method == 'EVOLVE_LEVEL':
                if len(entry) < 3:
                    raise ValueError(f'malformed data at {pointer}:{i}')
                level = int(entry[1])
                species = constant_index[entry[2]]
                pokemon.add_levelup_evolution(level, species)
                pokemon_index[species].pre_evolutions.add(pokemon.number)
            elif method == 'EVOLVE_TRADE':
                if len(entry) < 3:
                    raise ValueError(f'malformed data at {pointer}:{i}')
                item = 0 if entry[1] == '-1' else constant_index[entry[1]]
                species = constant_index[entry[2]]
                pokemon.add_trade_evolution(item, species)
                pokemon_index[species].pre_evolutions.add(pokemon.number)
            elif method == 'EVOLVE_HAPPINESS':
                if len(entry) < 3:
                    raise ValueError(f'malformed data at {pointer}:{i}')
                species = constant_index[entry[2]]
                if entry[1] == 'TR_MORN':
                    pokemon.add_happiness_evolution(Daytime.MORNING, species)
                elif entry[1] == 'TR_DAY':
                    pokemon.add_happiness_evolution(Daytime.DAY, species)
                elif entry[1] == 'TR_MORNDAY':
                    pokemon.add_happiness_evolution(Daytime.MORNING, species)
                    pokemon.add_happiness_evolution(Daytime.DAY, species)
                elif entry[1] == 'TR_NITE':
                    pokemon.add_happiness_evolution(Daytime.NIGHT, species)
                else:
                    pokemon.add_happiness_evolution(Daytime.MORNING, species)
                    pokemon.add_happiness_evolution(Daytime.DAY, species)
                    pokemon.add_happiness_evolution(Daytime.NIGHT, species)
                pokemon_index[species].pre_evolutions.add(pokemon.number)
            elif method == 'EVOLVE_ITEM':
                if len(entry) < 3:
                    raise ValueError(f'malformed data at {pointer}:{i}')
                item = constant_index[entry[1]]
                species = constant_index[entry[2]]
                pokemon.add_item_evolution(item, species)
                pokemon_index[species].pre_evolutions.add(pokemon.number)
            elif method == 'EVOLVE_HOLD':
                if len(entry) < 4:
                    raise ValueError(f'malformed data at {pointer}:{i}')
                item = constant_index[entry[1]]
                level = int(entry[2])
                species = constant_index[entry[3]]
                pokemon.add_hold_evolution(item, level, species)
                pokemon_index[species].pre_evolutions.add(pokemon.number)
            else:
                raise ValueError(f'unknown evolution method: {method} ({pointer}:{i})')
        else:
            raise ValueError(f'missing terminator at {pointer}')

        # level up moves come next
        # skip evolution terminator
        for i in range(i + 1, len(entries)):
            entry = entries[i]
            if not entry:
                raise ValueError(f'malformed data at {pointer}:{i}')
            if entry[0] == 'LEVEL_EVO':
                level = -1
            else:
                try:
                    level = int(entry[0])
                except ValueError:
                    raise ValueError(f'malformed data at {pointer}:{i}')
            # zero-terminated
            if level == 0:
                break  # no more moves
            if len(entry) < 2:
                raise ValueError(f'malformed data at {pointer}:{i}')
            move = constant_index[entry[1]]
            pokemon.add_levelup_move(level, move)
        # endfor
    # endfor


def parse_egg_moves():
    logger.info(f'parsing egg move pointers from {EGG_MOVE_POINTERS}')
    parser = AsmDataParser.from_path(EGG_MOVE_POINTERS)
    parser.skip_to_table('EggMovePointers')
    pointers: List[str] = parser.read_data_until_assert(flatten=True)

    logger.info(f'parsing egg moves from {EGG_MOVES}')
    parser = AsmDataParser.from_path(EGG_MOVES)
    for i in range(len(pointers)):
        pointer = pointers[i]
        pokemon = pokemon_index[i + 1]
        parser.reset()
        parser.skip_to_table(pointer)
        entries = parser.read_while_data()
        for j in range(len(entries)):
            entry = entries[j]
            if not entry:
                raise ValueError(f'malformed data at {pointer}:{j}')
            if entry[0] == '-1':
                break  # no more moves
            move = constant_index[entry[0]]
            pokemon.add_egg_move(move)
        # endfor
    # endfor


@dataclass
class SpeciesEncounter:
    min_level: int
    max_level: int
    probability: float


@dataclass
class DaytimeEncounterData:
    morning: Optional[SpeciesEncounter] = None
    day: Optional[SpeciesEncounter] = None
    night: Optional[SpeciesEncounter] = None


@dataclass
class FishingEncounterData:
    old: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    good: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    super: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)


@dataclass
class TreeEncounterData:
    common: Optional[SpeciesEncounter] = None
    rare: Optional[SpeciesEncounter] = None


RockEncounterData = TreeEncounterData


@dataclass
class Habitat:
    grass: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    water: Optional[SpeciesEncounter] = None
    fishing: FishingEncounterData = field(default_factory=FishingEncounterData)
    trees: TreeEncounterData = field(default_factory=TreeEncounterData)
    rocks: RockEncounterData = field(default_factory=RockEncounterData)


def habitat_map() -> Dict[int, Habitat]:
    return defaultdict(Habitat)


@dataclass
class PokemonData:
    number: int
    name: str
    energy: int = 0
    type1: PokemonType = PokemonType.NORMAL
    type2: PokemonType = PokemonType.NORMAL
    pre_evolutions: Set[int] = field(default_factory=set)
    evolutions: EvolutionData = field(default_factory=EvolutionData)
    moves: Learnset = field(default_factory=Learnset)
    # mapping from map id to Habitat
    areas: Dict[int, Habitat] = field(default_factory=habitat_map)

    def add_levelup_evolution(self, level: int, species: int):
        self.evolutions.add_levelup_evolution(level, species)

    def add_trade_evolution(self, item: int, species: int):
        self.evolutions.add_trade_evolution(item, species)

    def add_happiness_evolution(self, time: Daytime, species: int):
        self.evolutions.add_happiness_evolution(time, species)

    def add_item_evolution(self, item: int, species: int):
        self.evolutions.add_item_evolution(item, species)

    def add_hold_evolution(self, item: int, level: int, species: int):
        self.evolutions.add_hold_evolution(item, level, species)

    def add_levelup_move(self, level: int, move: int):
        self.moves.add_levelup_move(level, move)

    def add_tm_move(self, tm: int, move: int):
        self.moves.add_tm_move(tm, move)

    def add_hm_move(self, hm: int, move: int):
        self.moves.add_hm_move(hm, move)

    def add_tutor_move(self, move: int):
        self.moves.tutor.add(move)

    def add_egg_move(self, move: int):
        self.moves.egg.add(move)

    def print_dex_page(self) -> str:
        html = PAGE_DEX_POKEMON.read_text(encoding='utf-8')
        return html.format(
            number=self.number,
            name=self.name,
            html_preevolution=self._html_pre_evolutions(),
            html_evolution=self._html_evolutions(),
            html_wild=self._html_wild(),
            html_learnset=self._html_learnset(),
        )

    def _html_pre_evolutions(self) -> str:
        if len(self.pre_evolutions) == 0:
            return ''
        entries = []
        for species in sorted(self.pre_evolutions):
            a = get_species_link(species)
            entries.append(a)
        if len(entries) > 1:
            html = ', '.join(entries[0:-1])
            html = f'{html} or {entries[-1]}'
        else:
            html = entries[0]
        return f'<p>Evolves from {html}.</p>'

    def _html_evolutions(self) -> str:
        if len(self.evolutions) == 0:
            return '<p>This Pokémon does not evolve.</p>'
        entries = []
        for e in sorted(self.evolutions.level):
            a = get_species_link(e.species)
            entries.append(f'<li><strong>Level {e.level}</strong> - {a}</li>')
        for e in sorted(self.evolutions.trade):
            a = get_species_link(e.species)
            item = '' if e.item <= 0 else f' (holding {get_item_link(e.item)})'
            entries.append(f'<li><strong>Trading{item}</strong> - {a}</li>')
        for species in sorted(self.evolutions.happiness.morning):
            a = get_species_link(species)
            entries.append(f'<li><strong>Happiness</strong> (morning) - {a}</li>')
        for species in sorted(self.evolutions.happiness.day):
            a = get_species_link(species)
            entries.append(f'<li><strong>Happiness</strong> (day) - {a}</li>')
        for species in sorted(self.evolutions.happiness.night):
            a = get_species_link(species)
            entries.append(f'<li><strong>Happiness</strong> (night) - {a}</li>')
        for e in sorted(self.evolutions.item):
            a = get_species_link(e.species)
            item = get_item_link(e.item)
            entries.append(f'<li><strong>Using</strong> {item} - {a}</li>')
        for e in sorted(self.evolutions.hold):
            a = get_species_link(e.species)
            item = get_item_link(e.item)
            level = f'at <strong>Level {e.level}</strong>'
            entries.append(f'<li><strong>Holding</strong> {item} {level} - {a}</li>')
        html = '\n'.join(entries)
        return f'<ul>{html}</ul>'

    def _html_wild(self) -> str:
        html = '<p>This Pokémon is not available in the wild.</p>'
        return html

    def _html_learnset(self) -> str:
        if len(self.moves) == 0:
            return '<p>This Pokémon does not learn any moves.</p>'
        sections = []
        if len(self.moves.level) > 0:
            entries = []
            for m in sorted(self.moves.level):
                a = get_move_link(m.move)
                level = 'Evo.' if m.level < 0 else m.level
                entries.append(f'<li><strong>Level {level}</strong> - {a}</li>')
            html = '\n'.join(entries)
            html = f'<ul>{html}</ul>'
        else:
            html = '<p>No level-up moves.</p>'
        sections.append('<h5>Level-up Moves</h5>')
        sections.append(html)

        if len(self.moves.tm) + len(self.moves.hm) > 0:
            entries = []
            for m in sorted(self.moves.tm):
                a = get_move_link(m.move)
                entries.append(f'<li><strong>TM {m.number:02}</strong> - {a}</li>')
            for m in sorted(self.moves.hm):
                a = get_move_link(m.move)
                entries.append(f'<li><strong>HM {m.number:02}</strong> - {a}</li>')
            html = '\n'.join(entries)
            html = f'<ul>{html}</ul>'
        else:
            html = '<p>No TM or HM moves.</p>'
        sections.append('<h5>TM and HM Moves</h5>')
        sections.append(html)

        if len(self.moves.tutor) > 0:
            entries = []
            for move in sorted(self.moves.tutor):
                a = get_move_link(move)
                entries.append(f'<li>{a}</li>')
            html = '\n'.join(entries)
            html = f'<ul>{html}</ul>'
        else:
            html = '<p>No tutor moves.</p>'
        sections.append('<h5>Tutor Moves</h5>')
        sections.append(html)

        if len(self.moves.egg) > 0:
            entries = []
            for move in sorted(self.moves.egg):
                a = get_move_link(move)
                entries.append(f'<li>{a}</li>')
            html = '\n'.join(entries)
            html = f'<ul>{html}</ul>'
        else:
            html = '<p>No egg moves.</p>'
        sections.append('<h5>Egg Moves</h5>')
        sections.append(html)
        return '\n'.join(sections)


def parse_pokemon_constants():
    logger.info(f'parsing pokemon constants from {POKEMON_CONSTANTS}')
    parser = AsmDataParser.from_path(POKEMON_CONSTANTS)
    parser.skip_to_constant('NUM_POKEMON')
    parser.rewind_to_const_def()
    constants = parser.read_const_defs()
    constant_index.update(constants)


def parse_pokemon_names() -> List[str]:
    logger.info(f'parsing pokemon names from {POKEMON_NAMES}')
    parser = AsmDataParser.from_path(POKEMON_NAMES)
    parser.skip_to_table('PokemonNames')
    names = parser.read_data_until_assert()  # List[List[str]]
    for i in range(len(names)):
        assert len(names[i]) == 1, str(names[i])
        name = names[i][0].strip('"@')
        names[i] = name.title()
    return names


def parse_pokemon_base_data():
    logger.info(f'parsing pokemon base data from {BASE_STATS_DIR}')
    for path in BASE_STATS_DIR.iterdir():
        if path.suffix != '.asm':
            continue

        logger.info(f'parsing base data from {path}')
        parser = AsmDataParser.from_path(path)
        # read until graphics
        data: List[str] = parser.read_while_data(flatten=True)
        assert len(data) >= 17, f'insufficient data: {data}'
        name = data[0]
        species = constant_index[name]
        pokemon = pokemon_index[species]
        # skip 6 base stats
        pokemon.type1 = PokemonType(data[7])
        pokemon.type2 = PokemonType(data[8])

        parser.skip_line()  # skip graphics
        data = parser.read_while_macro('owmoves', flatten=True)
        if data:
            pass  # TODO
        else:
            parser.skip_line()
            parser.skip_line()

        # PP, growth rate, egg groups
        data = parser.read_while_data(flatten=True)
        pokemon.energy = int(data[0])

        # TM/HM learnset
        data = parser.read_while_macro('tmhm', flatten=True)
        for name in data:
            move = constant_index[name]
            if move in tm_move_index:
                pokemon.add_tm_move(tm_move_index[move], move)
            elif move in hm_move_index:
                pokemon.add_hm_move(hm_move_index[move], move)
            else:
                pokemon.add_tutor_move(move)
    logger.info('done parsing pokemon base data')


def parse_pokemon_data() -> Dict[int, PokemonData]:
    logger.info('parsing pokemon data')
    data = {}
    names = parse_pokemon_names()
    for i in range(len(names)):
        pokemon = PokemonData(i + 1, names[i])
        data[pokemon.number] = pokemon
    logger.info('done parsing pokemon data')
    return data


###############################################################################
# Parsing Item Data
###############################################################################


@dataclass
class ItemData:
    number: int
    name: str


def parse_item_constants():
    logger.info(f'parsing item constants from {ITEM_CONSTANTS}')
    k = 0

    parser = AsmDataParser.from_path(ITEM_CONSTANTS)
    parser.skip_to_constant('NUM_ITEMS')
    parser.rewind_to_const_def()
    parser.skip_line()
    items: List[str] = parser.read_while_macro('const', flatten=True)
    for name in items:
        constant_index[name] = k
        k += 1

    parser.skip_to_constant('TM01')
    parser.skip_line()
    tms: List[str] = parser.read_while_macro('add_tm', flatten=True)
    for i in range(len(tms)):
        tm = f'TM_{tms[i]}'
        constant_index[tm] = k
        k += 1
        move = constant_index[tms[i]]
        tm_move_index[move] = i + 1

    parser.skip_to_constant('HM01')
    parser.skip_line()
    hms: List[str] = parser.read_while_macro('add_hm', flatten=True)
    for i in range(len(hms)):
        hm = f'HM_{hms[i]}'
        constant_index[hm] = k
        k += 1
        move = constant_index[hms[i]]
        hm_move_index[move] = i + 1


def parse_item_names() -> Tuple[List[str], List[str], List[str]]:
    logger.info(f'parsing item names from {ITEM_NAMES}')
    parser = AsmDataParser.from_path(ITEM_NAMES)
    parser.skip_to_table('ItemNames')
    # normal items
    items: List[str] = parser.read_data_until_assert(flatten=True)
    for i in range(len(items)):
        items[i] = items[i].strip('"@').replace('#', 'Poké').title()
    # TMs
    tms: List[str] = parser.read_data_until_assert(flatten=True)
    for i in range(len(tms)):
        tms[i] = tms[i].strip('"@').replace('#', 'Poké').title()
    # HMs
    hms: List[str] = parser.read_data_until_assert(flatten=True)
    for i in range(len(hms)):
        hms[i] = hms[i].strip('"@').replace('#', 'Poké').title()
    return items, tms, hms


def parse_item_data() -> Dict[int, ItemData]:
    logger.info('parsing item data')
    data = {}
    items, tms, hms = parse_item_names()
    i = 1
    for name in items:
        data[i] = ItemData(i, name)
        i += 1
    for name in tms:
        data[i] = ItemData(i, name)
        i += 1
    for name in hms:
        data[i] = ItemData(i, name)
        i += 1
    logger.info('done parsing item data')
    return data


###############################################################################
# Parsing Move Data
###############################################################################


@dataclass
class MoveData:
    number: int
    name: str


def parse_move_constants():
    logger.info(f'parsing move constants from {MOVE_CONSTANTS}')
    parser = AsmDataParser.from_path(MOVE_CONSTANTS)
    parser.skip_to_constant('NUM_ATTACKS')
    parser.rewind_to_const_def()
    parser.skip_line()
    data: List[str] = parser.read_while_macro('const', flatten=True)
    for i in range(len(data)):
        name = data[i]
        constant_index[name] = i


def parse_move_names() -> Tuple[List[str]]:
    logger.info(f'parsing move names from {MOVE_NAMES}')
    parser = AsmDataParser.from_path(MOVE_NAMES)
    parser.skip_to_table('MoveNames')
    moves = parser.read_data_until_assert()  # List[List[str]]
    for i in range(len(moves)):
        assert len(moves[i]) == 1, str(moves[i])
        name = moves[i][0].strip('"@')
        moves[i] = name.title()
    return moves


def parse_move_data() -> Dict[int, MoveData]:
    logger.info('parsing move data')
    data = {}
    moves = parse_move_names()
    i = 1
    for name in moves:
        data[i] = MoveData(i, name)
        i += 1
    logger.info('done parsing move data')
    return data


###############################################################################
# Configuration
###############################################################################


def configure_logging():
    logger.setLevel(logging.DEBUG)
    # create console handler and set level to debug
    ch = logging.StreamHandler()
    ch.setLevel(logging.DEBUG)
    # create formatter
    formatter = logging.Formatter('[%(levelname)s] %(name)s (%(asctime)s): %(message)s')
    # add formatter to ch
    ch.setFormatter(formatter)
    # add ch to logger
    logger.addHandler(ch)


###############################################################################
# Entry Point
###############################################################################


constant_index: Dict[str, int] = {}
pokemon_index: Dict[int, PokemonData] = {}
item_index: Dict[int, ItemData] = {}
move_index: Dict[int, MoveData] = {}
tm_move_index: Dict[int, int] = {}
hm_move_index: Dict[int, int] = {}


def main():
    configure_logging()
    try:
        constant_index.clear()
        tm_move_index.clear()
        hm_move_index.clear()
        parse_pokemon_constants()
        parse_move_constants()
        parse_item_constants()

        global pokemon_index
        pokemon_index = parse_pokemon_data()
        global item_index
        item_index = parse_item_data()
        global move_index
        move_index = parse_move_data()

        parse_pokemon_base_data()
        parse_evolutions_and_levelup_moves()
        parse_egg_moves()

        for pokemon in pokemon_index.values():
            path = POKEDEX_PAGE_DIR / f'{pokemon.number:03}.html'
            logger.info(f'generating HTML page for {pokemon.name}')
            path.write_text(pokemon.print_dex_page(), encoding='utf-8')
    except KeyboardInterrupt:
        logger.info('Interrupted manually.')
    except Exception as e:
        logger.exception(f'Unexpected error: {e}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
