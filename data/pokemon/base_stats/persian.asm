	db PERSIAN ; 053

	db  65,  70,  60, 115,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/persian/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 36 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, NASTY_PLOT, PLAY_ROUGH, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, THUNDER, DIG, PAYBACK, DREAM_EATER, REST, ATTRACT, THIEF, FALSE_SWIPE, FURY_CUTTER, FACADE, SHADOW_BALL, IRON_TAIL, THUNDERBOLT
	; end
