	db DONPHAN ; 232

	db  90, 120, 120,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/donphan/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 41 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, ROCK_SMASH, PLAY_ROUGH, HYPER_BEAM, PROTECT, ENDURE, EARTHQUAKE, MUD_SLAP, BULLDOZE, SANDSTORM, REST, ATTRACT, FACADE, ICE_FANG, ICE_SHARD, FIRE_FANG, THUNDER_FANG
	; end
