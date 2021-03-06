	db SENTRET ; 161

	db  35,  46,  34,  20,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sentret/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 17 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, PLAY_ROUGH, PROTECT, ENDURE, DIG, MUD_SLAP, ICE_PUNCH, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FALSE_SWIPE, FURY_CUTTER, FACADE, IRON_TAIL, SLASH, REVERSAL
	; end
