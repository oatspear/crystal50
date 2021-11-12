; Drinks: fixed amount, cost-efficient, cannot be used in battle
; Potions: fixed amount, expensive, usable in battle
; Berries: relative amount, gathered, usable or held in battle

HealingHPAmounts:
; battle items first, for speed
	db HYPER_POTION, 120 ; 120
	db SUPER_POTION,  60 ;  60
	db POTION,        30 ;  20
	db MAX_POTION,   FULL_MAX_HP ; MAX_STAT_VALUE
	db FULL_RESTORE, FULL_MAX_HP ; MAX_STAT_VALUE
; drinks, for cost-efficient healing
	db FRESH_WATER,   50 ;  30
	db SODA_POP,      80 ;  50
	db LEMONADE,     120 ;  70
	db BERRY_JUICE,  HALF_MAX_HP ;  20
	db MOOMOO_MILK,  FULL_MAX_HP ; 100
; berries
	db ORAN_BERRY,   EIGHTH_MAX_HP  ; 10
	db SITRUS_BERRY, QUARTER_MAX_HP ; 30
; other
	db ENERGYPOWDER,  60
	db ENERGY_ROOT,  120
	db -1, 0 ; end
