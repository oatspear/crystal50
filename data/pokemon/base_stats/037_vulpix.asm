	db VULPIX ; 037

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	owmoves OVERWORLD_DIG
	db 24 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, NASTY_PLOT, CALM_MIND, SUNNY_DAY, PROTECT, ENDURE, ENERGY_BALL, DIG, FIRE_BLAST, PAYBACK, REST, ATTRACT, HEX, FACADE, IRON_TAIL, FLAMETHROWER, OMINOUS_WIND
	; end
