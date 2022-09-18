# SPDX-License-Identifier: MIT
# Copyright © 2022 Santusk Oatspear

###############################################################################
# Imports
###############################################################################

from typing import Dict, List, Optional, Set, Tuple

from collections import defaultdict
from dataclasses import dataclass, field
from enum import Enum
import logging
from pathlib import Path
import sys

###############################################################################
# Internal State
###############################################################################

DATA_ENTRIES = ('db', 'dw', 'dba', 'dwb')

THIS_PATH = Path(__file__).resolve(strict=True)
PROJECT_ROOT = THIS_PATH.parent.parent.parent

POKEMON_DATA_DIR = PROJECT_ROOT / 'data' / 'pokemon'
BASE_STATS_DIR = POKEMON_DATA_DIR / 'base_stats'
EGG_MOVES = POKEMON_DATA_DIR / 'egg_moves.asm'
EVOS_ATTACKS = POKEMON_DATA_DIR / 'evos_attacks.asm'
POKEMON_NAMES = POKEMON_DATA_DIR / 'names.asm'

WILD_DATA_DIR = PROJECT_ROOT / 'data' / 'wild'
WILD_FISH = WILD_DATA_DIR / 'fish.asm'
WILD_JOHTO_GRASS = WILD_DATA_DIR / 'johto_grass.asm'
WILD_JOHTO_WATER = WILD_DATA_DIR / 'johto_water.asm'
WILD_KANTO_GRASS = WILD_DATA_DIR / 'kanto_grass.asm'
WILD_KANTO_WATER = WILD_DATA_DIR / 'kanto_water.asm'
TREE_MAPS = WILD_DATA_DIR / 'treemon_maps.asm'
WILD_TREES = WILD_DATA_DIR / 'treemons.asm'
WILD_TREES_SLEEP = WILD_DATA_DIR / 'treemons_asleep.asm'

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
            lines.append(stripped)
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


@dataclass
class AsmDataParser:
    lines: List[str]
    _i: int = 0

    @classmethod
    def from_path(cls, path: Path) -> 'AsmDataParser':
        lines = read_nonempty_lines(path, discard_comments=True)
        return cls(lines)

    def reset(self):
        self._i = 0

    def skip_to_table(self, name: str, skip_table_width: bool = True):
        n = len(self.lines)
        while self._i < n:
            line = self.lines[self._i]
            self._i += 1
            if line.startswith(name):
                if line[len(name)] == ':':
                    if skip_table_width:
                        line = self.lines[self._i]
                        if line.startswith('table_width'):
                            self._i += 1
                    return
        raise KeyError(name)

    def read_until_assert(self) -> List[List[str]]:
        data = []
        n = len(self.lines)
        while self._i < n:
            parts = self.lines[self._i].split(maxsplit=1)
            self._i += 1
            if parts[0] == 'assert_table_length':
                break
            if parts[0] not in DATA_ENTRIES:
                continue
            assert len(parts) == 2, self.lines[self._i - 1]
            entry = parse_data_parts(parts[1])
            data.append(entry)
        return data


###############################################################################
# Parsing Pokémon Data
###############################################################################


@dataclass
class Learnset:
    level: Set[Tuple[int, int]] = field(default_factory=set)
    tm: Set[int] = field(default_factory=set)
    hm: Set[int] = field(default_factory=set)
    tutor: Set[int] = field(default_factory=set)
    egg: Set[int] = field(default_factory=set)


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
    moves: Learnset = field(default_factory=Learnset)
    # mapping from map id to Habitat
    areas: Dict[int, Habitat] = field(default_factory=habitat_map)


def parse_pokemon_names() -> List[str]:
    parser = AsmDataParser.from_path(POKEMON_NAMES)
    parser.skip_to_table('PokemonNames')
    names = parser.read_until_assert()  # List[List[str]]
    for i in range(len(names)):
        assert len(names[i]) == 1, str(names[i])
        name = names[i][0].strip('"@')
        names[i] = name.title()
    return names


def parse_pokemon_data() -> Dict[int, PokemonData]:
    data = {}
    names = parse_pokemon_names()
    for i in range(len(names)):
        pokemon = PokemonData(i + 1, names[i])
        data[pokemon.number] = pokemon
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


def main():
    configure_logging()
    try:
        data = parse_pokemon_data()
        for pokemon in data.values():
            print(f'{pokemon.number:03}: {pokemon.name}')
    except KeyboardInterrupt:
        logger.info('Interrupted manually.')
    except Exception as e:
        logger.exception(f'Unexpected error: {e}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
