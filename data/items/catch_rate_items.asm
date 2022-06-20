; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db ZINC,          LEFTOVERS
	db MAGNESIUM,     PERSIM_BERRY
	db POTASSIUM,     SITRUS_BERRY
	db ITEM_5A,       ORAN_BERRY
	db ITEM_64,       ORAN_BERRY
	db ITEM_78,       ORAN_BERRY
	db ITEM_87,       ORAN_BERRY
	db ITEM_B4,       BLACKBELT_I
	db ITEM_BE,       ORAN_BERRY
	db ITEM_FD,       ORAN_BERRY
	db TM_ROCK_SMASH, ORAN_BERRY
	db TM_ICE_PUNCH,  ORAN_BERRY
	db PROTEIN,       DRAGON_FANG
	db ANTIDOTE,      DRAGON_FANG
	db -1,            ORAN_BERRY
	db 0 ; end
