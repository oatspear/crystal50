	db AIPOM ; 190

	db  55,  70,  55,  85,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aipom/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 30 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, NASTY_PLOT, SUNNY_DAY, PLAY_ROUGH, PROTECT, RAIN_DANCE, ENDURE, BRICK_BREAK, DIG, MUD_SLAP, ICE_PUNCH, PAYBACK, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FALSE_SWIPE, FURY_CUTTER, FACADE, SHADOW_BALL, IRON_TAIL, THUNDERBOLT, SPITE
	; end
