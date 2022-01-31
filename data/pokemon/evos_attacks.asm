INCLUDE "constants.asm"

SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
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
	db 21, TAKE_DOWN
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
	db 25, TAKE_DOWN
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
	db LEVEL_EVO, PETAL_DANCE ; FIXME: PETAL_BLIZZARD
	db 9, LEECH_SEED
	db 12, RAZOR_LEAF
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, SEED_BOMB
	db 25, TAKE_DOWN
	db 30, SWEET_SCENT
	db 37, SYNTHESIS
	; db 44, WORRY_SEED
	db 51, DOUBLE_EDGE
	db 58, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, DRAGONBREATH
	; db 17, FIRE_FANG
	db 20, SLASH
	db 24, FLAMETHROWER
	db 28, SCARY_FACE
	db 32, FIRE_SPIN
	; db 36, INFERNO
	db 40, FLARE_BLITZ
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 12, DRAGONBREATH
	; db 19, FIRE_FANG
	db 24, SLASH
	db 30, FLAMETHROWER
	db 37, SCARY_FACE
	db 42, FIRE_SPIN
	; db 48, INFERNO
	db 54, FLARE_BLITZ
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AIR_SLASH
	; db 1, DRAGON_CLAW
	; db 1, HEAT_WAVE
	; db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db LEVEL_EVO, AIR_SLASH
	db 12, DRAGONBREATH
	; db 19, FIRE_FANG
	db 24, SLASH
	db 30, FLAMETHROWER
	db 39, SCARY_FACE
	db 46, FIRE_SPIN
	; db 54, INFERNO
	db 62, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 3, WATER_GUN
	db 6, WITHDRAW
	db 9, RAPID_SPIN
	db 12, BITE
	db 15, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 18, PROTECT
	db 21, RAIN_DANCE
	db 24, WATERFALL ; FIXME: AQUA_TAIL
	db 27, CURSE ; FIXME: SHELL_SMASH
	; db 30, IRON_DEFENSE
	db 33, HYDRO_PUMP
	db 36, SKULL_BASH
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, RAPID_SPIN
	db 12, BITE
	db 15, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 20, PROTECT
	db 25, RAIN_DANCE
	db 30, WATERFALL ; FIXME: AQUA_TAIL
	db 35, CURSE ; FIXME: SHELL_SMASH
	; db 40, IRON_DEFENSE
	db 45, HYDRO_PUMP
	db 50, SKULL_BASH
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FLASH_CANNON
	; db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, WITHDRAW
	db LEVEL_EVO, FLASH_CANNON
	db 9, RAPID_SPIN
	db 12, BITE
	; db 15, WATER_PULSE
	db 20, PROTECT
	db 25, RAIN_DANCE
	db 30, WATERFALL ; FIXME: AQUA_TAIL
	db 35, CURSE ; FIXME: SHELL_SMASH
	; db 42, IRON_DEFENSE
	db 49, HYDRO_PUMP
	db 56, SKULL_BASH
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	; db 9, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db LEVEL_EVO, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, GUST
	db 1, HARDEN
	db 1, TACKLE
	db 1, STRING_SHOT
	; db 1, BUG_BITE
	db LEVEL_EVO, GUST
	db 4, SUPERSONIC
	db 8, CONFUSION
	db 12, POISONPOWDER
	db 12, STUN_SPORE
	db 12, SLEEP_POWDER
	db 16, PSYBEAM
	db 20, WHIRLWIND
	db 24, AIR_SLASH
	db 28, SAFEGUARD
	db 32, BUG_BUZZ
	; db 36, TAILWIND
	; db 40, RAGE_POWDER
	; db 44, QUIVER_DANCE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	; db 9, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FURY_ATTACK
	; db 1, HARDEN
	db 1, POISON_STING
	db 1, STRING_SHOT
	; db 1, BUG_BITE
	db LEVEL_EVO, FURY_ATTACK
	db 11, FURY_CUTTER
	; db 14, LASER_FOCUS
	db 17, POISON_STING
	db 20, FOCUS_ENERGY
	; db 23, VENOSHOCK
	db 26, PAYBACK ; FIXME: ASSURANCE
	; db 29, TOXIC_SPIKES
	db 32, PIN_MISSILE
	db 35, POISON_JAB
	db 38, AGILITY
	; db 41, ENDEAVOR
	; db 44, FELL_STINGER
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 21, TWISTER
	db 25, CHARM ; FIXME: FEATHER_DANCE
	db 29, AGILITY
	db 33, WING_ATTACK
	db 37, ROOST
	; db 41, TAILWIND
	db 45, AERIAL_ACE
	db 49, AIR_SLASH
	; db 53, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	; db 5, SAND_ATTACK
	; db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 22, TWISTER
	db 27, CHARM ; FIXME: FEATHER_DANCE
	db 32, AGILITY
	db 37, WING_ATTACK
	db 42, ROOST
	; db 47, TAILWIND
	db 52, AERIAL_ACE
	db 57, AIR_SLASH
	; db 62, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HURRICANE
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	; db 5, SAND_ATTACK
	; db 9, GUST
	; db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 22, TWISTER
	db 27, CHARM ; FIXME: FEATHER_DANCE
	db 32, AGILITY
	db 38, WING_ATTACK
	db 44, ROOST
	; db 50, TAILWIND
	db 56, AERIAL_ACE
	db 62, AIR_SLASH
	; db 68, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	; db 13, LASER_FOCUS
	db 16, TAKE_DOWN
	db 19, PAYBACK ; FIXME: ASSURANCE
	db 22, CRUNCH
	db 25, SUCKER_PUNCH
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	; db 34, ENDEAVOR
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SCARY_FACE
	; db 1, SWORDS_DANCE
	; db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, FOCUS_ENERGY
	db LEVEL_EVO, SCARY_FACE
	; db 4, QUICK_ATTACK
	; db 7, FOCUS_ENERGY
	db 10, BITE
	; db 13, LASER_FOCUS
	db 16, TAKE_DOWN
	db 19, PAYBACK ; FIXME: ASSURANCE
	db 24, CRUNCH
	db 29, SUCKER_PUNCH
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	; db 44, ENDEAVOR
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, LEER
	db 8, PAYBACK ; FIXME: ASSURANCE
	db 11, FURY_ATTACK
	db 15, AERIAL_ACE
	db 18, WING_ATTACK
	; db 22, TAKE_DOWN
	db 25, AGILITY
	db 29, FOCUS_ENERGY
	db 32, ROOST
	db 36, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	; db 1, DRILL_RUN
	; db 1, PLUCK
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	; db 4, LEER
	db 8, PAYBACK ; FIXME: ASSURANCE
	db 11, FURY_ATTACK
	db 15, AERIAL_ACE
	db 18, WING_ATTACK
	; db 23, TAKE_DOWN
	db 27, AGILITY
	db 32, FOCUS_ENERGY
	db 36, ROOST
	db 41, DRILL_PECK
	; db 45, DRILL_RUN
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	; db 25, STOCKPILE
	; db 25, SWALLOW
	; db 25, SPIT_UP
	; db 28, ACID_SPRAY
	; db 33, MUD_BOMB
	; db 36, GASTRO_ACID
	; db 38, BELCH
	db 41, HAZE
	; db 44, COIL
	db 49, SLUDGE_BOMB ; FIXME: GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CRUNCH
	; db 1, THUNDER_FANG
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	; db 1, BITE
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db LEVEL_EVO, CRUNCH
	; db 4, POISON_STING
	; db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	; db 27, STOCKPILE
	; db 27, SPIT_UP
	; db 27, SWALLOW
	; db 32, ACID_SPRAY
	; db 39, MUD_BOMB
	; db 44, GASTRO_ACID
	; db 48, BELCH
	db 51, HAZE
	; db 56, COIL
	db 63, SLUDGE_BOMB ; FIXME: GUNK_SHOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	; db 1, PLAY_NICE
	; db 1, SWEET_KISS
	; db 1, NUZZLE
	; db 1, NASTY_PLOT
	; db 1, CHARM
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 4, THUNDER_WAVE
	db 8, DOUBLE_TEAM
	; db 12, ELECTRO_BALL
	; db 16, FEINT
	db 20, SPARK
	db 24, AGILITY
	db 28, SLAM
	; db 32, DISCHARGE
	db 36, THUNDERBOLT
	db 40, LIGHT_SCREEN
	db 44, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	; db 1, THUNDERPUNCH
	; db 1, PLAY_NICE
	; db 1, SWEET_KISS
	; db 1, NUZZLE
	; db 1, NASTY_PLOT
	; db 1, CHARM
	; db 1, THUNDER_WAVE
	; db 1, DOUBLE_TEAM
	; db 1, ELECTRO_BALL
	; db 1, FEINT
	; db 1, SPARK
	db 1, AGILITY
	; db 1, SLAM
	; db 1, DISCHARGE
	db 1, THUNDERBOLT
	; db 1, LIGHT_SCREEN
	; db 1, THUNDER
	; db 1, THUNDERSHOCK
	; db 1, TAIL_WHIP
	; db 1, GROWL
	db 1, QUICK_ATTACK
	db LEVEL_EVO, THUNDERPUNCH
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 3, POISON_STING
	db 6, SAND_ATTACK
	db 9, ROLLOUT
	db 12, FURY_CUTTER
	db 15, RAPID_SPIN
	db 18, BULLDOZE
	db 21, SWIFT
	db 24, FURY_SWIPES
	db 27, AGILITY
	db 30, SLASH
	db 33, DIG
	; db 36, GYRO_BALL
	db 39, SWORDS_DANCE
	db 42, SANDSTORM
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CRUSH_CLAW
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, POISON_STING
	db 1, SAND_ATTACK
	; db 1, AGILITY
	db 9, ROLLOUT
	db 12, FURY_CUTTER
	db 15, RAPID_SPIN
	db 18, BULLDOZE
	db 21, SWIFT
	db 26, FURY_SWIPES
	db 31, SAND_TOMB
	db 36, SLASH
	db 41, DIG
	; db 46, GYRO_BALL
	db 51, SWORDS_DANCE
	db 56, SANDSTORM
	db 61, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POISON_STING
	db 5, SCRATCH
	db 10, TAIL_WHIP
	db 15, FURY_SWIPES
	; db 20, TOXIC_SPIKES
	db 25, DOUBLE_KICK
	db 30, BITE
	; db 35, HELPING_HAND
	db 40, TOXIC
	; db 45, FLATTER
	db 50, CRUNCH
	db 55, EARTH_POWER
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POISON_STING
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 15, FURY_SWIPES
	; db 22, TOXIC_SPIKES
	db 29, DOUBLE_KICK
	db 36, BITE
	; db 43, HELPING_HAND
	db 50, TOXIC
	; db 57, FLATTER
	db 64, CRUNCH
	db 71, EARTH_POWER
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SLUDGE_WAVE
	; db 1, SUPERPOWER
	; db 1, FURY_SWIPES
	; db 1, TOXIC_SPIKES
	db 1, DOUBLE_KICK
	; db 1, BITE
	; db 1, HELPING_HAND
	db 1, TOXIC
	; db 1, FLATTER
	db 1, CRUNCH
	db 1, EARTH_POWER
	; db 1, GROWL
	; db 1, POISON_STING
	; db 1, SCRATCH
	; db 1, TAIL_WHIP
	db LEVEL_EVO, SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POISON_STING
	db 5, PECK
	db 10, FOCUS_ENERGY
	db 15, FURY_ATTACK
	; db 20, TOXIC_SPIKES
	db 25, DOUBLE_KICK
	db 30, HORN_ATTACK
	; db 35, HELPING_HAND
	db 40, TOXIC
	; db 45, FLATTER
	db 50, POISON_JAB
	db 55, EARTH_POWER
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POISON_STING
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 15, FURY_ATTACK
	; db 22, TOXIC_SPIKES
	db 29, DOUBLE_KICK
	db 36, HORN_ATTACK
	; db 43, HELPING_HAND
	db 50, TOXIC
	; db 57, FLATTER
	db 64, POISON_JAB
	db 71, EARTH_POWER
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	; db 1, MEGAHORN
	; db 1, FURY_ATTACK
	; db 1, TOXIC_SPIKES
	db 1, DOUBLE_KICK
	; db 1, HORN_ATTACK
	; db 1, HELPING_HAND
	; db 1, TOXIC
	; db 1, FLATTER
	db 1, POISON_JAB
	db 1, EARTH_POWER
	; db 1, LEER
	; db 1, POISON_STING
	; db 1, PECK
	; db 1, FOCUS_ENERGY
	db LEVEL_EVO, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	; db 1, ENCORE
	; db 1, CHARM
	; db 1, SPLASH
	; db 1, COPYCAT
	db 1, SING
	db 1, POUND
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 4, DISARMING_VOICE ; FIXME: STORED_POWER
	db 8, MINIMIZE
	db 12, SWEET_KISS ; FIXME: AFTER_YOU
	db 16, ENCORE ; FIXME: LIFE_DEW
	db 20, METRONOME
	db 24, MOONLIGHT
	db 28, CHARM ; FIXME: GRAVITY
	db 32, BODY_SLAM ; FIXME: METEOR_MASH
	; db 36, FOLLOW_ME
	; db 40, COSMIC_POWER
	db 44, DAZZLING_GLEAM ; FIXME: MOONBLAST
	; db 48, HEALING_WISH
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SING
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	db 1, ENCORE
	; db 1, CHARM
	; db 1, STORED_POWER
	; db 1, MINIMIZE
	; db 1, AFTER_YOU
	; db 1, LIFE_DEW
	db 1, METRONOME
	db 1, MOONLIGHT
	; db 1, GRAVITY
	; db 1, METEOR_MASH
	; db 1, FOLLOW_ME
	; db 1, COSMIC_POWER
	db 1, DAZZLING_GLEAM ; FIXME: MOONBLAST
	; db 1, HEALING_WISH
	; db 1, POUND
	; db 1, COPYCAT
	; db 1, GROWL
	; db 1, DEFENSE_CURL
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 4, DISABLE
	db 8, QUICK_ATTACK
	db 12, SPITE
	; db 16, INCINERATE
	db 20, CONFUSE_RAY
	db 24, WILL_O_WISP
	db 28, CONFUSION ; FIXME: EXTRASENSORY
	db 32, FLAMETHROWER
	; db 36, IMPRISON
	db 40, FIRE_SPIN
	db 44, SAFEGUARD
	; db 48, INFERNO
	; db 52, GRUDGE
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	; db 1, NASTY_PLOT
	; db 1, SPITE
	; db 1, INCINERATE
	db 1, CONFUSE_RAY
	; db 1, WILL_O_WISP
	; db 1, EXTRASENSORY
	; db 1, FLAMETHROWER
	; db 1, IMPRISON
	db 1, FIRE_SPIN
	; db 1, SAFEGUARD
	; db 1, INFERNO
	; db 1, GRUDGE
	db 1, FIRE_BLAST
	; db 1, EMBER
	; db 1, TAIL_WHIP
	; db 1, DISABLE
	db 1, QUICK_ATTACK
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	; db 1, DISABLE
	db 1, CHARM
	db 1, SING
	db 1, POUND
	; db 1, COPYCAT
	db 1, DEFENSE_CURL
	db 4, DISARMING_VOICE ; FIXME: ECHOED_VOICE
	db 8, SWEET_KISS ; FIXME: COVET
	db 12, DISABLE ; FIXME: STOCKPILE
	; db 12, SWALLOW
	; db 12, SPIT_UP
	; db 16, ROUND
	db 20, REST
	db 24, BODY_SLAM
	db 28, MIMIC
	; db 32, GYRO_BALL
	; db 36, HYPER_VOICE
	db 40, PLAY_ROUGH
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SWEET_KISS
	; db 1, DISARMING_VOICE
	; db 1, DISABLE
	; db 1, CHARM
	; db 1, ECHOED_VOICE
	; db 1, COVET
	; db 1, STOCKPILE
	; db 1, SWALLOW
	; db 1, SPIT_UP
	; db 1, ROUND
	; db 1, REST
	db 1, BODY_SLAM
	; db 1, MIMIC
	; db 1, GYRO_BALL
	db 1, PLAY_ROUGH
	; db 1, HYPER_VOICE
	; db 1, DOUBLE_EDGE
	db 1, SING
	; db 1, POUND
	; db 1, COPYCAT
	db 1, DEFENSE_CURL
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SUPERSONIC
	; db 5, ASTONISH
	db 10, MEAN_LOOK
	db 15, POISON_STING ; FIXME: POISON_FANG
	; db 20, QUICK_GUARD
	db 25, WING_ATTACK ; FIXME: AIR_CUTTER
	db 30, BITE
	db 35, HAZE
	; db 40, VENOSHOCK
	db 45, CONFUSE_RAY
	db 50, AIR_SLASH
	db 55, LEECH_LIFE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	; db 1, ASTONISH
	db 1, MEAN_LOOK
	db 15, POISON_STING ; FIXME: POISON_FANG
	; db 20, QUICK_GUARD
	db 27, WING_ATTACK ; FIXME: AIR_CUTTER
	db 34, BITE
	db 41, HAZE
	; db 48, VENOSHOCK
	db 55, CONFUSE_RAY
	db 62, AIR_SLASH
	db 69, LEECH_LIFE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 4, ACID
	db 8, SWEET_SCENT
	db 12, MEGA_DRAIN
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 20, GIGA_DRAIN
	db 24, TOXIC
	db 28, DAZZLING_GLEAM ; FIXME: MOONBLAST
	; db 32, GRASSY_TERRAIN
	db 36, MOONLIGHT
	db 40, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 1, ACID
	db 1, SWEET_SCENT
	db 12, MEGA_DRAIN
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 20, GIGA_DRAIN
	db 26, TOXIC
	db 32, DAZZLING_GLEAM ; FIXME: MOONBLAST
	; db 38, GRASSY_TERRAIN
	db 44, MOONLIGHT
	db 50, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, PETAL_BLIZZARD
	; db 1, AROMATHERAPY
	; db 1, MEGA_DRAIN
	db 1, POISONPOWDER
	; db 1, STUN_SPORE
	; db 1, SLEEP_POWDER
	; db 1, GIGA_DRAIN
	; db 1, TOXIC
	; db 1, MOONBLAST
	; db 1, GRASSY_TERRAIN
	db 1, MOONLIGHT
	db 1, PETAL_DANCE
	; db 1, ABSORB
	; db 1, GROWTH
	db 1, ACID
	; db 1, SWEET_SCENT
	; db LEVEL_EVO, PETAL_BLIZZARD
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, FURY_CUTTER
	db 22, SPORE
	db 27, SLASH
	db 33, GROWTH
	db 38, GIGA_DRAIN
	db 43, HEAL_BELL ; FIXME: AROMATHERAPY
	; db 49, RAGE_POWDER
	; db 54, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CROSS_POISON
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, ABSORB
	; db 6, STUN_SPORE
	; db 6, POISONPOWDER
	; db 11, ABSORB
	db 17, FURY_CUTTER
	db 22, SPORE
	db 29, SLASH
	db 37, GROWTH
	db 44, GIGA_DRAIN
	db 51, HEAL_BELL ; FIXME: AROMATHERAPY
	; db 59, RAGE_POWDER
	; db 66, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	; db 1, STRUGGLE_BUG
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, STUN_SPORE
	db 25, MEGA_DRAIN
	db 29, SLEEP_POWDER
	db 35, LEECH_LIFE
	db 37, ZEN_HEADBUTT
	; db 41, POISON_FANG
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	; db 1, GUST
	; db 1, QUIVER_DANCE
	; db 1, BUG_BUZZ
	; db 1, WHIRLWIND
	db 1, TACKLE
	db 1, DISABLE
	; db 1, STRUGGLE_BUG
	db 1, SUPERSONIC
	db LEVEL_EVO, GUST
	; db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, STUN_SPORE
	db 25, MEGA_DRAIN
	db 29, SLEEP_POWDER
	db 37, LEECH_LIFE
	db 41, ZEN_HEADBUTT
	; db 47, POISON_FANG
	db 55, PSYCHIC_M
	db 59, BUG_BUZZ
	; db 63, QUIVER_DANCE
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, SCRATCH
	db 4, GROWL
	; db 8, ASTONISH
	db 12, MUD_SLAP
	db 16, BULLDOZE
	db 20, SUCKER_PUNCH
	db 24, SLASH
	db 28, SANDSTORM
	db 32, DIG
	db 36, EARTH_POWER
	db 40, EARTHQUAKE
	db 44, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SAND_TOMB
	; db 1, NIGHT_SLASH
	db 1, TRI_ATTACK
	db 1, SAND_ATTACK
	; db 1, SCRATCH
	db 1, GROWL
	; db 1, ASTONISH
	db LEVEL_EVO, SAND_TOMB
	db 12, MUD_SLAP
	db 16, BULLDOZE
	db 20, SUCKER_PUNCH
	db 24, SLASH
	db 30, SANDSTORM
	db 36, DIG
	db 42, EARTH_POWER
	db 48, EARTHQUAKE
	db 54, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH ; FIXME: FAKE_OUT
	db 1, GROWL
	; db 4, FEINT
	; db 8, SCRATCH
	db 12, PAY_DAY
	db 16, BITE
	; db 20, TAUNT
	db 24, PAYBACK ; FIXME: ASSURANCE
	db 29, FURY_SWIPES
	db 32, SCREECH
	db 36, SLASH
	db 40, NASTY_PLOT
	db 44, PLAY_ROUGH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	; db 1, POWER_GEM
	; db 1, SWITCHEROO
	; db 1, FAKE_OUT
	db 1, GROWL
	; db 1, FEINT
	db 1, SCRATCH
	; db LEVEL_EVO, POWER_GEM
	db 12, PAY_DAY
	db 16, BITE
	; db 20, TAUNT
	db 24, PAYBACK ; FIXME: ASSURANCE
	db 31, FURY_SWIPES
	db 36, SCREECH
	db 42, SLASH
	db 48, NASTY_PLOT
	db 54, PLAY_ROUGH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 3, WATER_GUN
	db 6, CONFUSION
	db 9, FURY_SWIPES
	; db 12, WATER_PULSE
	db 15, DISABLE
	db 18, ZEN_HEADBUTT
	db 21, SCREECH
	db 24, WATERFALL ; FIXME: AQUA_TAIL
	; db 27, SOAK
	db 30, PSYCH_UP
	db 34, AMNESIA
	db 36, HYDRO_PUMP
	; db 39, WONDER_ROOM
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AQUA_JET
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, CONFUSION
	db 9, FURY_SWIPES
	; db 12, WATER_PULSE
	db 15, DISABLE
	db 18, ZEN_HEADBUTT
	db 21, SCREECH
	db 24, WATERFALL ; FIXME: AQUA_TAIL
	; db 27, SOAK
	db 30, PSYCH_UP
	db 36, AMNESIA
	db 40, HYDRO_PUMP
	; db 45, WONDER_ROOM
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	; db 1, COVET
	db 1, SCRATCH
	db 1, LOW_SWEEP ; FIXME: LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_SWIPES
	db 8, MUD_SLAP
	db 12, SEISMIC_TOSS
	; db 15, RETALIATE
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, PAYBACK ; FIXME: ASSURANCE
	db 29, SKULL_BASH
	db 33, THRASH
	db 36, CLOSE_COMBAT
	db 40, SCREECH
	; db 43, STOMPING_TANTRUM
	db 47, OUTRAGE
	; db 50, FINAL_GAMBIT
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FINAL_GAMBIT
	; db 1, FLING
	; db 1, SCRATCH
	db 1, LOW_SWEEP ; FIXME: LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	; db 1, COVET
	db 5, FURY_SWIPES
	db 8, MUD_SLAP
	db 12, SEISMIC_TOSS
	; db 15, RETALIATE
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, PAYBACK ; FIXME: ASSURANCE
	db 30, SKULL_BASH
	db 35, THRASH
	db 39, CLOSE_COMBAT
	db 44, SCREECH
	; db 48, STOMPING_TANTRUM
	db 53, OUTRAGE
	; db 57, FINAL_GAMBIT
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	; db 4, HOWL
	db 8, BITE
	db 12, FLAME_WHEEL
	; db 16, HELPING_HAND
	db 20, AGILITY
	; db 24, FIRE_FANG
	; db 28, RETALIATE
	db 32, CRUNCH
	db 36, TAKE_DOWN
	db 40, FLAMETHROWER
	db 44, ROAR
	db 48, PLAY_ROUGH
	db 52, REVERSAL
	db 56, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	; db 1, EXTREMESPEED
	; db 1, BURN_UP
	db 1, FLAME_WHEEL
	; db 1, HELPING_HAND
	; db 1, AGILITY
	; db 1, FIRE_FANG
	; db 1, RETALIATE
	; db 1, CRUNCH
	; db 1, TAKE_DOWN
	; db 1, FLAMETHROWER
	; db 1, ROAR
	; db 1, PLAY_ROUGH
	; db 1, REVERSAL
	; db 1, FLARE_BLITZ
	; db 1, EMBER
	db 1, LEER
	; db 1, HOWL
	db 1, BITE
	db LEVEL_EVO, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 6, POUND
	db 12, MUD_SLAP ; FIXME: MUD_SHOT
	db 18, BUBBLEBEAM
	db 24, RAIN_DANCE
	db 30, BODY_SLAM
	db 36, EARTH_POWER
	db 42, HYDRO_PUMP
	db 48, BELLY_DRUM
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	; db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db EVOLVE_HOLD, KINGS_ROCK, 40, POLITOED
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 6, POUND
	db 12, MUD_SLAP ; FIXME: MUD_SHOT
	db 18, BUBBLEBEAM
	db 24, RAIN_DANCE
	db 32, BODY_SLAM
	db 40, EARTH_POWER
	db 48, HYDRO_PUMP
	db 56, BELLY_DRUM
	db 66, DOUBLE_EDGE
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SUBMISSION
	; db 1, CIRCLE_THROW
	; db 1, MIND_READER
	; db 1, DYNAMICPUNCH
	db 1, BUBBLEBEAM
	; db 1, RAIN_DANCE
	db 1, BODY_SLAM
	; db 1, EARTH_POWER
	; db 1, HYDRO_PUMP
	db 1, BELLY_DRUM
	; db 1, DOUBLE_EDGE
	; db 1, WATER_GUN
	; db 1, HYPNOSIS
	; db 1, POUND
	; db 1, MUD_SHOT
	db LEVEL_EVO, SUBMISSION
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
	; db 1, CONFUSION
	db 1, KINESIS
	db 1, DISABLE
	db 1, TELEPORT
	db LEVEL_EVO, CONFUSION
	db 5, PSYBEAM
	db 10, REFLECT
	; db 15, ALLY_SWITCH
	; db 20, PSYCHO_CUT
	db 25, RECOVER
	; db 30, PSYSHOCK
	db 35, PSYCHIC_M
	; db 40, ROLE_PLAY
	db 45, FUTURE_SIGHT
	db 50, CALM_MIND
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, KINESIS
	db 1, DISABLE
	db 1, TELEPORT
	db 5, PSYBEAM
	db 10, REFLECT
	; db 15, ALLY_SWITCH
	; db 20, PSYCHO_CUT
	db 25, RECOVER
	; db 30, PSYSHOCK
	db 35, PSYCHIC_M
	; db 40, ROLE_PLAY
	db 45, FUTURE_SIGHT
	db 50, CALM_MIND
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, POUND ; FIXME: LOW_KICK
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 8, REVENGE
	db 12, LOW_SWEEP
	; db 16, KNOCK_OFF
	db 20, SCARY_FACE
	db 24, VITAL_THROW
	db 29, STRENGTH
	; db 32, DUAL_CHOP
	; db 36, BULK_UP
	db 40, SEISMIC_TOSS
	db 44, DYNAMICPUNCH
	db 48, CROSS_CHOP
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	; db EVOLVE_TRADE, -1, MACHAMP
	db EVOLVE_HOLD, BLACKBELT_I, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, POUND ; FIXME: LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 1, REVENGE
	db 12, LOW_SWEEP
	; db 16, KNOCK_OFF
	db 20, SCARY_FACE
	db 24, VITAL_THROW
	db 31, STRENGTH
	; db 36, DUAL_CHOP
	; db 42, BULK_UP
	db 48, SEISMIC_TOSS
	db 54, DYNAMICPUNCH
	db 60, CROSS_CHOP
	db 66, DOUBLE_EDGE
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	; db 1, WIDE_GUARD
	; db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 1, REVENGE
	db 12, LOW_SWEEP
	; db 16, KNOCK_OFF
	db 20, SCARY_FACE
	db 24, VITAL_THROW
	db 31, STRENGTH
	; db 36, DUAL_CHOP
	; db 42, BULK_UP
	db 48, SEISMIC_TOSS
	db 54, DYNAMICPUNCH
	db 60, CROSS_CHOP
	db 66, DOUBLE_EDGE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	; db 27, KNOCK_OFF
	db 29, SWEET_SCENT
	; db 35, GASTRO_ACID
	db 39, RAZOR_LEAF
	db 41, POISON_JAB
	db 47, SLAM
	; db 50, WRING_OUT
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	; db 7, GROWTH
	; db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	; db 29, KNOCK_OFF
	db 32, SWEET_SCENT
	; db 39, GASTRO_ACID
	db 44, RAZOR_LEAF
	db 47, POISON_JAB
	db 54, SLAM
	; db 58, WRING_OUT
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	; db 1, LEAF_TORNADO
	; db 1, STOCKPILE
	; db 1, SWALLOW
	; db 1, SPIT_UP
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	; db LEVEL_EVO, LEAF_TORNADO
	; db 32, LEAF_STORM
	; db 44, LEAF_BLADE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, WATER_GUN
	db 4, ACID
	db 8, WRAP
	db 12, SUPERSONIC
	; db 16, WATER_PULSE
	db 20, SCREECH
	db 24, BUBBLEBEAM
	db 28, HEX
	db 32, ACID_ARMOR
	db 36, POISON_JAB
	db 40, SURF
	db 44, SLUDGE_BOMB ; FIXME: SLUDGE_WAVE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	; db 1, REFLECT_TYPE
	db 1, POISON_STING
	db 1, WATER_GUN
	db 1, ACID
	db 1, WRAP
	db 12, SUPERSONIC
	; db 16, WATER_PULSE
	db 20, SCREECH
	db 24, BUBBLEBEAM
	db 28, HEX
	db 34, ACID_ARMOR
	db 40, POISON_JAB
	db 46, SURF
	db 52, SLUDGE_BOMB ; FIXME: SLUDGE_WAVE
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	; db 4, MUD_SPORT
	; db 6, ROCK_POLISH
	db 10, ROLLOUT
	db 16, ROCK_THROW
	; db 18, SMACK_DOWN
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	; db 28, STEALTH_ROCK
	; db 30, ROCK_BLAST
	db 34, EARTHQUAKE
	db 36, EXPLOSION
	db 40, DOUBLE_EDGE
	db 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	; db EVOLVE_TRADE, -1, GOLEM
	db EVOLVE_HOLD, HARD_STONE, 40, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	; db 1, MUD_SPORT
	; db 1, ROCK_POLISH
	; db 4, MUD_SPORT
	; db 6, ROCK_POLISH
	db 10, ROLLOUT
	db 16, ROCK_THROW
	; db 18, SMACK_DOWN
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	; db 30, STEALTH_ROCK
	; db 34, ROCK_BLAST
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HEAVY_SLAM
	db 1, TACKLE
	db 1, DEFENSE_CURL
	; db 1, MUD_SPORT
	; db 1, ROCK_POLISH
	; db 4, MUD_SPORT
	; db 6, ROCK_POLISH
	; db 10, STEAMROLLER
	db 16, ROCK_THROW
	; db 18, SMACK_DOWN
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	; db 30, STEALTH_ROCK
	; db 34, ROCK_BLAST
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	; db 60, HEAVY_SLAM
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, TAIL_WHIP
	db 10, EMBER
	; db 15, FLAME_CHARGE
	db 20, AGILITY
	db 25, FLAME_WHEEL
	db 30, STOMP
	db 35, FIRE_SPIN
	db 41, TAKE_DOWN
	db 45, FLAMETHROWER ; FIXME: INFERNO
	db 50, FIRE_BLAST
	db 55, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SMART_STRIKE
	; db 1, MEGAHORN
	; db 1, POISON_JAB
	; db 1, TACKLE
	; db 1, QUICK_ATTACK
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db LEVEL_EVO, MEGAHORN ; FIXME: SMART_STRIKE
	; db 15, FLAME_CHARGE
	db 20, AGILITY
	db 25, FLAME_WHEEL
	db 30, STOMP
	db 35, FIRE_SPIN
	db 43, TAKE_DOWN
	db 49, FLAMETHROWER ; FIXME: INFERNO
	db 56, FIRE_BLAST
	db 63, FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	; db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db EVOLVE_HOLD, KINGS_ROCK, 37, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CURSE
	db 3, GROWL
	db 6, WATER_GUN
	db 9, HYPNOSIS ; FIXME: YAWN
	db 12, CONFUSION
	db 15, DISABLE
	db 18, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 21, HEADBUTT
	db 24, ZEN_HEADBUTT
	db 27, AMNESIA
	db 30, SURF
	db 33, RECOVER ; FIXME: SLACK_OFF
	db 36, PSYCHIC_M
	db 39, PSYCH_UP
	db 42, RAIN_DANCE
	; db 45, HEAL_PULSE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, TACKLE
	db 1, CURSE
	db 1, GROWL
	db 1, WATER_GUN
	db 9, HYPNOSIS ; FIXME: YAWN
	db 12, CONFUSION
	db 15, DISABLE
	db 18, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 21, HEADBUTT
	db 24, ZEN_HEADBUTT
	db 27, AMNESIA
	db 30, SURF
	db 33, RECOVER ; FIXME: SLACK_OFF
	db 36, PSYCHIC_M
	db 41, PSYCH_UP
	db 46, RAIN_DANCE
	; db 51, HEAL_PULSE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TACKLE
	db 4, SUPERSONIC
	db 8, THUNDER_WAVE
	; db 12, ELECTRO_BALL
	; db 16, GYRO_BALL
	db 20, SPARK
	db 24, SCREECH
	; db 28, MAGNET_RISE
	db 32, FLASH_CANNON
	db 36, THUNDERBOLT ; FIXME: DISCHARGE
	; db 40, METAL_SOUND
	db 44, LIGHT_SCREEN
	db 48, LOCK_ON
	db 52, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TRI_ATTACK
	; db 1, ELECTRIC_TERRAIN
	db 1, THUNDERSHOCK
	; db 1, TACKLE
	db 1, SUPERSONIC
	db 1, THUNDER_WAVE
	db LEVEL_EVO, TRI_ATTACK
	; db 12, ELECTRO_BALL
	; db 16, GYRO_BALL
	db 20, SPARK
	db 24, SCREECH
	; db 28, MAGNET_RISE
	db 34, FLASH_CANNON
	db 40, THUNDERBOLT ; FIXME: DISCHARGE
	; db 46, METAL_SOUND
	db 52, LIGHT_SCREEN
	db 58, LOCK_ON
	db 64, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 5, LEER
	db 10, FURY_CUTTER
	db 15, CUT
	db 20, AERIAL_ACE
	; db 25, AIR_CUTTER
	; db 30, KNOCK_OFF
	db 35, FALSE_SWIPE
	db 40, SLASH
	db 45, SWORDS_DANCE
	db 50, AIR_SLASH
	; db 55, LEAF_BLADE
	db 60, AGILITY
	; db 65, BRAVE_BIRD
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 8, LEER
	db 12, FURY_ATTACK
	db 15, WING_ATTACK
	; db 19, PLUCK
	; db 22, DOUBLE_HIT
	db 26, AGILITY
	; db 29, UPROAR
	; db 33, ACUPRESSURE
	db 36, SWORDS_DANCE
	; db 40, LUNGE
	db 43, DRILL_PECK
	; db 47, ENDEAVOR
	db 50, THRASH
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TRI_ATTACK
	db 1, PECK
	db 1, GROWL
	db 1, QUICK_ATTACK
	db LEVEL_EVO, TRI_ATTACK
	; db 5, QUICK_ATTACK
	db 8, LEER
	db 12, FURY_ATTACK
	db 15, WING_ATTACK
	; db 19, PLUCK
	; db 22, DOUBLE_HIT
	db 26, AGILITY
	; db 29, UPROAR
	; db 34, ACUPRESSURE
	db 38, SWORDS_DANCE
	; db 43, LUNGE
	db 47, DRILL_PECK
	; db 52, ENDEAVOR
	db 56, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	; db 7, WATER_SPORT
	db 11, ICY_WIND
	db 13, ENCORE
	; db 17, ICE_SHARD
	db 21, REST
	; db 23, AQUA_RING
	db 27, AURORA_BEAM
	; db 31, AQUA_JET
	db 33, SURF ; FIXME: BRINE
	db 37, TAKE_DOWN
	; db 41, DIVE
	db 43, WATERFALL ; FIXME: AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 53, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SHEER_COLD
	db 1, HEADBUTT
	db 1, GROWL
	; db 1, SIGNAL_BEAM
	db 1, ICY_WIND
	; db LEVEL_EVO, SHEER_COLD
	; db 3, GROWL
	; db 7, SIGNAL_BEAM
	; db 11, ICY_WIND
	db 13, ENCORE
	; db 17, ICE_SHARD
	db 21, REST
	; db 23, AQUA_RING
	db 27, AURORA_BEAM
	; db 31, AQUA_JET
	db 33, SURF ; FIXME: BRINE
	db 39, TAKE_DOWN
	; db 45, DIVE
	db 49, WATERFALL ; FIXME: AQUA_TAIL
	db 55, ICE_BEAM
	db 61, SAFEGUARD
	db 65, HAIL
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, POISON_GAS
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	; db 18, MUD_BOMB
	db 21, MINIMIZE
	; db 26, FLING
	db 29, SLUDGE_BOMB
	; db 32, SLUDGE_WAVE
	db 37, SCREECH
	; db 40, GUNK_SHOT
	db 43, ACID_ARMOR
	; db 46, BELCH
	; db 48, MEMENTO
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; db 1, VENOM_DRENCH
	db 1, POUND
	db 1, POISON_GAS
	db 1, HARDEN
	db 1, MUD_SLAP
	db LEVEL_EVO, TOXIC ; FIXME: VENOM_DRENCH
	; db 4, HARDEN
	; db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	; db 18, MUD_BOMB
	db 21, MINIMIZE
	; db 26, FLING
	db 29, SLUDGE_BOMB
	; db 32, SLUDGE_WAVE
	db 37, SCREECH
	; db 40, GUNK_SHOT
	db 46, ACID_ARMOR
	; db 52, BELCH
	; db 57, MEMENTO
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, WITHDRAW
	db 8, POWDER_SNOW ; FIXME: ICE_SHARD
	db 12, LEER
	db 16, WHIRLPOOL
	db 20, SUPERSONIC
	db 24, AURORA_BEAM
	db 28, PROTECT
	; db 32, RAZOR_SHELL
	; db 36, IRON_DEFENSE
	db 40, ICE_BEAM
	; db 44, SHELL_SMASH
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, HYDRO_PUMP
	; db 1, SHELL_SMASH
	; db 1, TOXIC_SPIKES
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 28, SPIKES
	; db 50, ICICLE_CRASH
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, CONFUSE_RAY
	db 4, HYPNOSIS
	db 8, MEAN_LOOK
	db 12, PAYBACK
	db 16, SPITE
	db 20, CURSE
	db 24, HEX
	db 28, NIGHT_SHADE
	db 32, SUCKER_PUNCH
	db 36, DARK_PULSE
	db 40, SHADOW_BALL
	db 44, DESTINY_BOND
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	; db EVOLVE_TRADE, -1, GENGAR
	db EVOLVE_HOLD, SPELL_TAG, 40, GENGAR
	db 0 ; no more evolutions
	; db 1, SHADOW_PUNCH
	db 1, LICK
	db 1, CONFUSE_RAY
	db 1, HYPNOSIS
	db 1, MEAN_LOOK
	; db LEVEL_EVO, SHADOW_PUNCH
	db 12, PAYBACK
	db 16, SPITE
	db 20, CURSE
	db 24, HEX
	db 30, NIGHT_SHADE
	db 36, SUCKER_PUNCH
	db 42, DARK_PULSE
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 60, DREAM_EATER
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SHADOW_PUNCH
	; db 1, PERISH_SONG
	; db 1, REFLECT_TYPE
	db 1, LICK
	db 1, CONFUSE_RAY
	db 1, HYPNOSIS
	db 1, MEAN_LOOK
	db 12, PAYBACK
	db 16, SPITE
	db 20, CURSE
	db 24, HEX
	db 30, NIGHT_SHADE
	db 36, SUCKER_PUNCH
	db 42, DARK_PULSE
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 60, DREAM_EATER
	db 0 ; no more level-up moves

OnixEvosAttacks:
	; db EVOLVE_TRADE, METAL_COAT, STEELIX
	db EVOLVE_HOLD, METAL_COAT, 36, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP
	db 1, ROCK_THROW
	; db 4, SMACK_DOWN
	db 8, AGILITY ; FIXME: ROCK_POLISH
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
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, CALM_MIND
	db 25, PSYBEAM
	db 29, MIND_READER
	db 33, PSYCH_UP
	; db 37, SYNCHRONOISE
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	; db 57, PSYSHOCK
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FUTURE_SIGHT
	; db 1, NASTY_PLOT
	; db 1, SWITCHEROO
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	; db 5, DISABLE
	; db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, CALM_MIND
	db 25, PSYBEAM
	db 29, MIND_READER
	db 33, PSYCH_UP
	; db 37, HYPNOSIS
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	; db 57, PSYSHOCK
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER
	db 4, HARDEN
	db 8, METAL_CLAW
	db 12, MUD_SLAP ; FIXME: MUD_SHOT
	db 16, PROTECT
	db 20, BUBBLEBEAM
	db 24, STOMP
	db 29, FLAIL
	; db 32, RAZOR_SHELL
	db 36, SLAM
	db 40, SWORDS_DANCE
	db 44, CRABHAMMER
	db 48, GUILLOTINE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	; db 1, WIDE_GUARD
	; db 1, HAMMER_ARM
	db 1, WATER_GUN
	db 1, LEER
	db 1, HARDEN
	db 1, METAL_CLAW
	db 12, MUD_SLAP ; FIXME: MUD_SHOT
	db 16, PROTECT
	db 20, BUBBLEBEAM
	db 24, STOMP
	db 31, FLAIL
	; db 36, RAZOR_SHELL
	db 42, SLAM
	db 48, SWORDS_DANCE
	db 54, CRABHAMMER
	db 60, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	; db 1, CHARGE
	db 1, TACKLE
	db 4, THUNDERSHOCK
	; db 6, EERIE_IMPULSE
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	; db 16, CHARGE_BEAM
	db 20, SWIFT
	; db 22, ELECTRO_BALL
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	; db 34, MAGNET_RISE
	db 37, THUNDERBOLT ; FIXME: DISCHARGE
	db 41, EXPLOSION
	; db 46, GYRO_BALL
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, MAGNETIC_FLUX
	; db 1, CHARGE
	db 1, TACKLE
	db 1, THUNDERSHOCK
	; db 1, EERIE_IMPULSE
	; db 4, THUNDERSHOCK
	; db 6, EERIE_IMPULSE
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	; db 16, CHARGE_BEAM
	db 20, SWIFT
	; db 22, ELECTRO_BALL
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	; db 36, MAGNET_RISE
	db 41, THUNDERBOLT; FIXME: DISCHARGE
	db 47, EXPLOSION
	; db 54, GYRO_BALL
	db 58, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 5, REFLECT
	db 10, LEECH_SEED
	db 15, MEGA_DRAIN
	db 20, CONFUSION
	db 25, SYNTHESIS
	; db 30, BULLET_SEED
	db 35, GIGA_DRAIN
	db 40, PSYCHIC_M ; FIXME: EXTRASENSORY
	; db 45, UPROAR
	; db 50, WORRY_SEED
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks: ; based on EXEGGCUTE +10
	db 0 ; no more evolutions
	; db 1, STOMP
	; db 1, SEED_BOMB
	; db 1, PSYSHOCK
	; db 1, WOOD_HAMMER
	; db 1, LEAF_STORM
	db 1, ABSORB
	db 1, HYPNOSIS
	db LEVEL_EVO, STOMP
	db 15, REFLECT
	db 20, LEECH_SEED
	db 25, MEGA_DRAIN
	db 30, CONFUSION
	db 35, SYNTHESIS
	; db 40, BULLET_SEED
	db 45, GIGA_DRAIN
	db 50, PSYCHIC_M ; FIXME: EXTRASENSORY
	; db 55, UPROAR
	; db 60, WORRY_SEED
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, GROWL
	db 4, TAIL_WHIP
	db 8, FALSE_SWIPE
	db 12, HEADBUTT
	; db 16, RETALIATE
	; db 20, FLING
	db 24, BULLDOZE ; FIXME: STOMPING_TANTRUM
	db 29, BONE_RUSH
	db 32, FOCUS_ENERGY
	; db 36, ENDEAVOR
	db 40, BONEMERANG
	db 44, THRASH
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, FALSE_SWIPE
	db 12, HEADBUTT
	; db 16, RETALIATE
	; db 20, FLING
	db 24, BULLDOZE ; FIXME: STOMPING_TANTRUM
	db 31, BONE_RUSH
	db 36, FOCUS_ENERGY
	; db 42, ENDEAVOR
	db 48, BONEMERANG
	db 54, THRASH
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, BRICK_BREAK
	; db 1, FEINT
	db 1, LOW_SWEEP
	db 1, TACKLE
	; db 1, HELPING_HAND
	; db 1, FAKE_OUT
	db 1, FOCUS_ENERGY
	db LEVEL_EVO, BRICK_BREAK
	db 4, DOUBLE_KICK
	; db 8, LOW_KICK
	db 12, ENDURE
	db 16, REVENGE
	; db 21, WIDE_GUARD
	; db 24, BLAZE_KICK
	db 28, MIND_READER
	db 32, MEGA_KICK
	db 36, CLOSE_COMBAT
	db 40, REVERSAL
	db 44, HI_JUMP_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	; db 1, DRAIN_PUNCH
	; db 1, FEINT
	; db 1, VACUUM_WAVE
	; db 1, BULLET_PUNCH
	db 1, TACKLE
	; db 1, HELPING_HAND
	; db 1, FAKE_OUT
	db 1, FOCUS_ENERGY
	db LEVEL_EVO, DRAIN_PUNCH
	db 4, MACH_PUNCH
	; db 8, POWER_UP_PUNCH
	db 12, DETECT
	db 16, REVENGE
	; db 21, QUICK_GUARD
	db 24, THUNDERPUNCH
	db 24, ICE_PUNCH
	db 24, FIRE_PUNCH
	db 28, AGILITY
	db 32, MEGA_PUNCH
	db 36, CLOSE_COMBAT
	db 40, COUNTER
	; db 44, FOCUS_PUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, DEFENSE_CURL
	db 6, ROLLOUT
	db 12, SUPERSONIC
	db 18, WRAP
	db 24, DISABLE
	db 30, STOMP
	db 36, THIEF ; FIXME: KNOCK_OFF
	db 42, SCREECH
	db 48, SLAM
	; db 54, POWER_WHIP
	db 60, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 4, SMOG
	db 8, SMOKESCREEN
	; db 12, CLEAR_SMOG
	db 16, PAYBACK ; FIXME: ASSURANCE
	db 20, SLUDGE
	db 24, HAZE
	db 28, SELFDESTRUCT
	db 32, SLUDGE_BOMB
	db 36, TOXIC
	; db 40, BELCH
	db 44, EXPLOSION
	; db 48, MEMENTO
	db 52, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	; db 1, DOUBLE_HIT
	; db 1, HEAT_WAVE
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SMOKESCREEN
	; db LEVEL_EVO, DOUBLE_HIT
	; db 12, CLEAR_SMOG
	db 16, PAYBACK ; FIXME: ASSURANCE
	db 20, SLUDGE
	db 24, HAZE
	db 28, SELFDESTRUCT
	db 32, SLUDGE_BOMB
	db 38, TOXIC
	; db 44, BELCH
	db 50, EXPLOSION
	; db 56, MEMENTO
	db 62, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, ROCK_THROW ; FIXME: SMACK_DOWN
	db 10, BULLDOZE
	db 15, HORN_ATTACK
	db 20, SCARY_FACE
	db 25, STOMP
	; db 30, ROCK_BLAST
	; db 35, DRILL_RUN
	db 40, TAKE_DOWN
	db 45, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, MEGAHORN
	db 60, HORN_DRILL
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HAMMER_ARM
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, ROCK_THROW ; FIXME: SMACK_DOWN
	db 1, BULLDOZE
	; db LEVEL_EVO, HAMMER_ARM
	db 15, HORN_ATTACK
	db 20, SCARY_FACE
	db 25, STOMP
	; db 30, ROCK_BLAST
	; db 35, DRILL_RUN
	db 40, TAKE_DOWN
	db 47, EARTHQUAKE
	db 54, STONE_EDGE
	db 61, MEGAHORN
	db 68, HORN_DRILL
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	; db 1, DISARMING_VOICE
	db 1, POUND
	db 1, SWEET_KISS
	; db 1, COVET
	db 1, CHARM
	; db 1, MINIMIZE
	; db 1, COPYCAT
	db 1, DEFENSE_CURL
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

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, WRAP
	db 4, STUN_SPORE
	db 8, GROWTH
	db 12, MEGA_DRAIN
	db 16, VINE_WHIP
	db 20, POISONPOWDER
	db 24, ANCIENTPOWER
	db 28, THIEF ; FIXME: KNOCK_OFF
	db 32, GIGA_DRAIN
	db 36, SLEEP_POWDER
	db 40, SLAM
	; db 44, TICKLE
 	; db 48, POWER_WHIP
	; db 52, INGRAIN
	; db 56, GRASSY_TERRAIN
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, TAIL_WHIP
	db 4, GROWL
	; db 8, FAKE_OUT
	db 12, BITE
	db 16, STOMP
	db 20, FOCUS_ENERGY
	db 24, HEADBUTT
	db 28, SUCKER_PUNCH
	; db 32, DOUBLE_HIT
	db 36, CRUNCH
	db 40, ENDURE
	db 44, REVERSAL
	db 48, OUTRAGE
	db 52, DOUBLE_EDGE ; FIXME: LAST_RESORT
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER
	db 5, SMOKESCREEN
	db 10, TWISTER
	db 15, FOCUS_ENERGY
	db 20, DRAGONBREATH
	db 25, BUBBLEBEAM
	db 30, AGILITY
	; db 35, LASER_FOCUS
	db 40, DRAGON_PULSE
	db 45, HYDRO_PUMP
	db 50, DRAGON_DANCE
	db 55, RAIN_DANCE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	; db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db EVOLVE_HOLD, DRAGON_SCALE, 45, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
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

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, SUPERSONIC
	db 10, WATER_GUN ; FIXME: WATER_PULSE
	db 15, HORN_ATTACK
	db 20, AGILITY
	; db 25, AQUA_RING
	db 30, FLAIL
	db 35, WATERFALL
	; db 40, SOAK
	db 45, MEGAHORN
	db 50, HORN_DRILL
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, SUPERSONIC
	db 1, WATER_GUN ; FIXME: WATER_PULSE
	db 15, HORN_ATTACK
	db 20, AGILITY
	; db 25, AQUA_RING
	db 30, FLAIL
	db 37, WATERFALL
	; db 44, SOAK
	db 51, MEGAHORN
	db 58, HORN_DRILL
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 8, CONFUSE_RAY
	db 12, RAPID_SPIN
	db 16, MINIMIZE
	db 20, SWIFT
	db 24, PSYBEAM
	db 28, BUBBLEBEAM ; FIXME: BRINE
	db 32, LIGHT_SCREEN
	; db 36, POWER_GEM
	db 40, PSYCHIC_M
	db 44, SURF
	db 48, RECOVER
	; db 52, COSMIC_POWER
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	; db 1, MINIMIZE
	; db 1, SWIFT
	db 1, PSYBEAM
	; db 1, BRINE
	; db 1, LIGHT_SCREEN
	; db 1, POWER_GEM
	; db 1, PSYCHIC_M
	db 1, SURF
	db 1, RECOVER
	; db 1, COSMIC_POWER
	; db 1, HYDRO_PUMP
	; db 1, TACKLE
	; db 1, HARDEN
	; db 1, WATER_GUN
	; db 1, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	; db 1, QUICK_GUARD
	; db 1, WIDE_GUARD
	; db 1, POWER_SWAP
	; db 1, GUARD_SWAP
	db 1, POUND
	; db 1, COPYCAT
	db 1, BATON_PASS
	db 1, ENCORE
	db 12, CONFUSION
	; db 16, ROLE_PLAY
	db 20, PROTECT
	; db 24, RECYCLE
	db 28, PSYBEAM
	db 32, MIMIC
	db 36, LIGHT_SCREEN
	db 36, REFLECT
	db 36, SAFEGUARD
	db 40, SUCKER_PUNCH
	db 44, DAZZLING_GLEAM
	db 48, PSYCHIC_M
	; db 52, TEETER_DANCE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	; db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db EVOLVE_HOLD, METAL_COAT, 36, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 4, FURY_CUTTER
	db 8, FALSE_SWIPE
	db 12, WING_ATTACK
	db 16, DOUBLE_TEAM
	; db 20, DOUBLE_HIT
	db 24, SLASH
	db 28, FOCUS_ENERGY
	db 32, AGILITY
	db 36, AIR_SLASH
	; db 40, X_SCISSOR
	; db 44, LASER_FOCUS
	db 48, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_KISS
	db 1, LICK
	db 1, POUND
	db 1, POWDER_SNOW
	; db 1, COPYCAT
	db 12, CONFUSION
	; db 16, COVET
	db 20, SING
	; db 24, FAKE_TEARS
	db 28, ICE_PUNCH
	db 34, PSYCHIC_M
	db 40, LOVELY_KISS
	db 46, MEAN_LOOK
	db 52, PERISH_SONG
	db 58, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERSHOCK
	; db 1, CHARGE
	db 12, SWIFT
	db 16, SPARK ; FIXME: SHOCK_WAVE
	db 20, THUNDER_WAVE
	db 24, SCREECH
	db 28, THUNDERPUNCH
	db 34, THUNDERBOLT ; FIXME: DISCHARGE
	db 40, LOW_SWEEP ; FIXME: LOW_KICK
	; db 46, THUNDERBOLT
	db 52, LIGHT_SCREEN
	db 58, THUNDER
	; db 64, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 1, EMBER
	db 1, SMOKESCREEN
	; db 12, CLEAR_SMOG
	db 16, FLAME_WHEEL
	db 20, CONFUSE_RAY
	db 24, SCARY_FACE
	db 28, FIRE_PUNCH
	db 34, FLAMETHROWER ; FIXME: LAVA_PLUME
	db 40, LOW_SWEEP ; FIXME: LOW_KICK
	; db 46, FLAMETHROWER
	db 52, SUNNY_DAY
	db 58, FIRE_BLAST
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, HARDEN
	db 4, FOCUS_ENERGY
	db 8, WRAP
	db 12, SEISMIC_TOSS
	db 16, FURY_CUTTER ; FIXME: BUG_BITE
	; db 20, STORM_THROW
	; db 24, DOUBLE_HIT
	db 28, VITAL_THROW
	; db 32, X_SCISSOR
	db 36, STRENGTH
	db 40, SWORDS_DANCE
	db 44, SUBMISSION
	db 48, GUILLOTINE
	db 52, SUPERPOWER
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	; db 5, WORK_UP
	db 10, PAYBACK
	; db 15, ASSURANCE
	db 20, HORN_ATTACK
	db 25, SCARY_FACE
	db 30, ZEN_HEADBUTT
	db 35, TAKE_DOWN
	db 40, REST
	db 45, SWAGGER
	db 50, THRASH
	db 55, DOUBLE_EDGE
	; db 60, GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 25, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	; db 1, BITE
	db 1, FLAIL
	; db 1, TACKLE
	db 1, LEER
	db 1, TWISTER
	db LEVEL_EVO, BITE
	db 4, WHIRLPOOL
	; db 8, ICE_FANG
	; db 12, BRINE
	db 16, SCARY_FACE
	db 21, WATERFALL
	db 24, CRUNCH
	db 28, RAIN_DANCE
	; db 32, AQUA_TAIL
	db 36, DRAGON_DANCE
	db 40, HYDRO_PUMP
	; db 44, HURRICANE
	db 48, THRASH
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, WATER_GUN
	db 5, SING
	db 10, MIST
	; db 15, LIFE_DEW
	db 20, POWDER_SNOW ; FIXME: ICE_SHARD
	db 25, CONFUSE_RAY
	db 30, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 35, SURF ; FIXME: BRINE
	db 40, BODY_SLAM
	db 45, ICE_BEAM
	db 50, RAIN_DANCE
	db 55, HYDRO_PUMP
	db 60, PERISH_SONG
	; db 65, SHEER_COLD
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
	; db 1, COVET
	; db 1, HELPING_HAND
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	; db 15, BABY_DOLL_EYES
	db 20, SWIFT
	db 25, BITE
	db 30, MIMIC ; FIXME: COPYCAT
	db 35, BATON_PASS
	db 40, TAKE_DOWN
	db 45, CHARM
	db 50, DOUBLE_EDGE
	; db 55, LAST_RESORT
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	; db 1, WATER_GUN
	; db 1, COVET
	; db 1, SWIFT
	; db 1, BITE
	; db 1, COPYCAT
	; db 1, BATON_PASS
	; db 1, TAKE_DOWN
	; db 1, CHARM
	; db 1, DOUBLE_EDGE
	; db 1, HELPING_HAND
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db LEVEL_EVO, WATER_GUN
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	; db 15, BABY_DOLL_EYES
	db 20, HAZE
	db 25, BUBBLEBEAM ; FIXME: WATER_PULSE
	db 30, AURORA_BEAM
	; db 35, AQUA_RING
	db 40, SURF ; FIXME: MUDDY_WATER
	db 45, ACID_ARMOR
	db 50, HYDRO_PUMP
	db 55, DOUBLE_EDGE ; FIXME: LAST_RESORT
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	; db 1, THUNDERSHOCK
	; db 1, COVET
	; db 1, SWIFT
	; db 1, BITE
	; db 1, COPYCAT
	; db 1, BATON_PASS
	; db 1, TAKE_DOWN
	; db 1, CHARM
	; db 1, DOUBLE_EDGE
	; db 1, HELPING_HAND
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db LEVEL_EVO, THUNDERSHOCK
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	; db 15, BABY_DOLL_EYES
	db 20, THUNDER_WAVE
	db 25, DOUBLE_KICK
	db 30, SPARK ; FIXME: THUNDER_FANG
	db 35, PIN_MISSILE
	db 40, THUNDERBOLT ; FIXME: DISCHARGE
	db 45, AGILITY
	db 50, THUNDER
	db 55, DOUBLE_EDGE ; FIXME: LAST_RESORT
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	; db 1, EMBER
	; db 1, COVET
	; db 1, SWIFT
	; db 1, COPYCAT
	; db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, CHARM
	; db 1, DOUBLE_EDGE
	; db 1, HELPING_HAND
	; db 1, TACKLE
	; db 1, GROWL
	db 1, TAIL_WHIP
	db LEVEL_EVO, EMBER
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	; db 15, BABY_DOLL_EYES
	db 20, SMOG
	db 25, BITE
	db 30, FLAME_WHEEL ; FIXME: FIRE_FANG
	db 35, FIRE_SPIN
	db 40, FLAMETHROWER ; FIXME: LAVA_PLUME
	db 45, SCARY_FACE
	db 50, FLARE_BLITZ
	db 55, DOUBLE_EDGE ; FIXME: LAST_RESORT
	db 0 ; no more level-up moves

PorygonEvosAttacks: ; based on gen 7
	; db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db EVOLVE_HOLD, UP_GRADE, 40, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	; db 1, SHARPEN
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
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 5, ROLLOUT
	db 10, SAND_ATTACK
	db 15, WATER_GUN
	db 20, LEER
	db 25, MUD_SLAP ; FIXME: MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, BUBBLEBEAM ; FIXME: BRINE
	db 41, PROTECT
	db 45, ROCK_SLIDE ; FIXME: ROCK_BLAST
	db 50, SURF
	; db 55, SHELL_SMASH
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CRUNCH
	; db 1, WRAP
	db 1, WITHDRAW
	db 1, ROLLOUT
	db 1, SAND_ATTACK
	db LEVEL_EVO, CRUNCH
	db 15, WATER_GUN
	db 20, LEER
	db 25, MUD_SLAP ; FIXME: MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, BUBBLEBEAM ; FIXME: BRINE
	db 43, PROTECT
	db 49, ROCK_SLIDE ; FIXME: ROCK_BLAST
	db 56, SURF
	; db 63, SHELL_SMASH
	db 70, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HARDEN
	db 5, SCRATCH
	db 10, SAND_ATTACK
	db 15, AQUA_JET
	db 20, LEER
	db 25, MUD_SLAP ; FIXME: MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, BUBBLEBEAM ; FIXME: BRINE
	db 41, PROTECT
	db 45, LEECH_LIFE
	db 50, WATERFALL ; FIXME: LIQUIDATION
	; db 55, METAL_SOUND
	db 60, STONE_EDGE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SLASH
	; db 1, NIGHT_SLASH
	; db 1, FEINT
	db 1, ABSORB
	db 1, HARDEN
	; db 1, SCRATCH
	db 1, SAND_ATTACK
	db LEVEL_EVO, SLASH
	db 15, AQUA_JET
	db 20, LEER
	db 25, MUD_SLAP ; FIXME: MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, BUBBLEBEAM ; FIXME: BRINE
	db 43, PROTECT
	db 49, LEECH_LIFE
	db 56, WATERFALL ; FIXME: LIQUIDATION
	; db 63, METAL_SOUND
	db 70, STONE_EDGE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ANCIENTPOWER
	db 5, SUPERSONIC
	db 10, WING_ATTACK
	db 15, SCARY_FACE
	db 20, ROCK_SLIDE
	db 25, ROAR
	db 30, CRUNCH
	; db 35, IRON_HEAD
	db 40, TAKE_DOWN
	db 45, STONE_EDGE
	db 50, AGILITY
	db 55, HYPER_BEAM
	; db 60, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	; db 1, RECYCLE
	; db 1, COVET
	; db 1, STOCKPILE
	; db 1, SWALLOW
	; db 1, SCREECH
	; db 1, FLING
	; db 1, METRONOME
	; db 1, FLAIL
	; db 1, LAST_RESORT
	db 1, LICK
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, MEAN_LOOK ; FIXME: BLOCK
	db 12, HYPNOSIS ; FIXME: YAWN
	db 16, BITE
	db 20, REST
	db 20, SNORE
	db 20, SLEEP_TALK
	db 24, CRUNCH
	db 28, BODY_SLAM
	; db 32, HEAVY_SLAM
	db 36, AMNESIA
	db 40, EARTHQUAKE ; FIXME: HIGH_HORSEPOWER
	; db 44, HAMMER_ARM
	db 48, BELLY_DRUM
	; db 52, BELCH
	; db 56, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, MIST
	db 5, POWDER_SNOW
	db 10, REFLECT
	; db 15, ICE_SHARD
	db 20, AGILITY
	db 25, ANCIENTPOWER
	; db 30, TAILWIND
	db 35, ICY_WIND ; FIXME: FREEZE_DRY
	db 40, ROOST
	db 45, ICE_BEAM
	db 50, HAIL
	; db 55, HURRICANE
	db 60, MIND_READER
	db 65, BLIZZARD
	; db 70, SHEER_COLD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDER_WAVE
	db 5, THUNDERSHOCK
	db 10, LIGHT_SCREEN
	db 15, WING_ATTACK ; FIXME: PLUCK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	; db 30, CHARGE
	db 35, DRILL_PECK
	db 40, ROOST
	db 45, THUNDERBOLT ; FIXME: DISCHARGE
	db 50, RAIN_DANCE
	db 55, THUNDER
	db 60, DETECT
	; db 65, MAGNETIC_FLUX
	db 70, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 5, EMBER
	db 10, SAFEGUARD
	db 15, WING_ATTACK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	; db 30, INCINERATE
	db 35, AIR_SLASH
	db 40, ROOST
	db 45, FLAMETHROWER ; FIXME: HEAT_WAVE
	db 50, SUNNY_DAY
	; db 55, HURRICANE
	db 60, ENDURE
	; db 65, BURN_UP
	db 70, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, TWISTER
	db 10, THUNDER_WAVE
	; db 15, DRAGON_TAIL
	db 20, AGILITY
	db 25, SLAM
	db 31, WATERFALL ; FIXME: AQUA_TAIL
	; db 35, DRAGON_RUSH
	db 40, SAFEGUARD
	db 45, RAIN_DANCE
	db 50, DRAGON_DANCE
	db 55, OUTRAGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, TWISTER
	db 1, THUNDER_WAVE
	; db 15, DRAGON_TAIL
	db 20, AGILITY
	db 25, SLAM
	db 33, WATERFALL ; FIXME: AQUA_TAIL
	; db 39, DRAGON_RUSH
	db 46, SAFEGUARD
	db 53, RAIN_DANCE
	db 60, DRAGON_DANCE
	db 67, OUTRAGE
	db 74, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	; db 1, HURRICANE
	; db 1, WING_ATTACK
	; db 1, ROOST
	; db 1, EXTREMESPEED
	; db 1, FIRE_PUNCH
	; db 1, THUNDERPUNCH
	; db 1, WRAP
	db 1, LEER
	db 1, TWISTER
	db 1, THUNDER_WAVE
	db LEVEL_EVO, WING_ATTACK ; FIXME: HURRICANE
	; db 15, DRAGON_TAIL
	db 20, AGILITY
	db 25, SLAM
	db 33, WATERFALL ; FIXME: AQUA_TAIL
	; db 39, DRAGON_RUSH
	db 46, SAFEGUARD
	db 53, RAIN_DANCE
	db 62, DRAGON_DANCE
	db 71, OUTRAGE
	db 80, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CONFUSION
	; db 1, DISABLE
	; db 22, SWIFT
	; db 33, PSYCH_UP
	; db 44, FUTURE_SIGHT
	; db 55, MIST
	; db 66, PSYCHIC_M
	; db 77, AMNESIA
	; db 88, RECOVER
	; db 99, SAFEGUARD
	db 1, PSYCHIC_M
	db 1, AMNESIA
	db 1, RECOVER
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	; db 1, POUND
	; db 10, TRANSFORM
	; db 20, MEGA_PUNCH
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
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 17, REFLECT
	db 28, SWEET_SCENT
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, HEAL_BELL ; FIXME: AROMATHERAPY
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, POISONPOWDER
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 26, GIGA_DRAIN
	db 32, SWEET_SCENT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 46, SAFEGUARD
	db 50, HEAL_BELL ; FIXME: AROMATHERAPY
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	; db 1, PETAL_DANCE
	; db 1, PETAL_BLIZZARD
	; db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, POISONPOWDER
	db LEVEL_EVO, PETAL_DANCE
	; db 6, RAZOR_LEAF
	; db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	; db 22, MAGICAL_LEAF
	; db 26, NATURAL_GIFT
	db 34, SWEET_SCENT
	db 40, LIGHT_SCREEN
	db 46, BODY_SLAM
	db 54, SAFEGUARD
	db 60, HEAL_BELL ; FIXME: AROMATHERAPY (variation)
	db 66, SOLARBEAM
	; db 70, PETAL_BLIZZARD
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 31, SWIFT
	db 40, FLAMETHROWER
	db 49, ROLLOUT
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	; db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	; db 35, FLAME_CHARGE
	db 42, FLAMETHROWER ; FIXME: LAVA_PLUME
	; db 46, FLAMETHROWER
	; db 53, INFERNO
	db 57, ROLLOUT
	db 64, DOUBLE_EDGE
	; db 68, BURN_UP
	; db 75, ERUPTION
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	; db 1, ERUPTION
	; db 1, DOUBLE_EDGE
	; db 1, GYRO_BALL
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	; db 6, SMOKESCREEN
	; db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	; db 35, FLAME_CHARGE
	db 43, FLAMETHROWER ; FIXME: LAVA_PLUME
	; db 48, FLAMETHROWER
	; db 56, INFERNO
	db 61, ROLLOUT
	db 69, DOUBLE_EDGE
	; db 74, BURN_UP
	; db 82, ERUPTION
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, MUD_SLAP
	db 13, BITE
	db 15, SCARY_FACE
	db 20, ICE_PUNCH ; FIXME: ICE_FANG
	db 22, FLAIL
	db 27, CRUNCH
	db 29, LOW_SWEEP ; FIXME: LOW_KICK
	db 34, SLASH
	db 36, SCREECH
	db 41, THRASH
	db 43, WATERFALL ; FIXME: AQUA_TAIL
	db 48, SUPERPOWER
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, WATER_GUN
	; db 6, WATER_GUN
	db 8, MUD_SLAP
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH ; FIXME: ICE_FANG
	db 24, FLAIL
	db 30, CRUNCH
	db 33, LOW_SWEEP ; FIXME: LOW_KICK
	db 39, SLASH
	db 42, SCREECH
	db 48, THRASH
	db 51, WATERFALL ; FIXME: AQUA_TAIL
	db 57, SUPERPOWER
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, SCRATCH
	db 1, LEER
	db 1, WATER_GUN
	; db 1, MUD_SLAP
	; db 6, WATER_GUN
	db 8, MUD_SLAP
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH ; FIXME: ICE_FANG
	db 24, FLAIL
	db 32, CRUNCH
	db 37, LOW_SWEEP ; FIXME: LOW_KICK
	db 45, SLASH
	db 50, SCREECH
	db 58, THRASH
	db 63, WATERFALL ; FIXME: AQUA_TAIL
	db 71, SUPERPOWER
	db 76, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	; db 16, HELPING_HAND
	; db 19, FOLLOW_ME
	db 25, SLAM
	db 28, REST
	db 31, SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, REVERSAL
	; db 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AGILITY
	; db 1, COIL
	; db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 1, GROWL
	db LEVEL_EVO, AGILITY
	; db 4, DEFENSE_CURL
	; db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	; db 17, HELPING_HAND
	; db 21, FOLLOW_ME
	db 28, SLAM
	db 32, REST
	db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, REVERSAL
	; db 56, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 3, TACKLE
	; db 6, ECHOED_VOICE
	db 9, CONFUSION
	db 12, REFLECT
	; db 15, PSYCHO_SHIFT
	db 18, AIR_SLASH
	db 21, PSYCHIC_M ; FIXME: EXTRASENSORY
	db 24, TAKE_DOWN
	; db 27, UPROAR
	db 30, ROOST
	db 33, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 36, HYPNOSIS
	db 39, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SKY_ATTACK
	db 1, PECK
	db 1, GROWL
	db 1, TACKLE
	; db 1, ECHOED_VOICE
	db 9, CONFUSION
	db 12, REFLECT
	; db 15, PSYCHO_SHIFT
	db 18, AIR_SLASH
	db 23, PSYCHIC_M ; FIXME: EXTRASENSORY
	db 28, TAKE_DOWN
	; db 33, UPROAR
	db 38, ROOST
	db 43, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 48, HYPNOSIS
	db 53, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, REFLECT
	db 12, LIGHT_SCREEN
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 19, ROOST
	db 22, AERIAL_ACE ; FIXME: STRUGGLE_BUG
	db 26, BATON_PASS
	db 29, AGILITY
	db 33, BUG_BUZZ
	db 36, AIR_SLASH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 1, SWIFT
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, REFLECT
	db 12, LIGHT_SCREEN
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, ROOST
	db 24, AERIAL_ACE ; FIXME: STRUGGLE_BUG
	db 29, BATON_PASS
	db 33, AGILITY
	db 38, BUG_BUZZ
	db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, ABSORB
	db 8, INFESTATION
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	; db 19, SHADOW_SNEAK
	db 22, FURY_SWIPES
	db 26, SUCKER_PUNCH
	db 29, LEECH_LIFE
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	db 43, POISON_JAB
	; db 47, CROSS_POISON
	; db 50, STICKY_WEB
	; db 54, TOXIC_THREAD
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	; db 1, SWORDS_DANCE
	; db 1, FOCUS_ENERGY
	; db 1, VENOM_DRENCH
	; db 1, FELL_STINGER
	; db 1, BUG_BITE
	db 1, POISON_STING
	db 1, STRING_SHOT
	db LEVEL_EVO, SWORDS_DANCE
	db 5, ABSORB
	db 8, INFESTATION
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	; db 19, SHADOW_SNEAK
	db 23, FURY_SWIPES
	db 28, SUCKER_PUNCH
	db 32, LEECH_LIFE
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	; db 55, CROSS_POISON
	; db 58, STICKY_WEB
	; db 63, TOXIC_THREAD
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	; db 1, CROSS_POISON
	; db 1, TAILWIND
	db 1, TOXIC
	db 1, SCREECH
	; db 1, ABSORB
	db 1, SUPERSONIC
	; db 1, ASTONISH
	db 1, MEAN_LOOK
	db LEVEL_EVO, POISON_JAB ; FIXME: CROSS_POISON
	db 15, POISON_STING ; FIXME: POISON_FANG
	; db 20, QUICK_GUARD
	db 27, WING_ATTACK ; FIXME: AIR_CUTTER
	db 34, BITE
	db 41, HAZE
	; db 48, VENOSHOCK
	db 55, CONFUSE_RAY
	db 62, AIR_SLASH
	db 69, LEECH_LIFE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SUPERSONIC
	db 4, THUNDERSHOCK ; FIXME: ELECTRO_BALL
	db 8, THUNDER_WAVE
	db 12, BUBBLEBEAM
	db 16, CONFUSE_RAY
	db 20, SPARK
	; db 24, CHARGE
	db 28, THUNDERBOLT ; FIXME: DISCHARGE
	; db 32, AQUA_RING
	db 36, FLAIL
	db 40, TAKE_DOWN
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	; db 1, STOCKPILE
	; db 1, SWALLOW
	; db 1, SPIT_UP
	db 1, WATER_GUN
	db 1, SUPERSONIC
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK ; FIXME: ELECTRO_BALL
	; db LEVEL_EVO, STOCKPILE
	; db LEVEL_EVO, SWALLOW
	; db LEVEL_EVO, SPIT_UP
	db 12, BUBBLEBEAM
	db 16, CONFUSE_RAY
	db 20, SPARK
	; db 24, CHARGE
	db 30, THUNDERBOLT ; FIXME: DISCHARGE
	; db 36, AQUA_RING
	db 42, FLAIL
	db 48, TAKE_DOWN
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, CHARM
	db 4, GROWL ; FIXME: PLAY_NICE
	db 8, SWEET_KISS
	db 12, THUNDER_WAVE ; FIXME: NUZZLE
	db 16, NASTY_PLOT
	db 20, CHARM
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, MIMIC ; FIXME: COPYCAT
	db 4, SING
	db 8, SWEET_KISS
	db 12, DISARMING_VOICE
	db 16, ENCORE
	db 20, CHARM
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, POUND
	db 1, MIMIC ; FIXME: COPYCAT
	db 4, DEFENSE_CURL
	db 8, SWEET_KISS
	db 12, DISARMING_VOICE
	db 16, DISABLE
	db 20, CHARM
	db 0 ; no more level-up moves

TogepiEvosAttacks: ; based on gen 7
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; FIXME: YAWN
	db 17, ENCORE
	; db 21, FOLLOW_ME
	; db 25, BESTOW
	; db 29, WISH
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	; db 49, LAST_RESORT
	; db 53, AFTER_YOU
	db 0 ; no more level-up moves

TogeticEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, MAGICAL_LEAF
	db 1, GROWL
	db 1, CHARM
	; db 1, METRONOME
	; db 1, SWEET_KISS
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; FIXME: YAWN
	db 14, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 17, ENCORE
	; db 21, FOLLOW_ME
	; db 25, BESTOW
	; db 29, WISH
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	; db 49, LAST_RESORT
	; db 53, AFTER_YOU
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	; db 5, STORED_POWER
	db 10, TELEPORT
	db 15, CONFUSE_RAY
	db 20, NIGHT_SHADE
	; db 26, PSYCHO_SHIFT
	; db 30, POWER_SWAP
	; db 35, GUARD_SWAP
	db 35, PSYCHIC_M
	; db 40, WISH
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AIR_SLASH
	; db 1, TAILWIND
	db 1, PECK
	db 1, LEER
	; db 1, STORED_POWER
	db 1, TELEPORT
	db LEVEL_EVO, AIR_SLASH
	db 15, CONFUSE_RAY
	db 20, NIGHT_SHADE
	; db 28, PSYCHO_SHIFT
	; db 34, POWER_SWAP
	; db 34, GUARD_SWAP
	db 41, PSYCHIC_M
	; db 48, WISH
	db 55, FUTURE_SIGHT
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
	db LEVEL_EVO, THUNDERPUNCH
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
	db 1, DEFENSE_CURL
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
	db 1, DEFENSE_CURL
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
	; db 1, POUND
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
	db 1, SCRATCH
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
	db 1, POUND
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
	db LEVEL_EVO, CONFUSION
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
	db 0 ; no more level-up moves

UmbreonEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, HELPING_HAND
	db 1, TACKLE
	db 1, TAIL_WHIP
	db LEVEL_EVO, BITE
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
	; db LEVEL_EVO, MIRROR_SHOT
	; db LEVEL_EVO, AUTOTOMIZE
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
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, DEFENSE_CURL
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
	; db LEVEL_EVO, BULLET_PUNCH
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
	db 1, SCRATCH
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
	db 1, SCRATCH
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
	db 43, SNORE
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
	db 1, SCRATCH
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
	db 49, SNORE
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
	db LEVEL_EVO, FURY_ATTACK ; FIXME: ICE_FANG
	; db 15, ICE_SHARD
	db 20, MIST
	db 25, ENDURE
	db 30, ICY_WIND
	db 37, AMNESIA
	db 44, TAKE_DOWN
	db 51, EARTHQUAKE
	db 58, BLIZZARD
	db 65, THRASH
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
	db LEVEL_EVO, OCTAZOOKA
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	; db 30, BULLET_SEED
	db 36, ICE_BEAM
	db 42, HYDRO_PUMP
	; db 48, SOAK
	db 54, HYPER_BEAM
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
	db 1, DEFENSE_CURL
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
	db 1, DEFENSE_CURL
	db LEVEL_EVO, FURY_ATTACK
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, PAYBACK ; FIXME: ASSURANCE
	; db 19, KNOCK_OFF
	db 24, SLAM
	db 30, ROCK_THROW ; FIXME: ROCK_TOMB
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, RAPID_SPIN ; FIXME: GIGA_IMPACT
	db 0 ; no more level-up moves

Porygon2EvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, ZAP_CANNON
	; db 1, MAGIC_COAT
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
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
	db LEVEL_EVO, TRIPLE_KICK
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
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
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
	db 10, DEFENSE_CURL
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
	db 1, POUND
	db 1, SWEET_KISS
	; db 1, COVET
	db 1, CHARM
	; db 1, MINIMIZE
	; db 1, COPYCAT
	db 1, DEFENSE_CURL
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
