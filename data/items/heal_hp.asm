; Drinks: fixed amount, cost-efficient, cannot be used in battle
; Potions: fixed amount, expensive, usable in battle
; Berries: fixed amount out of battle (use), relative amount in battle (held)

HealingHPAmounts:
; battle items first, for speed
	db HYPER_POTION, 150 ; 120
	db SUPER_POTION, 100 ;  60
	db POTION,        50 ;  20
	db MAX_POTION,   FULL_MAX_HP ; MAX_STAT_VALUE
	db FULL_RESTORE, FULL_MAX_HP ; MAX_STAT_VALUE
; drinks, for cost-efficient healing
	db FRESH_WATER,   60 ;  30
	db SODA_POP,      90 ;  50
	db LEMONADE,     120 ;  70
	db BERRY_JUICE,  150 ;  20
	db MOOMOO_MILK,  180 ; 100
; berries
	db ORAN_BERRY,   EIGHTH_MAX_HP  ; 10
	db SITRUS_BERRY, QUARTER_MAX_HP ; 30
; other
	db ENERGYPOWDER,  60
	db ENERGY_ROOT,  120
	db RAGECANDYBAR,  20
	db -1, 0 ; end
