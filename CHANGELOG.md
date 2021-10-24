# Changelog

## v0.1

### Added
- Introduced Physical/Special split.
- Added `FAIRY` type.
- Added moves: `FAIRY VOICE` (Disarming Voice), `DAZZLE GLEAM` (Dazzling Gleam), `PLAY ROUGH`.
- Added TMs: `TM51` (Dazzling Gleam), `TM52` (Play Rough).

### Removed
- Removed the 25% failure chance for AI status moves.
- Removed the redundant move grammar table.
- Removed stat experience from stat calculation.

### Changed
- Made time- and weather-sensitive moves only weather dependent (`SYNTHESIS`, `MORNING SUN` and `MOONLIGHT`).
- Changed moves to their respective Physical/Special categories.
- Changed Pokémon and moves to use the `FAIRY` type.
- Changed Pokémon learnsets to include added moves.
- Improved the event initialization system to be independent of the map.
- Made Sandstorm raise the Special Defense of Rock type Pokémon by 50%.

### Fixed
- Removed experience gain at max. level.
- Reflect and Light Screen no longer make (Special) Defense wrap around above 1024.
- Perish Song and Spikes can no longer leave a Pokémon with 0 HP and not faint.
- Thick Club and Light Ball can no longer make (Special) Attack wrap around above 1024.
- Metal Powder can no longer increase damage taken with boosted (Special) Defense.
- Moves with a 100% secondary effect chance will always trigger it.
- Belly Drum no longer sharply boosts Attack under 50% HP.
- Berserk Gene's confusion lasts the normal confusion count.
- Confusion damage is no longer affected by type-boosting items and Explosion/Self-Destruct doubling.
- Moves that lower Defense no longer do so after breaking a Substitute.
- Counter and Mirror Coat no longer work if the opponent uses an item.
- Disabled but PP Up–enhanced moves may no longer trigger Struggle.
- A Pokémon that fainted from Pursuit will no longer have its old status condition when revived.
- Lock-On and Mind Reader always bypass Fly and Dig.
- Beat Up can no longer desynchronize link battles.
- Beat Up works correctly with only one Pokémon in the party.
- Beat Up no longer fails to raise Substitute.
- Beat Up no longer triggers King's Rock if it fails.
- Present damage is correct in link battles.
- Dragon Fang boosts Dragon-type moves, instead of Dragon Scale.
- HP bar animation is no longer slow for high HP.
- Fixed HP bar animation off-by-one error for low HP.
- Moves that do damage and increase stats can increase stats after a KO.
- A Transformed Pokémon can no longer use Sketch to learn otherwise unobtainable moves.
- Catching a Transformed Pokémon catches the correct species.
- Fixed experience underflow for level 1 Pokémon with Medium-Slow growth rate.
- The Dude's catching tutorial no longer crashes if his Poké Ball can't be used.
- BRN/PSN/PAR now affect catch rate.
- Moon Ball does boost catch rate.
