; List of move replacements, based on Generation VIII mechanics.

; Twineedle     : Poison Jab
; Feint Attack	: Sucker Punch
; Pursuit       : Dark Pulse
; Dragon Rage   : Dragon Pulse
; Jump Kick     : Close Combat
; Karate Chop   : Revenge
; Rolling Kick  : Superpower
; Mirror Move   : Aerial Ace
; Nightmare     : Hex
; Bone Club     : Earth Power
; Magnitude     : Bulldoze
; Double Slap   : Drain Punch
; Comet Punch   : Roost
; Razor Wind    : Air Slash
; Sonic Boom    : Bug Buzz
; Rage          : Stone Edge
; Bide          : Acrobatics
; Egg Bomb      : Seed Bomb
; Spike Cannon  : Avalanche
; Constrict     : Flash Cannon
; Barrage       : Brick Break
; Dizzy Punch   : Facade
; Sharpen       : Nasty Plot
; Foresight     : Payback
; Return        : Flare Blitz
; Frustration   : Hail
; Meditate      : Calm Mind
; Barrier       : Dragon Dance
; Psywave       : Zen Headbutt
; Clamp         : Will-o-wisp
; Bubble        : Aqua Jet

; Move replacements by similarity:

; Mean Look     : Block (TODO)
; Bind          : Wrap
; Spider Web    : Mean Look
; Leer
; Tail Whip
; Tackle
; Scratch
; Pound

; Move replacements by convenience:

; Low Kick      : Low Sweep
; Wing Attack   : Air Cutter (TODO)

; Moves added to empty slots:

; Disarming Voice
; Dazzling Gleam
; Play Rough
; Infestation
; Sand Tomb

; Characteristics of each move.

move: MACRO
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
	db \4 | \5 ; type
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
ENDM

; PERFECT_ACCURACY = 0

Moves:
; entries correspond to constants/move_constants.asm
	table_width MOVE_LENGTH, Moves
	move AIR_CUTTER,   EFFECT_NORMAL_HIT,         60, FLYING,        SPECIAL,   95,              ENERGY_15_PP,   0
	move REVENGE,      EFFECT_REVENGE,            50, FIGHTING,      PHYSICAL, 100,              ENERGY_10_PP,   0
	move DRAIN_PUNCH,  EFFECT_LEECH_HIT,          75, FIGHTING,      PHYSICAL, 100,              ENERGY_10_PP,   0
	move ROOST,        EFFECT_ROOST,               0, FLYING,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move AQUA_TAIL,    EFFECT_NORMAL_HIT,         85, WATER,         PHYSICAL,  90,              ENERGY_10_PP,   0
	move PAY_DAY,      EFFECT_PAY_DAY,            40, NORMAL,        PHYSICAL, 100,              ENERGY_20_PP,   0
	move FIRE_PUNCH,   EFFECT_BURN_HIT,           75, FIRE,          PHYSICAL, 100,              ENERGY_10_PP,  30
	move ICE_PUNCH,    EFFECT_FREEZE_HIT,         75, ICE,           PHYSICAL, 100,              ENERGY_10_PP,  30
	move THUNDERPUNCH, EFFECT_PARALYZE_HIT,       75, ELECTRIC,      PHYSICAL, 100,              ENERGY_10_PP,  30
	move FIRE_FANG,    EFFECT_BRN_FLINCH_HIT,     65, FIRE,          PHYSICAL,  95,              ENERGY_15_PP,  20
	move ICE_FANG,     EFFECT_FRZ_FLINCH_HIT,     65, ICE,           PHYSICAL,  95,              ENERGY_15_PP,  20
	move THUNDER_FANG, EFFECT_PRZ_FLINCH_HIT,     65, ELECTRIC,      PHYSICAL,  95,              ENERGY_15_PP,  20
	move AIR_SLASH,    EFFECT_FLINCH_HIT,         75, FLYING,        SPECIAL,   95,              ENERGY_10_PP,  30
	move SWORDS_DANCE, EFFECT_OFFENSES_UP_2,       0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move ASTONISH      EFFECT_FLINCH_HIT,         30, GHOST,         PHYSICAL, 100,              ENERGY_30_PP,  30
	move GUST,         EFFECT_GUST,               40, FLYING,        SPECIAL,  100,              ENERGY_30_PP,   0
	move WING_ATTACK,  EFFECT_NORMAL_HIT,         40, FLYING,        PHYSICAL, 100,              ENERGY_30_PP,   0
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move FLY,          EFFECT_FLY,                90, FLYING,        PHYSICAL,  95,              ENERGY_20_PP,   0
	move SAND_TOMB,    EFFECT_TRAP_TARGET,        35, GROUND,        PHYSICAL,  85,              ENERGY_20_PP,   0
	move BULK_UP,      EFFECT_PROWESS_UP,          0, FIGHTING,      STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move VINE_WHIP,    EFFECT_NORMAL_HIT,         45, GRASS,         PHYSICAL, 100,              ENERGY_30_PP,   0
	move STOMP,        EFFECT_STOMP,              65, NORMAL,        PHYSICAL, 100,              ENERGY_20_PP,  30
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,   0
	move CHARGE_BEAM,  EFFECT_OFFENSES_UP_HIT,    50, ELECTRIC,      SPECIAL,   90,              ENERGY_15_PP,  50
	move CLOSE_COMBAT, EFFECT_CLOSE_COMBAT,      100, FIGHTING,      PHYSICAL, 100,              ENERGY_5_PP,    0
	move SUPERPOWER,   EFFECT_SUPERPOWER,        100, FIGHTING,      PHYSICAL, 100,              ENERGY_5_PP,    0
	move SAND_ATTACK,  EFFECT_ACCURACY_DOWN,       0, GROUND,        STATUS,   100,              ENERGY_20_PP,   0
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,        PHYSICAL, 100,              ENERGY_15_PP,  30
	move CROSS_POISON, EFFECT_POISON_HIT,         70, POISON,        PHYSICAL, 100,              ENERGY_15_PP,  20
	move DRAIN_KISS,   EFFECT_LEECH_HIT,          50, FAIRY,         SPECIAL,  100,              ENERGY_15_PP,   0
	move ENERGY_BALL,  EFFECT_DEFENSES_DOWN_HIT,  80, GRASS,         SPECIAL,  100,              ENERGY_10_PP,  20
	move TACKLE,       EFFECT_NORMAL_HIT,         40, NORMAL,        PHYSICAL, 100,              ENERGY_30_PP,   0
	move BODY_SLAM,    EFFECT_BODY_SLAM,          85, NORMAL,        PHYSICAL, 100,              ENERGY_10_PP,  30
	move WRAP,         EFFECT_TRAP_TARGET,        35, NORMAL,        PHYSICAL,  85,              ENERGY_20_PP,   0
	move EXTRASENSORY, EFFECT_FLINCH_HIT,         70, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_15_PP,  10
	move GIGA_IMPACT,  EFFECT_HYPER_BEAM,        120, NORMAL,        PHYSICAL,  90,              ENERGY_5_PP,    0
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        100, NORMAL,        PHYSICAL, 100,              ENERGY_5_PP,    0
	move HURRICANE,    EFFECT_HURRICANE,         100, FLYING,        SPECIAL,   75,              ENERGY_5_PP,   30
	move POISON_STING, EFFECT_POISON_HIT,         30, POISON,        PHYSICAL, 100,              ENERGY_20_PP,  50
	move POISON_JAB,   EFFECT_POISON_HIT,         80, POISON,        PHYSICAL, 100,              ENERGY_10_PP,  30
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          20, BUG,           PHYSICAL,  90,              ENERGY_20_PP,   0
	move ICE_SHARD,    EFFECT_PRIORITY_HIT,       40, ICE,           PHYSICAL, 100,              ENERGY_20_PP,   0
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,          PHYSICAL, 100,              ENERGY_20_PP,  30
	move GROWL,        EFFECT_OFFENSES_DOWN,       0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move ROAR,         EFFECT_FORCE_SWITCH,        0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move SING,         EFFECT_SLEEP,               0, NORMAL,        STATUS,    70,              ENERGY_20_PP,   0
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,        STATUS,    70,              ENERGY_20_PP,   0
	move BUG_BUZZ,     EFFECT_DEFENSES_DOWN_HIT,  80, BUG,           SPECIAL,  100,              ENERGY_10_PP,  20
	move DISABLE,      EFFECT_DISABLE,             0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move ACID_SPRAY,   EFFECT_DEFENSES_DOWN_HIT,  40, POISON,        SPECIAL,  100,              ENERGY_20_PP,  50
	move EMBER,        EFFECT_BURN_HIT,           40, FIRE,          SPECIAL,  100,              ENERGY_20_PP,  30
	move FLAMETHROWER, EFFECT_BURN_HIT,           80, FIRE,          SPECIAL,  100,              ENERGY_10_PP,  20
	move MIST,         EFFECT_MIST,                0, ICE,           STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move WATER_GUN,    EFFECT_NORMAL_HIT,         40, WATER,         SPECIAL,  100,              ENERGY_30_PP,   0
	move HYDRO_PUMP,   EFFECT_NORMAL_HIT,        100, WATER,         SPECIAL,   85,              ENERGY_5_PP,    0
	move WOOD_HAMMER   EFFECT_RECOIL_HIT,        100, GRASS,         PHYSICAL, 100,              ENERGY_5_PP,    0
	move ICE_BEAM,     EFFECT_FREEZE_HIT,         80, ICE,           SPECIAL,  100,              ENERGY_10_PP,  20
	move BLIZZARD,     EFFECT_BLIZZARD,          100, ICE,           SPECIAL,   75,              ENERGY_5_PP,   30
	move ICICLE_CRASH, EFFECT_FLINCH_HIT,         80, ICE,           PHYSICAL,  90,              ENERGY_10_PP,  30
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,         SPECIAL,  100,              ENERGY_20_PP,  30
	move AURORA_BEAM,  EFFECT_OFFENSES_DOWN_HIT,  65, ICE,           SPECIAL,  100,              ENERGY_20_PP,  20
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        120, NORMAL,        SPECIAL,   90,              ENERGY_5_PP,    0
	move IRON_HEAD,    EFFECT_FLINCH_HIT,         80, STEEL,         PHYSICAL, 100,              ENERGY_10_PP,  30
	move LEAF_STORM,   EFFECT_SUPERPOWER,        110, GRASS,         SPECIAL,   90,              ENERGY_5_PP,    0
	move OVERHEAT,     EFFECT_SUPERPOWER,        110, FIRE,          SPECIAL,   90,              ENERGY_5_PP,    0
	move LOW_SWEEP,    EFFECT_SPEED_DOWN_HIT,     65, FIGHTING,      PHYSICAL, 100,              ENERGY_10_PP, 100 ; FIXME
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,   0
	move SEISMIC_TOSS, EFFECT_LEVEL_DAMAGE,        1, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,   0
	move LIQUIDATION,  EFFECT_DEFENSES_DOWN_HIT,  80, WATER,         PHYSICAL, 100,              ENERGY_10_PP,  20
	move ABSORB,       EFFECT_LEECH_HIT,          30, GRASS,         SPECIAL,  100,              ENERGY_20_PP,   0
	move MAGICAL_LEAF, EFFECT_NORMAL_HIT,         60, GRASS,         SPECIAL,  PERFECT_ACCURACY, ENERGY_20_PP,   0
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,         STATUS,    90,              ENERGY_15_PP,   0
	move GROWTH,       EFFECT_GROWTH,              0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,         PHYSICAL,  95,              ENERGY_20_PP,   0
	move SOLARBEAM,    EFFECT_SOLARBEAM,         100, GRASS,         SPECIAL,  100,              ENERGY_10_PP,   0
	move POISONPOWDER, EFFECT_POISON,              0, POISON,        STATUS,    80,              ENERGY_20_PP,   0
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,         STATUS,    80,              ENERGY_20_PP,   0
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,         STATUS,    80,              ENERGY_20_PP,   0
	move PETAL_DANCE,  EFFECT_RAMPAGE,            90, GRASS,         SPECIAL,   85,              ENERGY_10_PP,   0
	move STRING_SHOT,  EFFECT_SPEED_DOWN,          0, BUG,           STATUS,   100,              ENERGY_30_PP,   0
	move DRAGON_PULSE, EFFECT_NORMAL_HIT,         80, DRAGON,        SPECIAL,  PERFECT_ACCURACY, ENERGY_10_PP,   0
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,        35, FIRE,          SPECIAL,   85,              ENERGY_20_PP,   0
	move THUNDERSHOCK, EFFECT_PARALYZE_HIT,       40, ELECTRIC,      SPECIAL,  100,              ENERGY_20_PP,  30
	move THUNDERBOLT,  EFFECT_PARALYZE_HIT,       80, ELECTRIC,      SPECIAL,  100,              ENERGY_10_PP,  20
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC,      STATUS,    90,              ENERGY_20_PP,   0
	move THUNDER,      EFFECT_THUNDER,           100, ELECTRIC,      SPECIAL,   75,              ENERGY_5_PP,   30
	move ROCK_THROW,   EFFECT_NORMAL_HIT,         50, ROCK,          PHYSICAL,  90,              ENERGY_30_PP,   0
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,         85, GROUND,        PHYSICAL,  95,              ENERGY_10_PP,   0
	move MYSTIC_FIRE,  EFFECT_OFFENSES_DOWN_HIT,  70, FIRE,          SPECIAL,  100,              ENERGY_10_PP, 100
	move DIG,          EFFECT_FLY,                80, GROUND,        PHYSICAL, 100,              ENERGY_10_PP,   0
	move TOXIC,        EFFECT_TOXIC,               0, POISON,        STATUS,    90,              ENERGY_10_PP,   0
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_20_PP,  20
	move PSYCHIC_M,    EFFECT_DEFENSES_DOWN_HIT,  80, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_10_PP, 100
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC_TYPE,  STATUS,    70,              ENERGY_20_PP,   0
	move CALM_MIND,    EFFECT_PROWESS_UP,          0, PSYCHIC_TYPE,  STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE,  STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,        PHYSICAL, 100,              ENERGY_20_PP,   0
	move STONE_EDGE,   EFFECT_NORMAL_HIT,        100, ROCK,          PHYSICAL,  80,              ENERGY_5_PP,    0
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC_TYPE,  STATUS,   100,              ENERGY_20_PP,   0
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,         SPECIAL,  100,              ENERGY_20_PP,   0
	move MIMIC,        EFFECT_MIMIC,               0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move SCREECH,      EFFECT_DEFENSES_DOWN_2,     0, NORMAL,        STATUS,    85,              ENERGY_20_PP,   0
	move DOUBLE_TEAM,  EFFECT_EVASION_UP,          0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0 ; FIXME
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move IRON_DEFENSE, EFFECT_DEFENSES_UP_2,       0, STEEL,         STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move MINIMIZE,     EFFECT_EVASION_UP_2,        0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0 ; FIXME
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN,       0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,         STATUS,   100,              ENERGY_10_PP,   0
	move WITHDRAW,     EFFECT_DEFENSES_UP_2,       0, WATER,         STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0 ; FIXME
	move NO_MOVE,      EFFECT_NORMAL_HIT,          0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move DRAGON_DANCE, EFFECT_DRAGON_DANCE,        0, DRAGON,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0 ; FIXME
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE,  STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,           STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC_TYPE,  STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move ACROBATICS,   EFFECT_ACROBATICS,         55, FLYING,        PHYSICAL, 100,              ENERGY_20_PP,   0
	move METRONOME,    EFFECT_METRONOME,           0, NORMAL,        STATUS,   100,              ENERGY_10_PP,   0
	move AERIAL_ACE,   EFFECT_NORMAL_HIT,         60, FLYING,        PHYSICAL, PERFECT_ACCURACY, ENERGY_20_PP,   0
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      150, NORMAL,        PHYSICAL, 100,              ENERGY_5_PP,    0
	move SEED_BOMB,    EFFECT_NORMAL_HIT,         65, GRASS,         PHYSICAL, 100,              ENERGY_15_PP,   0
	move LICK,         EFFECT_PARALYZE_HIT,       30, GHOST,         PHYSICAL, 100,              ENERGY_20_PP,  30 ; FIXME
	move SMOG,         EFFECT_POISON_HIT,         30, POISON,        SPECIAL,  100,              ENERGY_20_PP,  50
	move SLUDGE,       EFFECT_POISON_HIT,         65, POISON,        SPECIAL,  100,              ENERGY_20_PP,  30 ; FIXME
	move EARTH_POWER,  EFFECT_DEFENSES_DOWN_HIT,  80, GROUND,        SPECIAL,  100,              ENERGY_10_PP,  20
	move FIRE_BLAST,   EFFECT_BURN_HIT,          100, FIRE,          SPECIAL,   85,              ENERGY_5_PP,   20
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,         PHYSICAL, 100,              ENERGY_20_PP,  20 ; FIXME
	move WILL_O_WISP,  EFFECT_BURN,                0, FIRE,          STATUS,    85,              ENERGY_20_PP,   0
	move SWIFT,        EFFECT_NORMAL_HIT,         60, NORMAL,        SPECIAL,  PERFECT_ACCURACY, ENERGY_20_PP,   0
	move SKULL_BASH,   EFFECT_SKULL_BASH,        100, NORMAL,        PHYSICAL, 100,              ENERGY_10_PP,   0
	move AVALANCHE,    EFFECT_REVENGE,            50, ICE,           PHYSICAL, 100,              ENERGY_10_PP,   0
	move FLASH_CANNON, EFFECT_DEFENSES_DOWN_HIT,  80, STEEL,         SPECIAL,  100,              ENERGY_10_PP,  20
	move NIGHT_SLASH,  EFFECT_NORMAL_HIT,         70, DARK,          PHYSICAL, 100,              ENERGY_15_PP,   0
	move OMINOUS_WIND, EFFECT_ALL_UP_HIT,         60, GHOST,         SPECIAL,  100,              ENERGY_15_PP,  20
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,         130, FIGHTING,      PHYSICAL,  85,              ENERGY_10_PP,   0 ; FIXME
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move DREAM_EATER,  EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_10_PP,   0
	move POISON_GAS,   EFFECT_POISON,              0, POISON,        STATUS,    90,              ENERGY_20_PP,   0
	move BRICK_BREAK,  EFFECT_BRICK_BREAK,        75, FIGHTING,      PHYSICAL, 100,              ENERGY_10_PP,   0
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          75, BUG,           PHYSICAL, 100,              ENERGY_10_PP,   0
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,        STATUS,    75,              ENERGY_20_PP,   0
	move POWER_GEM,    EFFECT_NORMAL_HIT,         80, ROCK,          SPECIAL,  100,              ENERGY_10_PP,   0
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move AQUA_JET,     EFFECT_PRIORITY_HIT,       40, WATER,         PHYSICAL, 100,              ENERGY_20_PP,   0
	move FACADE,       EFFECT_FACADE,             60, NORMAL,        PHYSICAL, 100,              ENERGY_10_PP,   0
	move SPORE,        EFFECT_SLEEP,               0, GRASS,         STATUS,   100,              ENERGY_10_PP,   0
	move FLASH,        EFFECT_ACCURACY_DOWN,       0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move ZEN_HEADBUTT, EFFECT_FLINCH_HIT,         80, PSYCHIC_TYPE,  PHYSICAL,  90,              ENERGY_10_PP,  20
	move SPLASH,       EFFECT_SPLASH,              0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move ACID_ARMOR,   EFFECT_DEFENSES_UP_2,       0, POISON,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move CRABHAMMER,   EFFECT_NORMAL_HIT,         80, WATER,         PHYSICAL,  90,              ENERGY_10_PP,   0
	move PSYCHO_CUT,   EFFECT_NORMAL_HIT,         70, PSYCHIC_TYPE,  PHYSICAL, 100,              ENERGY_15_PP,   0
	move SHADOW_CLAW,  EFFECT_NORMAL_HIT,         70, GHOST,         PHYSICAL, 100,              ENERGY_15_PP,   0
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,        PHYSICAL,  90,              ENERGY_10_PP,   0
	move REST,         EFFECT_HEAL,                0, PSYCHIC_TYPE,  STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,          PHYSICAL,  90,              ENERGY_10_PP,  30
	move SILVER_WIND,  EFFECT_ALL_UP_HIT,         60, BUG,           SPECIAL,  100,              ENERGY_15_PP,  20
	move NASTY_PLOT,   EFFECT_OFFENSES_UP_2,       0, DARK,          STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,        SPECIAL,  100,              ENERGY_10_PP,  30
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,        PHYSICAL,  90,              ENERGY_10_PP,   0
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,        PHYSICAL, 100,              ENERGY_15_PP,   0
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,        PHYSICAL, 100,                         1,   0
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move TRIPLE_KICK,  EFFECT_MULTI_HIT,          20, FIGHTING,      PHYSICAL,  90,              ENERGY_20_PP,   0
	move THIEF,        EFFECT_THIEF,              60, DARK,          PHYSICAL, 100,              ENERGY_10_PP, 100
	move INFESTATION,  EFFECT_TRAP_TARGET,        20, BUG,           SPECIAL,  100,              ENERGY_20_PP,   0
	move SNARL,        EFFECT_OFFENSES_DOWN_HIT,  60, DARK,          SPECIAL,  100,              ENERGY_15_PP, 100
	move HEX,          EFFECT_HEX,                65, GHOST,         SPECIAL,  100,              ENERGY_15_PP,   0
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        60, FIRE,          PHYSICAL, 100,              ENERGY_20_PP,  30
	move STRUGGLE_BUG, EFFECT_OFFENSES_DOWN_HIT,  40, BUG,           SPECIAL,  100,              ENERGY_20_PP, 100
	move CURSE,        EFFECT_CURSE,               0, GHOST,         STATUS,   100,              ENERGY_10_PP,   0
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,        PHYSICAL, 100,              ENERGY_20_PP,   0
	move CONVERSION2,  EFFECT_CONVERSION2,         0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,        SPECIAL,   95,              ENERGY_5_PP,    0
	move COTTON_SPORE, EFFECT_SPEED_DOWN_2,        0, GRASS,         STATUS,   100,              ENERGY_20_PP,   0
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,   0
	move SPITE,        EFFECT_SPITE,               0, GHOST,         STATUS,   100,              ENERGY_10_PP,   0
	move POWDER_SNOW,  EFFECT_FREEZE_HIT,         40, ICE,           SPECIAL,  100,              ENERGY_20_PP,  30
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,   0
	move VENOSHOCK,    EFFECT_HEX,                65, POISON,        SPECIAL,  100,              ENERGY_15_PP,   0
	move SUCKER_PUNCH, EFFECT_PRIORITY_HIT,       70, DARK,          PHYSICAL, 100,              ENERGY_5_PP,    0
	move SWEET_KISS,   EFFECT_CONFUSE,             0, FAIRY,         STATUS,    75,              ENERGY_20_PP,   0
	move BELLY_DRUM,   EFFECT_OFFENSES_UP_2,       0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,        SPECIAL,  100,              ENERGY_10_PP,  30
	move MUD_SLAP,     EFFECT_ACCURACY_DOWN_HIT,  30, GROUND,        SPECIAL,  100,              ENERGY_20_PP, 100
	move OCTAZOOKA,    EFFECT_ACCURACY_DOWN_HIT,  65, WATER,         SPECIAL,   85,              ENERGY_15_PP, 100
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move WATER_PULSE,  EFFECT_CONFUSE_HIT,        60, WATER,         SPECIAL,  100,              ENERGY_20_PP,  20
	move PAYBACK,      EFFECT_PAYBACK,            45, DARK,          PHYSICAL, 100,              ENERGY_10_PP,   0
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,         STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     60, ICE,           SPECIAL,   95,              ENERGY_20_PP, 100
	move X_SCISSOR,    EFFECT_NORMAL_HIT,         80, BUG,           PHYSICAL, 100,              ENERGY_10_PP,   0
	move BONE_RUSH,    EFFECT_MULTI_HIT,          20, GROUND,        PHYSICAL,  90,              ENERGY_20_PP,   0
	move WILD_CHARGE,  EFFECT_PRZ_RECOIL_HIT,     85, ELECTRIC,      PHYSICAL, 100,              ENERGY_10_PP,  20
	move OUTRAGE,      EFFECT_RAMPAGE,            90, DRAGON,        PHYSICAL,  85,              ENERGY_10_PP,   0
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,          STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          75, GRASS,         SPECIAL,  100,              ENERGY_10_PP,   0
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move CHARM,        EFFECT_OFFENSES_DOWN_2,     0, FAIRY,         STATUS,   100,              ENERGY_20_PP,   0
	move ROLLOUT,      EFFECT_RAMPAGE,            40, ROCK,          PHYSICAL,  90,              ENERGY_20_PP,   0
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,        PHYSICAL, 100,              ENERGY_30_PP,   0
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,        STATUS,    85,              ENERGY_20_PP, 100
	move MILK_DRINK,   EFFECT_HEAL,                0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move SPARK,        EFFECT_PARALYZE_HIT,       65, ELECTRIC,      PHYSICAL, 100,              ENERGY_20_PP,  30
	move FURY_CUTTER,  EFFECT_RAMPAGE,            40, BUG,           PHYSICAL,  90,              ENERGY_20_PP,   0
	move STEEL_WING,   EFFECT_DEFENSES_UP_HIT,    70, STEEL,         PHYSICAL,  90,              ENERGY_20_PP,  20
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,        STATUS,   100,              ENERGY_10_PP,   0
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0
	move FLARE_BLITZ,  EFFECT_BRN_RECOIL_HIT,    100, FIRE,          PHYSICAL, 100,              ENERGY_5_PP,   20
	move PRESENT,      EFFECT_PRESENT,             1, NORMAL,        PHYSICAL,  90,              ENERGY_20_PP,   0
	move HAIL,         EFFECT_HAIL,                0, ICE,           STATUS,   100,              ENERGY_10_PP,   0
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_30_PP,   0
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_20_PP,   0
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,          PHYSICAL,  95,              ENERGY_5_PP,   50
	move BULLDOZE,     EFFECT_SPEED_DOWN_HIT,     60, GROUND,        PHYSICAL, 100,              ENERGY_20_PP, 100
	move NO_MOVE,      EFFECT_NORMAL_HIT,          0, FIGHTING,      PHYSICAL, 100,              ENERGY_30_PP,   0
	move MEGAHORN,     EFFECT_NORMAL_HIT,        100, BUG,           PHYSICAL,  85,              ENERGY_5_PP,    0
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       60, DRAGON,        SPECIAL,  100,              ENERGY_20_PP,  30
	move NO_MOVE,      EFFECT_NORMAL_HIT,          0, NORMAL,        STATUS,   100,              ENERGY_30_PP,   0
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move DARK_PULSE,   EFFECT_FLINCH_HIT,         80, DARK,          SPECIAL,  PERFECT_ACCURACY, ENERGY_10_PP,  20
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         50, NORMAL,        PHYSICAL, 100,              ENERGY_20_PP,   0
	move SWEET_SCENT,  EFFECT_EVASION_DOWN_2,      0, NORMAL,        STATUS,   100,              ENERGY_20_PP,   0
	move IRON_TAIL,    EFFECT_DEFENSES_DOWN_HIT, 100, STEEL,         PHYSICAL,  75,              ENERGY_5_PP,   20
	move METAL_CLAW,   EFFECT_OFFENSES_UP_HIT,    50, STEEL,         PHYSICAL,  95,              ENERGY_20_PP,  20
	move NO_MOVE,      EFFECT_NORMAL_HIT,          0, FIGHTING,      PHYSICAL, 100,              ENERGY_15_PP,   0
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0 ; FIXME
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,         STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0
	move MOONLIGHT,    EFFECT_MOONLIGHT,           0, FAIRY,         STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0 ; FIXME
	move HIDDEN_POWER, EFFECT_HIDDEN_POWER,       50, NORMAL,        SPECIAL,  100,              ENERGY_15_PP,   0
	move CROSS_CHOP,   EFFECT_NORMAL_HIT,        100, FIGHTING,      PHYSICAL,  80,              ENERGY_5_PP,    0
	move TWISTER,      EFFECT_TWISTER,            40, DRAGON,        SPECIAL,  100,              ENERGY_20_PP,  20
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,         STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,          STATUS,   PERFECT_ACCURACY, ENERGY_5_PP,    0
	move CRUNCH,       EFFECT_DEFENSES_DOWN_HIT,  80, DARK,          PHYSICAL, 100,              ENERGY_10_PP,  20
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_20_PP,   0 ; FIXME
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, NORMAL,        STATUS,   PERFECT_ACCURACY, ENERGY_10_PP,   0 ; FIXME
	move EXTREMESPEED, EFFECT_PRIORITY_HIT,       80, NORMAL,        PHYSICAL, 100,              ENERGY_5_PP,    0
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,          SPECIAL,  100,              ENERGY_10_PP,  20
	move SHADOW_BALL,  EFFECT_DEFENSES_DOWN_HIT,  80, GHOST,         SPECIAL,  100,              ENERGY_10_PP,  20
	move FUTURE_SIGHT, EFFECT_FUTURE_SIGHT,      100, PSYCHIC_TYPE,  SPECIAL,  100,              ENERGY_10_PP,   0
	move ROCK_SMASH,   EFFECT_DEFENSES_DOWN_HIT,  40, FIGHTING,      PHYSICAL, 100,              ENERGY_20_PP,  50
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        35, WATER,         SPECIAL,   85,              ENERGY_20_PP,   0
	move BEAT_UP,      EFFECT_BEAT_UP,            10, DARK,          PHYSICAL, 100,              ENERGY_10_PP,   0
	move DISARMING_VOICE, EFFECT_NORMAL_HIT,      40, FAIRY,         SPECIAL,  PERFECT_ACCURACY, ENERGY_20_PP,   0
	move DAZZLING_GLEAM, EFFECT_NORMAL_HIT,       80, FAIRY,         SPECIAL,  100,              ENERGY_10_PP,   0
	move PLAY_ROUGH,   EFFECT_OFFENSES_DOWN_HIT,  85, FAIRY,         PHYSICAL,  90,              ENERGY_10_PP,  20
	assert_table_length NUM_ATTACKS
