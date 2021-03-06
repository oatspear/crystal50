	db CHARIZARD ; 006

	db  78,  84,  78, 100, 109,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/charizard/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLY, OVERWORLD_STRENGTH, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 44 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROAR, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, SOLARBEAM, EARTHQUAKE, BRICK_BREAK, DIG, MUD_SLAP, BULLDOZE, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, FALSE_SWIPE, ROOST, FURY_CUTTER, FACADE, IRON_TAIL, DRAGONBREATH, FLAMETHROWER, SLASH, WILL_O_WISP, OUTRAGE, FIRE_FANG, DRAGON_PULSE, DRAGON_DANCE
	; end
