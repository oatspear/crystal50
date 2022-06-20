INCLUDE "constants.asm"

SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
;    * db EVOLVE_HOLD, held item, level, species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

; NOTE: due to changes to FillMoves, it is pointless for Pokémon with
;       evolution moves to have 4 lv. 1 moves, because evolution moves
;       are added afterwards and will override previous moves.

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 3, VINE_WHIP
	db 6, GROWTH
	db 9, LEECH_SEED
	db 12, RAZOR_LEAF
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 18, SEED_BOMB
	db 21, HEADBUTT
	db 24, SWEET_SCENT
	db 27, SYNTHESIS
	; db 30, WORRY_SEED
	db 33, DOUBLE_EDGE
	db 36, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, VINE_WHIP
	db 1, GROWTH
	db 9, LEECH_SEED
	db 12, RAZOR_LEAF
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, SEED_BOMB
	db 25, HEADBUTT
	db 30, SWEET_SCENT
	db 35, SYNTHESIS
	; db 40, WORRY_SEED
	db 45, DOUBLE_EDGE
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	; db 1, PETAL_BLIZZARD
	; db 1, PETAL_DANCE
	; db 1, TACKLE
	db 1, GROWL
	db 1, VINE_WHIP
	db 1, GROWTH
	db 9, LEECH_SEED
	db 12, RAZOR_LEAF
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, SEED_BOMB
	db 25, HEADBUTT
	db 30, SWEET_SCENT
	db 37, SYNTHESIS
	; db 44, WORRY_SEED
	db 51, DOUBLE_EDGE
	db 58, SOLARBEAM
	db LEVEL_EVO, PETAL_DANCE ; FIXME: PETAL_BLIZZARD
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, DRAGONBREATH
	db 17, FIRE_FANG
	db 20, BITE
	db 24, FIRE_SPIN
	db 28, SLASH
	db 32, FLAMETHROWER
	db 36, FLARE_BLITZ
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 12, DRAGONBREATH
	db 19, FIRE_FANG
	db 24, BITE
	db 30, FLAMETHROWER
	db 37, SLASH
	db 42, FIRE_SPIN
	db 48, FLARE_BLITZ
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 12, DRAGONBREATH
	db 19, FIRE_FANG
	db 24, BITE
	db 30, FLAMETHROWER
	db 39, SLASH
	db 46, FIRE_SPIN
	db 54, FLARE_BLITZ
	db LEVEL_EVO, AIR_SLASH
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 3, WATER_GUN
	db 6, WITHDRAW
	db 9, RAPID_SPIN
	db 12, BITE
	db 15, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 18, PROTECT
	db 21, RAIN_DANCE
	db 24, AQUA_TAIL
	db 27, CURSE ; FIXME: SHELL_SMASH
	; db 30, IRON_DEFENSE
	db 33, HYDRO_PUMP
	db 36, SKULL_BASH
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, RAPID_SPIN
	db 12, BITE
	db 15, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 20, PROTECT
	db 25, RAIN_DANCE
	db 30, AQUA_TAIL
	db 35, CURSE ; FIXME: SHELL_SMASH
	; db 40, IRON_DEFENSE
	db 45, HYDRO_PUMP
	db 50, SKULL_BASH
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FLASH_CANNON
	; db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, RAPID_SPIN
	db 12, BITE
	; db 15, WATER_PULSE
	db 20, PROTECT
	db 25, RAIN_DANCE
	db 30, AQUA_TAIL
	db 35, CURSE ; FIXME: SHELL_SMASH
	; db 42, IRON_DEFENSE
	db 49, HYDRO_PUMP
	db 56, SKULL_BASH
	db LEVEL_EVO, FLASH_CANNON
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 5, BUG_BITE
	db 5, STRUGGLE_BUG
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db LEVEL_EVO, IRON_DEFENSE
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, BUG_BITE
	db 1, STRUGGLE_BUG
	db 12, CONFUSION
	db 16, SUPERSONIC
	db 20, POISONPOWDER
	db 20, STUN_SPORE
	db 20, SLEEP_POWDER
	db 24, SILVER_WIND
	db 28, WHIRLWIND
	db 32, SAFEGUARD
	db 36, AIR_SLASH
	db 40, BUG_BUZZ
	; db 40, GIGA_DRAIN
	db LEVEL_EVO, GUST
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, BUG_BITE
	db 5, STRUGGLE_BUG
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db LEVEL_EVO, IRON_DEFENSE
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, BUG_BITE
	db 1, STRUGGLE_BUG
	db 12, FURY_CUTTER
	db 16, FOCUS_ENERGY
	db 20, SWORDS_DANCE
	db 24, PAYBACK
	db 28, VENOSHOCK
	db 32, PIN_MISSILE
	db 36, POISON_JAB
	db 40, X_SCISSOR
	db LEVEL_EVO, FURY_CUTTER
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 12, QUICK_ATTACK
	db 16, AERIAL_ACE
	db 20, TWISTER
	db 24, WHIRLWIND
	db 28, AGILITY
	db 32, ROOST
	db 36, AIR_SLASH
	db 40, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 12, QUICK_ATTACK
	db 16, AERIAL_ACE
	db 23, TWISTER
	db 28, WHIRLWIND
	db 33, AGILITY
	db 38, ROOST
	db 43, AIR_SLASH
	db 48, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 16, AERIAL_ACE
	db 23, TWISTER
	db 28, WHIRLWIND
	db 33, AGILITY
	db 40, ROOST
	db 46, AIR_SLASH
	db 52, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 8, FOCUS_ENERGY
	db 12, BITE
	db 16, NASTY_PLOT
	db 20, HEADBUTT
	db 24, PAYBACK
	db 28, CRUNCH
	db 32, SUCKER_PUNCH
	db 36, SUPER_FANG
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 1, FOCUS_ENERGY
	db 12, BITE
	db 16, NASTY_PLOT
	db 20, HEADBUTT
	db 25, PAYBACK
	db 30, CRUNCH
	db 35, SUCKER_PUNCH
	db 40, SUPER_FANG
	db 45, DOUBLE_EDGE
	; db LEVEL_EVO, HEADBUTT
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, GROWL
	db 8, FOCUS_ENERGY
	db 12, QUICK_ATTACK
	db 15, AERIAL_ACE
	db 18, PAYBACK
	db 22, NASTY_PLOT
	db 25, AIR_CUTTER
	db 29, AGILITY
	db 32, ROOST
	db 38, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, GROWL
	db 8, FOCUS_ENERGY
	db 12, QUICK_ATTACK
	db 15, AERIAL_ACE
	db 18, PAYBACK
	db 25, NASTY_PLOT
	db 30, AIR_CUTTER
	db 35, AGILITY
	db 40, ROOST
	db 45, DRILL_PECK
	; db 45, DRILL_RUN
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, NASTY_PLOT
	db 20, ACID_SPRAY
	db 25, SCREECH
	db 28, MEAN_LOOK
	db 33, HAZE
	db 36, TOXIC
	db 40, POISON_JAB
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CRUNCH
	; db 1, THUNDER_FANG
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	db 1, WRAP
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, NASTY_PLOT
	db 20, ACID_SPRAY
	db 27, SCREECH
	db 32, MEAN_LOOK
	db 39, HAZE
	db 44, TOXIC
	db 48, POISON_JAB
	db LEVEL_EVO, CRUNCH
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 4, QUICK_ATTACK
	db 8, THUNDER_WAVE
	db 12, NASTY_PLOT
	db 16, DOUBLE_TEAM
	db 20, SPARK
	db 24, AGILITY
	db 28, SWIFT
	db 32, THUNDERBOLT
	db 36, LIGHT_SCREEN
	db 44, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	; db 1, NASTY_PLOT
	; db 1, CHARM
	; db 1, THUNDER_WAVE
	; db 1, DOUBLE_TEAM
	; db 1, SPARK
	; db 1, LIGHT_SCREEN
	; db 1, THUNDER
	; db 1, THUNDERSHOCK
	; db 1, GROWL
	db 1, AGILITY
	db 1, THUNDERBOLT
	db 1, QUICK_ATTACK
	db LEVEL_EVO, THUNDERPUNCH
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, POISON_STING
	db 6, SAND_ATTACK
	db 9, ROLLOUT
	db 12, FURY_CUTTER
	db 15, RAPID_SPIN
	db 18, BULLDOZE
	db 21, SPIKES
	db 24, IRON_DEFENSE
	db 27, AGILITY
	db 30, SLASH
	db 33, DIG
	db 36, SWORDS_DANCE
	db 39, SANDSTORM
	db 42, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_STING
	db 1, SAND_ATTACK
	; db 1, AGILITY
	db 9, ROLLOUT
	db 12, FURY_CUTTER
	db 15, RAPID_SPIN
	db 18, BULLDOZE
	db 21, SPIKES
	db 26, IRON_DEFENSE
	db 31, SAND_TOMB
	db 36, SLASH
	db 41, DIG
	db 46, SWORDS_DANCE
	db 51, SANDSTORM
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, POISON_STING
	db 8, ENDURE
	db 12, HEADBUTT
	db 16, BITE
	db 20, DOUBLE_KICK
	db 24, COUNTER
	db 28, BODY_SLAM
	db 32, TOXIC
	db 36, CRUNCH
	db 40, SLUDGE_BOMB
	db 44, EARTH_POWER
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, POISON_STING
	db 8, ENDURE
	db 12, HEADBUTT
	db 16, BITE
	db 21, DOUBLE_KICK
	db 25, COUNTER
	db 30, BODY_SLAM
	db 35, TOXIC
	db 40, CRUNCH
	db 45, SLUDGE_BOMB
	db 50, EARTH_POWER
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SUPERPOWER
	; db 1, BITE
	; db 1, GROWL
	; db 1, POISON_STING
	; db 1, TACKLE
	; db 1, DOUBLE_KICK
	db 1, TOXIC
	db 1, CRUNCH
	db 1, EARTH_POWER
	db LEVEL_EVO, SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, POISON_STING
	db 8, FOCUS_ENERGY
	db 12, HEADBUTT
	db 16, DOUBLE_KICK
	db 20, SWORDS_DANCE
	db 24, REVERSAL
	db 28, BODY_SLAM
	db 32, TOXIC
	db 36, SUCKER_PUNCH
	db 40, POISON_JAB
	db 44, EARTH_POWER
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, POISON_STING
	db 8, FOCUS_ENERGY
	db 12, HEADBUTT
	db 16, DOUBLE_KICK
	db 21, SWORDS_DANCE
	db 25, REVERSAL
	db 30, BODY_SLAM
	db 35, TOXIC
	db 40, SUCKER_PUNCH
	db 45, POISON_JAB
	db 50, EARTH_POWER
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	; db 1, MEGAHORN
	; db 1, TOXIC
	; db 1, POISON_STING
	; db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_JAB
	db 1, EARTH_POWER
	db LEVEL_EVO, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, SING
	db 8, DISARMING_VOICE
	db 12, SWEET_KISS
	db 16, DRAIN_KISS
	db 20, ENCORE
	db 24, METRONOME
	db 28, MOONLIGHT
	db 32, PSYCHIC_M
	db 36, BODY_SLAM
	db 40, CALM_MIND
	db 44, DAZZLING_GLEAM
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SING
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	; db 1, CHARM
	; db 1, MINIMIZE
	; db 1, CALM_MIND
	; db 1, TACKLE
	db 1, ENCORE
	db 1, METRONOME
	db 1, MOONLIGHT
	db 1, DAZZLING_GLEAM
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, GROWL
	db 4, DISABLE
	db 8, QUICK_ATTACK
	db 12, SPITE
	db 16, NASTY_PLOT
	db 20, CONFUSE_RAY
	db 24, WILL_O_WISP
	db 28, EXTRASENSORY
	db 32, FIRE_SPIN
	db 36, SAFEGUARD
	db 40, FLAMETHROWER
	db 44, HEX
	db 48, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	; db 1, NASTY_PLOT
	; db 1, SPITE
	; db 1, CONFUSE_RAY
	; db 1, EXTRASENSORY
	; db 1, FLAMETHROWER
	; db 1, SAFEGUARD
	; db 1, EMBER
	; db 1, DISABLE
	db 1, WILL_O_WISP
	db 1, FIRE_SPIN
	db 1, QUICK_ATTACK
	db 1, FIRE_BLAST
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, SING
	db 8, DISARMING_VOICE
	db 12, SWEET_KISS
	db 16, DISABLE
	db 20, REST
	db 24, BODY_SLAM
	db 28, MIMIC
	db 32, NASTY_PLOT
	db 36, PLAY_ROUGH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	; db 1, DISABLE
	; db 1, CHARM
	; db 1, MIMIC
	; db 1, DOUBLE_EDGE
	; db 1, TACKLE
	db 1, SING
	db 1, BODY_SLAM
	db 1, REST
	db 1, PLAY_ROUGH
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SUPERSONIC
	db 4, ASTONISH
	db 8, MEAN_LOOK
	db 12, POISON_STING
	db 16, BITE
	db 20, AIR_CUTTER
	db 24, SCREECH
	db 24, HAZE
	db 28, VENOSHOCK
	db 32, AERIAL_ACE
	db 36, LEECH_LIFE
	db 40, AIR_SLASH
	db 44, SUPER_FANG
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SUPERSONIC
	db 4, ASTONISH
	db 8, MEAN_LOOK
	db 12, POISON_STING
	db 16, BITE
	db 20, AIR_CUTTER
	db 25, SCREECH
	db 25, HAZE
	db 30, VENOSHOCK
	db 35, AERIAL_ACE
	db 40, LEECH_LIFE
	db 45, AIR_SLASH
	db 50, SUPER_FANG
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 4, ACID_SPRAY
	db 8, SWEET_SCENT
	db 12, POISONPOWDER
	db 16, STUN_SPORE
	db 20, SLEEP_POWDER
	db 24, TOXIC
	db 28, DAZZLING_GLEAM
	db 32, MOONLIGHT
	db 36, PETAL_DANCE
	db 40, GIGA_DRAIN
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 4, ACID_SPRAY
	db 8, SWEET_SCENT
	db 12, POISONPOWDER
	db 16, STUN_SPORE
	db 20, SLEEP_POWDER
	db 25, TOXIC
	db 30, DAZZLING_GLEAM
	db 35, MOONLIGHT
	db 40, PETAL_DANCE
	db 45, GIGA_DRAIN
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, STUN_SPORE
	; db 1, SLEEP_POWDER
	; db 1, TOXIC
	; db 1, ABSORB
	; db 1, GROWTH
	; db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 1, MOONLIGHT
	db 1, PETAL_DANCE
	db 1, ACID_SPRAY
	; db LEVEL_EVO, PETAL_BLIZZARD
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, STUN_SPORE
	db 8, POISONPOWDER
	db 12, FURY_CUTTER
	db 16, GROWTH
	db 20, VENOSHOCK
	db 24, SLASH
	db 28, SPORE
	db 32, LEECH_LIFE
	db 36, ENERGY_BALL
	db 40, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CROSS_POISON
	db 1, ABSORB
	db 4, STUN_SPORE
	db 8, POISONPOWDER
	db 12, FURY_CUTTER
	db 16, GROWTH
	db 20, VENOSHOCK
	db 25, SLASH
	db 30, SPORE
	db 35, LEECH_LIFE
	db 40, ENERGY_BALL
	db 45, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, STRUGGLE_BUG
	db 5, SUPERSONIC
	db 10, CONFUSION
	db 15, POISONPOWDER
	db 20, BUG_BITE
	db 25, STUN_SPORE
	db 25, SLEEP_POWDER
	db 30, LEECH_LIFE
	db 35, ZEN_HEADBUTT
	db 40, POISON_JAB
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, STRUGGLE_BUG
	db 5, SUPERSONIC
	db 10, CONFUSION
	db 15, POISONPOWDER
	db 20, BUG_BITE
	db 25, STUN_SPORE
	db 25, SLEEP_POWDER
	db 30, LEECH_LIFE
	db 40, ZEN_HEADBUTT
	db 45, POISON_JAB
	db 50, PSYCHIC_M
	db 55, BUG_BUZZ
	db LEVEL_EVO, GUST
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, GROWL
	db 8, ASTONISH
	db 12, MUD_SLAP
	db 16, BULLDOZE
	db 20, SUCKER_PUNCH
	db 24, SLASH
	db 28, SANDSTORM
	db 32, DIG
	db 36, EARTH_POWER
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, GROWL
	db 8, ASTONISH
	db 12, MUD_SLAP
	db 16, BULLDOZE
	db 20, SUCKER_PUNCH
	db 24, SLASH
	db 30, SANDSTORM
	db 36, DIG
	db 42, EARTH_POWER
	db 48, EARTHQUAKE
	db 54, TRI_ATTACK
	db LEVEL_EVO, SAND_TOMB
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FOCUS_ENERGY
	db 8, QUICK_ATTACK
	db 12, PAY_DAY
	db 16, BITE
	db 20, SCREECH
	db 24, PAYBACK
	db 28, SLASH
	db 32, NASTY_PLOT
	db 36, FACADE
	db 40, NIGHT_SLASH
	db 44, PLAY_ROUGH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FOCUS_ENERGY
	db 8, QUICK_ATTACK
	db 12, PAY_DAY
	db 16, BITE
	db 20, SCREECH
	db 24, PAYBACK
	db 28, SLASH
	db 35, NASTY_PLOT
	db 40, FACADE
	db 45, NIGHT_SLASH
	db 50, PLAY_ROUGH
	db LEVEL_EVO, POWER_GEM
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, CONFUSION
	db 12, WATER_PULSE
	db 16, DISABLE
	db 20, BUBBLEBEAM
	db 24, HYPNOSIS
	db 28, ZEN_HEADBUTT
	db 32, AQUA_TAIL
	db 36, SCREECH
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AQUA_JET
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, CONFUSION
	db 12, WATER_PULSE
	db 16, DISABLE
	db 20, BUBBLEBEAM
	db 24, HYPNOSIS
	db 28, ZEN_HEADBUTT
	db 32, AQUA_TAIL
	db 40, SCREECH
	db 45, HYDRO_PUMP
	db LEVEL_EVO, AQUA_JET
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, MUD_SLAP
	db 16, LOW_SWEEP
	db 20, BULK_UP
	db 24, SWAGGER
	db 28, PAYBACK
	db 32, SCREECH
	db 36, CROSS_CHOP
	db 40, CLOSE_COMBAT
	db 44, OUTRAGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, MUD_SLAP
	db 16, LOW_SWEEP
	db 20, BULK_UP
	db 24, SWAGGER
	db 28, PAYBACK
	db 35, SCREECH
	db 40, CROSS_CHOP
	db 45, CLOSE_COMBAT
	db 50, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, EMBER
	db 8, BITE
	db 12, AGILITY
	db 16, FLAME_WHEEL
	db 20, FIRE_FANG
	db 24, ROAR
	db 28, REVERSAL
	db 32, CRUNCH
	db 36, FLAMETHROWER
	db 40, PLAY_ROUGH
	db 44, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AGILITY
	; db 1, FIRE_FANG
	; db 1, CRUNCH
	; db 1, FLAMETHROWER
	; db 1, ROAR
	; db 1, PLAY_ROUGH
	; db 1, REVERSAL
	; db 1, FLARE_BLITZ
	; db 1, EMBER
	db 1, FLAME_WHEEL
	db 1, GROWL
	db 1, BITE
	db LEVEL_EVO, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, BUBBLEBEAM
	db 16, HEADBUTT
	db 20, BELLY_DRUM
	db 24, WHIRLPOOL
	db 28, RAIN_DANCE
	db 32, BODY_SLAM
	db 36, EARTH_POWER
	db 40, HYDRO_PUMP
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	; db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db EVOLVE_HOLD, KINGS_ROCK, 40, POLITOED
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, BUBBLEBEAM
	db 16, HEADBUTT
	db 20, BELLY_DRUM
	db 24, WHIRLPOOL
	db 30, RAIN_DANCE
	db 35, BODY_SLAM
	db 40, EARTH_POWER
	db 45, HYDRO_PUMP
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	; db 1, RAIN_DANCE
	; db 1, EARTH_POWER
	; db 1, HYDRO_PUMP
	; db 1, DOUBLE_EDGE
	; db 1, WATER_GUN
	; db 1, HYPNOSIS
	; db 1, TACKLE
	; db 1, MUD_SLAP
	db 1, BUBBLEBEAM
	db 1, BODY_SLAM
	db 1, BELLY_DRUM
	db 60, LIQUIDATION
	db LEVEL_EVO, BRICK_BREAK
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	; db EVOLVE_TRADE, -1, ALAKAZAM
	db EVOLVE_HOLD, TWISTEDSPOON, 40, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 18, DISABLE
	db 18, REFLECT
	db 24, CALM_MIND
	db 28, PSYCHO_CUT
	db 32, RECOVER
	db 36, ZEN_HEADBUTT
	db 40, FUTURE_SIGHT
	db 44, PSYCHIC_M
	db LEVEL_EVO, CONFUSION
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 18, DISABLE
	db 18, REFLECT
	db 24, CALM_MIND
	db 28, PSYCHO_CUT
	db 32, RECOVER
	db 36, ZEN_HEADBUTT
	db 40, FUTURE_SIGHT
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 13, LOW_SWEEP
	db 18, REVENGE
	db 22, BULK_UP
	db 26, SEISMIC_TOSS
	db 32, CROSS_CHOP
	db 38, DOUBLE_EDGE
	db 44, CLOSE_COMBAT
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	; db EVOLVE_TRADE, -1, MACHAMP
	db EVOLVE_HOLD, BLACKBELT_I, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 13, LOW_SWEEP
	db 18, REVENGE
	db 22, BULK_UP
	db 26, SEISMIC_TOSS
	db 35, CROSS_CHOP
	db 42, DOUBLE_EDGE
	db 48, CLOSE_COMBAT
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 13, LOW_SWEEP
	db 18, REVENGE
	db 22, BULK_UP
	db 26, SEISMIC_TOSS
	db 35, CROSS_CHOP
	db 44, DOUBLE_EDGE
	db 50, CLOSE_COMBAT
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 4, WRAP
	db 8, GROWTH
	db 12, ACID_SPRAY
	db 15, POISONPOWDER
	db 15, STUN_SPORE
	db 20, SLEEP_POWDER
	db 24, RAZOR_LEAF
	db 28, SWEET_SCENT
	db 32, SYNTHESIS
	db 36, SUNNY_DAY
	db 40, ENERGY_BALL
	db 44, POISON_JAB
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 4, WRAP
	db 8, GROWTH
	db 12, ACID_SPRAY
	db 15, POISONPOWDER
	db 15, STUN_SPORE
	db 20, SLEEP_POWDER
	db 25, RAZOR_LEAF
	db 30, SWEET_SCENT
	db 35, SYNTHESIS
	db 40, SUNNY_DAY
	db 45, ENERGY_BALL
	db 50, POISON_JAB
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	; db 1, VINE_WHIP
	; db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 1, ACID_SPRAY
	db LEVEL_EVO, LEAF_STORM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, WRAP
	db 4, WATER_GUN
	db 8, SUPERSONIC
	db 12, ACID_SPRAY
	db 16, WATER_PULSE
	db 20, ACID_ARMOR
	db 24, HEX
	db 28, SAFEGUARD
	db 32, SCREECH
	db 36, POISON_JAB
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	; db 1, REFLECT_TYPE
	db 1, POISON_STING
	db 1, WRAP
	db 4, WATER_GUN
	db 8, SUPERSONIC
	db 12, ACID_SPRAY
	db 16, WATER_PULSE
	db 20, ACID_ARMOR
	db 24, HEX
	db 28, SAFEGUARD
	db 35, SCREECH
	db 40, POISON_JAB
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ROLLOUT
	db 8, ROCK_THROW
	db 12, MUD_SLAP
	db 16, IRON_DEFENSE
	db 20, BULLDOZE
	db 24, SELFDESTRUCT
	db 28, ROCK_SLIDE
	db 32, DOUBLE_EDGE
	db 36, EARTHQUAKE
	db 40, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	; db EVOLVE_TRADE, -1, GOLEM
	db EVOLVE_HOLD, HARD_STONE, 40, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ROLLOUT
	db 8, ROCK_THROW
	db 12, MUD_SLAP
	db 16, IRON_DEFENSE
	db 20, BULLDOZE
	db 24, SELFDESTRUCT
	db 30, ROCK_SLIDE
	db 35, DOUBLE_EDGE
	db 40, EARTHQUAKE
	db 45, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ROLLOUT
	db 8, ROCK_THROW
	db 12, MUD_SLAP
	db 16, IRON_DEFENSE
	db 20, BULLDOZE
	db 24, SELFDESTRUCT
	db 30, ROCK_SLIDE
	db 35, DOUBLE_EDGE
	db 42, EARTHQUAKE
	db 50, STONE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, EMBER
	db 10, HEADBUTT
	db 14, FLAME_WHEEL
	db 18, AGILITY
	db 24, FIRE_SPIN
	db 30, DOUBLE_KICK
	db 36, FIRE_BLAST
	db 42, DOUBLE_EDGE
	db 48, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, EMBER
	db 10, HEADBUTT
	db 14, FLAME_WHEEL
	db 18, AGILITY
	db 24, FIRE_SPIN
	db 30, DOUBLE_KICK
	db 36, FIRE_BLAST
	db 45, DOUBLE_EDGE
	db 50, FLARE_BLITZ
	db LEVEL_EVO, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 36, SLOWBRO
	; db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db EVOLVE_HOLD, KINGS_ROCK, 36, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 4, WATER_GUN
	db 8, HYPNOSIS
	db 12, CONFUSION
	db 16, DISABLE
	db 20, WATER_PULSE
	db 24, HEADBUTT
	db 28, ZEN_HEADBUTT
	db 33, CALM_MIND
	db 38, RECOVER
	db 42, PSYCHIC_M
	db 46, RAIN_DANCE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 4, WATER_GUN
	db 8, HYPNOSIS
	db 12, CONFUSION
	db 16, DISABLE
	db 20, WATER_PULSE
	db 24, HEADBUTT
	db 28, ZEN_HEADBUTT
	db 33, CALM_MIND
	db 40, RECOVER
	db 45, PSYCHIC_M
	db 50, RAIN_DANCE
	db LEVEL_EVO, WITHDRAW
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TACKLE
	db 6, SUPERSONIC
	db 10, THUNDER_WAVE
	db 16, SPARK
	db 22, SCREECH
	db 28, LIGHT_SCREEN
	db 34, THUNDERBOLT
	db 40, FLASH_CANNON
	db 44, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TACKLE
	db 6, SUPERSONIC
	db 10, THUNDER_WAVE
	db 16, SPARK
	db 22, SCREECH
	db 28, LIGHT_SCREEN
	db 40, THUNDERBOLT
	db 45, FLASH_CANNON
	db 50, THUNDER
	db LEVEL_EVO, TRI_ATTACK
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, SAND_ATTACK
	db 8, FURY_CUTTER
	db 12, FALSE_SWIPE
	db 16, AERIAL_ACE
	db 20, RAZOR_LEAF
	db 24, AGILITY
	db 28, AIR_CUTTER
	db 32, SLASH
	db 38, SWORDS_DANCE
	db 44, AIR_SLASH
	; db 65, BRAVE_BIRD
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 32, DODRIO
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 8, QUICK_ATTACK
	db 12, AERIAL_ACE
	db 16, FOCUS_ENERGY
	db 20, AGILITY
	db 25, FLAIL
	db 30, ROOST
	db 35, SWORDS_DANCE
	db 40, DRILL_PECK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, GROWL
	db 5, SAND_ATTACK
	db 8, QUICK_ATTACK
	db 12, AERIAL_ACE
	db 16, FOCUS_ENERGY
	db 20, AGILITY
	db 25, FLAIL
	db 30, ROOST
	db 40, SWORDS_DANCE
	db 45, DRILL_PECK
	db LEVEL_EVO, TRI_ATTACK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 8, ENCORE
	db 12, ICY_WIND
	db 16, ICE_SHARD
	db 20, AQUA_JET
	db 24, REST
	db 28, AURORA_BEAM
	db 32, SAFEGUARD
	db 36, AQUA_TAIL
	db 40, ICE_BEAM
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 8, ENCORE
	db 12, ICY_WIND
	db 16, ICE_SHARD
	db 20, AQUA_JET
	db 24, REST
	db 28, AURORA_BEAM
	db 32, SAFEGUARD
	db 40, AQUA_TAIL
	db 45, ICE_BEAM
	db 50, BLIZZARD
	db LEVEL_EVO, HAIL
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 8, MUD_SLAP
	db 12, DISABLE
	db 16, SLUDGE
	db 20, MINIMIZE
	db 24, ACID_ARMOR
	db 28, SCREECH
	db 32, ENDURE
	db 36, SLUDGE_BOMB
	db 40, POISON_JAB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 8, MUD_SLAP
	db 12, DISABLE
	db 16, SLUDGE
	db 20, MINIMIZE
	db 24, ACID_ARMOR
	db 28, SCREECH
	db 32, ENDURE
	db 36, SLUDGE_BOMB
	db 40, POISON_JAB
	db LEVEL_EVO, TOXIC
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, WITHDRAW
	db 8, ICE_SHARD
	db 12, SUPERSONIC
	db 16, WHIRLPOOL
	db 20, PROTECT
	db 24, AURORA_BEAM
	db 28, BUBBLEBEAM
	db 32, ICE_BEAM
	db 36, HYDRO_PUMP
	db 40, LIQUIDATION
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HYDRO_PUMP
	db 1, WITHDRAW
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 50, ICICLE_CRASH
	db LEVEL_EVO, SPIKES
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, POISON_GAS
	db 8, MEAN_LOOK
	db 12, CURSE
	db 16, SPITE
	db 20, HYPNOSIS
	db 24, HEX
	db 28, NIGHT_SHADE
	db 32, DREAM_EATER
	db 36, DARK_PULSE
	db 40, SHADOW_BALL
	db 44, DESTINY_BOND
	; db 44, SUCKER_PUNCH
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	; db EVOLVE_TRADE, -1, GENGAR
	db EVOLVE_HOLD, SPELL_TAG, 40, GENGAR
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, POISON_GAS
	db 8, MEAN_LOOK
	db 12, CURSE
	db 16, SPITE
	db 20, HYPNOSIS
	db 24, HEX
	db 30, NIGHT_SHADE
	db 35, DREAM_EATER
	db 40, DARK_PULSE
	db 45, SHADOW_BALL
	db 50, DESTINY_BOND
	db LEVEL_EVO, SHADOW_CLAW
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, POISON_GAS
	db 8, MEAN_LOOK
	db 12, CURSE
	db 16, SPITE
	db 20, HYPNOSIS
	db 24, HEX
	db 30, NIGHT_SHADE
	db 35, DREAM_EATER
	db 40, DARK_PULSE
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	; db EVOLVE_TRADE, METAL_COAT, STEELIX
	db EVOLVE_HOLD, METAL_COAT, 36, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WRAP
	db 4, ROCK_THROW
	db 8, IRON_DEFENSE
	db 12, BULLDOZE
	db 16, SAND_TOMB
	db 20, ROCK_SLIDE
	db 24, SANDSTORM
	db 28, DIG
	db 32, IRON_TAIL
	db 36, DOUBLE_EDGE
	db 40, STONE_EDGE
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DISABLE
	db 8, CONFUSION
	db 12, HEADBUTT
	db 16, POISON_GAS
	db 20, HYPNOSIS
	db 24, CALM_MIND
	db 28, DREAM_EATER
	db 32, ZEN_HEADBUTT
	db 36, NASTY_PLOT
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DISABLE
	db 8, CONFUSION
	db 12, HEADBUTT
	db 16, POISON_GAS
	db 20, HYPNOSIS
	db 24, CALM_MIND
	db 30, DREAM_EATER
	db 36, ZEN_HEADBUTT
	db 42, NASTY_PLOT
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, FALSE_SWIPE
	db 8, METAL_CLAW
	db 12, MUD_SLAP
	db 16, BUBBLEBEAM
	db 20, IRON_DEFENSE
	db 24, ENDURE
	db 28, FLAIL
	db 34, SWORDS_DANCE
	db 38, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, FALSE_SWIPE
	db 8, METAL_CLAW
	db 12, MUD_SLAP
	db 16, BUBBLEBEAM
	db 20, IRON_DEFENSE
	db 24, ENDURE
	db 30, FLAIL
	db 38, SWORDS_DANCE
	db 44, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 8, ROLLOUT
	db 12, SWIFT
	db 16, SPARK
	db 20, CHARGE_BEAM
	db 24, SCREECH
	db 28, LIGHT_SCREEN
	db 32, MIRROR_COAT
	db 36, SELFDESTRUCT
	db 40, THUNDERBOLT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 8, ROLLOUT
	db 12, SWIFT
	db 16, SPARK
	db 20, CHARGE_BEAM
	db 24, SCREECH
	db 28, LIGHT_SCREEN
	db 35, MIRROR_COAT
	db 40, SELFDESTRUCT
	db 45, THUNDERBOLT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 8, LEECH_SEED
	db 12, CONFUSION
	db 16, HYPNOSIS
	db 20, SEED_BOMB
	db 24, REFLECT
	db 28, SYNTHESIS
	db 32, GIGA_DRAIN
	db 36, EXTRASENSORY
	db 40, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	; db 1, ABSORB
	; db 1, HYPNOSIS
	; db 1, GIGA_DRAIN
	; db 1, SOLARBEAM
	; db 1, REFLECT
	; db 1, LEECH_SEED
	; db 1, CONFUSION
	db 1, SEED_BOMB
	db 1, SYNTHESIS
	db 1, EXTRASENSORY
	db 50, LEAF_STORM
	db LEVEL_EVO, WOOD_HAMMER
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FALSE_SWIPE
	db 8, MUD_SLAP
	db 12, HEADBUTT
	db 16, BONE_RUSH
	db 20, FOCUS_ENERGY
	db 24, BODY_SLAM
	db 28, ENDURE
	db 32, DOUBLE_EDGE
	db 36, SWORDS_DANCE
	db 40, BONEMERANG
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FALSE_SWIPE
	db 8, MUD_SLAP
	db 12, HEADBUTT
	db 16, BONE_RUSH
	db 20, FOCUS_ENERGY
	db 24, BODY_SLAM
	db 28, ENDURE
	db 35, DOUBLE_EDGE
	db 40, SWORDS_DANCE
	db 45, BONEMERANG
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, HEADBUTT
	db 16, BULK_UP
	db 20, COUNTER
	db 25, REVENGE
	db 30, DOUBLE_KICK
	db 35, ENDURE
	db 35, REVERSAL
	db 40, HI_JUMP_KICK
	db 45, CLOSE_COMBAT
	db LEVEL_EVO, BRICK_BREAK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, HEADBUTT
	db 16, BULK_UP
	db 20, COUNTER
	db 25, REVENGE
	db 30, MACH_PUNCH
	db 35, THUNDERPUNCH
	db 35, ICE_PUNCH
	db 35, FIRE_PUNCH
	db 40, CROSS_CHOP
	db 45, CLOSE_COMBAT
	db LEVEL_EVO, DRAIN_PUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WRAP
	db 6, ROLLOUT
	db 12, HEADBUTT
	db 16, BELLY_DRUM
	db 20, DISABLE
	db 24, REST
	db 28, BODY_SLAM
	db 32, BULLDOZE
	db 36, ZEN_HEADBUTT
	db 40, GIGA_IMPACT
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 4, SMOG
	db 8, SMOKESCREEN
	db 12, SLUDGE
	db 16, HAZE
	db 20, HEADBUTT
	db 24, PAYBACK
	db 28, SELFDESTRUCT
	db 32, VENOSHOCK
	db 36, TOXIC
	db 40, SLUDGE_BOMB
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 4, SMOG
	db 8, SMOKESCREEN
	db 12, SLUDGE
	db 16, HAZE
	db 20, HEADBUTT
	db 24, PAYBACK
	db 28, SELFDESTRUCT
	db 32, VENOSHOCK
	db 40, TOXIC
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, BULLDOZE
	db 10, ROCK_SMASH
	db 14, HEADBUTT
	db 20, BODY_SLAM
	db 28, ROCK_SLIDE
	db 32, DOUBLE_EDGE
	db 38, EARTHQUAKE
	db 44, STONE_EDGE
	db 48, GIGA_IMPACT
	; db 55, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, BULLDOZE
	db 10, ROCK_SMASH
	db 14, HEADBUTT
	db 20, BODY_SLAM
	db 28, ROCK_SLIDE
	db 32, DOUBLE_EDGE
	db 38, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, GIGA_IMPACT
	db LEVEL_EVO, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 6, SWEET_KISS
	db 10, DISARMING_VOICE
	db 14, HEAL_BELL
	db 18, SING
	db 22, DRAIN_KISS
	db 26, CALM_MIND
	db 30, SAFEGUARD
	db 36, LIGHT_SCREEN
	db 42, SOFTBOILED
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, WRAP
	db 5, VINE_WHIP
	db 10, STUN_SPORE
	db 15, GROWTH
	db 20, POISONPOWDER
	db 25, SLEEP_POWDER
	db 30, ANCIENTPOWER
	db 35, GIGA_DRAIN
	db 40, ENERGY_BALL
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 12, BITE
	db 16, HEADBUTT
	db 20, FOCUS_ENERGY
	db 24, ENDURE
	db 28, REVERSAL
	db 32, SUCKER_PUNCH
	db 36, CRUNCH
	db 40, OUTRAGE
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, SMOKESCREEN
	db 8, TWISTER
	db 12, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 20, DRAGONBREATH
	db 24, AGILITY
	db 30, DRAGON_PULSE
	db 34, RAIN_DANCE
	db 38, DRAGON_DANCE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	; db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db EVOLVE_HOLD, DRAGON_SCALE, 45, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, SMOKESCREEN
	db 8, TWISTER
	db 12, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 20, DRAGONBREATH
	db 24, AGILITY
	db 30, DRAGON_PULSE
	db 38, RAIN_DANCE
	db 44, DRAGON_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, SUPERSONIC
	db 10, WATER_PULSE
	db 15, HEADBUTT
	db 20, AGILITY
	db 25, RAIN_DANCE
	db 30, FLAIL
	db 35, AQUA_TAIL
	db 40, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, SUPERSONIC
	db 10, WATER_PULSE
	db 15, HEADBUTT
	db 20, AGILITY
	db 25, RAIN_DANCE
	db 30, FLAIL
	db 35, AQUA_TAIL
	db 40, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, RAPID_SPIN
	db 12, SWIFT
	db 16, BUBBLEBEAM
	db 20, LIGHT_SCREEN
	db 24, POWER_GEM
	db 28, RAIN_DANCE
	db 32, RECOVER
	db 36, PSYCHIC_M
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TACKLE
	; db 1, WATER_GUN
	; db 1, RAPID_SPIN
	; db 1, SWIFT
	; db 1, LIGHT_SCREEN
	; db 1, PSYCHIC_M
	; db 1, HYDRO_PUMP
	db 1, BUBBLEBEAM
	db 1, POWER_GEM
	db 1, RAIN_DANCE
	db 1, RECOVER
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ENCORE
	db 5, CONFUSION
	db 10, MIMIC
	db 15, PROTECT
	db 20, LIGHT_SCREEN
	db 20, REFLECT
	db 25, SAFEGUARD
	db 30, CALM_MIND
	db 35, PSYCHIC_M
	db 40, ZEN_HEADBUTT
	db 45, DAZZLING_GLEAM
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	; db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db EVOLVE_HOLD, METAL_COAT, 36, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, FURY_CUTTER
	db 8, FALSE_SWIPE
	db 12, SILVER_WIND
	db 16, DOUBLE_TEAM
	db 20, AERIAL_ACE
	db 24, SLASH
	db 28, FOCUS_ENERGY
	db 32, AGILITY
	db 36, AIR_SLASH
	db 40, SWORDS_DANCE
	db 44, X_SCISSOR
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 5, POWDER_SNOW
	db 10, MEAN_LOOK
	db 15, CONFUSION
	db 20, LOVELY_KISS
	db 25, ICY_WIND
	db 30, ICE_PUNCH
	db 35, PERISH_SONG
	db 40, PSYCHIC_M
	db 45, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, QUICK_ATTACK
	db 5, THUNDER_WAVE
	db 10, SWIFT
	db 15, SPARK
	db 20, SCREECH
	db 25, THUNDERPUNCH
	db 30, LOW_SWEEP
	db 35, THUNDERBOLT
	db 40, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, EMBER
	db 5, SMOKESCREEN
	db 10, SMOG
	db 15, FLAME_WHEEL
	db 20, POISON_GAS
	db 25, FIRE_PUNCH
	db 30, LOW_SWEEP
	db 35, FLAMETHROWER
	db 40, SUNNY_DAY
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WRAP
	db 5, FALSE_SWIPE
	db 10, BUG_BITE
	db 15, FURY_CUTTER
	db 20, ENDURE
	db 25, REVERSAL
	db 30, FOCUS_ENERGY
	db 35, X_SCISSOR
	db 40, SWORDS_DANCE
	db 45, SUPERPOWER
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SWAGGER
	db 10, HEADBUTT
	db 15, BULLDOZE
	db 20, PAYBACK
	db 25, BODY_SLAM
	db 30, ZEN_HEADBUTT
	db 35, REST
	db 40, DOUBLE_EDGE
	db 45, GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, TACKLE
	db 15, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, TACKLE
	; db 4, WHIRLPOOL
	db 25, TWISTER
	db 30, ICE_FANG
	db 35, RAIN_DANCE
	db 40, CRUNCH
	db 40, DRAGON_DANCE
	db 45, AQUA_TAIL
	db 50, HURRICANE
	db 50, HYDRO_PUMP
	db 55, HYPER_BEAM
	db LEVEL_EVO, BITE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 5, SING
	db 10, MIST
	db 15, ICE_SHARD
	db 20, WATER_PULSE
	db 25, BODY_SLAM
	db 30, RAIN_DANCE
	db 35, ICE_BEAM
	db 40, PERISH_SONG
	db 45, HYDRO_PUMP
	db 50, BLIZZARD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SUN_STONE, ESPEON
	db EVOLVE_ITEM, MOON_STONE, UMBREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 25, MIMIC
	db 30, CALM_MIND
	db 35, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 20, HAZE
	db 25, WATER_PULSE
	db 30, AURORA_BEAM
	db 35, CALM_MIND
	db 40, AQUA_TAIL
	db 45, DOUBLE_EDGE
	db 50, HYDRO_PUMP
	db LEVEL_EVO, WATER_GUN
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 20, THUNDER_WAVE
	db 25, THUNDER_FANG
	db 30, PIN_MISSILE
	db 35, CALM_MIND
	db 40, THUNDERBOLT
	db 45, DOUBLE_EDGE
	db 50, THUNDER
	db LEVEL_EVO, THUNDERSHOCK
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 25, FIRE_FANG
	db 30, FIRE_SPIN
	db 35, CALM_MIND
	db 40, FLAMETHROWER
	db 45, DOUBLE_EDGE
	db 50, FLARE_BLITZ
	db LEVEL_EVO, EMBER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	; db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db EVOLVE_HOLD, UP_GRADE, 40, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, CONVERSION2
	db 10, THUNDERSHOCK
	db 15, THUNDER_WAVE
	db 20, HEADBUTT
	db 25, SPARK
	db 30, TRI_ATTACK
	db 35, THUNDERBOLT
	db 40, RECOVER
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 5, WATER_GUN
	db 10, SAND_ATTACK
	db 15, ROLLOUT
	db 20, MUD_SLAP
	db 25, ANCIENTPOWER
	db 30, BUBBLEBEAM
	db 35, PROTECT
	db 40, ROCK_SLIDE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 5, WATER_GUN
	db 10, SAND_ATTACK
	db 15, ROLLOUT
	db 20, MUD_SLAP
	db 25, ANCIENTPOWER
	db 30, BUBBLEBEAM
	db 35, PROTECT
	db 40, ROCK_SLIDE
	db 50, HYDRO_PUMP
	db LEVEL_EVO, CRUNCH
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 5, WATER_GUN
	db 10, SAND_ATTACK
	db 15, AQUA_JET
	db 20, MUD_SLAP
	db 25, ANCIENTPOWER
	db 30, LEECH_LIFE
	db 35, SWORDS_DANCE
	db 40, LIQUIDATION
	db 45, STONE_EDGE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 10, SAND_ATTACK
	db 15, AQUA_JET
	db 20, MUD_SLAP
	db 25, ANCIENTPOWER
	db 30, LEECH_LIFE
	db 35, SWORDS_DANCE
	db 40, LIQUIDATION
	db 50, STONE_EDGE
	db LEVEL_EVO, SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, BITE
	db 10, ANCIENTPOWER
	db 15, AERIAL_ACE
	db 20, ROAR
	db 25, ROOST
	db 30, CRUNCH
	db 35, ROCK_SLIDE
	db 40, SCREECH
	db 45, STONE_EDGE
	db 50, HYPER_BEAM
	db 55, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, ROLLOUT
	db 10, REST
	db 15, BULLDOZE
	db 20, BITE
	db 25, SLEEP_TALK
	db 30, ZEN_HEADBUTT
	db 35, CRUNCH
	db 40, BODY_SLAM
	db 45, BELLY_DRUM
	db 50, EARTHQUAKE
	db 55, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	; db 1, GUST
	; db 1, MIST
	; db 5, POWDER_SNOW
	; db 10, REFLECT
	; db 15, ICE_SHARD
	; db 20, AGILITY
	; db 25, ANCIENTPOWER
	; db 30, ICY_WIND
	db 35, ROOST
	; db 40, ICE_BEAM
	db 45, HAIL
	db 50, HURRICANE
	db 55, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	; db 1, PLUCK
	; db 1, THUNDER_WAVE
	; db 5, THUNDERSHOCK
	; db 10, LIGHT_SCREEN
	; db 15, AERIAL_ACE
	; db 20, AGILITY
	; db 25, ANCIENTPOWER
	; db 30, AIR_CUTTER
	db 35, ROOST
	db 40, DRILL_PECK
	; db 45, THUNDERBOLT
	db 50, RAIN_DANCE
	db 55, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	; db 1, GUST
	; db 1, ENDURE
	; db 5, EMBER
	; db 10, SAFEGUARD
	; db 15, AERIAL_ACE
	; db 20, AGILITY
	; db 25, ANCIENTPOWER
	; db 30, FIRE_SPIN
	db 35, ROOST
	db 40, AIR_SLASH
	; db 45, FLAMETHROWER
	db 50, SUNNY_DAY
	db 55, OVERHEAT
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, THUNDER_WAVE
	db 8, TWISTER
	db 12, AGILITY
	db 16, HEADBUTT
	db 20, DRAGONBREATH
	db 24, SAFEGUARD
	db 28, AQUA_TAIL
	db 32, RAIN_DANCE
	db 36, DRAGON_DANCE
	db 40, OUTRAGE
	db 44, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, THUNDER_WAVE
	db 8, TWISTER
	db 12, AGILITY
	db 16, HEADBUTT
	db 20, DRAGONBREATH
	db 24, SAFEGUARD
	db 28, AQUA_TAIL
	db 35, RAIN_DANCE
	db 40, DRAGON_DANCE
	db 45, OUTRAGE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	; db 1, WRAP
	; db 4, THUNDER_WAVE
	; db 8, TWISTER
	; db 12, AGILITY
	; db 16, HEADBUTT
	; db 20, DRAGONBREATH
	; db 24, SAFEGUARD
	; db 28, AQUA_TAIL
	; db 35, RAIN_DANCE
	; db 40, DRAGON_DANCE
	db 45, OUTRAGE
	db 50, HYPER_BEAM
	db 60, ROOST
	db 65, EXTREMESPEED
	db LEVEL_EVO, HURRICANE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CONFUSION
	; db 1, DISABLE
	; db 22, SWIFT
	; db 33, ZEN_HEADBUTT
	; db 44, FUTURE_SIGHT
	; db 55, MIST
	; db 66, PSYCHIC_M
	; db 77, CALM_MIND
	; db 88, RECOVER
	; db 99, SAFEGUARD
	db 1, PSYCHIC_M
	db 1, CALM_MIND
	db 1, RECOVER
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TACKLE
	; db 10, TRANSFORM
	; db 20, CONFUSION
	; db 30, METRONOME
	; db 40, PSYCHIC_M
	; db 50, ANCIENTPOWER
	db 1, TRANSFORM
	db 1, METRONOME
	db 1, PSYCHIC_M
	db 1, ANCIENTPOWER
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, RAZOR_LEAF
	db 8, POISONPOWDER
	db 12, SYNTHESIS
	db 16, REFLECT
	db 16, LIGHT_SCREEN
	db 20, SWEET_SCENT
	db 24, BODY_SLAM
	db 28, SAFEGUARD
	db 32, ENERGY_BALL
	db 36, AROMATHERAPY
	db 40, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, RAZOR_LEAF
	db 8, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 18, LIGHT_SCREEN
	db 23, SWEET_SCENT
	db 28, BODY_SLAM
	db 33, SAFEGUARD
	db 38, ENERGY_BALL
	db 43, AROMATHERAPY
	db 48, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, RAZOR_LEAF
	db 8, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 18, LIGHT_SCREEN
	db 23, SWEET_SCENT
	db 28, BODY_SLAM
	db 35, SAFEGUARD
	db 40, ENERGY_BALL
	db 45, AROMATHERAPY
	db 50, SOLARBEAM
	db LEVEL_EVO, PETAL_DANCE
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 5, EMBER
	db 8, ROLLOUT
	db 12, QUICK_ATTACK
	db 16, FLAME_WHEEL
	db 20, SWIFT
	db 24, ENDURE
	db 28, SUNNY_DAY
	db 32, FLAMETHROWER
	db 36, DOUBLE_EDGE
	db 40, OVERHEAT
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 5, EMBER
	db 8, ROLLOUT
	db 12, QUICK_ATTACK
	db 18, FLAME_WHEEL
	db 23, SWIFT
	db 28, ENDURE
	db 33, SUNNY_DAY
	db 38, FLAMETHROWER
	db 43, DOUBLE_EDGE
	db 48, OVERHEAT
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 5, EMBER
	db 8, ROLLOUT
	db 12, QUICK_ATTACK
	db 18, FLAME_WHEEL
	db 23, SWIFT
	db 28, ENDURE
	db 33, SUNNY_DAY
	db 40, FLAMETHROWER
	db 45, DOUBLE_EDGE
	db 50, OVERHEAT
	db LEVEL_EVO, REVERSAL
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, LOW_SWEEP
	db 20, ICE_FANG
	db 24, SLASH
	db 28, SCREECH
	db 32, AQUA_TAIL
	db 36, CRUNCH
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, LOW_SWEEP
	db 23, ICE_FANG
	db 28, SLASH
	db 33, SCREECH
	db 38, AQUA_TAIL
	db 43, CRUNCH
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, LOW_SWEEP
	db 23, ICE_FANG
	db 28, SLASH
	db 35, SCREECH
	db 40, AQUA_TAIL
	db 45, CRUNCH
	db 50, HYDRO_PUMP
	db LEVEL_EVO, SUPERPOWER
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, QUICK_ATTACK
	db 12, SCREECH
	db 16, HEADBUTT
	db 20, REST
	db 24, ENDURE
	db 28, REVERSAL
	db 32, BELLY_DRUM
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, QUICK_ATTACK
	db 12, SCREECH
	db 16, HEADBUTT
	db 20, REST
	db 25, ENDURE
	db 30, REVERSAL
	db 35, BELLY_DRUM
	db 40, SUCKER_PUNCH
	db 45, DOUBLE_EDGE
	db LEVEL_EVO, AGILITY
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, PLUCK
	db 8, CONFUSION
	db 12, HYPNOSIS
	db 16, REFLECT
	db 20, OMINOUS_WIND
	db 24, ROOST
	db 28, EXTRASENSORY
	db 32, DREAM_EATER
	db 36, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 40, AIR_SLASH
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, PLUCK
	db 8, CONFUSION
	db 12, HYPNOSIS
	db 16, REFLECT
	db 20, OMINOUS_WIND
	db 25, ROOST
	db 30, EXTRASENSORY
	db 35, DREAM_EATER
	db 40, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 45, AIR_SLASH
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, STRUGGLE_BUG
	db 8, SWIFT
	db 12, REFLECT
	db 12, LIGHT_SCREEN
	db 12, SAFEGUARD
	db 16, MACH_PUNCH
	db 20, ROOST
	db 24, AERIAL_ACE
	db 28, AGILITY
	db 32, BUG_BUZZ
	db 36, AIR_SLASH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, STRUGGLE_BUG
	db 8, SWIFT
	db 12, REFLECT
	db 12, LIGHT_SCREEN
	db 12, SAFEGUARD
	db 16, MACH_PUNCH
	db 20, ROOST
	db 25, AERIAL_ACE
	db 30, AGILITY
	db 35, BUG_BUZZ
	db 40, AIR_SLASH
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 4, ABSORB
	db 8, INFESTATION
	db 12, GLARE
	db 16, NIGHT_SHADE
	db 20, PIN_MISSILE
	db 24, DISABLE
	db 28, NASTY_PLOT
	db 32, SUCKER_PUNCH
	db 36, LEECH_LIFE
	db 40, VENOSHOCK
	db 44, POISON_JAB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 4, ABSORB
	db 8, INFESTATION
	db 12, GLARE
	db 16, NIGHT_SHADE
	db 20, PIN_MISSILE
	db 25, DISABLE
	db 30, NASTY_PLOT
	db 35, SUCKER_PUNCH
	db 40, LEECH_LIFE
	db 45, VENOSHOCK
	db 50, POISON_JAB
	db LEVEL_EVO, TOXIC
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SUPERSONIC
	db 4, ASTONISH
	db 8, MEAN_LOOK
	db 12, POISON_STING
	db 16, BITE
	db 20, AIR_CUTTER
	db 25, SCREECH
	db 25, HAZE
	db 30, VENOSHOCK
	db 35, AERIAL_ACE
	db 40, LEECH_LIFE
	db 45, AIR_SLASH
	db 50, SUPER_FANG
	; db 1, TOXIC
	db LEVEL_EVO, CROSS_POISON
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 12, FLASH
	db 16, BUBBLEBEAM
	db 20, CONFUSE_RAY
	db 24, SPARK
	db 28, FLAIL
	db 32, DAZZLING_GLEAM
	db 36, THUNDERBOLT
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 12, FLASH
	db 16, BUBBLEBEAM
	db 20, CONFUSE_RAY
	db 24, SPARK
	db 30, FLAIL
	db 35, DAZZLING_GLEAM
	db 40, THUNDERBOLT
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 4, QUICK_ATTACK
	db 8, THUNDER_WAVE
	db 12, NASTY_PLOT
	db 16, SWEET_KISS
	db 20, SPARK
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, SING
	db 8, DISARMING_VOICE
	db 12, SWEET_KISS
	db 16, DRAIN_KISS
	db 20, ENCORE
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, SING
	db 8, DISARMING_VOICE
	db 12, SWEET_KISS
	db 16, DISABLE
	db 20, REST
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, DISARMING_VOICE
	db 8, METRONOME
	db 12, SWEET_KISS
	db 16, DRAIN_KISS
	db 20, ENCORE
	db 24, SAFEGUARD
	db 28, REST
	db 32, CALM_MIND
	db 36, EXTRASENSORY
	db 40, PLAY_ROUGH
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, DISARMING_VOICE
	db 10, METRONOME
	db 15, SWEET_KISS
	db 20, DRAIN_KISS
	db 25, ENCORE
	db 30, SAFEGUARD
	db 35, REST
	db 40, CALM_MIND
	db 45, EXTRASENSORY
	db 50, PLAY_ROUGH
	db 55, DOUBLE_EDGE
	db LEVEL_EVO, AIR_SLASH
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PLUCK
	db 5, QUICK_ATTACK
	db 10, CONFUSION
	db 15, OMINOUS_WIND
	db 20, NIGHT_SHADE
	db 25, CALM_MIND
	db 30, ZEN_HEADBUTT
	db 35, FUTURE_SIGHT
	db 40, PSYCHIC_M
	; db 36, CONFUSE_RAY
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 5, QUICK_ATTACK
	db 10, CONFUSION
	db 15, OMINOUS_WIND
	db 20, NIGHT_SHADE
	db 25, CALM_MIND
	db 30, ZEN_HEADBUTT
	db 35, FUTURE_SIGHT
	db 40, PSYCHIC_M
	db 45, AIR_SLASH
	db LEVEL_EVO, AIR_CUTTER
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, COTTON_SPORE
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 12, HEADBUTT
	db 16, CHARGE_BEAM
	db 20, FLASH
	db 24, SPARK
	db 28, LIGHT_SCREEN
	db 32, THUNDERBOLT
	db 36, POWER_GEM
	db 40, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, COTTON_SPORE
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 12, HEADBUTT
	db 18, CHARGE_BEAM
	db 23, FLASH
	db 28, SPARK
	db 33, LIGHT_SCREEN
	db 38, THUNDERBOLT
	db 43, POWER_GEM
	db 48, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, COTTON_SPORE
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 12, HEADBUTT
	db 18, CHARGE_BEAM
	db 23, FLASH
	db 28, SPARK
	db 35, LIGHT_SCREEN
	db 40, THUNDERBOLT
	db 45, POWER_GEM
	db 50, THUNDER
	db 55, DRAGON_PULSE
	db LEVEL_EVO, THUNDERPUNCH
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	; db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, WATER_GUN
	db 8, ROLLOUT
	db 12, HEADBUTT
	db 16, BUBBLEBEAM
	db 20, RAIN_DANCE
	db 24, PLAY_ROUGH
	db 28, AQUA_TAIL
	db 32, DOUBLE_EDGE
	db 36, HYDRO_PUMP
	db 40, SUPERPOWER
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 4, WATER_GUN
	db 8, ROLLOUT
	db 12, HEADBUTT
	db 16, BUBBLEBEAM
	db 23, RAIN_DANCE
	db 28, PLAY_ROUGH
	db 33, AQUA_TAIL
	db 38, DOUBLE_EDGE
	db 43, HYDRO_PUMP
	db 48, SUPERPOWER
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ENDURE
	db 5, ROCK_THROW
	db 10, FLAIL
	db 10, MIMIC
	db 15, LOW_SWEEP ; FIXME: LOW_KICK
	db 20, COUNTER
	db 25, IRON_DEFENSE
	db 30, ROCK_SLIDE
	db 35, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 45, STONE_EDGE ; FIXME: HEAD_SMASH
	db 50, WOOD_HAMMER
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	; db 1, EARTH_POWER
	; db 1, HYDRO_PUMP
	; db 1, BELLY_DRUM
	; db 1, DOUBLE_EDGE
	; db 1, WATER_GUN
	; db 1, HYPNOSIS
	; db 1, TACKLE
	; db 1, MUD_SLAP
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 1, BODY_SLAM
	db 60, LIQUIDATION
	db LEVEL_EVO, PERISH_SONG
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, ABSORB
	db 4, TACKLE
	db 8, SYNTHESIS
	db 12, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 20, LEECH_SEED
	db 24, SEED_BOMB ; FIXME: BULLET_SEED
	db 28, ACROBATICS
	db 32, COTTON_SPORE
	db 36, GIGA_DRAIN
	db 40, ENERGY_BALL
	; db 40, BOUNCE
	; db 37, U_TURN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	; db 1, SPLASH
	db 1, ABSORB
	db 4, TACKLE
	db 8, SYNTHESIS
	db 12, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, SEED_BOMB ; FIXME: BULLET_SEED
	db 30, ACROBATICS
	db 35, COTTON_SPORE
	db 40, GIGA_DRAIN
	db 45, ENERGY_BALL
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SPLASH
	db 1, ABSORB
	db 4, TACKLE
	db 8, SYNTHESIS
	db 12, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, SEED_BOMB ; FIXME: BULLET_SEED
	db 32, ACROBATICS
	db 38, COTTON_SPORE
	db 44, GIGA_DRAIN
	db 50, ENERGY_BALL
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, ASTONISH
	db 8, QUICK_ATTACK
	db 12, MUD_SLAP
	db 16, THIEF
	db 20, SWIFT
	db 24, AGILITY
	db 28, FACADE
	db 32, ACROBATICS
	db 36, NASTY_PLOT
	db 40, DOUBLE_EDGE
	; db 15, SWAGGER ; FIXME: TICKLE
	; db 32, DOUBLE_HIT
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 4, TACKLE
	db 8, SLEEP_POWDER
	db 12, LEECH_SEED
	db 16, RAZOR_LEAF
	db 20, SEED_BOMB
	db 24, GIGA_DRAIN
	db 28, SYNTHESIS
	db 32, DOUBLE_EDGE
	db 36, SOLARBEAM
	db 40, SUNNY_DAY
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, TACKLE
	db 10, SLEEP_POWDER
	db 15, LEECH_SEED
	db 20, RAZOR_LEAF
	db 25, SEED_BOMB
	db 30, GIGA_DRAIN
	db 35, SYNTHESIS
	db 40, DOUBLE_EDGE
	db 45, SOLARBEAM
	db 50, SUNNY_DAY
	db 55, LEAF_STORM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, SUPERSONIC
	db 8, GUST
	db 12, DOUBLE_TEAM
	db 16, SILVER_WIND
	db 20, AERIAL_ACE
	db 24, SCREECH
	db 28, WHIRLWIND
	db 32, ANCIENTPOWER
	db 36, AIR_SLASH
	db 40, BUG_BUZZ
	; db 49, U_TURN
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, HEADBUTT
	db 16, BULLDOZE
	db 20, RAIN_DANCE
	db 24, MIST
	db 24, HAZE
	db 28, AQUA_TAIL
	db 32, REST
	db 36, SLUDGE_BOMB
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, HEADBUTT
	db 16, BULLDOZE
	db 20, RAIN_DANCE
	db 25, MIST
	db 25, HAZE
	db 30, AQUA_TAIL
	db 35, REST
	db 40, SLUDGE_BOMB
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 25, ZEN_HEADBUTT
	db 30, FUTURE_SIGHT
	db 35, CALM_MIND
	db 40, MORNING_SUN
	db 45, DOUBLE_EDGE
	db 50, PSYCHIC_M
	db LEVEL_EVO, CONFUSION
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, SWIFT
	db 20, BITE
	db 25, NIGHT_SHADE
	db 30, PAYBACK
	db 35, CALM_MIND
	db 40, MOONLIGHT
	db 45, DOUBLE_EDGE
	db 50, DARK_PULSE
	db LEVEL_EVO, SNARL
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 1, HAZE
	db 4, ASTONISH
	db 8, GUST
	db 12, ROOST
	db 16, AERIAL_ACE
	db 20, NIGHT_SHADE
	db 24, PAYBACK
	db 28, NIGHT_SLASH
	db 32, AIR_CUTTER
	db 36, MEAN_LOOK
	db 36, NASTY_PLOT
	db 40, SUCKER_PUNCH
	db 44, AIR_SLASH
	db 48, DARK_PULSE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 4, WATER_GUN
	db 8, HYPNOSIS
	db 12, CONFUSION
	db 16, DISABLE
	db 20, WATER_PULSE
	db 24, HEADBUTT
	db 28, ZEN_HEADBUTT
	db 33, CALM_MIND
	db 40, RECOVER
	db 45, PSYCHIC_M
	db 50, RAIN_DANCE
	db LEVEL_EVO, POWER_GEM
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, GROWL
	db 4, CONFUSE_RAY
	db 8, CONFUSION
	db 12, SPITE
	db 16, MEAN_LOOK
	db 20, HEX
	db 24, HYPNOSIS
	db 28, SCREECH
	db 32, PAIN_SPLIT
	db 36, PAYBACK
	db 40, PERISH_SONG
	db 44, EXTRASENSORY
	db 48, POWER_GEM
	db 52, SHADOW_BALL
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, ENCORE
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 10, SAFEGUARD
	db 10, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, ASTONISH
	db 10, CONFUSION
	db 15, HEADBUTT
	db 20, BITE
	db 25, AGILITY
	db 30, PAYBACK
	db 35, ZEN_HEADBUTT
	db 40, NASTY_PLOT
	db 45, PSYCHIC_M
	db 50, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 4, BUG_BITE
	db 8, RAPID_SPIN
	db 12, ROLLOUT
	db 16, HEADBUTT
	db 20, SELFDESTRUCT
	db 24, SPIKES
	db 28, PAYBACK
	db 32, IRON_DEFENSE
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 4, BUG_BITE
	db 8, RAPID_SPIN
	db 12, ROLLOUT
	db 16, HEADBUTT
	db 20, SELFDESTRUCT
	db 24, SPIKES
	db 28, PAYBACK
	db 40, IRON_DEFENSE
	db 45, DOUBLE_EDGE
	db LEVEL_EVO, REFLECT
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, ROLLOUT
	db 8, MUD_SLAP
	db 12, HEADBUTT
	db 16, GLARE
	db 20, FLAIL
	db 20, ENDURE
	db 24, BULLDOZE
	db 28, SCREECH
	db 32, ANCIENTPOWER
	db 36, BODY_SLAM
	db 40, ROOST
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 4, QUICK_ATTACK
	db 8, MUD_SLAP
	db 12, FURY_CUTTER
	db 16, AERIAL_ACE
	db 20, BULLDOZE
	db 24, SWORDS_DANCE
	db 28, SLASH
	db 32, ACROBATICS
	db 36, X_SCISSOR
	db 40, POISON_JAB
	; db 30, U_TURN
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WRAP
	db 4, ROCK_THROW
	db 8, IRON_DEFENSE
	db 12, BULLDOZE
	db 16, SAND_TOMB
	db 20, ROCK_SLIDE
	db 24, SANDSTORM
	db 28, DIG
	db 32, IRON_TAIL
	db 36, DOUBLE_EDGE
	db 45, STONE_EDGE
	db 50, EARTHQUAKE
	db 55, IRON_HEAD
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 8, BITE
	db 12, HEADBUTT
	db 16, ROAR
	db 20, SNARL
	db 24, HEAL_BELL
	db 28, PAYBACK
	db 32, DOUBLE_EDGE
	db 36, PLAY_ROUGH
	db 40, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 8, BITE
	db 12, HEADBUTT
	db 16, ROAR
	db 20, SNARL
	db 25, HEAL_BELL
	db 30, PAYBACK
	db 35, DOUBLE_EDGE
	db 40, PLAY_ROUGH
	db 45, CRUNCH
	db 50, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TACKLE
	db 4, SPIKES
	db 8, WATER_GUN
	db 12, PIN_MISSILE
	db 16, WATER_PULSE
	db 20, REVENGE
	db 24, PAYBACK
	db 28, TOXIC
	db 32, DESTINY_BOND
	db 36, AQUA_TAIL
	db 40, POISON_JAB
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, FURY_CUTTER
	db 8, FALSE_SWIPE
	db 12, SILVER_WIND
	db 16, DOUBLE_TEAM
	db 20, AERIAL_ACE
	db 24, SLASH
	db 28, FOCUS_ENERGY
	db 32, AGILITY
	db 36, AIR_SLASH
	db 40, SWORDS_DANCE
	db 45, X_SCISSOR
	db 50, STEEL_WING
	db 55, IRON_HEAD
	db LEVEL_EVO, METAL_CLAW
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 4, ROLLOUT
	db 8, STRUGGLE_BUG
	db 12, PROTECT
	db 16, INFESTATION
	db 20, MUD_SLAP
	db 24, SAFEGUARD
	db 28, BUG_BITE
	db 32, REST
	db 36, ENCORE
	db 40, ROCK_SLIDE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, ROCK_SMASH
	db 10, BUG_BITE
	db 15, AERIAL_ACE
	db 20, ENDURE
	db 25, COUNTER
	db 30, BRICK_BREAK
	db 35, SWORDS_DANCE
	db 40, DOUBLE_EDGE
	db 45, MEGAHORN
	db 50, CLOSE_COMBAT
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, AGILITY
	db 5, SWIFT
	db 10, ICE_SHARD
	db 15, METAL_CLAW
	db 20, THIEF
	db 25, BEAT_UP
	db 30, SLASH
	db 35, SWORDS_DANCE
	db 40, POISON_JAB
	db 45, NIGHT_SLASH
	db 50, ICICLE_CRASH
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, METAL_CLAW
	db 8, HEADBUTT
	db 12, BELLY_DRUM
	db 16, PAYBACK
	db 20, BULLDOZE
	db 24, REST
	db 28, SLASH
	db 32, PLAY_ROUGH
	db 36, NIGHT_SLASH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, METAL_CLAW
	db 8, HEADBUTT
	db 12, BELLY_DRUM
	db 16, PAYBACK
	db 20, BULLDOZE
	db 24, REST
	db 28, SLASH
	db 32, PLAY_ROUGH
	db 36, NIGHT_SLASH
	db 40, DOUBLE_EDGE
	db LEVEL_EVO, BITE
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SMOKESCREEN
	db 10, SMOG
	db 15, ANCIENTPOWER
	db 20, SUNNY_DAY
	db 25, FLAMETHROWER
	db 30, RECOVER
	db 35, EARTH_POWER
	db 40, OVERHEAT
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SMOKESCREEN
	db 10, SMOG
	db 15, ANCIENTPOWER
	db 20, SUNNY_DAY
	db 25, FLAMETHROWER
	db 30, RECOVER
	db 35, EARTH_POWER
	db 45, OVERHEAT
	db LEVEL_EVO, ROCK_SLIDE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, POWDER_SNOW
	db 8, MUD_SLAP
	db 12, ICE_SHARD
	db 16, ANCIENTPOWER
	db 20, BULLDOZE
	db 24, ICY_WIND
	db 28, DOUBLE_EDGE
	db 32, ICICLE_CRASH
	db 36, EARTHQUAKE
	db 40, BLIZZARD
	db 44, AVALANCHE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, POWDER_SNOW
	db 8, MUD_SLAP
	db 12, ICE_SHARD
	db 16, ANCIENTPOWER
	db 20, BULLDOZE
	db 24, ICY_WIND
	db 28, DOUBLE_EDGE
	db 32, ICICLE_CRASH
	db 40, EARTHQUAKE
	db 45, BLIZZARD
	db 50, AVALANCHE
	db LEVEL_EVO, ICE_FANG
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ENDURE
	db 4, WATER_GUN
	db 8, FLAIL
	db 12, IRON_DEFENSE
	db 16, ANCIENTPOWER
	db 20, BUBBLEBEAM
	db 24, MIRROR_COAT
	db 28, RECOVER
	db 32, POWER_GEM
	db 36, EARTH_POWER
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, FOCUS_ENERGY
	db 4, SUPERSONIC
	db 8, FLAIL
	db 12, WATER_PULSE
	db 16, AURORA_BEAM
	db 20, SWIFT
	db 24, BUBBLEBEAM
	db 28, CHARGE_BEAM
	db 32, ICE_BEAM
	db 36, HYDRO_PUMP
	db 40, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, FOCUS_ENERGY
	db 4, SUPERSONIC
	db 8, FLAIL
	db 12, WATER_PULSE
	db 16, AURORA_BEAM
	db 20, SWIFT
	db 24, BUBBLEBEAM
	db 30, CHARGE_BEAM
	db 35, ICE_BEAM
	db 40, HYDRO_PUMP
	db 45, HYPER_BEAM
	db LEVEL_EVO, OCTAZOOKA
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 10, POWDER_SNOW
	db 15, PLUCK
	db 20, ICY_WIND
	db 30, DRILL_PECK
	db 40, BLIZZARD
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, SUPERSONIC
	db 12, AERIAL_ACE
	db 16, WATER_PULSE
	db 20, HEADBUTT
	db 24, AIR_CUTTER
	db 28, ROOST
	db 32, RAIN_DANCE
	db 36, AIR_SLASH
	db 40, HYDRO_PUMP
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLUCK
	db 4, SAND_ATTACK
	db 8, METAL_CLAW
	db 12, IRON_DEFENSE
	db 16, AERIAL_ACE
	db 20, AGILITY
	db 24, SPIKES
	db 28, STEEL_WING
	db 32, SLASH
	db 36, AIR_SLASH
	db 40, WHIRLWIND
	db 45, DRILL_PECK
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 4, EMBER
	db 8, ROAR
	db 12, SNARL
	db 16, BEAT_UP
	db 20, FIRE_FANG
	db 24, PAYBACK
	db 28, NASTY_PLOT
	db 32, FLAMETHROWER
	db 36, CRUNCH
	db 40, DARK_PULSE
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 4, EMBER
	db 8, ROAR
	db 12, SNARL
	db 16, BEAT_UP
	db 20, FIRE_FANG
	db 24, PAYBACK
	db 30, NASTY_PLOT
	db 35, FLAMETHROWER
	db 40, CRUNCH
	db 45, DARK_PULSE
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, SMOKESCREEN
	db 8, TWISTER
	db 12, FOCUS_ENERGY
	db 16, BUBBLEBEAM
	db 20, DRAGONBREATH
	db 24, AGILITY
	db 30, DRAGON_PULSE
	db 38, RAIN_DANCE
	db 46, DRAGON_DANCE
	db 52, HYDRO_PUMP
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, ROLLOUT
	db 8, ENDURE
	db 12, FLAIL
	db 16, HEADBUTT
	db 20, ROCK_SMASH
	db 24, BULLDOZE
	db 28, BODY_SLAM
	db 32, PLAY_ROUGH
	db 36, EARTHQUAKE
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, ROLLOUT
	db 8, ENDURE
	db 12, FLAIL
	db 16, HEADBUTT
	db 20, ROCK_SMASH
	db 24, BULLDOZE
	db 30, BODY_SLAM
	db 35, PLAY_ROUGH
	db 40, EARTHQUAKE
	db 45, DOUBLE_EDGE
	db LEVEL_EVO, RAPID_SPIN
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, CONVERSION2
	db 10, THUNDERSHOCK
	db 15, THUNDER_WAVE
	db 20, HEADBUTT
	db 25, SPARK
	db 30, TRI_ATTACK
	db 35, THUNDERBOLT
	db 40, RECOVER
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	; db 1, ME_FIRST
	db 1, TACKLE
	db 4, HYPNOSIS
	db 8, CONFUSION
	db 12, CONFUSE_RAY
	db 16, HEADBUTT
	db 20, BULLDOZE
	db 24, CALM_MIND
	db 28, NIGHT_SHADE
	db 32, DISABLE
	db 36, EXTRASENSORY
	db 40, ZEN_HEADBUTT
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 10, SKETCH
	db 20, SKETCH
	db 30, SKETCH
	db 40, SKETCH
	db 50, SKETCH
	db 60, SKETCH
	db 70, SKETCH
	db 80, SKETCH
	db 90, SKETCH
	db 100, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	; db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	; db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	; db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db EVOLVE_HOLD, X_DEFEND, 20, HITMONCHAN
	db EVOLVE_HOLD, X_ATTACK, 20, HITMONLEE
	db EVOLVE_LEVEL, 20, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, HEADBUTT
	db 16, BULK_UP
	db 20, COUNTER
	db 24, REVENGE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FOCUS_ENERGY
	db 8, ROCK_SMASH
	db 12, HEADBUTT
	db 16, BULK_UP
	db 20, COUNTER
	db 25, REVENGE
	db 30, RAPID_SPIN
	db 35, BULLDOZE
	db 40, LOW_SWEEP
	db 45, CLOSE_COMBAT
	db LEVEL_EVO, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 24, JYNX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 5, POWDER_SNOW
	db 10, MEAN_LOOK
	db 15, CONFUSION
	db 20, LOVELY_KISS
	db 25, ICY_WIND
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 24, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, QUICK_ATTACK
	db 5, THUNDER_WAVE
	db 10, SWIFT
	db 15, SPARK
	db 20, SCREECH
	db 25, THUNDERPUNCH
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 24, MAGMAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, EMBER
	db 5, SMOKESCREEN
	db 10, SMOG
	db 15, FLAME_WHEEL
	db 20, POISON_GAS
	db 25, FIRE_PUNCH
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, ROLLOUT
	db 10, HEADBUTT
	db 15, BULLDOZE
	db 20, HEAL_BELL
	db 25, BODY_SLAM
	db 30, ZEN_HEADBUTT
	db 35, MILK_DRINK
	db 40, REST
	db 45, PLAY_ROUGH
	db 50, DOUBLE_EDGE
	db 55, EARTHQUAKE ; FIXME: HIGH_HORSEPOWER
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 6, SWEET_KISS
	db 10, DISARMING_VOICE
	db 14, HEAL_BELL
	db 18, SING
	db 22, DRAIN_KISS
	db 26, CALM_MIND
	db 30, SAFEGUARD
	db 36, LIGHT_SCREEN
	db 42, SOFTBOILED
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, HEADBUTT
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, ROCK_THROW
	db 8, BITE
	db 12, HEADBUTT
	db 16, BULLDOZE
	db 20, PAYBACK
	db 24, SANDSTORM
	db 28, SCREECH
	db 32, CRUNCH
	db 36, DARK_PULSE
	db 40, EARTHQUAKE
	db 44, ROCK_SLIDE
	db 48, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, ROCK_THROW
	db 8, BITE
	db 12, HEADBUTT
	db 16, BULLDOZE
	db 20, PAYBACK
	db 24, SANDSTORM
	db 28, SCREECH
	db 35, CRUNCH
	db 40, DARK_PULSE
	db 45, EARTHQUAKE
	db 50, ROCK_SLIDE
	db 55, HYPER_BEAM
	db LEVEL_EVO, IRON_DEFENSE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TACKLE
	; db 1, GROWL
	; db 4, ROCK_THROW
	; db 8, BITE
	; db 12, HEADBUTT
	; db 16, BULLDOZE
	; db 20, PAYBACK
	; db 24, SANDSTORM
	; db 28, SCREECH
	db 35, CRUNCH
	; db 40, DARK_PULSE
	db 45, EARTHQUAKE
	; db 50, ROCK_SLIDE
	db 55, HYPER_BEAM
	db 60, GIGA_IMPACT
	db LEVEL_EVO, STONE_EDGE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	; db 11, SAFEGUARD
	; db 22, GUST
	; db 33, RECOVER
	; db 44, HYDRO_PUMP
	; db 55, RAIN_DANCE
	; db 66, SWIFT
	; db 77, WHIRLWIND
	; db 88, ANCIENTPOWER
	; db 99, FUTURE_SIGHT
	db 1, RECOVER
	db 1, RAIN_DANCE
	db 1, HYDRO_PUMP
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	; db 11, SAFEGUARD
	; db 22, GUST
	; db 33, RECOVER
	; db 44, FIRE_BLAST
	; db 55, SUNNY_DAY
	; db 66, SWIFT
	; db 77, WHIRLWIND
	; db 88, ANCIENTPOWER
	; db 99, FUTURE_SIGHT
	db 1, RECOVER
	db 1, SUNNY_DAY
	db 1, AIR_SLASH
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	; db 1, LEECH_SEED
	; db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	; db 10, SAFEGUARD
	; db 20, ANCIENTPOWER
	; db 30, FUTURE_SIGHT
	; db 40, BATON_PASS
	; db 50, PERISH_SONG
	db 1, ANCIENTPOWER
	db 1, FUTURE_SIGHT
	db 0 ; no more level-up moves
