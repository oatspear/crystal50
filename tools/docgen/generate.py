# SPDX-License-Identifier: MIT
# Copyright © 2022 Santusk Oatspear

###############################################################################
# Imports
###############################################################################

from typing import Dict, List, Optional, Set, Tuple, Union

from collections import defaultdict
from dataclasses import dataclass, field
from enum import Enum, Flag, auto
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
POKEMON_DATA_CONSTANTS = PROJECT_ROOT / 'constants' / 'pokemon_data_constants.asm'
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
MOVE_DATA = MOVE_DATA_DIR / 'moves.asm'

MAP_CONSTANTS = PROJECT_ROOT / 'constants' / 'map_constants.asm'
MAP_DATA_CONSTANTS = PROJECT_ROOT / 'constants' / 'map_data_constants.asm'
MAP_DATA = PROJECT_ROOT / 'data' / 'maps' / 'maps.asm'

WILD_DATA_DIR = PROJECT_ROOT / 'data' / 'wild'
WILD_FISH = WILD_DATA_DIR / 'fish.asm'
WILD_JOHTO_GRASS = WILD_DATA_DIR / 'johto_grass.asm'
WILD_JOHTO_WATER = WILD_DATA_DIR / 'johto_water.asm'
WILD_KANTO_GRASS = WILD_DATA_DIR / 'kanto_grass.asm'
WILD_KANTO_WATER = WILD_DATA_DIR / 'kanto_water.asm'
TREE_MAPS = WILD_DATA_DIR / 'treemon_maps.asm'
WILD_TREES = WILD_DATA_DIR / 'treemons.asm'
WILD_TREES_SLEEP = WILD_DATA_DIR / 'treemons_asleep.asm'
WILD_PROBABILITIES = WILD_DATA_DIR / 'probabilities.asm'

PAGE_DEX_POKEMON = THIS_PATH.parent / 'dex-pokemon-page.html'
PAGE_DEX_POKEMON_BY_TYPE = THIS_PATH.parent / 'dex-pokemon-by-type.html'
PAGE_DEX_POKEMON_BY_FIELD_MOVE = THIS_PATH.parent / 'dex-pokemon-by-field-move.html'
POKEDEX_PAGE_DIR = PROJECT_ROOT / 'docs' / 'dex' / 'pokemon'

PAGE_DEX_MOVE_INDEX = THIS_PATH.parent / 'dex-move-index.html'
MOVEDEX_PAGE = PROJECT_ROOT / 'docs' / 'dex' / 'moves' / 'index.html'

PAGE_DEX_LOCATION_INDEX = THIS_PATH.parent / 'dex-location-index.html'
LOCATIONDEX_PAGE = PROJECT_ROOT / 'docs' / 'dex' / 'locations' / 'index.html'

logger = logging.getLogger(__name__)

###############################################################################
# Constants
###############################################################################


class Daytime(Flag):
    MORNING = auto()
    DAY = auto()
    NIGHT = auto()
    ANYTIME = MORNING | DAY | NIGHT


DAYTIME_CONSTANTS = {
    'TR_MORN': Daytime.MORNING,
    'TR_DAY': Daytime.DAY,
    'TR_NITE': Daytime.NIGHT,
    'TR_MORNDAY': Daytime.MORNING | Daytime.DAY,
    'TR_ANYTIME': Daytime.MORNING | Daytime.DAY | Daytime.NIGHT,
}


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


class MoveCategory(Enum):
    PHYSICAL = 'PHYSICAL'
    SPECIAL = 'SPECIAL'
    STATUS = 'STATUS'


###############################################################################
# HTML Utilities
###############################################################################


def get_type_link(t: PokemonType) -> str:
    return f'<a href="/pokemon/type-{t.name.lower()}.html">{t.name.title()}</a>'


def get_species_link(number: int, inner_text: str = '{p.name}') -> str:
    pokemon = pokemon_index[number]
    inner_text = inner_text.format(p=pokemon)
    return f'<a href="/pokemon/{number:03}.html">{inner_text}</a>'


def get_item_link(number: int, inner_text: str = '{i.name}') -> str:
    item = item_index[number]
    inner_text = inner_text.format(i=item)
    # return f'<a href="/items/{number:03}.html">{inner_text}</a>'
    return f'<em>{inner_text}</em>'


def get_move_link(number: int, inner_text: str = '{m.name}') -> str:
    move = move_index[number]
    inner_text = inner_text.format(m=move)
    # return f'<a href="/moves/{number:03}.html">{inner_text}</a>'
    return f'<em>{inner_text}</em>'


def get_field_move_link(number: int) -> str:
    name = field_move_index[number]
    key = name.lower().replace(' ', '-')
    return f'<a href="/pokemon/field-{key}.html">{name}</a>'


def print_category_pages_pokemon_by_type():
    logger.info('generating type-based category pages')
    template = PAGE_DEX_POKEMON_BY_TYPE.read_text(encoding='utf-8')

    categories = {}
    for t in PokemonType:
        categories[t] = set()
    for pokemon in pokemon_index.values():
        categories[pokemon.type1].add(pokemon.number)
        categories[pokemon.type2].add(pokemon.number)

    for t in PokemonType:
        index = categories[t]
        if not index:
            continue

        name = t.name.title()
        logger.info(f'generating HTML page for {name} type')
        links = ['<ul>']
        for species in sorted(index):
            a = get_species_link(species, inner_text='{p.number:03} - {p.name}')
            links.append(f'<li>{a}</li>')
        links.append('</ul>')
        html = template.format(name=name, species_list='\n'.join(links))
        path = POKEDEX_PAGE_DIR / f'type-{t.name.lower()}.html'
        path.write_text(html, encoding='utf-8')
    logger.info('done generating type-based category pages')


def print_category_pages_pokemon_by_field_move():
    logger.info('generating field move category pages')
    template = PAGE_DEX_POKEMON_BY_FIELD_MOVE.read_text(encoding='utf-8')

    categories = {i: set() for i in sorted(field_move_index)}
    for pokemon in pokemon_index.values():
        for i in pokemon.field_moves:
            categories[i].add(pokemon.number)

    for i, name in field_move_index.items():
        index = categories[i]
        if not index:
            continue

        logger.info(f'generating HTML page for field move {name}')
        links = ['<ul>']
        for species in sorted(index):
            a = get_species_link(species, inner_text='{p.number:03} - {p.name}')
            links.append(f'<li>{a}</li>')
        links.append('</ul>')
        html = template.format(name=name, species_list='\n'.join(links))
        key = name.lower().replace(' ', '-')
        path = POKEDEX_PAGE_DIR / f'field-{key}.html'
        path.write_text(html, encoding='utf-8')
    logger.info('done generating field move category pages')


def print_move_dex_page():
    logger.info('generating move index page')
    template = PAGE_DEX_MOVE_INDEX.read_text(encoding='utf-8')
    moves = [m.print_html() for m in sorted(move_index.values(), key=lambda v: v.name)]
    entries = [f'<tr>\n{m}\n</tr>' for m in moves]
    html = '\n'.join(entries)
    html = template.format(html_move_table=html)
    MOVEDEX_PAGE.write_text(html, encoding='utf-8')


def print_location_dex_page():
    logger.info('generating location index page')
    template = PAGE_DEX_LOCATION_INDEX.read_text(encoding='utf-8')
    maps = []
    for m in sorted(map_index.values(), key=lambda v: v.name):
        if m.species:
            maps.append(m.print_html())
    if not maps:
        maps.append('<p>There is no location data.</p>')
    html = '\n'.join(maps)
    html = template.format(html_map_list=html)
    LOCATIONDEX_PAGE.write_text(html, encoding='utf-8')


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

    def skip_to_table(self, name: str, skip_table_width: bool = True, fallthrough: bool = True):
        n = len(self.lines)
        while self._i < n:
            line = self.lines[self._i]
            self._i += 1
            if line.startswith(name + ':'):
                line = self.lines[self._i]
                if fallthrough:
                    while line.endswith(':'):
                        self._i += 1
                        line = self.lines[self._i]
                if skip_table_width:
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

    def skip_to_macro(self, name: str):
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            if len(parts) >= 2:
                if parts[0] == name:
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

    def read_line_data(self) -> List[str]:
        parts = self.lines[self._i].split(maxsplit=1)
        # macros can have zero args
        if len(parts) == 2:
            return parse_data_parts(parts[1])
        return []

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
        if time & Daytime.MORNING:
            self.happiness.morning.add(species)
        elif time & Daytime.DAY:
            self.happiness.day.add(species)
        elif time & Daytime.NIGHT:
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
                daytime = DAYTIME_CONSTANTS[entry[1]]
                pokemon.add_happiness_evolution(daytime, species)
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


@dataclass(frozen=True)
class SpeciesEncounter:
    min_level: int
    max_level: int
    probability: float


@dataclass(frozen=True)
class MapEncounterData:
    maps: Dict[int, SpeciesEncounter] = field(default_factory=dict)

    def add_encounter(self, map: int, min_level: int, max_level: int, percent: float):
        previous = self.maps.get(map)
        if previous is not None:
            min_level = min(min_level, previous.min_level)
            max_level = max(max_level, previous.max_level)
            percent += previous.probability
        self.maps[map] = SpeciesEncounter(min_level, max_level, percent)

    def __len__(self) -> int:
        return len(self.maps)

    def print_html(self) -> str:
        if len(self) == 0:
            return '<p>Not available in the wild.</p>'
        entries = ['<ul>']
        for map in sorted(self.maps):
            name = f'<em>{map_index[map].name}</em>'
            e = self.maps[map]
            if e.min_level != e.max_level:
                level = f'<strong>Lv. {e.min_level}-{e.max_level}</strong>'
            else:
                level = f'<strong>Lv. {e.min_level}</strong>'
            p = f'{(100 * e.probability):.2f}'
            entries.append(f'<li>{level}, {name} ({p}%)</li>')
        entries.append('</ul>')
        return '\n'.join(entries)


@dataclass(frozen=True)
class DaytimeEncounterData:
    morning: MapEncounterData = field(default_factory=MapEncounterData)
    day: MapEncounterData = field(default_factory=MapEncounterData)
    night: MapEncounterData = field(default_factory=MapEncounterData)

    def add_encounter(
        self,
        map: int,
        time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        if time & Daytime.MORNING:
            self.morning.add_encounter(map, min_level, max_level, percent)
        if time & Daytime.DAY:
            self.day.add_encounter(map, min_level, max_level, percent)
        if time & Daytime.NIGHT:
            self.night.add_encounter(map, min_level, max_level, percent)

    def __len__(self) -> int:
        return len(self.morning) + len(self.day) + len(self.night)

    def print_html(self) -> str:
        if len(self) == 0:
            return '<p>Not available in the wild.</p>'
        maps = set()
        for map in self.morning.maps:
            maps.add(map)
        for map in self.day.maps:
            maps.add(map)
        for map in self.night.maps:
            maps.add(map)

        entries = ['<ul>']
        for map in sorted(maps):
            name = f'<em>{map_index[map].name}</em>'
            time = 'morning'
            e = self.morning.maps.get(map)
            if e is not None:
                if e.min_level != e.max_level:
                    level = f'<strong>Lv. {e.min_level}-{e.max_level}</strong>'
                else:
                    level = f'<strong>Lv. {e.min_level}</strong>'
                p = f'{(100 * e.probability):.2f}'
                entries.append(f'<li>{level}, {name} ({p}%, {time})</li>')

            time = 'day'
            e = self.day.maps.get(map)
            if e is not None:
                if e.min_level != e.max_level:
                    level = f'<strong>Lv. {e.min_level}-{e.max_level}</strong>'
                else:
                    level = f'<strong>Lv. {e.min_level}</strong>'
                p = f'{(100 * e.probability):.2f}'
                entries.append(f'<li>{level}, {name} ({p}%, {time})</li>')

            time = 'night'
            e = self.night.maps.get(map)
            if e is not None:
                if e.min_level != e.max_level:
                    level = f'<strong>Lv. {e.min_level}-{e.max_level}</strong>'
                else:
                    level = f'<strong>Lv. {e.min_level}</strong>'
                p = f'{(100 * e.probability):.2f}'
                entries.append(f'<li>{level}, {name} ({p}%, {time})</li>')
        entries.append('</ul>')
        return '\n'.join(entries)


@dataclass(frozen=True)
class FishingEncounterData:
    old: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    good: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    super: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)

    def __len__(self) -> int:
        return len(self.old) + len(self.good) + len(self.super)

    def print_html(self) -> str:
        if len(self) == 0:
            return '<p>Not available in the wild.</p>'
        html = []
        if len(self.old) > 0:
            html.append('<em>Old Rod</em>')
            html.append(self.old.print_html())
        if len(self.good) > 0:
            html.append('<em>Good Rod</em>')
            html.append(self.good.print_html())
        if len(self.super) > 0:
            html.append('<em>Super Rod</em>')
            html.append(self.super.print_html())
        return '\n'.join(html)


@dataclass(frozen=True)
class TreeEncounterData:
    common: MapEncounterData = field(default_factory=MapEncounterData)
    rare: MapEncounterData = field(default_factory=MapEncounterData)

    def __len__(self) -> int:
        return len(self.common) + len(self.rare)

    def print_html(self) -> str:
        if len(self) == 0:
            return '<p>Not available in the wild.</p>'
        html = []
        if len(self.common) > 0:
            html.append('<em>Common Trees</em>')
            html.append(self.common.print_html())
        if len(self.rare) > 0:
            html.append('<em>Rare Trees</em>')
            html.append(self.rare.print_html())
        return '\n'.join(html)


@dataclass(frozen=True)
class Habitat:
    grass: DaytimeEncounterData = field(default_factory=DaytimeEncounterData)
    water: MapEncounterData = field(default_factory=MapEncounterData)
    fishing: FishingEncounterData = field(default_factory=FishingEncounterData)
    trees: TreeEncounterData = field(default_factory=TreeEncounterData)
    rocks: MapEncounterData = field(default_factory=MapEncounterData)

    def __len__(self) -> int:
        return (
            len(self.grass)
            + len(self.water)
            + len(self.fishing)
            + len(self.trees)
            + len(self.rocks)
        )

    def print_html(self) -> str:
        if len(self) == 0:
            return '<p>This Pokémon is not available in the wild.</p>'
        sections = []
        if len(self.grass) > 0:
            sections.append('<h5>Grass Encounters</h5>')
            sections.append(self.grass.print_html())
        if len(self.water) > 0:
            sections.append('<h5>Water Encounters</h5>')
            sections.append(self.water.print_html())
        if len(self.fishing) > 0:
            sections.append('<h5>Fishing Encounters</h5>')
            sections.append(self.fishing.print_html())
        if len(self.trees) > 0:
            sections.append('<h5>Tree Encounters</h5>')
            sections.append(self.trees.print_html())
        if len(self.rocks) > 0:
            sections.append('<h5>Rock Encounters</h5>')
            sections.append(self.rocks.print_html())
        return '\n'.join(sections)


def calc_encounters(
    species: int,
    level: int,
    probability: float,
) -> List[Tuple[int, int, int, float]]:
    # NOTE: hard-coded levels and percentages for SAlt Crystal
    chances = [
        0.2,     # 5% + 15%
        0.15,    # +15%
        0.15,    # +15%
        0.15,    # +15%
        0.125,   # +12.5%
        0.125,   # +12.5%
        0.04,    # +4%
        0.04,    # +4%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
        0.0025,  # +0.25%
    ]

    visited = set()
    result = []
    stack = [(species, level, level + 15, probability)]
    while stack:
        num, min_level, max_level, p = stack.pop()
        if num in visited:
            continue
        visited.add(num)

        pokemon = pokemon_index[num]
        for e in (pokemon.evolutions.level | pokemon.evolutions.hold):
            if e.level <= max_level:
                if e.level > min_level:
                    i = min_level - level
                    j = e.level - level
                    chance = p * sum(chances[i:j])
                    result.append((num, min_level, e.level - 1, chance))
                    chance = p * sum(chances[j:])
                    stack.append((e.species, e.level, max_level, chance))
                else:
                    # the current species is skipped
                    stack.append((e.species, min_level, max_level, p))
                break  # only the first evolution is chosen
            else:
                pass  # range does not reach evolution level
        else:
            result.append((num, min_level, max_level, p))
    return result


def register_encounters(
    map: int,
    time: Daytime,
    species: int,
    min_level: int,
    probability: float,
    fun: str,
):
    encounters = calc_encounters(species, min_level, probability)
    for species, min_level, max_level, probability in encounters:
        pokemon = pokemon_index[species]
        f = getattr(pokemon, fun)
        f(map, time, min_level, max_level, probability)
        map_index[map].species.add(species)


def parse_grass_encounters():
    logger.info(f'parsing grass encounter probabilities from {WILD_PROBABILITIES}')
    parser = AsmDataParser.from_path(WILD_PROBABILITIES)
    parser.skip_to_table('GrassMonProbTable')
    data: List[List[str]] = parser.read_while_macro('mon_prob')
    probabilities = []
    total = 0
    for entry in data:
        p = int(entry[0])
        probabilities.append((p - total) / 100.0)
        total = p

    for path in (WILD_JOHTO_GRASS, WILD_KANTO_GRASS):
        logger.info(f'parsing grass encounters from {path}')
        parser = AsmDataParser.from_path(path)
        while True:
            try:
                parser.skip_to_macro('def_grass_wildmons')
            except KeyError:
                break
            args = parser.read_line_data()
            map = constant_index[args[0]]
            parser.skip_line()

            data: List[List[str]] = parser.read_while_data()
            # the first line is the chance to trigger an encounter
            if len(data) < (3 * len(probabilities) + 1):
                raise ValueError(f'malformed data for map {args[0]}')
            j = 1
            for time in (Daytime.MORNING, Daytime.DAY, Daytime.NIGHT):
                for i in range(len(probabilities)):
                    entry = data[j]
                    assert len(entry) >= 2, str(entry)
                    register_encounters(
                        map,
                        time,
                        constant_index[entry[1]],
                        int(entry[0]),
                        probabilities[i],
                        'add_grass_encounter',
                    )
                    j += 1


def parse_water_encounters():
    logger.info(f'parsing grass encounter probabilities from {WILD_PROBABILITIES}')
    parser = AsmDataParser.from_path(WILD_PROBABILITIES)
    parser.skip_to_table('WaterMonProbTable')
    data: List[List[str]] = parser.read_while_macro('mon_prob')
    probabilities = []
    total = 0
    for entry in data:
        p = int(entry[0])
        probabilities.append((p - total) / 100.0)
        total = p

    for path in (WILD_JOHTO_WATER, WILD_KANTO_WATER):
        logger.info(f'parsing water encounters from {path}')
        parser = AsmDataParser.from_path(path)
        while True:
            try:
                parser.skip_to_macro('def_water_wildmons')
            except KeyError:
                break
            args = parser.read_line_data()
            map = constant_index[args[0]]
            parser.skip_line()

            data: List[List[str]] = parser.read_while_data()
            # the first line is the chance to trigger an encounter
            if len(data) < (len(probabilities) + 1):
                raise ValueError(f'malformed data for map {args[0]}')
            j = 1
            for i in range(len(probabilities)):
                entry = data[j]
                assert len(entry) >= 2, str(entry)
                register_encounters(
                    map,
                    Daytime.ANYTIME,
                    constant_index[entry[1]],
                    int(entry[0]),
                    probabilities[i],
                    'add_water_encounter',
                )
                j += 1


def parse_fishing_encounters():
    logger.info(f'parsing fishing encounters from {WILD_FISH}')
    parser = AsmDataParser.from_path(WILD_FISH)
    parser.skip_to_table('FishGroups')
    groups: List[List[str]] = parser.read_while_macro('fishgroup')

    parser.reset()
    parser.skip_to_table('TimeFishGroups')
    data: List[List[str]] = parser.read_while_data()
    timed = []
    for e in data:
        sp1 = constant_index[e[0]]
        lv1 = int(e[1])
        sp2 = constant_index[e[2]]
        lv2 = int(e[3])
        timed.append((sp1, lv1, sp2, lv2))

    for i in range(len(groups)):
        entry = groups[i]
        maps = fishgroup_index[i + 1]
        tables = [
            (entry[1], 'add_old_rod_encounter'),
            (entry[2], 'add_good_rod_encounter'),
            (entry[3], 'add_super_rod_encounter'),
        ]

        for table, fun in tables:
            parser.reset()
            parser.skip_to_table(table)
            data: List[List[str]] = parser.read_while_data()
            total = 0
            for entry in data:
                p = int(entry[0].split()[0])
                probability = (p - total) / 100.0
                total = p
                if entry[1].startswith('time_group'):
                    g = entry[1].split(maxsplit=1)[1]
                    g = int(g)
                    sp1, lv1, sp2, lv2 = timed[g]
                    for map in maps:
                        time = Daytime.MORNING | Daytime.DAY
                        register_encounters(map, time, sp1, lv1, probability, fun)
                        register_encounters(map, Daytime.NIGHT, sp2, lv2, probability, fun)
                else:
                    for map in maps:
                        sp = constant_index[entry[1]]
                        lv = int(entry[2])
                        register_encounters(map, Daytime.ANYTIME, sp, lv, probability, fun)


def parse_tree_and_rock_encounters():
    logger.info(f'parsing tree set constants from {POKEMON_DATA_CONSTANTS}')
    parser = AsmDataParser.from_path(POKEMON_DATA_CONSTANTS)
    parser.skip_to_constant('NUM_TREEMON_SETS')
    parser.rewind_to_const_def()
    parser.skip_line()
    tree_sets = parser.read_while_macro('const', flatten=True)
    tree_sets = {name: i for i, name in enumerate(tree_sets)}

    logger.info(f'parsing tree map data from {TREE_MAPS}')
    parser = AsmDataParser.from_path(TREE_MAPS)
    parser.skip_to_table('TreeMonMaps')
    data: List[List[str]] = parser.read_while_macro('treemon_map')
    tree_maps = {}
    for entry in data:
        map = constant_index[entry[0]]
        tree = tree_sets[entry[1]]
        maps = tree_sets.get(tree)
        if maps is None:
            maps = []
            tree_sets[tree] = maps
        maps.append(map)

    parser.reset()
    parser.skip_to_table('RockMonMaps')
    data: List[List[str]] = parser.read_while_macro('treemon_map')
    rock_maps = {}
    rock_sets = set()
    for entry in data:
        map = constant_index[entry[0]]
        rock = tree_sets[entry[1]]
        maps = tree_sets.get(rock)
        if maps is None:
            maps = []
            tree_sets[rock] = maps
        maps.append(map)
        rock_sets.add(rock)

    logger.info(f'parsing tree and rock encounters from {WILD_TREES}')
    parser = AsmDataParser.from_path(WILD_TREES)
    parser.skip_to_table('TreeMons')
    pointers = parser.read_data_until_assert(flatten=True)

    for i in range(len(pointers)):
        maps = tree_sets[i]
        parser.reset()
        parser.skip_to_table(pointers[i])
        entries = parser.read_while_data()
        if i in rock_sets:
            fun = 'add_rock_encounter'
            for row in entries:
                if row[0] == '-1':
                    break
                probability = int(row[0]) / 100.0
                species = constant_index[row[1]]
                min_level = int(row[2])
                for map in maps:
                    register_encounters(map, Daytime.ANYTIME, species, min_level, probability, fun)
        else:
            funs = ['add_rare_tree_encounter', 'add_common_tree_encounter']
            fun = funs.pop()
            for row in entries:
                if row[0] == '-1':
                    if not funs:
                        break
                    fun = funs.pop()
                    continue
                probability = int(row[0]) / 100.0
                species = constant_index[row[1]]
                min_level = int(row[2])
                for map in maps:
                    register_encounters(map, Daytime.ANYTIME, species, min_level, probability, fun)


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
    habitat: Habitat = field(default_factory=Habitat)
    field_moves: Set[int] = field(default_factory=set)

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

    def add_grass_encounter(
        self,
        map: int,
        time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.grass.add_encounter(map, time, min_level, max_level, percent)

    def add_water_encounter(
        self,
        map: int,
        _time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.water.add_encounter(map, min_level, max_level, percent)

    def add_old_rod_encounter(
        self,
        map: int,
        time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.fishing.old.add_encounter(map, time, min_level, max_level, percent)

    def add_good_rod_encounter(
        self,
        map: int,
        time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.fishing.good.add_encounter(map, time, min_level, max_level, percent)

    def add_super_rod_encounter(
        self,
        map: int,
        time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.fishing.super.add_encounter(map, time, min_level, max_level, percent)

    def add_common_tree_encounter(
        self,
        map: int,
        _time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.trees.common.add_encounter(map, min_level, max_level, percent)

    def add_rare_tree_encounter(
        self,
        map: int,
        _time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.trees.rare.add_encounter(map, min_level, max_level, percent)

    def add_rock_encounter(
        self,
        map: int,
        _time: Daytime,
        min_level: int,
        max_level: int,
        percent: float,
    ):
        self.habitat.rocks.add_encounter(map, min_level, max_level, percent)

    def type_string(self) -> str:
        if self.type1 == self.type2:
            return self.type1.name.title()
        return f'{self.type1.name.title()}/{self.type2.name.title()}'

    def print_dex_page(self) -> str:
        html = PAGE_DEX_POKEMON.read_text(encoding='utf-8')
        return html.format(
            number=self.number,
            name=self.name,
            types=self._html_types(),
            html_preevolution=self._html_pre_evolutions(),
            html_evolution=self._html_evolutions(),
            html_wild=self.habitat.print_html(),
            html_learnset=self._html_learnset(),
            html_field=self._html_field_moves(),
        )

    def _html_types(self) -> str:
        a1 = get_type_link(self.type1)
        if self.type1 == self.type2:
            return a1
        a2 = get_type_link(self.type2)
        return f'{a1} / {a2}'

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

    def _html_field_moves(self) -> str:
        if len(self.field_moves) == 0:
            return '<p>This Pokémon does not learn any field moves.</p>'
        entries = []
        for move in sorted(self.field_moves):
            a = get_field_move_link(move)
            entries.append(f'<li>{a}</li>')
        html = '\n'.join(entries)
        return f'<ul>\n{html}\n</ul>'


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
            pokemon.field_moves.update(constant_index[m] for m in data)
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
    type: PokemonType = PokemonType.NORMAL
    power: int = 0
    accuracy: int = 0
    category: MoveCategory = MoveCategory.STATUS
    pp: int = 1
    effect_chance: int = 0

    def print_html(self) -> str:
        power = self.power if self.power > 0 else '--'
        accuracy = self.accuracy if self.accuracy > 0 else '--'
        chance = f'{self.effect_chance}%' if self.effect_chance > 0 else '--'
        cells = [
            f'<td>{self.name}</td>',
            f'<td>{self.type.name.title()}</td>',
            f'<td>{self.category.name.title()}</td>',
            f'<td>{self.pp}</td>',
            f'<td>{power}</td>',
            f'<td>{accuracy}</td>',
            f'<td>{chance}</td>',
        ]
        return '\n'.join(cells)

    def print_html_text(self) -> str:
        name = f'<strong>{self.name}</strong>'
        tag = f'<em>({self.type.name.title()}, {self.category.name.title()})</em>'
        details = [f'{self.pp} PP']
        if self.power > 0:
            details.append(f'{self.power} Power')
        if self.accuracy > 0:
            details.append(f'{self.accuracy} Accuracy')
        else:
            details.append(f'Perfect Accuracy')
        if self.effect_chance > 0:
            details.append(f'{self.effect_chance}% Effect Chance')
        details = ', '.join(details)
        return f'{name} {tag} - {details}'


def parse_move_constants():
    logger.info(f'parsing move constants from {MOVE_CONSTANTS}')
    parser = AsmDataParser.from_path(MOVE_CONSTANTS)
    parser.skip_to_constant('NUM_ATTACKS')
    parser.rewind_to_const_def()
    constants = parser.read_const_defs()
    constant_index.update(constants)
    for c, i in constants.items():
        move_index[i] = MoveData(i, c)

    parser.reset()
    parser.skip_to_constant('NUM_OVERWORLD_MOVES')
    parser.rewind_to_const_def()
    constants = parser.read_const_defs()
    constant_index.update(constants)
    for c, i in constants.items():
        name = c.replace('OVERWORLD_', '').replace('_', ' ').title()
        field_move_index[i] = name


def parse_move_names():
    logger.info(f'parsing move names from {MOVE_NAMES}')
    parser = AsmDataParser.from_path(MOVE_NAMES)
    parser.skip_to_table('MoveNames')
    moves = parser.read_data_until_assert(flatten=True)
    for i in range(len(moves)):
        name = moves[i].strip('"@')
        move_index[i+1].name = name.title()


def parse_move_data():
    parse_move_names()

    logger.info(f'parsing move data from {MOVE_DATA}')
    parser = AsmDataParser.from_path(MOVE_DATA)
    parser.skip_to_table('Moves')
    data: List[List[str]] = parser.read_while_macro('move')

    for row in data:
        move = move_index[constant_index[row[0]]]
        move.power = int(row[2])
        move.type = PokemonType(row[3])
        move.category = MoveCategory(row[4])
        try:
            move.accuracy = int(row[5])
        except ValueError:
            move.accuracy = -1
        # NOTE hard-coded for SAlt Crystal
        pp_table = {
            'ENERGY_30_PP': 1,
            'ENERGY_20_PP': 2,
            'ENERGY_15_PP': 3,
            'ENERGY_10_PP': 4,
            'ENERGY_8_PP':  5,
            'ENERGY_7_PP':  6,
            'ENERGY_6_PP':  7,
            'ENERGY_5_PP':  8,
        }
        move.pp = pp_table[row[6]]
        move.effect_chance = int(row[7])
    logger.info('done parsing move data')


###############################################################################
# Parsing Map Data
###############################################################################


@dataclass
class MapData:
    number: int
    name: str
    species: Set[int] = field(default_factory=set)

    def print_html(self) -> str:
        name = f'<h5>{self.name}</h5>'
        species = ',\n'.join(get_species_link(s) for s in sorted(self.species))
        species = f'<p>Available species:\n{species}\n</p>'
        return f'{name}\n{species}'


def parse_map_constants():
    logger.info(f'parsing map constants from {MAP_CONSTANTS}')
    parser = AsmDataParser.from_path(MAP_CONSTANTS)
    k = 1
    while True:
        try:
            parser.skip_to_macro('newgroup')
        except KeyError:
            return
        parser.skip_line()
        data: List[List[str]] = parser.read_while_macro('map_const')
        for entry in data:
            name = entry[0]
            constant_index[name] = k
            # FIXME parse landmarks to get names
            name = name.replace('_', ' ').title()
            map_index[k] = MapData(k, name)
            k += 1


def parse_map_data_constants():
    logger.info(f'parsing map data constants from {MAP_DATA_CONSTANTS}')
    parser = AsmDataParser.from_path(MAP_DATA_CONSTANTS)
    parser.skip_to_constant('NUM_FISHGROUPS')
    parser.rewind_to_const_def()
    parser.skip_line()
    names: List[str] = parser.read_while_macro('const', flatten=True)
    for i in range(len(names)):
        name = names[i]
        constant_index[name] = i
        fishgroup_index[i] = []


def parse_map_data():
    # relies on the order of group and map constants
    logger.info(f'parsing map data from {MAP_DATA}')
    parser = AsmDataParser.from_path(MAP_DATA)
    parser.skip_to_table('MapGroupPointers')
    pointers: List[str] = parser.read_data_until_assert(flatten=True)

    map = 1
    for pointer in pointers:
        parser.reset()
        parser.skip_to_table(pointer)
        rows: List[List[str]] = parser.read_while_macro('map')
        for row in rows:
            fishgroup = constant_index[row[-1]]
            fishgroup_index[fishgroup].append(map)
            map += 1


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
map_index: Dict[int, MapData] = {}
fishgroup_index: Dict[int, List[int]] = {}
field_move_index: Dict[int, str] = {}

def main():
    configure_logging()

    try:
        parse_pokemon_constants()
        parse_move_constants()
        parse_item_constants()
        parse_map_constants()
        parse_map_data_constants()

        global pokemon_index
        pokemon_index = parse_pokemon_data()
        global item_index
        item_index = parse_item_data()
        parse_move_data()
        parse_map_data()

        parse_pokemon_base_data()
        parse_evolutions_and_levelup_moves()
        parse_egg_moves()
        parse_grass_encounters()
        parse_water_encounters()
        parse_fishing_encounters()
        parse_tree_and_rock_encounters()

        for pokemon in pokemon_index.values():
            path = POKEDEX_PAGE_DIR / f'{pokemon.number:03}.html'
            logger.info(f'generating HTML page for {pokemon.name}')
            path.write_text(pokemon.print_dex_page(), encoding='utf-8')
        print_category_pages_pokemon_by_type()
        print_category_pages_pokemon_by_field_move()
        print_move_dex_page()
        print_location_dex_page()
    except KeyboardInterrupt:
        logger.info('Interrupted manually.')
    except Exception as e:
        logger.exception(f'Unexpected error: {e}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
