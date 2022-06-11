	db PIDGEOT ; 018

	db  83,  80,  75, 101,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pidgeot/front.dimensions"
	owmoves OVERWORLD_FLY
	db 39 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, MUD_SLAP, REST, ATTRACT, THIEF, STEEL_WING
	; end
