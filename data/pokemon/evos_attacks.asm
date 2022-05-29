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
	db 24, FLAMETHROWER
	db 28, SLASH
	db 32, FIRE_SPIN
	; db 36, INFERNO
	db 40, FLARE_BLITZ
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
	; db 48, INFERNO
	db 54, FLARE_BLITZ
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AIR_SLASH
	; db 1, DRAGON_CLAW
	; db 1, HEAT_WAVE
	; db 1, TACKLE
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 12, DRAGONBREATH
	db 19, FIRE_FANG
	db 24, BITE
	db 30, FLAMETHROWER
	db 39, SLASH
	db 46, FIRE_SPIN
	; db 54, INFERNO
	db 62, FLARE_BLITZ
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
	db 1, LEER
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
	; db 1, TAKE_DOWN
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
	db 1, FOCUS_ENERGY
	db 6, DOUBLE_KICK
	db 12, LOW_SWEEP
	db 18, ENDURE
	db 24, REVENGE
	db 30, REVERSAL
	db 36, BULK_UP
	db 42, CLOSE_COMBAT
	db 48, HI_JUMP_KICK
	db LEVEL_EVO, BRICK_BREAK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 6, MACH_PUNCH
	db 12, COUNTER
	db 18, BULK_UP
	db 24, REVENGE
	db 30, THUNDERPUNCH
	db 30, ICE_PUNCH
	db 30, FIRE_PUNCH
	db 36, CROSS_CHOP
	db 42, CLOSE_COMBAT
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
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	; db 15, CHARGE
	db 18, TAKE_DOWN
	; db 22, ELECTRO_BALL
	db 25, CONFUSE_RAY
	; db 29, POWER_GEM
	db 32, THUNDERBOLT ; FIXME: DISCHARGE
	; db 36, COTTON_GUARD
	; db 39, SIGNAL_BEAM
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	; db 16, CHARGE
	db 20, TAKE_DOWN
	; db 25, ELECTRO_BALL
	db 29, CONFUSE_RAY
	; db 34, POWER_GEM
	db 38, THUNDERBOLT ; FIXME: DISCHARGE
	; db 43, COTTON_GUARD
	; db 47, SIGNAL_BEAM
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	; db 4, THUNDER_WAVE
	; db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	; db 16, CHARGE
	db 20, TAKE_DOWN
	db 29, CONFUSE_RAY
	; db 35, POWER_GEM
	db 40, THUNDERBOLT ; FIXME: DISCHARGE
	; db 46, COTTON_GUARD
	; db 51, SIGNAL_BEAM
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, DRAGON_PULSE
	db LEVEL_EVO, THUNDERPUNCH
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, ROLLOUT
	; db 1, DEFENSE_CURL
	; db 1, TACKLE
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 6, BUBBLEBEAM
	db 9, CHARM
	db 12, SLAM
	; db 15, BOUNCE
	db 19, WATERFALL ; FIXME: AQUA_TAIL
	db 21, PLAY_ROUGH
	; db 24, AQUA_RING
	db 27, RAIN_DANCE
	db 30, HYDRO_PUMP
	db 33, DOUBLE_EDGE
	db 36, SUPERPOWER
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLOUT
	; db 1, DEFENSE_CURL
	; db 1, TACKLE
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	; db 1, HELPING_HAND
	db 6, BUBBLEBEAM
	db 9, CHARM
	db 12, SLAM
	; db 15, BOUNCE
	db 21, WATERFALL ; FIXME: AQUA_TAIL
	db 25, PLAY_ROUGH
	; db 30, AQUA_RING
	db 35, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 45, DOUBLE_EDGE
	db 50, SUPERPOWER
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLAM
	; db 1, STONE_EDGE
	; db 1, HAMMER_ARM
	; db 1, WOOD_HAMMER
	; db 1, FAKE_TEARS
	; db 1, COPYCAT
	db 1, FLAIL
	db 1, ROCK_THROW
	; db EVO, SLAM
	db 12, MEAN_LOOK ; FIXME: BLOCK
	db 16, MIMIC
	; db 20, ROCK_TOMB
	; db 24, TEARFUL_LOOK
	db 28, SUCKER_PUNCH
	db 32, ROCK_SLIDE
	db 36, LOW_SWEEP ; FIXME: LOW_KICK
	db 40, COUNTER
	db 44, DOUBLE_EDGE
	; db 48, HEAD_SMASH
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	; db 1, BOUNCE
	; db 1, SWAGGER
	; db 1, HYPER_VOICE
	db 1, PERISH_SONG
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 1, BODY_SLAM
	; db 1, EARTH_POWER
	; db 1, HYDRO_PUMP
	; db 1, BELLY_DRUM
	; db 1, DOUBLE_EDGE
	; db 1, WATER_GUN
	; db 1, HYPNOSIS
	; db 1, TACKLE
	; db 1, MUD_SHOT
	; db LEVEL_EVO, BOUNCE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, ABSORB
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	; db 19, BULLET_SEED
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, ACROBATICS
	; db 31, RAGE_POWDER
	db 34, COTTON_SPORE
	; db 37, U_TURN
	; db 40, WORRY_SEED
	db 43, GIGA_DRAIN
	db 46, FLY ; FIXME: BOUNCE
	; db 49, MEMENTO
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	; db 1, SPLASH
	db 1, ABSORB
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	; db 4, SYNTHESIS
	; db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	; db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 32, ACROBATICS
	; db 36, RAGE_POWDER
	db 40, COTTON_SPORE
	; db 44, U_TURN
	; db 48, WORRY_SEED
	db 52, GIGA_DRAIN
	db 56, FLY ; FIXME: BOUNCE
	; db 60, MEMENTO
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SPLASH
	db 1, ABSORB
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	; db 4, SYNTHESIS
	; db 6, TAIL_WHIP
	db 10, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	; db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 34, ACROBATICS
	; db 39, RAGE_POWDER
	db 44, COTTON_SPORE
	; db 49, U_TURN
	; db 54, WORRY_SEED
	db 59, GIGA_DRAIN
	db 64, FLY ; FIXME: BOUNCE
	; db 69, MEMENTO
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 8, THIEF ; FIXME: ASTONISH
	db 11, BATON_PASS
	db 15, SWAGGER ; FIXME: TICKLE
	db 18, FURY_SWIPES
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	; db 32, DOUBLE_HIT
	db 36, FACADE ; FIXME: FLING
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ; FIXME: LAST_RESORT
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	; db 4, INGRAIN
	db 7, SLEEP_POWDER ; FIXME: GRASS_WHISTLE
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	; db 19, WORRY_SEED
	db 22, GIGA_DRAIN
	; db 25, ENDEAVOR
	db 28, SYNTHESIS
	; db 31, NATURAL_GIFT
	db 34, SOLARBEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FLOWER_SHIELD
	db 1, ABSORB
	db 1, TACKLE
	db 1, GROWTH
	; db 4, INGRAIN
	db 7, SLEEP_POWDER ; FIXME: GRASS_WHISTLE
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	; db 19, WORRY_SEED
	db 22, GIGA_DRAIN
	; db 25, BULLET_SEED
	db 28, PETAL_DANCE
	; db 31, NATURAL_GIFT
	db 34, SOLARBEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	; db 43, LEAF_STORM
	db 50, SEED_BOMB ; FIXME: PETAL_BLIZZARD
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GUST
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, AERIAL_ACE
	db 17, DETECT
	db 22, SUPERSONIC
	; db 27, UPROAR
	db 30, STRING_SHOT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	; db 43, WING_ATTACK
	db 46, SCREECH
	; db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 4, RAIN_DANCE
	; db 8, MUD_SHOT
	db 12, MIST
	db 12, HAZE
	db 16, SLAM
	; db 21, YAWN
	db 24, WATERFALL ; FIXME: AQUA_TAIL
	db 28, SURF ; FIXME: MUDDY_WATER
	db 32, AMNESIA
	db 36, TOXIC
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 1, RAIN_DANCE
	; db 1, MUD_SHOT
	db 12, MIST
	db 12, HAZE
	db 16, SLAM
	; db 23, YAWN
	db 28, WATERFALL ; FIXME: AQUA_TAIL
	db 34, SURF ; FIXME: MUDDY_WATER
	db 40, AMNESIA
	db 46, TOXIC
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

EspeonEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	; db 9, BABY_DOLL_EYES
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, PSYCH_UP
	db 33, MORNING_SUN
	db 37, PSYCHIC_M
	; db 41, LAST_RESORT
	; db 45, POWER_SWAP
	db LEVEL_EVO, CONFUSION
	db 0 ; no more level-up moves

UmbreonEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, HELPING_HAND
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, GROWL ; FIXME: BABY_DOLL_EYES
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, BITE
	db 25, PAYBACK ; FIXME: ASSURANCE
	db 29, SCREECH
	db 33, MOONLIGHT
	db 37, MEAN_LOOK
	; db 41, LAST_RESORT
	; db 45, GUARD_SWAP
	db LEVEL_EVO, BITE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	; db 1, ASTONISH
	db 5, GUST
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, PAYBACK ; FIXME: ASSURANCE
	; db 31, TAUNT
	; db 35, AIR_CUTTER
	db 41, MEAN_LOOK
	; db 45, FOUL_PLAY
	; db 50, TAILWIND
	db 55, SUCKER_PUNCH
	; db 61, TORMENT
	; db 65, QUASH
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	; db 9, YAWN
	db 12, CONFUSION
	db 15, DISABLE
	db 18, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 21, HEADBUTT
	db 24, ZEN_HEADBUTT
	db 27, AMNESIA
	db 30, SURF
	db 33, RECOVER ; FIXME: SLACK_OFF (variation)
	db 36, PSYCHIC_M
	db 39, PSYCH_UP
	db 42, RAIN_DANCE
	db 45, SWAGGER ; FIXME: HEAL_PULSE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CONFUSION
	db 5, SPITE
	db 10, LICK ; FIXME: ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, PAYBACK
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	; db 50, GRUDGE
	; db 55, POWER_GEM
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	; db 1, POWER_SWAP
	; db 1, GAURD_SWAP
	; db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 5, CONFUSION
	db 10, PAYBACK ; FIXME: ASSURANCE
	db 14, STOMP
	db 19, PSYBEAM
	db 23, AGILITY
	; db 28, DOUBLE_HIT
	db 32, ZEN_HEADBUTT
	db 37, CRUNCH
	db 41, BATON_PASS
	db 46, NASTY_PLOT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	; db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	; db 20, AUTOTOMIZE
	db 23, ROLLOUT
	db 28, SPIKES
	db 31, PAYBACK
	db 34, EXPLOSION
	; db 39, IRON_DEFENSE
	; db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 6, SELFDESTRUCT
	; db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, REFLECT
	db 23, ROLLOUT
	db 28, SPIKES
	db 32, PAYBACK
	db 36, EXPLOSION
	; db 42, IRON_DEFENSE
	; db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	; db 56, MAGNET_RISE
	db 60, ZAP_CANNON
	; db 64, HEAVY_SLAM
	; db LEVEL_EVO, AUTOTOMIZE
	; db LEVEL_EVO, MIRROR_SHOT
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	; db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 8, ROLLOUT
	db 12, GLARE
	db 16, SCREECH
	db 20, ANCIENTPOWER
	db 24, BULLDOZE ; FIXME: DRILL_RUN
	; db 28, YAWN
	db 32, BODY_SLAM
	db 36, TAKE_DOWN
	db 40, ROOST
	; db 44, DRAGON_RUSH
	; db 48, COIL
	db 52, DOUBLE_EDGE
	; db 56, ENDEAVOR
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	; db 10, KNOCK_OFF
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, MUD_SLAP
	db 22, ACROBATICS
	db 27, SLASH
	; db 30, U_TURN
	db 35, SCREECH
	; db 40, X_SCISSOR
	db 45, EARTHQUAKE
	db 50, SWORDS_DANCE
	db 55, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CRUNCH
	; db 1, THUNDER_FANG
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	; db 1, ROCK_POLISH
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP
	db 1, ROCK_THROW
	; db 4, SMACK_DOWN
	db 8, AGILITY ; FIXME: AUTOTOMIZE
	db 12, DRAGONBREATH
	db 16, CURSE
	db 20, ROCK_SLIDE
	db 24, SCREECH
	db 28, SAND_TOMB
	; db 32, STEALTH_ROCK
	db 36, SLAM
	db 40, SANDSTORM
	db 44, DIG
	db 48, IRON_TAIL
	db 52, STONE_EDGE
	db 56, DOUBLE_EDGE
	; db 60, MAGNET_RISE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	; db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	; db 31, TAUNT
	db 37, PLAY_ROUGH
	db 43, PAYBACK
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	; db 1, OUTRAGE
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	; db 1, THUNDER_FANG
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	; db 35, TAUNT
	db 43, PLAY_ROUGH
	db 51, PAYBACK
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN
	; db 12, FELL_STINGER
	db 16, MINIMIZE
	db 20, SPIKES
	db 24, BUBBLEBEAM ; FIXME: BRINE
	db 28, REVENGE
	db 32, PIN_MISSILE
	db 36, TOXIC ; FIXME: TOXIC_SPIKES
	db 40, POISON_JAB
	; db 44, STOCKPILE
	; db 44, SPIT_UP
	db 48, TAKE_DOWN
	; db 52, TOXIC
	db 56, WATERFALL ; FIXME: AQUA_TAIL
	; db 60, ACCUPRESSURE
	db 66, DESTINY_BOND
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	; db 1, BULLET_PUNCH
	; db 1, WING_ATTACK
	; db 1, AGILITY
	; db 1, AIR_SLASH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, FURY_CUTTER
	db 1, FALSE_SWIPE
	db 12, METAL_CLAW
	db 16, DOUBLE_TEAM
	; db 20, DOUBLE_HIT
	db 24, SLASH
	db 28, FOCUS_ENERGY
	db 32, HARDEN ; FIXME: IRON_DEFENSE
	db 36, STEEL_WING ; FIXME: IRON_HEAD
	; db 40, X_SCISSOR
	; db 44, LASER_FOCUS
	db 48, SWORDS_DANCE
	; db LEVEL_EVO, BULLET_PUNCH
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, WRAP
	db 5, ROLLOUT
	db 10, INFESTATION ; FIXME: STRUGGLE_BUG
	db 15, ROCK_THROW
	db 20, SAFEGUARD
	db 25, REST
	; db 30, BUG_BITE
	db 35, ENCORE ; FIXME: POWER_SPLIT
	; db 35, GUARD_SPLIT
	db 40, ROCK_SLIDE
	; db 45, GASTRO_ACID
	; db 50, STICKY_WEB
	; db 55, POWER_TRICK
	db 60, STONE_EDGE
	; db 65, SHELL_SMASH
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, FURY_ATTACK
	db 10, ENDURE
	db 15, AERIAL_ACE
	db 20, HORN_ATTACK
	db 25, COUNTER
	db 30, BRICK_BREAK
	db 35, PIN_MISSILE
	db 40, TAKE_DOWN ; FIXME: THROAT_CHOP
	db 45, THRASH
	db 55, MEGAHORN
	db 60, CLOSE_COMBAT
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	; db 6, TAUNT
	db 12, QUICK_ATTACK
	db 18, METAL_CLAW
	db 24, ICY_WIND
	db 30, FURY_SWIPES
	; db 36, HONE_CLAWS
	db 42, BEAT_UP
	db 48, AGILITY
	db 54, SCREECH
	db 60, SLASH
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	; db 1, FLING
	; db 1, COVET
	db 1, TACKLE
	db 1, GROWL ; FIXME: BABY_DOLL_EYES
	db 1, LICK
	; db 1, FAKE_TEARS
	db 8, FURY_SWIPES
	db 15, PAYBACK
	db 22, SWEET_SCENT
	; db 25, PLAY_NICE
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	; db 43, SNORE
	db 50, THRASH
	; db 57, FLING
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HAMMER_ARM
	; db 1, FLING
	db 1, GROWL ; FIXME: BABY_DOLL_EYES
	; db 1, CHARM
	; db 1, COVET
	db 1, TACKLE
	db 1, LEER
	db 1, LICK
	; db 1, FAKE_TEARS
	db 8, FURY_SWIPES
	db 15, PAYBACK
	db 22, SWEET_SCENT
	; db 25, PLAY_NICE
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	; db 49, SNORE
	db 58, THRASH
	; db 67, HAMMER_ARM
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	; db 1, YAWN
	db 1, SMOG
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, HARDEN
	; db 15, INCINERATE
	; db 20, CLEAR_SMOG
	db 22, ANCIENTPOWER
	; db 27, FLAME_BURST
	db 29, ROCK_SLIDE
	db 34, FLAMETHROWER ; FIXME: LAVA_PLUME
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 43, RECOVER
	; db 48, FLAMETHROWER
	db 50, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SHELL_SMASH
	; db 1, EARTH_POWER
	; db 1, YAWN
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	; db EVO, SHELL_SMASH
	; db 6, EMBER
	; db 8, ROCK_THROW
	db 13, HARDEN
	; db 15, INCINERATE
	; db 20, CLEAR_SMOG
	db 22, ANCIENTPOWER
	; db 27, FLAME_BURST
	db 29, ROCK_SLIDE
	db 34, FLAMETHROWER ; FIXME: LAVA_PLUME
	db 36, AMNESIA
	db 43, BODY_SLAM
	db 47, RECOVER
	; db 54, FLAMETHROWER
	db 58, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 5, POWDER_SNOW
	db 10, FLAIL
	; db 15, ICE_SHARD
	db 20, MIST
	db 25, ENDURE
	db 30, ICY_WIND
	db 35, AMNESIA
	db 40, TAKE_DOWN
	db 45, EARTHQUAKE
	db 50, BLIZZARD
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	; db 1, ICE_FANG
	db 1, ANCIENTPOWER
	; db 1, TACKLE
	db 1, MUD_SLAP
	db 1, POWDER_SNOW
	; db 1, FLAIL
	; db 15, ICE_SHARD
	db 20, MIST
	db 25, ENDURE
	db 30, ICY_WIND
	db 37, AMNESIA
	db 44, TAKE_DOWN
	db 51, EARTHQUAKE
	db 58, BLIZZARD
	db 65, THRASH
	db LEVEL_EVO, FURY_ATTACK ; FIXME: ICE_FANG
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 5, WATER_GUN
	db 15, ENDURE
	db 20, ANCIENTPOWER
	db 25, BUBBLEBEAM
	db 30, FLAIL
	db 35, RECOVER
	db 55, MIRROR_COAT
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	; db 4, WATER_PULSE
	db 8, FOCUS_ENERGY
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	; db 28, BULLET_SEED
	db 32, ICE_BEAM
	db 36, HYDRO_PUMP
	; db 40, SOAK
	db 44, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, OCTAZOOKA
	; db 1, GUNK_SHOT
	; db 1, ROCK_BLAST
	; db 1, WATER_PULSE
	db 1, WATER_GUN
	db 1, WRAP
	db 1, FOCUS_ENERGY
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	; db 30, BULLET_SEED
	db 36, ICE_BEAM
	db 42, HYDRO_PUMP
	; db 48, SOAK
	db 54, HYPER_BEAM
	db LEVEL_EVO, OCTAZOOKA
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 25, DRILL_PECK
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	; db 1, PSYBEAM
	; db 1, BULLET_SEED
	; db 1, ROOST
	db 1, TACKLE
	db 1, WATER_GUN
	db 1, SUPERSONIC
	db 1, WING_ATTACK
	db 12, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 16, PROTECT ; FIXME: WIDE_GUARD
	db 20, AGILITY
	; db 24, BUBBLEBEAM
	db 28, HEADBUTT
	db 32, AIR_SLASH
	; db 36, AQUA_RING
	db 40, FLY ; FIXME: BOUNCE
	db 44, TAKE_DOWN
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, SAND_ATTACK
	db 9, METAL_CLAW
	; db 12, AIR_CUTTER
	db 17, FURY_ATTACK
	; db 20, FEINT
	db 23, SWIFT
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	; db 42, METAL_SOUND
	db 45, AIR_SLASH
	; db 50, AUTOTOMIZE
	; db 53, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	; db 4, HOWL
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	; db 20, TAUNT
	db 25, BEAT_UP
	db 28, FLAME_WHEEL ; FIXME: FIRE_FANG
	db 32, PAYBACK
	; db 37, FLAME_CHARGE
	; db 40, FOUL_PLAY
	db 44, FLAMETHROWER
	db 49, CRUNCH
	db 52, NASTY_PLOT
	; db 56, INFERNO
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	; db 1, INFERNO
	; db 1, NASTY_PLOT
	; db 1, THUNDER_FANG
	db 1, LEER
	db 1, EMBER
	; db 4, HOWL
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	; db 20, TAUNT
	db 26, BEAT_UP
	db 30, FLAME_WHEEL ; FIXME: FIRE_FANG
	db 35, PAYBACK
	; db 41, FLAME_CHARGE
	; db 45, FOUL_PLAY
	db 50, FLAMETHROWER
	db 56, CRUNCH
	db 60, NASTY_PLOT
	; db 65, INFERNO
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLPOOL
	; db 1, YAWN
	; db 1, WATER_GUN
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, TWISTER
	db 15, FOCUS_ENERGY
	db 20, DRAGONBREATH
	db 25, BUBBLEBEAM
	db 30, AGILITY
	; db 37, LASER_FOCUS
	db 44, DRAGON_PULSE
	db 51, HYDRO_PUMP
	db 58, DRAGON_DANCE
	db 65, RAIN_DANCE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	; db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, ROLLOUT
	db 15, BULLDOZE
	db 19, ENDURE
	db 24, SLAM
	db 28, TAKE_DOWN
	db 33, CHARM
	; db 37, LAST_RESORT
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FURY_ATTACK
	; db 1, FIRE_FANG
	; db 1, THUNDER_FANG
	; db 1, TACKLE
	; db 1, FLAIL
	; db 1, ENDURE
	; db 1, TAKE_DOWN
	; db 1, CHARM
	; db 1, LAST_RESORT
	; db 1, DOUBLE_EDGE
	; db 1, HORN_ATTACK
	db 1, BULLDOZE
	db 1, GROWL
	; db 1, DEFENSE_CURL
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, PAYBACK ; FIXME: ASSURANCE
	; db 19, KNOCK_OFF
	db 24, SLAM
	db 30, ROCK_THROW ; FIXME: ROCK_TOMB
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, RAPID_SPIN ; FIXME: GIGA_IMPACT
	db LEVEL_EVO, FURY_ATTACK
	db 0 ; no more level-up moves

Porygon2EvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, ZAP_CANNON
	; db 1, MAGIC_COAT
	db 1, TACKLE
	db 1, CONVERSION
	; db 1, DEFENSE_CURL
	db 1, CONVERSION2
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	; db 23, MAGNET_RISE
	; db 29, SIGNAL_BEAM
	; db 34, RECYCLE
	db 40, THUNDERBOLT ; FIXME: DISCHARGE
	db 45, LOCK_ON
	db 50, TRI_ATTACK
	; db 56, MAGIC_COAT
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	; db 1, ME_FIRST
	db 1, TACKLE
	db 3, LEER
	; db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, SAND_ATTACK
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	; db 33, ROLE_PLAY
	db 38, ZEN_HEADBUTT
	; db 43, LUNGE
	db 49, DISABLE ; FIXME: IMPRISON
	; db 50, ENTRAINMENT
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	; db 1, HELPING_HAND
	; db 1, FAKE_OUT
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FEINT
	; db 1, HELPING_HAND
	; db 1, FAKE_OUT
	db 1, RAPID_SPIN
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 4, QUICK_ATTACK
	; db 8, GYRO_BALL
	db 12, DETECT
	db 16, REVENGE
	; db 21, WIDE_GUARD
	; db 21, QUICK_GUARD
	db 24, SUCKER_PUNCH
	db 28, AGILITY
	db 32, DIG
	db 36, CLOSE_COMBAT
	db 40, COUNTER
	; db 44, ENDEAVOR
	db LEVEL_EVO, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LICK
	db 4, POWDER_SNOW
	db 8, MIMIC ; FIXME: COPYCAT
	db 12, CONFUSION
	; db 16, COVET
	db 20, SING
	; db 24, FAKE_TEARS
	db 28, ICE_PUNCH
	db 32, PSYCHIC_M
	db 36, SWEET_KISS
	db 40, MEAN_LOOK
	db 44, PERISH_SONG
	db 48, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 4, THUNDERSHOCK
	; db 8, CHARGE
	db 12, SWIFT
	; db 16, SHOCK_WAVE
	db 20, THUNDER_WAVE
	db 24, SCREECH
	db 28, THUNDERPUNCH
	db 36, LOW_SWEEP ; FIXME: LOW_KICK
	db 40, THUNDERBOLT
	db 44, LIGHT_SCREEN
	db 48, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	; db 12, CLEAR_SMOG
	db 16, FLAME_WHEEL
	db 20, CONFUSE_RAY
	db 24, SCARY_FACE
	db 28, FIRE_PUNCH
	db 32, FLAMETHROWER ; FIXME: LAVA_PLUME
	db 36, LOW_SWEEP ; FIXME: LOW_KICK
	; db 40, FLAMETHROWER
	db 44, SUNNY_DAY
	db 48, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, ROLLOUT
	; db 10, DEFENSE_CURL
	db 15, STOMP
	db 20, HEAL_BELL
	db 25, HEADBUTT
	db 30, ZEN_HEADBUTT
	db 35, MILK_DRINK
	db 40, BODY_SLAM
	db 45, PLAY_ROUGH
	db 50, CHARM
	db 55, EARTHQUAKE ; FIXME: HIGH_HORSEPOWER
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	; db 1, DISARMING_VOICE
	db 1, TACKLE
	db 1, SWEET_KISS
	; db 1, COVET
	db 1, CHARM
	; db 1, MINIMIZE
	; db 1, COPYCAT
	; db 1, DEFENSE_CURL
	db 4, TAIL_WHIP
	db 8, DISARMING_VOICE ; FIXME: ECHOED_VOICE
	db 12, ROLLOUT ; FIXME: LIFE_DEW
	db 16, SING
	db 20, MINIMIZE ; FIXME: FLING
	db 24, TAKE_DOWN
	db 28, SAFEGUARD ; FIXME: HEAL_PULSE
	; db 32, HELPING_HAND
	db 36, LIGHT_SCREEN
	db 40, DOUBLE_EDGE
	db 44, SOFTBOILED
	; db 48, LAST_RESORT
	; db 52, HEALING_WISH
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
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
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
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
	db 1, LEER
	db 3, ROCK_THROW
	db 6, PAYBACK
	db 9, BITE
	db 12, SCARY_FACE
	db 18, BULLDOZE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	db 24, DARK_PULSE
	db 27, CRUNCH
	db 31, EARTHQUAKE
	db 33, STONE_EDGE
	db 36, THRASH
	db 39, SANDSTORM
	db 42, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	; db 1, IRON_DEFENSE
	db 1, TACKLE
	db 1, LEER
	db 1, ROCK_THROW
	db 1, PAYBACK
	; db EVO, IRON_DEFENSE
	db 9, BITE
	db 12, SCARY_FACE
	; db 15, ROCK_SLIDE
	db 18, BULLDOZE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	db 24, DARK_PULSE
	db 27, CRUNCH
	db 33, EARTHQUAKE
	db 37, STONE_EDGE
	db 42, THRASH
	db 47, SANDSTORM
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	; db 1, IRON_DEFENSE
	; db 1, THUNDER_FANG
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	db 1, TACKLE
	db 1, LEER
	db 1, ROCK_THROW
	db 1, PAYBACK
	db 9, BITE
	db 12, SCARY_FACE
	db 15, ROCK_SLIDE
	db 18, BULLDOZE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	db 24, DARK_PULSE
	db 27, CRUNCH
	db 33, EARTHQUAKE
	db 37, STONE_EDGE
	db 42, THRASH
	db 47, SANDSTORM
	db 52, HYPER_BEAM
	; db 59, GIGA_IMPACT
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
	db 1, SKY_ATTACK
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
