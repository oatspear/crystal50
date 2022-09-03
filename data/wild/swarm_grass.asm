; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, PIDGEY
	db 12, SNUBBULL
	db 12, YANMA
	db 14, YANMA
	db 12, ELEKID
	db 10, ABRA
	db 10, DITTO
	; day
	db 14, PIDGEY
	db 12, SNUBBULL
	db 12, YANMA
	db 14, YANMA
	db 12, ELEKID
	db 10, ABRA
	db 10, DITTO
	; nite
	db 14, HOOTHOOT
	db 12, DROWZEE
	db 12, YANMA
	db 14, YANMA
	db 10, MAGNEMITE
	db 12, MURKROW
	db 10, DITTO

	db -1 ; end
