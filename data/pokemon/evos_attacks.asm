INCLUDE "constants.asm"

; useful script to get learnsets from Bulbapedia tables
; just be sure to change the CSS selector

; (function() {
;     let out = [];
;     let rows = $("table.roundy:nth-child(189) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(2)").children();
;     rows.each(function(i, r) {
;         let cells = $(r).children();
;         let lvl = cells.eq(0).contents().eq(1).text().trim();
;         lvl = lvl.replace("Evo.", "LEVEL_EVO");
;         let move = cells.eq(1).children().children().text().trim();
;         move = move.toUpperCase().replace(" ", "_").replace("-", "_");
;         out.push(`\tdb ${lvl}, ${move}`);
;     });
;     console.log(out.join("\n"));
; })();


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
	; db 18, SEED_BOMB
	db 21, TAKE_DOWN
	db 24, SWEET_SCENT
	db 27, SYNTHESIS
	; db 30, WORRY_SEED
	db 33, DOUBLE_EDGE
	db 36, SOLAR_BEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 38, GROWTH
	db 47, SYNTHESIS
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 53, SYNTHESIS
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, DRAGON_RAGE
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 54, DRAGON_RAGE
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 40, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 45, SKULL_BASH
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FLASH_CANNON
	; db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 1, WITHDRAW
	; db LEVEL_EVO, FLASH_CANNON
	db 9, RAPID_SPIN
	db 12, BITE
	; db 15, WATER_PULSE
	db 20, PROTECT
	db 25, RAIN_DANCE
	db 30, WATERFALL ; FIXME: AQUA_TAIL
	; db 35, SHELL_SMASH
	; db 42, IRON_DEFENSE
	db 49, HYDRO_PUMP
	db 56, SKULL_BASH
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 28, GUST
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	; db 1, TWINEEDLE
	; db 1, FURY_ATTACK
	db LEVEL_EVO, TWINEEDLE
	db 11, FURY_ATTACK
	db 14, RAGE
	db 17, PURSUIT
	db 20, FOCUS_ENERGY
	; db 23, VENOSHOCK
	; db 26, ASSURANCE
	; db 29, TOXIC_SPIKES
	db 32, PIN_MISSILE
	; db 35, POISON_JAB
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
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 29, WING_ATTACK
	db 37, AGILITY
	db 47, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 43, AGILITY
	db 55, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 46, AGILITY
	db 61, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 25, PURSUIT
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, FURY_ATTACK
	db 7, LEER
	db 13, FURY_ATTACK
	db 26, PURSUIT
	db 32, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 23, GLARE
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
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
	; db 63, GUNK_SHOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 37, FURY_SWIPES
	db 45, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 42, FURY_SWIPES
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, TAIL_WHIP
	db 36, BITE
	db 46, FURY_SWIPES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 23, BODY_SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 1, DISARMING_VOICE
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 1, DISARMING_VOICE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 11, DISARMING_VOICE
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 40, PLAY_ROUGH
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DISARMING_VOICE
	db 1, PLAY_ROUGH
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 27, WING_ATTACK
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 37, SLASH
	db 46, GROWTH
	db 55, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FEINT_ATTACK
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 44, PLAY_ROUGH
	db 46, SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, BITE
	db 11, BITE
	db 20, PAY_DAY
	db 29, FEINT_ATTACK
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, SLASH
	db 54, PLAY_ROUGH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 44, FURY_SWIPES
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 48, PLAY_ROUGH
	db 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	; lots of move tutor and move relearner moves
	; db 1, BURN_UP
	; db 1, HELPING_HAND
	; db 1, AGILITY
	; db 1, FIRE_FANG
	; db 1, RETALIATE
	; db 1, CRUNCH
	; db 1, FLAMETHROWER
	; db 1, ROAR
	; db 1, PLAY_ROUGH
	; db 1, REVERSAL
	; db 1, FLARE_BLITZ
	; db 1, EMBER
	; db 1, HOWL
	; db 1, BITE
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db LEVEL_EVO, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 25, RAIN_DANCE
	db 31, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 35, SUBMISSION
	db 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
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
	; db 50, CALM_MIND
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
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
	; db 41, POISON_JAB
	db 47, SLAM
	; db 50, WRING_OUT
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 38, BARRIER
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, FURY_ATTACK
	db 47, AGILITY
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 53, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 65, HAIL
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 33, HARDEN
	db 37, DISABLE
	db 45, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 33, SPIKES
	db 41, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, PSYCH_UP
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 38, PROTECT
	db 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 46, MEGA_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, MEGA_PUNCH
	db 44, DETECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SELFDESTRUCT
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 54, TAKE_DOWN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DISARMING_VOICE
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, BIND
	db 31, MEGA_DRAIN
	db 34, STUN_SPORE
	db 40, SLAM
	db 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, HORN_DRILL
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 44, DAZZLING_GLEAM
	db 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, BIND
	db 19, SEISMIC_TOSS
	db 25, HARDEN
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
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
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
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
	; db 45, STONE_EDGE
	db 50, AGILITY
	db 55, HYPER_BEAM
	; db 60, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 50, HAIL
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
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
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, ICE_PUNCH ; FIXME: ICE_FANG
	db 22, FLAIL
	db 27, CRUNCH
	db 34, SLASH
	db 36, SCREECH
	db 41, THRASH
	db 43, WATERFALL ; FIXME: AQUA_TAIL
	; db 48, SUPERPOWER
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, WATER_GUN
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH ; FIXME: ICE_FANG
	db 24, FLAIL
	db 30, CRUNCH
	db 39, SLASH
	db 42, SCREECH
	db 48, THRASH
	db 51, WATERFALL ; FIXME: AQUA_TAIL
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, WATER_GUN
	db 1, RAGE
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH ; FIXME: ICE_FANG
	db 24, FLAIL
	db 32, CRUNCH
	db 37, HEADBUTT ; FIXME: CHIP_AWAY
	db 45, SLASH
	db 50, SCREECH
	db 58, THRASH
	db 63, WATERFALL ; FIXME: AQUA_TAIL
	; db 71, SUPERPOWER
	db 76, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	; db 16, HELPING_HAND
	; db 19, FOLLOW_ME
	db 25, SLAM
	db 28, REST
	; db 31, SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
	; db 42, ME_FIRST
	; db 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	; db 1, AGILITY
	; db 1, COIL
	; db 1, SCRATCH
	db 1, FORESIGHT
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db LEVEL_EVO, AGILITY
	; db 4, DEFENSE_CURL
	; db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	; db 17, HELPING_HAND
	; db 21, FOLLOW_ME
	db 28, SLAM
	db 32, REST
	; db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	; db 50, ME_FIRST
	; db 56, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks: ; based on gen 7
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, CONFUSION
	; db 13, ECHOED_VOICE
	; db 16, ZEN_HEADBUTT
	; db 19, PSYCHO_SHIFT
	db 22, PSYCHIC_M ; FIXME: EXTRASENSORY
	db 25, TAKE_DOWN
	db 28, REFLECT
	; db 31, AIR_SLASH
	; db 34, UPROAR
	db 37, RECOVER ; FIXME: ROOST
	db 40, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 46, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, DREAM_EATER
	; db 1, SKY_ATTACK
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	; db 1, HYPNOSIS
	db 4, HYPNOSIS
	db 7, PECK
	db 10, CONFUSION
	; db 13, ECHOED_VOICE
	; db 16, ZEN_HEADBUTT
	; db 19, PSYCHO_SHIFT
	db 23, PSYCHIC_M ; FIXME: EXTRASENSORY
	db 27, TAKE_DOWN
	db 31, REFLECT
	; db 35, AIR_SLASH
	; db 39, UPROAR
	db 43, RECOVER ; FIXME: ROOST
	db 47, DAZZLING_GLEAM ; FIXME: MOONBLAST
	db 55, DREAM_EATER
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
	; db 19, SILVER_WIND
	db 22, FURY_ATTACK ; FIXME: COMET_PUNCH
	db 26, BATON_PASS
	db 29, AGILITY
	; db 33, BUG_BUZZ
	; db 36, AIR_SLASH
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
	; db 20, SILVER_WIND
	db 24, FURY_ATTACK ; FIXME: COMET_PUNCH
	db 29, BATON_PASS
	db 33, AGILITY
	; db 38, BUG_BUZZ
	; db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, CONSTRICT
	db 5, ABSORB
	; db 8, INFESTATION
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	; db 19, SHADOW_SNEAK
	db 22, FURY_SWIPES
	; db 26, SUCKER_PUNCH
	db 29, SPIDER_WEB
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	; db 43, POISON_JAB
	db 47, LEECH_LIFE ; FIXME: CROSS_POISON
	; db 50, STICKY_WEB
	; db 54, TOXIC_THREAD
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, CONSTRICT
	db 5, ABSORB
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 22, SWORDS_DANCE
	db 23, FURY_SWIPES
	db 32, SPIDER_WEB
	db 37, AGILITY
	db 41, LEECH_LIFE
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SCREECH
	db 1, SUPERSONIC
	db 1, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 24, SWIFT
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, TOXIC
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	db 31, FLAIL
	db 39, TAKE_DOWN
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK ; FIXME: ELECTRO_BALL
	; db EVO, STOCKPILE
	; db EVO, SWALLOW
	; db EVO, SPIT_UP
	; db 6, THUNDER_WAVE
	; db 9, ELECTRO_BALL
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	; db 29, SIGNAL_BEAM
	db 33, FLAIL
	db 37, THUNDERBOLT ; FIXME: DISCHARGE
	db 43, TAKE_DOWN
	; db 47, AQUA_RING
	db 51, HYDRO_PUMP
	; db 58, CHARGE
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
	; db 16, NASTY_PLOT
	db 20, CHARM
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, MIRROR_MOVE ; FIXME: COPYCAT
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
	db 1, MIRROR_MOVE ; FIXME: COPYCAT
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
	; db EVO, AIR_SLASH
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
	; db 65, DRAGON_PULSE
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
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 6, BUBBLEBEAM
	db 9, CHARM
	db 12, SLAM
	db 15, ROLLOUT ; FIXME: BOUNCE
	db 19, WATERFALL ; FIXME: AQUA_TAIL
	db 21, PLAY_ROUGH
	; db 24, AQUA_RING
	db 27, RAIN_DANCE
	db 30, HYDRO_PUMP
	db 33, DOUBLE_EDGE
	; db 36, SUPERPOWER
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 6, BUBBLEBEAM
	db 9, CHARM
	db 12, SLAM
	db 15, ROLLOUT ; FIXME: BOUNCE
	db 20, WATERFALL ; FIXME: AQUA_TAIL
	db 25, PLAY_ROUGH
	db 35, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, WOOD_HAMMER
	; db 1, COPYCAT
	db 1, SLAM
	db 1, FLAIL
	db 1, LOW_KICK
	db 1, ROCK_THROW
	; db EVO, SLAM
	; db 5, FLAIL
	; db 8, LOW_KICK
	; db 12, ROCK_THROW
	db 15, MIMIC
	db 19, FEINT_ATTACK
	; db 22, TEARFUL_LOOK
	; db 26, ROCK_TOMB
	; db 29, BLOCK
	db 33, ROCK_SLIDE
	db 36, COUNTER
	; db 40, SUCKER_PUNCH
	db 43, DOUBLE_EDGE
	; db 47, STONE_EDGE
	; db 50, HAMMER_ARM
	; db 54, HEAD_SMASH
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 27, SWAGGER
	db 37, PERISH_SONG ; FIXME: BOUNCE
	; db 48, HYPER_VOICE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
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
	; db 28, ACROBATICS
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
	db 1, ABSORB
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DISARMING_VOICE ; FIXME: FAIRY_WIND
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	; db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	; db 34, ACROBATICS
	; db 39, RAGE_POWDER
	db 44, COTTON_SPORE
	; db 49, U_TURN
	; db 54, WORRY_SEED
	db 59, GIGA_DRAIN
	db 64, FLY ; FIXME: BOUNCE
	; db 69, MEMENTO
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, MEGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 8, DOUBLESLAP
	db 11, BATON_PASS
	db 18, FURY_SWIPES
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
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
	; db 43, SEED_BOMB
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
	; db 50, PETAL_BLIZZARD
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, DETECT
	db 22, SUPERSONIC
	; db 27, UPROAR
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	; db 49, U_TURN
	; db 54, AIR_SLASH
	; db 57, BUG_BUZZ
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
	db LEVEL_EVO, PURSUIT
	db 5, SAND_ATTACK
	db 9, GROWL ; FIXME: BABY_DOLL_EYES
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	; db 25, ASSURANCE
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
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	; db 25, ASSURANCE
	; db 31, TAUNT
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	; db 45, FOUL_PLAY
	; db 50, TAILWIND
	; db 55, SUCKER_PUNCH
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
	; db 18, WATER_PULSE
	db 21, HEADBUTT
	; db 24, ZEN_HEADBUTT
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
	db 1, PSYWAVE
	db 5, SPITE
	db 10, LICK ; FIXME: ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	; db 23, HEX
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	; db 37, PAYBACK
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
	db 1, CONFUSION
	db 5, FORESIGHT ; FIXME: ODOR_SLEUTH (variation)
	; db 10, ASSURANCE
	db 14, STOMP
	db 19, PSYBEAM
	db 23, AGILITY
	; db 28, DOUBLE_HIT
	; db 32, ZEN_HEADBUTT
	db 37, CRUNCH
	db 41, BATON_PASS
	; db 46, NASTY_PLOT
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
	db 20, BIDE
	; db 23, NATURAL_GIFT
	db 28, SPIKES
	; db 31, PAYBACK
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
	; db EVO, MIRROR_SHOT
	; db EVO, AUTOTOMIZE
	db 6, SELFDESTRUCT
	; db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	; db 23 NATURAL_GIFT
	db 28, SPIKES
	; db 32, PAYBACK
	db 36, EXPLOSION
	; db 42, IRON_DEFENSE
	; db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	; db 56, MAGNET_RISE
	db 60, ZAP_CANNON
	; db 64, HEAVY_SLAM
	db 0 ; no more level-up moves

DunsparceEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, SPITE
	db 8, PURSUIT
	db 11, SCREECH
	db 13, MUD_SLAP
	; db 16, YAWN
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, MAGNITUDE ; FIXME: DRILL_RUN
	db 26, RECOVER ; FIXME: ROOST
	db 28, TAKE_DOWN
	; db 31, COIL
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	; db 41, ENDEAVOR
	; db 43, AIR_SLASH
	; db 46, DRAGON_RUSH
	db 48, ENDURE
	db 51, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	; db 10, KNOCK_OFF
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FEINT_ATTACK
	; db 22, ACROBATICS
	db 27, SLASH
	; db 30, U_TURN
	db 35, SCREECH
	; db 40, X_SCISSOR
	; db 45, SKY_UPPERCUT
	db 50, SWORDS_DANCE
	db 55, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, THUNDER_FANG
	; db 1, ICE_FANG
	; db 1, FIRE_FANG
	; db 1, MUD_SPORT
	db 1, TACKLE
	db 1, HARDEN
	db 1, BIND
	db 4, CURSE
	db 7, ROCK_THROW
	; db 10, ROCK_TOMB
	db 13, RAGE
	; db 16, STEALTH_ROCK
	; db 19, AUTOTOMIZE
	; db 20, GYRO_BALL
	; db 22, SMACK_DOWN
	db 25, DRAGONBREATH
	db 28, SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 40, IRON_TAIL
	db 43, DIG
	; db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
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
	db 31, RAGE
	db 37, PLAY_ROUGH
	; db 43, PAYBACK
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
	db 35, RAGE
	db 43, PLAY_ROUGH
	; db 51, PAYBACK
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, FELL_STINGER
	; db 1, HYDRO_PUMP
	; db 1, DESTINY_BOND
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, BUBBLE
	db 17, ROLLOUT
	db 21, TOXIC ; FIXME: TOXIC_SPIKES
	; db 25, STOCKPILE
	; db 25, SPIT_UP
	; db 29, REVENGE
	db 33, BUBBLEBEAM ; FIXME: BRINE
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, WATERFALL ; FIXME: AQUA_TAIL
	; db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	; db 60, FELL_STINGER
	db 0 ; no more level-up moves

ScizorEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, FEINT
	; db 1, BULLET_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, RAZOR_WIND
	; db 37, IRON_DEFENSE
	; db 41, X_SCISSOR
	; db 49, DOUBLE_HIT
	; db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	; db 61, FEINT
	db 0 ; no more level-up moves

ShuckleEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, STICKY_WEB
	db 1, WITHDRAW
	db 1, CONSTRICT
	db 1, BIDE
	db 1, ROLLOUT
	db 5, ENCORE
	db 9, WRAP
	; db 12, STRUGGLE_BUG
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_THROW
	; db 27, GASTRO_ACID
	; db 31, POWER_TRICK
	; db 34, SHELL_SMASH
	db 38, ROCK_SLIDE
	; db 42, BUG_BITE
	; db 42, POWER_SPLIT
	; db 42, GUARD_SPLIT
	; db 49, STONE_EDGE
	; db 53, STICKY_WEB
	db 0 ; no more level-up moves

HeracrossEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, ARM_THRUST
	; db 1, NIGHT_SLASH
	; db 1, BULLET_SEED
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	; db 7, FEINT
	; db 10, AERIAL_ACE
	db 16, HEADBUTT ; FIXME: CHIP_AWAY
	db 19, COUNTER
	db 25, FURY_ATTACK
	db 28, LOW_KICK ; FIXME: BRICK_BREAK
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, MEGAHORN
	; db 43, CLOSE_COMBAT
	db 46, REVERSAL
	db 0 ; no more level-up moves

SneaselEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	; db 1, TAUNT
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 20, AGILITY
	db 22, METAL_CLAW
	; db 25, HONE_CLAWS
	db 28, BEAT_UP
	db 32, SCREECH
	db 35, SLASH
	; db 40, SNATCH
	; db 44, PUNISHMENT
	; db 47, ICE_SHARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	; db 1, FLING
	; db 1, COVET
	; db 1, FAKE_TEARS
	db 1, SCRATCH
	db 1, GROWL ; FIXME: BABY_DOLL_EYES
	db 1, LICK
	db 8, FURY_SWIPES
	db 15, FEINT_ATTACK
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
	; db 1, COVET
	; db 1, FAKE_TEARS
	db 1, SCRATCH
	db 1, LICK
	db 8, FURY_SWIPES
	db 15, FEINT_ATTACK
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
	; db 50, EARTH_POWER
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
	; db 58, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks: ; based on gen 7
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ; FIXME: ODOR_SLEUTH (variation)
	; db 5, MUD_SPORT
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	; db 18, MUD_BOMB
	db 21, ICY_WIND
	; db 24, ICE_SHARD
	db 28, TAKE_DOWN
	db 35, MIST
	db 37, EARTHQUAKE
	db 40, FLAIL
	db 44, BLIZZARD
	db 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, PECK
	; db 1, MUD_SPORT
	db 1, ANCIENTPOWER
	db 1, POWDER_SNOW
	db 1, FORESIGHT ; FIXME: ODOR_SLEUTH
	db LEVEL_EVO, FURY_ATTACK
	; db 5, MUD_SPORT
	; db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	; db 18, MUD_BOMB
	db 21, ICY_WIND
	; db 24, ICE_FANG
	db 28, TAKE_DOWN
	db 37, MIST
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 5, BUBBLE
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

MantineEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, PSYBEAM
	; db 1, BULLET_SEED
	; db 1, SIGNAL_BEAM
	; db 1, SUPERSONIC
	; db 1, BUBBLEBEAM
	db 1, TACKLE
	db 1, BUBBLE
	db 1, RECOVER ; FIXME: ROOST
	db 3, SUPERSONIC
	db 7, BUBBLEBEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	; db 19, WATER_PULSE
	db 23, PROTECT ; FIXME: WIDE_GUARD
	db 27, TAKE_DOWN
	db 32, AGILITY
	; db 36, AIR_SLASH
	; db 39, AQUA_RING
	db 46, FLY ; FIXME: BOUNCE
	db 49, HYDRO_PUMP
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
	; db 45, AIR_SLASH
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
	db 20, FORESIGHT ; FIXME: ODOR_SLEUTH (variation)
	db 25, BEAT_UP
	db 28, FLAME_WHEEL ; FIXME: FIRE_FANG
	db 32, FEINT_ATTACK
	; db 37, EMBARGO
	; db 40, FOUL_PLAY
	db 44, FLAMETHROWER
	db 49, CRUNCH
	; db 52, NASTY_PLOT
	; db 56, INFERNO
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	; db 4, HOWL
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; FIXME: ODOR_SLEUTH (variation)
	db 26, BEAT_UP
	db 30, FLAME_WHEEL ; FIXME: FIRE_FANG
	db 35, FEINT_ATTACK
	; db 41, EMBARGO
	; db 45, FOUL_PLAY
	db 50, FLAMETHROWER
	db 56, CRUNCH
	; db 60, NASTY_PLOT
	; db 65, INFERNO
	db 0 ; no more level-up moves

KingdraEvosAttacks: ; based on gen 7
	db 0 ; no more evolutions
	; db 1, YAWN
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 17, TWISTER
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, WHIRLPOOL ; FIXME: BRINE
	db 38, AGILITY
	db 45, DRAGONBREATH ; FIXME: DRAGON_PULSE
	db 52, RAIN_DANCE ; FIXME: DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, FORESIGHT ; FIXME: ODOR_SLEUTH
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, ROLLOUT
	; db 15, NATURAL_GIFT
	db 19, ENDURE
	db 24, SLAM
	db 28, TAKE_DOWN
	db 33, CHARM
	; db 37, LAST_RESORT
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	; db 1, FIRE_FANG
	; db 1, THUNDER_FANG
	; db 1, FURY_ATTACK
	; db 1, BULLDOZE
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db LEVEL_EVO, FURY_ATTACK
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	; db 15, ASSURANCE
	; db 19, KNOCK_OFF
	db 24, SLAM
	db 30, MAGNITUDE
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
	; db 27, CALM_MIND
	; db 33, ROLE_PLAY
	; db 38, ZEN_HEADBUTT
	db 43, JUMP_KICK
	db 49, DISABLE ; FIXME: IMPRISON
	; db 50, CAPTIVATE
	; db 55, ME_FIRST
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
	db 1, TRIPLE_KICK
	db 1, RAPID_SPIN
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 4, QUICK_ATTACK
	; db 8, GYRO_BALL
	db 12, DETECT
	db 16, PURSUIT ; FIXME: REVENGE
	db 20, TRIPLE_KICK ; FIXME: EVO
	; db 21, WIDE_GUARD
	; db 21, QUICK_GUARD
	db 24, RAPID_SPIN ; FIXME: SUCKER_PUNCH
	db 28, AGILITY
	db 32, DIG
	; db 36, CLOSE_COMBAT
	db 40, COUNTER
	; db 44, ENDEAVOR
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 4, POWDER_SNOW
	db 8, MIRROR_MOVE ; FIXME: COPYCAT
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
	db 36, LOW_KICK
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
	db 36, LOW_KICK
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
	; db 30, ZEN_HEADBUTT
	db 35, MILK_DRINK
	db 40, BODY_SLAM
	db 45, PLAY_ROUGH
	db 50, CHARM
	db 55, EARTHQUAKE ; FIXME: HIGH_HORSEPOWER
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DISARMING_VOICE
	db 1, SWEET_KISS
	db 1, CHARM
	db 4, TAIL_WHIP
	db 8, DEFENSE_CURL
	db 12, DOUBLESLAP
	db 16, SING
	db 20, DISARMING_VOICE
	db 24, TAKE_DOWN
	db 28, EGG_BOMB
	db 36, LIGHT_SCREEN
	db 40, DOUBLE_EDGE
	db 44, SOFTBOILED
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
	; db 6, PAYBACK
	db 9, BITE
	db 12, SCARY_FACE
	db 18, MAGNITUDE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	; db 24, DARK_PULSE
	db 27, CRUNCH
	db 31, EARTHQUAKE
	db 33, ROCK_SLIDE ; FIXME: STONE_EDGE
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
	; db 1, PAYBACK
	; db EVO, IRON_DEFENSE
	db 9, BITE
	db 12, SCARY_FACE
	; db 15, ROCK_SLIDE
	db 18, MAGNITUDE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	; db 24, DARK_PULSE
	db 27, CRUNCH
	db 33, EARTHQUAKE
	db 37, ROCK_SLIDE ; FIXME: STONE_EDGE
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
	; db 1, PAYBACK
	db 9, BITE
	db 12, SCARY_FACE
	db 15, ROCK_SLIDE
	db 18, MAGNITUDE ; FIXME: STOMPING_TANTRUM
	db 21, SCREECH
	; db 24, DARK_PULSE
	db 27, CRUNCH
	db 33, EARTHQUAKE
	; db 37, STONE_EDGE
	db 42, THRASH
	db 47, SANDSTORM
	db 52, HYPER_BEAM
	; db 59, GIGA_IMPACT
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves
