DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Kanto_Pond_Old,       .Kanto_Pond_Good,       .Kanto_Pond_Super
	fishgroup 50 percent + 1, .Kanto_Coastal_Old,    .Kanto_Coastal_Good,    .Kanto_Coastal_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, SHELLDER,    5
	db 100 percent,     KRABBY,      5
.Shore_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     KRABBY,     15
	db  90 percent + 1, SHELLDER,   15
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     KRABBY,     25
	db  70 percent,     time_group 1
	db  90 percent + 1, CLOYSTER,   30
	db 100 percent,     GYARADOS,   25

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, REMORAID,    5
	db 100 percent,     TENTACOOL,   5
.Ocean_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     TENTACOOL,  15
	db  80 percent + 1, REMORAID,   15
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     REMORAID,   20
	db  70 percent,     time_group 3
	db  90 percent + 1, QWILFISH,   25
	db 100 percent,     GYARADOS,   25

.Lake_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, WOOPER,      5
	db 100 percent,     GOLDEEN,     5
.Lake_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     GOLDEEN,    15
	db  90 percent + 1, WOOPER,     15
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     QUAGSIRE,   25
	db  70 percent,     time_group 5
	db  90 percent + 1, SEAKING,    30
	db 100 percent,     GYARADOS,   25

.Pond_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, GOLDEEN,     5
	db 100 percent,     POLIWAG,     5
.Pond_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     GOLDEEN,    15
	db  90 percent + 1, POLIWAG,    15
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     POLIWHIRL,  25
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, time_group 7
	db 100 percent,     GYARADOS,   25

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, MAGIKARP,    5
	db 100 percent,     MAGIKARP,    5
.Dratini_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   10
	db  90 percent + 1, GYARADOS,   15
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     MAGIKARP,   15
	db  70 percent,     time_group 9
	db  90 percent + 1, GYARADOS,   25
	db 100 percent,     DRAGONAIR,  30

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     QWILFISH,   15
	db  90 percent + 1, QWILFISH,   15
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   25
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   25
	db 100 percent,     GYARADOS,   25

; unused in Crystal
.Remoraid_Old:
.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, MAGIKARP,    5
	db 100 percent,     REMORAID,    5
.Remoraid_Good:
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     REMORAID,   10
	db  90 percent + 1, REMORAID,   10
	db 100 percent,     time_group 12
.Remoraid_Super:
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   15
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     GYARADOS,   25

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     GOLDEEN,    10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     GYARADOS,   15
	db  90 percent + 1, GOLDEEN,    20
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     GYARADOS,   25
	db  70 percent,     time_group 15
	db  90 percent + 1, GYARADOS,   25
	db 100 percent,     GYARADOS,   30

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, MAGIKARP,    5
	db 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, DRATINI,    10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     GYARADOS,   25
	db  70 percent,     time_group 17
	db  90 percent + 1, DRATINI,    20
	db 100 percent,     DRAGONAIR,  30

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, REMORAID,    5
	db 100 percent,     KRABBY,      5
.WhirlIslands_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     HORSEA,     15
	db  90 percent + 1, KRABBY,     15
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     HORSEA,     28
	db  70 percent,     time_group 19
	db  90 percent + 1, KRABBY,     25
	db 100 percent,     GYARADOS,   25

.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, REMORAID,    5
	db 100 percent,     TENTACOOL,  10
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     TENTACOOL,  15
	db  90 percent + 1, QWILFISH,   15
	db 100 percent,     time_group 12
.Qwilfish_Super:
	db  40 percent,     TENTACOOL,  30
	db  70 percent,     time_group 13
	db  90 percent + 1, QWILFISH,   25
	db 100 percent,     GYARADOS,   25

.Kanto_Pond_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, GOLDEEN,    10
	db 100 percent,     POLIWAG,    10
.Kanto_Pond_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     GOLDEEN,    15
	db  90 percent + 1, POLIWAG,    15
	db 100 percent,     time_group 22
.Kanto_Pond_Super:
	db  40 percent,     GOLDEEN,    30
	db  70 percent,     time_group 23
	db  90 percent + 1, GYARADOS,   25
	db 100 percent,     VAPOREON,   25

.Kanto_Coastal_Old:
	db  70 percent + 1, MAGIKARP,    5
	db  85 percent + 1, SHELLDER,   10
	db 100 percent,     TENTACOOL,  10
.Kanto_Coastal_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, SHELLDER,   15
	db 100 percent,     time_group 20
.Kanto_Coastal_Super:
	db  40 percent,     TENTACOOL,  30
	db  70 percent,     time_group 21
	db  90 percent + 1, CLOYSTER,   25
	db 100 percent,     GYARADOS,   25

TimeFishGroups:
	;  day              nite
	db CORSOLA,    15,  STARYU,     15 ; 0
	db CORSOLA,    25,  STARMIE,    25 ; 1
	db HORSEA,     15,  CHINCHOU,   15 ; 2
	db HORSEA,     25,  CHINCHOU,   25 ; 3
	db SHELLDER,   15,  SHELLDER,   15 ; 4
	db SHELLDER,   25,  SHELLDER,   25 ; 5
	db TOTODILE,   10,  WOOPER,     15 ; 6
	db TOTODILE,   15,  QUAGSIRE,   25 ; 7
	db DRATINI,    15,  DRATINI,    15 ; 8
	db DRATINI,    25,  DRATINI,    25 ; 9
	db QWILFISH,   15,  QWILFISH,   15 ; 10
	db QWILFISH,   25,  QWILFISH,   25 ; 11
	db REMORAID,   10,  REMORAID,   10 ; 12
	db REMORAID,   15,  REMORAID,   15 ; 13
	db TOTODILE,   10,  POLIWAG,    15 ; 14
	db TOTODILE,   15,  POLIWHIRL,  25 ; 15
	db TOTODILE,   10,  POLIWAG,    15 ; 16
	db TOTODILE,   15,  POLIWHIRL,  25 ; 17
	db REMORAID,   10,  STARYU,     15 ; 18
	db OCTILLERY,  25,  STARMIE,    25 ; 19
	db SQUIRTLE,   10,  STARYU,     15 ; 20
	db SQUIRTLE,   15,  STARMIE,    25 ; 21
	db SQUIRTLE,   10,  POLIWAG,    15 ; 22
	db SQUIRTLE,   15,  POLIWHIRL,  25 ; 23
