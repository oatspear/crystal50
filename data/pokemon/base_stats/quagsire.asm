	db QUAGSIRE ; 195

	db  95,  85,  85,  35,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_STRENGTH, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 35 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, HAIL, IRON_TAIL, EARTHQUAKE, DIG, MUD_SLAP, ICE_PUNCH, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, FLASH, WHIRLPOOL, ICE_BEAM
	; end
