	db HOUNDOOM ; 229

	db  75,  90,  50,  95, 110,  80
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/houndoom/front.dimensions"
	owmoves OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 41 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, NASTY_PLOT, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, SOLARBEAM, SLUDGE_BOMB, FIRE_BLAST, PAYBACK, DREAM_EATER, REST, ATTRACT, THIEF, FACADE, SHADOW_BALL, IRON_TAIL, FLAMETHROWER, DESTINY_BOND
	; end
