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
- Pokémon levels will go from 1 to 15 (1 nibble).

### Evolutions

- Change happiness and trade evolutions to level up or items.
- Explore the idea of evolution being independent from levels.

### Learnsets

- Should be improved.
- Scale learnsets and evolutions to a 1-15 scale.
- Ensure that learned moves have a min. required level.

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
