	db HO_OH ; 250

	db 106, 130,  90,  90, 110, 154
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	db SACRED_ASH, SACRED_ASH ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ho_oh/front.dimensions"
	owmoves OVERWORLD_FLY, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 56 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, SOLARBEAM, DRAGONBREATH, THUNDER, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, SANDSTORM, FIRE_BLAST, DREAM_EATER, REST, STEEL_WING, FLAMETHROWER, THUNDERBOLT, WILL_O_WISP
	; end
