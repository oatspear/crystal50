Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F1
	dw MartGoldenrod3F2
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartFoodsDrinks
	dw MartBerries
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	db POTION
	db SUPER_POTION
	db REPEL
	db FLOWER_MAIL
	db -1 ; end

MartCherrygroveDex:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db REPEL
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_RAIN_DANCE
	db TM_AROMATHERAPY
	db TM_ATTRACT
	db FLOWER_MAIL
	db -1 ; end

MartViolet:
	db 10 ; # items
	db SHARP_BEAK
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db X_DEFEND
	db X_ATTACK
	db TM_MUD_SLAP
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 10 ; # items
	db CHARCOAL
	db SILVERPOWDER
	db TM_FALSE_SWIPE
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 9 ; # items
	db BERRY_JUICE
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ELIXER
	db PROTEIN
	db IRON
	db CARBOS
	db -1 ; end

MartGoldenrod2F1:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F2:
	db 10 ; # items
	db PINK_BOW
	db POLKADOT_BOW
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F1:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod3F2:
	db 7 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db ZINC
	db MAGNESIUM
	db POTASSIUM
	db -1 ; end

MartGoldenrod4F:
	db 8 ; # items
	db MOON_STONE
	db SUN_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE
	db HARD_STONE
	db EVERSTONE
	db -1 ; end

MartGoldenrod5F1:
	db 8 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROLLOUT
	db TM_PLAY_ROUGH
	db TM_PROTECT
	db TM_AROMATHERAPY
	db TM_REST
	db -1 ; end

MartGoldenrod5F2:
	db 9 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROLLOUT
	db TM_PLAY_ROUGH
	db TM_PROTECT
	db TM_AROMATHERAPY
	db TM_REST
	db -1 ; end

MartGoldenrod5F3:
	db 9 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db TM_ROLLOUT
	db TM_PLAY_ROUGH
	db TM_PROTECT
	db TM_AROMATHERAPY
	db TM_REST
	db -1 ; end

MartGoldenrod5F4:
	db 10 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db TM_ROLLOUT
	db TM_PLAY_ROUGH
	db TM_PROTECT
	db TM_AROMATHERAPY
	db TM_REST
	db -1 ; end

MartOlivine:
	db 10 ; # items
	db MOOMOO_MILK
	db POKE_BALL
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REPEL
	db SUPER_REPEL
	db TM_IRON_DEFENSE
	db TM_STEEL_WING
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db SPELL_TAG
	db POKE_BALL
	db GREAT_BALL
	db SUPER_POTION
	db REPEL
	db SUPER_REPEL
	db X_SPECIAL
	db REVIVE
	db TM_CURSE
	db TM_HEX
	db -1 ; end

MartMahogany1:
	db 6 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db TM_PAYBACK
	db TM_THIEF
	db -1 ; end

MartMahogany2:
	db 10 ; # items
	db RAGECANDYBAR
	db NEVERMELTICE
	db MYSTIC_WATER
	db FRESH_WATER
	db POKE_BALL
	db SUPER_POTION
	db HYPER_POTION
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 10 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartViridian:
	db 9 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartPewter:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db X_DEFEND
	db IRON
	db TM_ROCK_SMASH
	db TM_BULLDOZE
	db TM_SANDSTORM
	db -1 ; end

MartCerulean:
	db 10 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db TM_WATER_PULSE
	db TM_SCALD
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 8 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db MAX_REPEL
	db TM_CURSE
	db TM_CALM_MIND
	db TM_REST
	db TM_HEX
	db -1 ; end

MartVermilion:
	db 9 ; # items
	db MAGNET
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db TM_RAIN_DANCE
	db TM_THUNDERPUNCH
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3F:
	db 6 ; # items
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SOLARBEAM
	db TM_AROMATHERAPY
	db TM_REST
	db TM_ATTRACT
	db -1 ; end

MartCeladon4F:
	db 10 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db MOON_STONE
	db SUN_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE
	db EVERSTONE
	db -1 ; end

MartCeladon5F1:
	db 7 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db ZINC
	db MAGNESIUM
	db POTASSIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia:
	db 10 ; # items
	db POISON_BARB
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db MAX_REPEL
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db TM_ENDURE
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 10 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db X_ATTACK
	db X_DEFEND
	db X_SPECIAL
	db TM_NASTY_PLOT
	db TM_CALM_MIND
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 7 ; # items
	db POKE_DOLL
	db POKE_BALL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartFoodsDrinks:
	db 10 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db BERRY_JUICE
	; db MOOMOO_MILK
	; db RAGECANDYBAR
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartBerries:
	db 10 ; # items
	db ORAN_BERRY
	db PECHA_BERRY
	db CHERI_BERRY
	db ASPEAR_BERRY
	db RAWST_BERRY
	db CHESTO_BERRY
	db PERSIM_BERRY
	db LUM_BERRY
	db LEPPA_BERRY
	db SITRUS_BERRY
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
