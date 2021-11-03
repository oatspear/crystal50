# Changelog

## v0.2 (Set to Level 50)

### Added
- Move and weather condition: Hail.
- Added Hail to the learn sets of compatible Pokémon.

### Removed
- Move: Frustration.

### Changed
- Pokémon stats and damage calculation are now set to level 50.
- Halved required experience to level up.

### Updated
- Selfdestruct and Explosion no longer halve Defense.
- Updated various moves to current power, PP and accuracy.
- Updated trap damage to 1/8 HP.
- Glare can now hit Ghost-type Pokémon.
- Sky Attack now has a 30% chance to flinch and increased critical-hit ratio.
- Flail and Reversal can be critical hits and are affected by damage variation.
- Spite always depletes 4 PP.
- Updated Sandstorm damage to 1/16 HP.
- Swagger always confuses the target.
- Safeguard no longer protects against self-confusion from rampage effects.
- Pain Split bypasses accuracy checks.
- Encore lasts exactly 3 turns.
- Rapid Spin increases the user's Speed.
- Psych Up copies Focus Energy status.
- Updated priorities of moves to current values.
- Future Sight now benefits from STAB and critical hit.
- Replaced battle text prompts with auto-prompts.
- Grass-type Pokémon are immune to powder moves.
- Electric-type Pokémon are immune to paralysis.
- Ghost-type Pokémon are immune to arena trap effects.

### Fixed
- Fire-type Pokémon are immune to burn.
- Ice-type Pokémon are immune to freeze.
- Poison-type Pokémon are immune to poison.
- Steel-type Pokémon are immune to poison.

### To do
- Hi Jump Kick crash damage is now (always) equal to half of the user's max HP, rounded down.
- Hi Jump Kick: The user can now crash due to a target's type immunity.
- Future Sight should use the Sp. Def. of the opponent it hits, not of the active opponent at the time of activation. Use the code from Beat Up for inspiration.
- Beat Up should use Attack of move user, including boosts, benefit from STAB and deal Dark-type damage. Its formula also changed.
- Ghost-type Pokémon should be able to switch from binding moves.


## v0.1 (Base)

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
- Love Ball boosts catch rate for the correct gender.
- Fast Ball boosts catch rate for the intended Pokémon.
- Heavy Ball uses correct weight value for all Pokémon.
- Glacier Badge boosts Special Defense and Special Attack.
- Smart AI encourages Mean Look if the opposing Pokémon is badly poisoned.
- Smart AI no longer discourages Conversion2 after the first turn.
- Smart AI encourages Solar Beam, Flame Wheel and Moonlight during Sunny Day.
- AI discourages Future Sight when it's already been used.
- Fixed AI `CheckTypeMatchup`.
- AI use of Full Heal or Full Restore cures Nightmare status.
- AI use of Full Heal cures confusion status.
- Wild Pokémon cannot always Teleport.
- `RIVAL2` has the same DVs as `RIVAL1`.
- `HELD_CATCH_CHANCE` has no effect.
- Credits sequence does not change move selection menu behavior.
- `LoadMetatiles` no longer wraps around past 128 blocks.
- Surfing directly across a map connection loads the new map.
- Swimming NPCs are limited by their movement radius.
- In-battle ellipsis is no longer too high.
- Fixed: two tiles in the port tileset were drawn incorrectly.
- The Ruins of Alph research center's roof color at night looks better.
- Using a Park Ball in non-Contest battles no longer has a corrupt animation.
- Battle transitions now account for the enemy's level.
- Team Rocket battle music is now used for Executives or Scientists.
- Restored bump noise if standing on tile `$3E`.
- Playing Entei's Pokédex cry no longer distorts Raikou's and Suicune's.
- Five-digit experience gain is printed correctly.
- Up to six evolution entries can have Stone compatibility reported correctly.
- A "HOF Master!" title for 200-Time Famers is now accessible.
- Clair can no longer give TM24 Dragonbreath twice.
- Daisy's grooming always increases happiness.
- Fixed a number of bugs related to Magikarp lengths.
- `CheckOwnMon` only checks the first five letters of OT names.
- `CheckOwnMonAnywhere` checks the Day-Care.
- The unused `phonecall` script command no longer crashes.
- `ScriptCall` no longer overflows `wScriptStack`.
- `LoadSpriteGFX` now limits the capacity of `UsedSprites`.
- `ChooseWildEncounter` validates the wild Pokémon species.
- Fixed: `TryObjectEvent` arbitrary code execution.
- `ReadObjectEvents` no longer overflows into `wObjectMasks`.
- `ClearWRAM` clears all WRAM banks.
- `BattleAnimCmd_ClearObjs` clears all objects.
