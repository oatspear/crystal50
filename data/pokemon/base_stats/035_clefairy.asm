	db CLEFAIRY ; 035

	db  70,  45,  48,  35,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	db LEPPA_BERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 26 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, CALM_MIND, SUNNY_DAY, PLAY_ROUGH, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, THUNDER, PSYCHIC_M, MUD_SLAP, ICE_PUNCH, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
