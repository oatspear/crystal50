TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 40, SPEAROW,    12
	db 20, MANKEY,     10
	db 15, GLIGAR,     12
	db 10, SPEAROW,    16
	db 10, SNEASEL,    18
	db  5, HERACROSS,  18
	db -1
; rare
	db 40, MANKEY,     13
	db 20, HERACROSS,  20
	db 15, SPEAROW,    18
	db 10, GLIGAR,     15
	db 10, SCYTHER,    18
	db  5, SKARMORY,   22
	db -1

TreeMonSet_Town:
; common
	db 40, PIDGEY,     12
	db 20, EKANS,      10
	db 15, SPEAROW,    10
	db 10, AIPOM,      10
	db 10, AIPOM,      16
	db  5, MANKEY,     12
	db -1
; rare
	db 40, AIPOM,      10
	db 20, HERACROSS,  12
	db 15, HERACROSS,  18
	db 10, PIDGEY,     12
	db 10, AIPOM,      14
	db  5, MANKEY,     16
	db -1

TreeMonSet_Route:
; common
	db 40, PIDGEY,     10
	db 20, HOOTHOOT,   10
	db 10, LEDYBA,     10
	db 10, SPINARAK,   10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1
; rare
	db 40, HOOTHOOT,   12
	db 20, PINECO,     10
	db 15, PINECO,     15
	db 10, EXEGGCUTE,  12
	db 10, MURKROW,    10
	db  5, MURKROW,    18
	db -1

TreeMonSet_Kanto:
; common
	db 35, PIDGEY,     14
	db 20, EKANS,      12
	db 15, CATERPIE,    5
	db 10, EXEGGCUTE,  14
	db 10, WEEDLE,      5
	db 10, MANKEY,     12
	db -1
; rare
	db 35, SPEAROW,    12
	db 20, VENONAT,    14
	db 15, PINSIR,     16
	db 10, EXEGGCUTE,  12
	db 10, WEEPINBELL, 18
	db 10, MANKEY,     10
	db -1

TreeMonSet_Lake:
; common
	db 40, HOOTHOOT,   10
	db 20, VENONAT,    12
	db 15, AIPOM,      10
	db 10, CATERPIE,    4
	db 10, EXEGGCUTE,  10
	db  5, SCYTHER,    20
	db -1
; rare
	db 40, PINECO,     14
	db 20, HOOTHOOT,   16
	db 15, AIPOM,      14
	db 10, MURKROW,    18
	db 10, HERACROSS,  12
	db  5, HERACROSS,  20
	db -1

TreeMonSet_Forest:
; common
	db 40, HOOTHOOT,   12
	db 20, PINECO,     10
	db 15, MANKEY,     10
	db 10, CATERPIE,    4
	db 10, WEEDLE,      4
	db  5, MURKROW,    14
	db -1
; rare
	db 40, SPINARAK,   12
	db 20, EXEGGCUTE,  10
	db 15, AIPOM,      14
	db 10, WEEPINBELL, 18
	db 10, PINSIR,     18
	db  5, HERACROSS,  16
	db -1

TreeMonSet_Rock:
	db 75, KRABBY,     12
	db 15, SHUCKLE,    14
	db 10, GEODUDE,    15
	db -1
