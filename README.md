# Pokémon Crystal [![Build Status][ci-badge]][ci]

## My Notes

### Healing Items

- `BERRY_JUICE` and `MOOMOO_MILK` are considered drinks.
- Drinks are not usable in battle; they are cost-efficient healing on the field.
- Potions remain usable in battle, but are expensive when compared to drinks.
- Berries have relative HP healing, and can be used as held items.
- Feasts/snacks could be used to heal the whole party, out of battle.

### Levels

- All Pokémon will play with lv. 50 stats
- Pokémon levels will go from 1 to 15 (1 nybble).

### Evolutions

- Change happiness and trade evolutions to level up or items.
- Explore the idea of evolution being independent from levels.

### Learnsets

- Should be improved.
- Scale learnsets and evolutions to a 1-15 scale.
- Ensure that learned moves have a min. required level.

```yaml
Bug:
    - [ ] U-Turn (>10)
    - [+] X-Scissor (10)
    - [ ] Bug Bite (8)
    - [ ] Lunge (3)
    - [ ] Quiver Dance (3)
    - [+] Bug Buzz (5)
    - [+] Infestation
    - [x] Spider Web
    - [x] Twineedle
Dark:
    - [+] Night Slash (>10)
    - [ ] Knock Off (>10)
    - [ ] Foul Play (>10)
    - [ ] Fake Tears (8)
    - [ ] Memento (8)
    - [+] Snarl (4)
    - [+] Payback (>10)
    - [+] Sucker Punch (>10)
    - [+] Nasty Plot (>10)
    - [+] Dark Pulse
    - [x] Feint Attack
    - [x] Pursuit
Dragon:
    - [ ] Dragon Rush (4)
    - [ ] Dragon Claw (4)
    - [ ] Dragon Tail (3)
    - [ ] Draco Metor (2)
    - [+] Dragon Pulse (>10)
    - [+] Dragon Dance (8)
    - [x] Dragon Rage
Electric:
    - [ ] Shock Wave (>10)
    - [+] Charge Beam (>10)
    - [+] Wild Charge (>10)
    - [+] Thunder Fang (10)
    - [ ] Electro Ball (8)
    - [ ] Volt Switch (5)
    - [ ] Charge (5)
Fairy:
    - .
Fight:
    - [ ] Hammer Arm (10)
    - [ ] Focus Blast (>10) (TM)
    - [ ] Power-up Punch (4)
    - [ ] Storm Throw
    - [ ] Vacuum Wave
    - [+] Drain Punch (>10)
    - [+] Brick Break (>10)
    - [+] Close Combat (10)
    - [+] Superpower (>10)
    - [+] Low Sweep (9)
    - [+] Revenge (9)
    - [x] Jump Kick
    - [x] Karate Chop
    - [x] Rolling Kick
Fire:
    - [+] Fire Fang (>10)
    - [+] Overheat (>10)
    - [ ] Flame Charge (9)
    - [+] Mystical Fire (7)
    - [ ] Inferno (6)
    - [ ] Lava Plume (4)
    - [ ] Incinerate (2/>10)
    - [ ] Heat Wave
    - [+] Will-o-wisp (>10)
    - [+] Flare Blitz (5)
Flying:
    - [+] Hurricane (9)
    - [ ] Pluck (7)
    - [+] Air Cutter (5+)
    - [+] Brave Bird (6)
    - [ ] Defog (>10)
    - [+] Roost (>10)
    - [+] Acrobatics (>10)
    - [+] Aerial Ace (>10)
    - [x] Mirror Move
Ghost:
    - [+] Astonish (9)
    - [+] Shadow Claw (>10)
    - [ ] Shadow Sneak (3)
    - [+] Hex (9)
    - [x] Nightmare
Grass:
    - [ ] Bullet Seed (>10)
    - [+] Energy Ball (>10) (TM)
    - [ ] Grass Knot (>10) (TM)
    - [ ] Aromatherapy
    - [ ] Ingrain (6)
    - [+] Leaf Storm (6)
    - [+] Magical Leaf (6)
    - [ ] Petal Blizzard (4)
    - [ ] Power Whip (4)
    - [+] Seed Bomb (10)
Ground:
    - [ ] Drill Run (>10)
    - [+] Mud Shot (>10)
    - [+] Sand Tomb (>10)
    - [+] Bulldoze
    - [+] Earth Power
    - [x] Bone Club
    - [x] Magnitude
Ice:
    - [+] Ice Fang (9)
    - [+] Ice Shard (7)
    - [+] Avalanche (>10) (TM)
Normal:
    - [ ] Hyper Voice (>10)
    - [ ] Work Up (TM)
    - [ ] Double Hit (7)
    - [ ] Fake Out
    - [ ] Shell Smash (4)
    - [+] Façade (TM)
    - [x] Double Slap
    - [x] Comet Punch
    - [x] Razor Wind
    - [x] Sonic Boom
    - [x] Rage
    - [x] Bide
    - [x] Egg Bomb
    - [x] Spike Cannon
    - [x] Constrict
    - [x] Barrage
    - [x] Dizzy Punch
    - [x] Sharpen
    - [x] Foresight
    - [x] Return
    - [x] Frustration
Poison:
    - [+] Venoshock (>10)
    - [ ] Toxic Spikes (9)
    - [ ] Venom Drench (8)
    - [ ] Gunk Shot (7)
    - [+] Acid Spray (6)
    - [+] Cross Poison (6)
    - [ ] Clear Smog (5)
    - [ ] Poison Fang (4)
    - [+] Poison Jab
Psychic:
    - [ ] Psyshock (TM)
    - [+] Calm Mind
    - [+] Zen Headbutt
    - [x] Meditate
    - [x] Barrier
    - [x] Psywave
Rock:
    - [ ] Stealth Rock
    - [ ] Rock Tomb (TM)
    - [ ] Rock Blast (>10) (TM)
    - [+] Power Gem (5)
    - [+] Stone Edge (>10)
Steel:
    - [+] Iron Head (>10)
    - [ ] Gyro Ball (>10)
    - [ ] Heavy Slam (7)
    - [ ] Bullet Punch (3)
    - [ ] Metal Sound (3)
    - [+] Flash Cannon (7)
Water:
    - [ ] Brine (>10)
    - [+] Liquidation (>10) (TM)
    - [+] Scald (>10) (TM)
    - [ ] Muddy Water (>10) (TM)
    - [+] Water Pulse (>10)
    - [+] Aqua Tail (10)
    - [ ] Aqua Ring (9)
    - [+] Aqua Jet
    - [x] Clamp
    - [x] Bubble
```

> Waterfall (80/100) -> Aqua Tail (90/90), Liquidation (85/100)
> Surf (90/100) -> Hydro Pump (110/90), Brine (65*/100), Scald (80/100), Muddy Water (90/85)

### DVs and EVs

- EVs to be removed.
- There are no DVs for each stat. DVs are all equal to level (1-15).
- Removing DVs implies changes to: gender calculation; shininess calculation; Hidden Power; NPC pokémon; Unown Letter.
- Remove DVs only if using bytes for something else. Otherwise just remove them from stat calculation.

### Happiness

- Remove it; use the bytes for something else, like a counter (as eggs use).
- Remove Return and Frustration.

## Original Content

This is a disassembly of Pokémon Crystal.

It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`
- CRYSTAL_ps3_010328d.bin `sha1: c60d57a24bbe8ecf7cba54ab3f90669f97bd330d`
- CRYSTAL_ps3_us_revise_010710d.bin `sha1: 391ae86b1d5a26db712ffe6c28bbf2a1f804c3c4`

To set up the repository, see [INSTALL.md](INSTALL.md).


## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- **Discord:** [pret][discord]
- **IRC:** [libera#pret][irc]

Other disassembly projects:

- [**Pokémon Red/Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold/Silver**][pokegold]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon FireRed**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[discord]: https://discord.gg/d5dubZ3
[irc]: https://web.libera.chat/?#pret
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg
