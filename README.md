# Pokémon Salt Crystal (v0.6)

This is the repository for the development of a Pokémon Crystal ROM hack, named **Pokémon Salt Crystal**.
The name is both a pun and an abbreviation, seeing as salt forms crystals, whereas the actual intent is to abbreviate *Systems Altered*.
The reasoning behind this name is that the actual content of Pokémon Crystal, storywise, remains mostly unchanged; rather, this game focuses on a major overhaul to battle mechanics.

## Main Features

For a full list of changes by version, see the [Changelog](CHANGELOG.md).

### Battle

- Known bugs from the original Crystal version have been fixed.
- All Pokémon play with lv. 50 stats, at all times.
- Mechanics mostly on par with generation 8 (SwSh, BDSP, PLA): Physical/Special split; Fairy type; updated Power and Accuracy; etc..
- Irrelevant moves, or moves that were deprecated in generation 8, were removed in favor of more useful moves.
- DVs and EVs were removed from stat calculation; instead, a slightly less impactful bonus to stats is granted via level up.
- Badge stat boosts were removed from the game.
- Stat levels range from -1 to +1 and have a duration in turns, after which they expire.
- Similar to *Pokémon Legends: Arceus*, status moves that boost or hinder stats affect both offensive and defensive stats.
- **PP:** is now a single pool of Energy/Mana/Stamina for all moves; the maximum amount varies per species, based on Base Stats. PP is fully restored at the end of a battle.
- **Poison:** in addition to damage, drains a tiny amount of PP every turn.
- **Sleep:** lasts between 2 and 3 turns; taking damage wakes the sleeping Pokémon sooner; restores PP every turn.
- **Freeze:** lasts between 2 and 3 turns; taking damage thaws the frozen Pokémon sooner; grants a boost to the defenses of the frozen Pokémon (similar to Reflect and Light Screen); ends under harsh sunlight.
- **Flinching:** can carry over to the next turn, meaning that Pokémon going second can also flinch the opponent.
- **Rampage:** lasts 2 to 3 turns; subsequent turns increase the move's Power, but also make the user take more damage.
- Multi-hit moves now always hit 3 times.

### Pokémon

- Updated the learnsets of all Pokémon to be more on par with current games.
- HM moves can now be forgotten.
- Replaced trade and happiness evolutions with evolution via level up while also holding specific items, or evolutions using items.

### Items

- Drinks are not usable in battle; they are cost-efficient healing on the field.
- Potions remain usable in battle, but are expensive when compared to drinks.
- Berries have relative HP healing, and can be used as held items.
- *Berry Juice* and *Moomoo Milk* are considered drinks.
- *Helix Fossil*, *Dome Fossil* and *Old Amber* were added to the game, including a mechanism to revive them.
- Changed prices for many items, and updated the inventories of many Poké-Marts.
- *Protein*, *Iron*, *Carbos* and *Calcium* are now consumable held items that boost their respective stat in battle.
- New vitamins were added for missing stats: *Zinc* (Special Defense), *Magnesium* (Accuracy), *Potassium* (Evasion).
- The Goldenrod and Celadon department stores now sell Evolution stones.
- The moves granted by many TMs were updated.

### World

- Added a time skip mechanism at Poké-Centers to skip from night to morning, morning to day and day to night.
- Field moves (e.g., Cut, Surf, Strength) are available by species, regardless of the moves each individual Pokémon knows.
- The availability of field moves is not necessarily tied to the Pokémon being able to use the move in combat (e.g., Pidgey can use Fly as an attacking move, but is too small to carry a person for quick travel).
- Gym leaders and other significant trainers have had their party rosters updated.
- Gym leaders reward trainers with thematic HMs.
- Updated the wild encounter tables of Johto maps.
- Wild encounters have a wider range of levels and variety of Pokémon, based on the geography of Johto and biology of the Pokémon.
- Most areas feature a rare wild species and encounters change throughout the different phases of the day.
- Added a new map: a volcanic cave deep under Mount Mortar.

## Instructions

This game is based on the [disassembly of Pokémon Crystal](https://github.com/pret/pokecrystal).

If building the game from source, you can follow the instructions given on the disassembly's repository.
Otherwise, download a patch from the [releases page](https://github.com/oatspear/crystal50/releases) and apply it on a Pokémon Crystal ROM (UE V1.0).
