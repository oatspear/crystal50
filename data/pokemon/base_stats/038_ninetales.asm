	db NINETALES ; 038

	db  73,  76,  75, 100,  81, 100
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ninetales/front.dimensions"
	owmoves OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 42 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, NASTY_PLOT, CALM_MIND, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, ENERGY_BALL, DIG, FIRE_BLAST, PAYBACK, DREAM_EATER, REST, ATTRACT, HEX, FACADE, SHADOW_BALL, IRON_TAIL, FLAMETHROWER, OMINOUS_WIND, SPITE, WILL_O_WISP
	; end
