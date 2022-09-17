# SPDX-License-Identifier: MIT
# Copyright © 2022 Santusk Oatspear

###############################################################################
# Imports
###############################################################################

from typing import Optional, Set, Tuple

from dataclasses import dataclass, field
from enums import Enum
import logging
from pathlib import Path
import sys

###############################################################################
# Internal State
###############################################################################

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


@dataclass
class PokemonData:
    number: int
    name: str
    moves: Learnset = field(default_factory=Learnset)
    # mapping from map id to Habitat
    areas: Dict[int, ]


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
        pass
    except KeyboardInterrupt:
        logger.info('Interrupted manually.')
    except Exception as e:
        logger.exception(f'Unexpected error: {e}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
