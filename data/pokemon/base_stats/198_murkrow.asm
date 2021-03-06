	db MURKROW ; 198

	db  60,  85,  42,  91,  85,  42
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/murkrow/front.dimensions"
	owmoves OVERWORLD_FLY
	db 33 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, NASTY_PLOT, ICY_WIND, PROTECT, ENDURE, MUD_SLAP, PLUCK, PAYBACK, DREAM_EATER, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FACADE, SHADOW_BALL, OMINOUS_WIND, SPITE
	; end
