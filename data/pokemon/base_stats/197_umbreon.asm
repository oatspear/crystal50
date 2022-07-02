	db UMBREON ; 197

	db  95,  65, 110,  65,  60, 130
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/umbreon/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 43 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, CALM_MIND, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, DIG, PSYCHIC_M, MUD_SLAP, PAYBACK, DREAM_EATER, REST, ATTRACT, FACADE, SHADOW_BALL, IRON_TAIL, HEAL_BELL
	; end
