; significant level values
MAX_LEVEL EQU 100
MIN_LEVEL EQU 2
EGG_LEVEL EQU 2
LEVEL_EVO EQU 101 ; EVOLVE_LEVEL might have worked, but just to separate things

; maximum moves known per mon
NUM_MOVES EQU 4

; energy points
MAX_ENERGY EQU 64

ENERGY_30_PP EQU 1
ENERGY_20_PP EQU 2
ENERGY_15_PP EQU 3
ENERGY_10_PP EQU 4
ENERGY_8_PP  EQU 5
ENERGY_7_PP  EQU 6
ENERGY_6_PP  EQU 7
ENERGY_5_PP  EQU 8

MIMIC_MOVE_ENERGY       EQU ENERGY_10_PP
TRANSFORMED_MOVE_ENERGY EQU ENERGY_10_PP ; assuming only Ditto

ENERGY_TRIGGER_LEPPA_BERRY  EQU ENERGY_5_PP + 1
ENERGY_RECOVERY_LEPPA_BERRY EQU ENERGY_5_PP + ENERGY_10_PP
ENERGY_RECOVERY_ELIXER      EQU ENERGY_5_PP * 3
ENERGY_RECOVERY_SLP         EQU ENERGY_10_PP
ENERGY_RECOVERY_FOCUS       EQU ENERGY_30_PP
ENERGY_DRAIN_SPITE          EQU ENERGY_15_PP
ENERGY_DRAIN_PSN            EQU ENERGY_30_PP
ENERGY_DRAIN_ENDURE         EQU ENERGY_10_PP

; assert ENERGY_TRIGGER_LEPPA_BERRY + ENERGY_RECOVERY_LEPPA_BERRY < MAX_ENERGY

RAMPAGE_FIRST_TURN EQU %10000000
RAMPAGE_COUNTER_MASK EQU %00000011
RAMPAGE_POWER_BOOST EQU 20

; significant stat values
MIN_STAT_LEVEL  EQU 1  ; -1
BASE_STAT_LEVEL EQU 2  ; +0
MAX_STAT_LEVEL  EQU 3  ; +1

; duration of stat level changes, in turns (including application turn)
; e.g. 3 turns = 1 turn (stat boosting move) + 2 turns (to use the boost)
STAT_LEVEL_DEFAULT_DURATION EQU 3
STAT_LEVEL_EXTEND_1_TURN    EQU $10
STAT_LEVEL_EXTEND_2_TURNS   EQU $20

; turns that sleep lasts
REST_SLEEP_TURNS EQU 2
TREEMON_SLEEP_TURNS EQU 3

; Move priorities go from -7 to +5 in current generations.
; We will add 7 to the priorities, so we can keep them unsigned.
	const_def
	const PRIORITY_M7 ; Trick Room
	const PRIORITY_M6 ; Circle Throw, Dragon Tail, Roar, Whirlwind, Teleport
	const PRIORITY_M5 ; Counter, Mirror Coat
	const PRIORITY_M4 ; Avalanche, Revenge
	const PRIORITY_M3 ; Focus Punch, Shell Trap
	const PRIORITY_M2 ; none
	const PRIORITY_M1 ; Vital Throw
	const PRIORITY_0  ; All other moves
	const PRIORITY_P1 ; Aqua Jet, Mach Punch, Quick Attack, etc.
	const PRIORITY_P2 ; Extreme Speed, Feint, First Impression, Rage Powder
	const PRIORITY_P3 ; Fake Out
	const PRIORITY_P4 ; Detect, Endure, Magic Coat, Protect
	const PRIORITY_P5 ; none (for Single Battle)

; default move priority
BASE_PRIORITY EQU PRIORITY_0

; constants for HP percent
	const_def 1
	const SIXTEENTH_MAX_HP  ; 1
	const EIGHTH_MAX_HP     ; 2
	const SIXTH_MAX_HP      ; 3
	const FIFTH_MAX_HP      ; 4
	const QUARTER_MAX_HP    ; 5
	const THIRD_MAX_HP      ; 6
	const HALF_MAX_HP       ; 7
	const TWO_THIRDS_MAX_HP ; 8
	const FULL_MAX_HP       ; 9
; NUM_MAX_HP_CONSTANTS EQU const_value

; type effectiveness factors, scaled by 10
SUPER_EFFECTIVE    EQU 20
MORE_EFFECTIVE     EQU 15
EFFECTIVE          EQU 10
NOT_VERY_EFFECTIVE EQU 05
NO_EFFECT          EQU 00

; enemy AI behavior
BASE_AI_SWITCH_SCORE EQU 10

; wPlayerStatLevels and wEnemyStatLevels indexes (see wram.asm)
; GetStatName arguments (see data/battle/stat_names.asm)
	const_def
	const ATTACK
	const DEFENSE
	const SPEED
	const SP_ATTACK
	const SP_DEFENSE
	const ACCURACY
	const EVASION
	const ABILITY ; used for BattleCommand_Curse
NUM_LEVEL_STATS EQU const_value

; move struct members (see data/moves/moves.asm)
rsreset
MOVE_ANIM   rb ; 0
MOVE_EFFECT rb ; 1
MOVE_POWER  rb ; 2
MOVE_TYPE   rb ; 3
MOVE_ACC    rb ; 4
MOVE_PP     rb ; 5
MOVE_CHANCE rb ; 6
MOVE_LENGTH EQU _RS

; stat constants
; indexes for:
; - wPlayerStats and wEnemyStats (see wram.asm)
; - party_struct and battle_struct members (see macros/wram.asm)
	const_def 1
	const STAT_HP
	const STAT_ATK
	const STAT_DEF
	const STAT_SPD
	const STAT_SATK
NUM_EXP_STATS EQU const_value - 1
	const STAT_SDEF
NUM_STATS EQU const_value - 1
NUM_BATTLE_STATS EQU NUM_STATS - 1 ; don't count HP

; stat formula constants
STAT_MIN_NORMAL EQU 5
STAT_MIN_HP EQU 10

MAX_STAT_VALUE EQU 999

; shiny dvs
ATKDEFDV_SHINY EQU $EA
SPDSPCDV_SHINY EQU $AA

; battle classes (wBattleMode values)
	const_def 1
	const WILD_BATTLE
	const TRAINER_BATTLE

; battle types (wBattleType values)
	const_def
	const BATTLETYPE_NORMAL
	const BATTLETYPE_CANLOSE
	const BATTLETYPE_DEBUG
	const BATTLETYPE_TUTORIAL
	const BATTLETYPE_FISH
	const BATTLETYPE_ROAMING
	const BATTLETYPE_CONTEST
	const BATTLETYPE_SHINY
	const BATTLETYPE_TREE
	const BATTLETYPE_TRAP
	const BATTLETYPE_FORCEITEM
	const BATTLETYPE_CELEBI
	const BATTLETYPE_SUICUNE

; BattleVarPairs indexes (see home/battle_vars.asm)
	const_def
	const BATTLE_VARS_SUBSTATUS1
	const BATTLE_VARS_SUBSTATUS2
	const BATTLE_VARS_SUBSTATUS3
	const BATTLE_VARS_SUBSTATUS4
	const BATTLE_VARS_SUBSTATUS5
	const BATTLE_VARS_SUBSTATUS1_OPP
	const BATTLE_VARS_SUBSTATUS2_OPP
	const BATTLE_VARS_SUBSTATUS3_OPP
	const BATTLE_VARS_SUBSTATUS4_OPP
	const BATTLE_VARS_SUBSTATUS5_OPP
	const BATTLE_VARS_STATUS
	const BATTLE_VARS_STATUS_OPP
	const BATTLE_VARS_MOVE_ANIM
	const BATTLE_VARS_MOVE_EFFECT
	const BATTLE_VARS_MOVE_POWER
	const BATTLE_VARS_MOVE_TYPE
	const BATTLE_VARS_MOVE
	const BATTLE_VARS_LAST_COUNTER_MOVE
	const BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	const BATTLE_VARS_LAST_MOVE
	const BATTLE_VARS_LAST_MOVE_OPP
NUM_BATTLE_VARS EQU const_value

; BattleVarLocations indexes (see home/battle_vars.asm)
	const_def
	const PLAYER_SUBSTATUS_1
	const ENEMY_SUBSTATUS_1
	const PLAYER_SUBSTATUS_2
	const ENEMY_SUBSTATUS_2
	const PLAYER_SUBSTATUS_3
	const ENEMY_SUBSTATUS_3
	const PLAYER_SUBSTATUS_4
	const ENEMY_SUBSTATUS_4
	const PLAYER_SUBSTATUS_5
	const ENEMY_SUBSTATUS_5
	const PLAYER_STATUS
	const ENEMY_STATUS
	const PLAYER_MOVE_ANIMATION
	const ENEMY_MOVE_ANIMATION
	const PLAYER_MOVE_EFFECT
	const ENEMY_MOVE_EFFECT
	const PLAYER_MOVE_POWER
	const ENEMY_MOVE_POWER
	const PLAYER_MOVE_TYPE
	const ENEMY_MOVE_TYPE
	const PLAYER_CUR_MOVE
	const ENEMY_CUR_MOVE
	const PLAYER_COUNTER_MOVE
	const ENEMY_COUNTER_MOVE
	const PLAYER_LAST_MOVE
	const ENEMY_LAST_MOVE
assert const_value % 2 == 0
NUM_BATTLE_VAR_LOCATION_PAIRS EQU const_value / 2

; status condition bit flags
STATUS_TURN_COUNTER EQU %11 ; 0-3 turns
SLP_BIT EQU %100
SLP EQU %111 ; 0-7 turns
	const_def 3
	const PSN
	const BRN
	const FRZ
	const PAR

ALL_STATUS EQU (1 << PSN) | (1 << BRN) | (1 << FRZ) | (1 << PAR) | SLP
ANY_STATUS EQU (1 << PSN) | (1 << BRN) | (1 << FRZ) | (1 << PAR) | SLP_BIT
FRZ_TURNS_MASK EQU (1 << FRZ) | STATUS_TURN_COUNTER

; wPlayerSubStatus1 or wEnemySubStatus1 bit flags
	const_def
	const_skip
	const SUBSTATUS_CURSE
	const SUBSTATUS_PROTECT
	const_skip
	const SUBSTATUS_PERISH
	const SUBSTATUS_ENDURE
	const_skip
	const SUBSTATUS_IN_LOVE

; wPlayerSubStatus2 or wEnemySubStatus2 bit flags
	const_def
	const_skip

; wPlayerSubStatus3 or wEnemySubStatus3 bit flags
	const_def
	const_skip
	const SUBSTATUS_RAMPAGE
	const SUBSTATUS_IN_LOOP
	const SUBSTATUS_FLINCHED
	const SUBSTATUS_CHARGED
	const SUBSTATUS_UNDERGROUND
	const SUBSTATUS_FLYING
	const SUBSTATUS_CONFUSED

; wPlayerSubStatus4 or wEnemySubStatus4 bit flags
	const_def
	const SUBSTATUS_X_ACCURACY
	const SUBSTATUS_MIST
	const SUBSTATUS_FOCUS_ENERGY
	const_skip
	const SUBSTATUS_SUBSTITUTE
	const SUBSTATUS_RECHARGE
	const_skip
	const SUBSTATUS_LEECH_SEED

; wPlayerSubStatus5 or wEnemySubStatus5 bit flags
	const_def
	const SUBSTATUS_TOXIC
	const SUBSTATUS_ROOST_TYPE1
	const SUBSTATUS_ROOST_TYPE2
	const SUBSTATUS_TRANSFORMED
	const SUBSTATUS_ENCORED
	const SUBSTATUS_LOCK_ON
	const SUBSTATUS_DESTINY_BOND
	const SUBSTATUS_CANT_RUN

; wPlayerScreens or wEnemyScreens bit flags
; NOTE: SpikesDamage in "engine/battle/core.asm" assumes the bits of spikes
;       are bits 0 and 1, to avoid a right shift.
	const_def
	const SCREENS_SPIKES
	const SCREENS_SPIKES2
	const SCREENS_SAFEGUARD
	const SCREENS_LIGHT_SCREEN
	const SCREENS_REFLECT

SCREENS_SPIKES_MASK EQU (1 << SCREENS_SPIKES) | (1 << SCREENS_SPIKES2)
SPIKES_1_LAYER  EQU (1 << SCREENS_SPIKES)
SPIKES_2_LAYERS EQU (1 << SCREENS_SPIKES2)
SPIKES_3_LAYERS EQU SPIKES_1_LAYER | SPIKES_2_LAYERS

; values in wBattleWeather
	const_def
	const WEATHER_NONE
	const WEATHER_RAIN
	const WEATHER_SUN
	const WEATHER_SANDSTORM
	const WEATHER_HAIL
	const WEATHER_RAIN_END
	const WEATHER_SUN_END
	const WEATHER_SANDSTORM_END
	const WEATHER_HAIL_END

; wBattleAction
	const_def
	const BATTLEACTION_MOVE1
	const BATTLEACTION_MOVE2
	const BATTLEACTION_MOVE3
	const BATTLEACTION_MOVE4
	const BATTLEACTION_SWITCH1
	const BATTLEACTION_SWITCH2
	const BATTLEACTION_SWITCH3
	const BATTLEACTION_SWITCH4
	const BATTLEACTION_SWITCH5
	const BATTLEACTION_SWITCH6
	const_skip
	const_skip
	const_skip
	const BATTLEACTION_SKIPTURN
	const BATTLEACTION_STRUGGLE
	const BATTLEACTION_FORFEIT

; wBattlePlayerAction
	const_def
	const BATTLEPLAYERACTION_USEMOVE
	const BATTLEPLAYERACTION_USEITEM
	const BATTLEPLAYERACTION_SWITCH

; wBattleResult
	const_def
	const WIN
	const LOSE
	const DRAW

BATTLERESULT_CAUGHT_CELEBI EQU 6
BATTLERESULT_BOX_FULL EQU 7
BATTLERESULT_BITMASK EQU (1 << BATTLERESULT_CAUGHT_CELEBI) | (1 << BATTLERESULT_BOX_FULL)

; link_battle_record struct
LINK_BATTLE_RECORD_LENGTH EQU 2 + (NAME_LENGTH - 1) + 2 * 3
NUM_LINK_BATTLE_RECORDS EQU 5

; wTurnBasedFlags bit flags
THIS_TURN_PLAYER_TOOK_DAMAGE           EQU %00000001
THIS_TURN_PLAYER_TOOK_DIRECT_DAMAGE    EQU %00000010
THIS_TURN_ENEMY_TOOK_DAMAGE            EQU %00010000
THIS_TURN_ENEMY_TOOK_DIRECT_DAMAGE     EQU %00100000

; wTurnBasedFlags2 bit flags
	const_def
	const BIT_DAMAGE_STATS_TRUNCATED
