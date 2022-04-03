; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; 00
	const AIR_CUTTER   ; 01
	const REVENGE      ; 02
	const DRAIN_PUNCH  ; 03
	const ROOST        ; 04
	const AQUA_TAIL    ; 05
	const PAY_DAY      ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const_skip      ; 0a
	const_skip     ; 0b
	const_skip   ; 0c
	const AIR_SLASH    ; 0d
	const SWORDS_DANCE ; 0e
	const ASTONISH     ; 0f
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const WHIRLWIND    ; 12
	const FLY          ; 13
	const SAND_TOMB    ; 14
	const BULK_UP      ; 15
	const VINE_WHIP    ; 16
	const STOMP        ; 17
	const DOUBLE_KICK  ; 18
	const CHARGE_BEAM  ; 19
	const CLOSE_COMBAT ; 1a
	const SUPERPOWER   ; 1b
	const SAND_ATTACK  ; 1c
	const HEADBUTT     ; 1d
	const CROSS_POISON ; 1e
	const DRAIN_KISS   ; 1f
	const ENERGY_BALL  ; 20
	const TACKLE       ; 21
	const BODY_SLAM    ; 22
	const WRAP         ; 23
	const EXTRASENSORY ; 24
	const_skip       ; 25
	const DOUBLE_EDGE  ; 26
	const_skip    ; 27
	const POISON_STING ; 28
	const POISON_JAB   ; 29
	const PIN_MISSILE  ; 2a
	const_skip         ; 2b
	const BITE         ; 2c
	const GROWL        ; 2d
	const ROAR         ; 2e
	const SING         ; 2f
	const SUPERSONIC   ; 30
	const BUG_BUZZ     ; 31
	const DISABLE      ; 32
	const ACID_SPRAY   ; 33
	const EMBER        ; 34
	const FLAMETHROWER ; 35
	const MIST         ; 36
	const WATER_GUN    ; 37
	const HYDRO_PUMP   ; 38
	const_skip         ; 39
	const ICE_BEAM     ; 3a
	const BLIZZARD     ; 3b
	const_skip      ; 3c
	const BUBBLEBEAM   ; 3d
	const AURORA_BEAM  ; 3e
	const HYPER_BEAM   ; 3f
	const_skip         ; 40
	const_skip   ; 41
	const_skip   ; 42
	const LOW_SWEEP    ; 43
	const COUNTER      ; 44
	const SEISMIC_TOSS ; 45
	const_skip     ; 46
	const ABSORB       ; 47
	const_skip   ; 48
	const LEECH_SEED   ; 49
	const GROWTH       ; 4a
	const RAZOR_LEAF   ; 4b
	const SOLARBEAM    ; 4c
	const POISONPOWDER ; 4d
	const STUN_SPORE   ; 4e
	const SLEEP_POWDER ; 4f
	const PETAL_DANCE  ; 50
	const STRING_SHOT  ; 51
	const DRAGON_PULSE ; 52
	const FIRE_SPIN    ; 53
	const THUNDERSHOCK ; 54
	const THUNDERBOLT  ; 55
	const THUNDER_WAVE ; 56
	const THUNDER      ; 57
	const ROCK_THROW   ; 58
	const EARTHQUAKE   ; 59
	const_skip      ; 5a
	const DIG          ; 5b
	const TOXIC        ; 5c
	const CONFUSION    ; 5d
	const PSYCHIC_M    ; 5e
	const HYPNOSIS     ; 5f
	const CALM_MIND    ; 60
	const AGILITY      ; 61
	const QUICK_ATTACK ; 62
	const STONE_EDGE   ; 63
	const TELEPORT     ; 64
	const NIGHT_SHADE  ; 65
	const MIMIC        ; 66
	const SCREECH      ; 67
	const DOUBLE_TEAM  ; 68
	const RECOVER      ; 69
	const HARDEN       ; 6a
	const MINIMIZE     ; 6b
	const SMOKESCREEN  ; 6c
	const CONFUSE_RAY  ; 6d
	const WITHDRAW     ; 6e
	const DEFENSE_CURL ; 6f
	const DRAGON_DANCE ; 70
	const LIGHT_SCREEN ; 71
	const HAZE         ; 72
	const REFLECT      ; 73
	const FOCUS_ENERGY ; 74
	const ACROBATICS   ; 75
	const METRONOME    ; 76
	const AERIAL_ACE   ; 77
	const SELFDESTRUCT ; 78
	const SEED_BOMB    ; 79
	const LICK         ; 7a
	const SMOG         ; 7b
	const SLUDGE       ; 7c
	const EARTH_POWER  ; 7d
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const WILL_O_WISP  ; 80
	const SWIFT        ; 81
	const SKULL_BASH   ; 82
	const AVALANCHE    ; 83
	const FLASH_CANNON ; 84
	const_skip      ; 85
	const_skip      ; 86
	const SOFTBOILED   ; 87
	const HI_JUMP_KICK ; 88
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const POISON_GAS   ; 8b
	const BRICK_BREAK  ; 8c
	const LEECH_LIFE   ; 8d
	const LOVELY_KISS  ; 8e
	const_skip   ; 8f
	const TRANSFORM    ; 90
	const AQUA_JET     ; 91
	const FACADE       ; 92
	const SPORE        ; 93
	const FLASH        ; 94
	const ZEN_HEADBUTT ; 95
	const SPLASH       ; 96
	const ACID_ARMOR   ; 97
	const_skip   ; 98
	const_skip    ; 99
	const_skip  ; 9a
	const BONEMERANG   ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const_skip   ; 9e
	const NASTY_PLOT   ; 9f
	const CONVERSION   ; a0
	const TRI_ATTACK   ; a1
	const SUPER_FANG   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const STRUGGLE     ; a5
	const SKETCH       ; a6
	const TRIPLE_KICK  ; a7
	const THIEF        ; a8
	const INFESTATION  ; a9
	const_skip  ; aa
	const HEX          ; ab
	const FLAME_WHEEL  ; ac
	const_skip        ; ad
	const CURSE        ; ae
	const FLAIL        ; af
	const CONVERSION2  ; b0
	const AEROBLAST    ; b1
	const COTTON_SPORE ; b2
	const REVERSAL     ; b3
	const SPITE        ; b4
	const POWDER_SNOW  ; b5
	const PROTECT      ; b6
	const MACH_PUNCH   ; b7
	const_skip   ; b8
	const SUCKER_PUNCH ; b9
	const SWEET_KISS   ; ba
	const BELLY_DRUM   ; bb
	const SLUDGE_BOMB  ; bc
	const MUD_SLAP     ; bd
	const OCTAZOOKA    ; be
	const SPIKES       ; bf
	const_skip   ; c0
	const PAYBACK      ; c1
	const DESTINY_BOND ; c2
	const PERISH_SONG  ; c3
	const ICY_WIND     ; c4
	const DETECT       ; c5
	const BONE_RUSH    ; c6
	const_skip      ; c7
	const OUTRAGE      ; c8
	const SANDSTORM    ; c9
	const GIGA_DRAIN   ; ca
	const ENDURE       ; cb
	const CHARM        ; cc
	const ROLLOUT      ; cd
	const FALSE_SWIPE  ; ce
	const SWAGGER      ; cf
	const MILK_DRINK   ; d0
	const SPARK        ; d1
	const FURY_CUTTER  ; d2
	const STEEL_WING   ; d3
	const MEAN_LOOK    ; d4
	const ATTRACT      ; d5
	const SLEEP_TALK   ; d6
	const HEAL_BELL    ; d7
	const FLARE_BLITZ  ; d8
	const PRESENT      ; d9
	const HAIL         ; da
	const SAFEGUARD    ; db
	const PAIN_SPLIT   ; dc
	const SACRED_FIRE  ; dd
	const BULLDOZE     ; de
	const_skip ; df
	const MEGAHORN     ; e0
	const DRAGONBREATH ; e1
	const_skip   ; e2
	const ENCORE       ; e3
	const DARK_PULSE   ; e4
	const RAPID_SPIN   ; e5
	const SWEET_SCENT  ; e6
	const IRON_TAIL    ; e7
	const METAL_CLAW   ; e8
	const VITAL_THROW  ; e9
	const MORNING_SUN  ; ea
	const SYNTHESIS    ; eb
	const MOONLIGHT    ; ec
	const HIDDEN_POWER ; ed
	const CROSS_CHOP   ; ee
	const TWISTER      ; ef
	const RAIN_DANCE   ; f0
	const SUNNY_DAY    ; f1
	const CRUNCH       ; f2
	const MIRROR_COAT  ; f3
	const PSYCH_UP     ; f4
	const EXTREMESPEED ; f5
	const ANCIENTPOWER ; f6
	const SHADOW_BALL  ; f7
	const FUTURE_SIGHT ; f8
	const ROCK_SMASH   ; f9
	const WHIRLPOOL    ; fa
	const BEAT_UP      ; fb
	const DISARMING_VOICE  ; fc
	const DAZZLING_GLEAM ; fd
	const PLAY_ROUGH   ; fe
NUM_ATTACKS EQU const_value - 1

; Battle animations use the same constants as the moves up to this point
	const_next $ff
	const ANIM_SWEET_SCENT_2     ; ff
	const ANIM_THROW_POKE_BALL   ; 100
	const ANIM_SEND_OUT_MON      ; 101
	const ANIM_RETURN_MON        ; 102
	const ANIM_CONFUSED          ; 103
	const ANIM_SLP               ; 104
	const ANIM_BRN               ; 105
	const ANIM_PSN               ; 106
	const ANIM_SAP               ; 107
	const ANIM_FRZ               ; 108
	const ANIM_PAR               ; 109
	const ANIM_IN_LOVE           ; 10a
	const ANIM_IN_SANDSTORM      ; 10b
	const ANIM_IN_NIGHTMARE      ; 10c
	const ANIM_IN_WHIRLPOOL      ; 10d
; battle anims
	const ANIM_MISS              ; 10e
	const ANIM_ENEMY_DAMAGE      ; 10f
	const ANIM_ENEMY_STAT_DOWN   ; 110
	const ANIM_PLAYER_STAT_DOWN  ; 111
	const ANIM_PLAYER_DAMAGE     ; 112
	const ANIM_WOBBLE            ; 113
	const ANIM_SHAKE             ; 114
	const ANIM_HIT_CONFUSION     ; 115
	const ANIM_IN_HAIL           ; 116
NUM_BATTLE_ANIMS EQU const_value - 1

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION

NO_OVERWORLD_MOVES EQU 0

; bit flag constants for overworld moves
	const_def 1
	const OVERWORLD_CUT         ; 1
	const OVERWORLD_FLY         ; 2
	const OVERWORLD_SURF        ; 3
	const OVERWORLD_STRENGTH    ; 4
	const OVERWORLD_FLASH       ; 5
	const OVERWORLD_WHIRLPOOL   ; 6
	const OVERWORLD_WATERFALL   ; 7
	const OVERWORLD_ROCK_SMASH  ; 8
	const OVERWORLD_HEADBUTT    ; 9
	const OVERWORLD_TELEPORT    ; 10
	const OVERWORLD_DIG         ; 11
	const OVERWORLD_HEAL        ; 12
	const OVERWORLD_SWEET_SCENT ; 13
