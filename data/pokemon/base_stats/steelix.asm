	db STEELIX ; 208

	db  75,  85, 200,  30,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/steelix/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 42 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, DIG, MUD_SLAP, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT
	; end
