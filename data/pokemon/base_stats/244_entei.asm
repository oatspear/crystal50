	db ENTEI ; 244

	db 115, 115,  85, 100,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/entei/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 48 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, IRON_TAIL, DIG, MUD_SLAP, SANDSTORM, FIRE_BLAST, REST, FLAMETHROWER, WILL_O_WISP, REVERSAL
	; end
