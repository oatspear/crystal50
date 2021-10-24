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
