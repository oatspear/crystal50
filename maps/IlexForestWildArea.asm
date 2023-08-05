	object_const_def
	const ILEXFOREST_WILD_AREA_URSARING
	const ILEXFOREST_WILD_AREA_SUDOWOODO
	;const ILEXFOREST_WILD_AREA_SPIRIT
	const ILEXFOREST_WILD_AREA_APRICORN_GUY
	const ILEXFOREST_WILD_AREA_ACE_TRAINER1
  const ILEXFOREST_WILD_AREA_ACE_TRAINER2
  const ILEXFOREST_WILD_AREA_ACE_TRAINER3
	const ILEXFOREST_WILD_AREA_FRUIT_TREE1
	const ILEXFOREST_WILD_AREA_FRUIT_TREE2
	const ILEXFOREST_WILD_AREA_POKE_BALL1
	const ILEXFOREST_WILD_AREA_POKE_BALL2
	const ILEXFOREST_WILD_AREA_POKE_BALL3

IlexForestWildArea_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .SudowoodoCallback

.SudowoodoCallback:
	endcallback

IlexForestWildAreaUrsaringScript:
	opentext
	writetext IlexForestWildAreaUrsaringCryText
	pause 15
	cry URSARING
	closetext
	loadwildmon URSARING, 35
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	; random 4
	; ifequal 1, .Battle
	; loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
; .Battle:
	startbattle
	ifequal LOSE, .NotBeaten
	disappear ILEXFOREST_WILD_AREA_URSARING
	setevent EVENT_ILEX_FOREST_WILD_AREA_URSARING
.NotBeaten:
	reloadmapafterbattle
	; setflag ENGINE_VIRIDIAN_FOREST_WILD_MON
	end

IlexForestWildAreaSudowoodoScript:
	checkitem SQUIRTBOTTLE
	iftrue .Fight

	waitsfx
	playsound SFX_SANDSTORM
	applymovement ILEXFOREST_WILD_AREA_SUDOWOODO, IlexForestWildAreaSudowoodoShakeMovement
	end

.Fight:
	opentext
	writetext IlexForestWildAreaUseSquirtbottleText
	yesorno
	iffalse IlexForestWildAreaDidntUseSquirtbottle
	closetext
WateredIlexForestSudowoodoScript:: ; export (for when you use Squirtbottle from pack)
	opentext
	writetext IlexForestWildAreaUsedSquirtbottleText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SANDSTORM
	applymovement ILEXFOREST_WILD_AREA_SUDOWOODO, IlexForestWildAreaSudowoodoShakeMovement
	opentext
	writetext IlexForestWildAreaSudowoodoAttackedText
	waitbutton
	closetext
	loadwildmon SUDOWOODO, 25
	startbattle
	ifequal LOSE, .NotBeaten
	disappear ILEXFOREST_WILD_AREA_SUDOWOODO
.NotBeaten:
	reloadmapafterbattle
	end

IlexForestWildAreaDidntUseSquirtbottle:
	closetext
	end

TrainerCooltrainerfFlora:
  trainer COOLTRAINERF, FLORA, EVENT_BEAT_COOLTRAINERF_FLORA, CooltrainerfFloraSeenText, CooltrainerfFloraBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CooltrainerfFloraAfterBattleText
  waitbutton
  closetext
  end

TrainerCooltrainermVictor:
  trainer COOLTRAINERM, VICTOR, EVENT_BEAT_COOLTRAINERM_VICTOR, CooltrainermVictorSeenText, CooltrainermVictorBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CooltrainermVictorAfterBattleText
  waitbutton
  closetext
  end

TrainerCooltrainermGary:
	trainer COOLTRAINERM, GARY, EVENT_BEAT_COOLTRAINERM_GARY, CooltrainermGarySeenText, CooltrainermGaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermGaryAfterBattleText
	waitbutton
	closetext
	end

IlexForestWildAreaApricornGuyScript:
	faceplayer
	opentext
	pokemart MARTTYPE_APRICORNS, MART_APRICORNS
	closetext
	end

IlexForestWildAreaLeafStone:
	itemball LEAF_STONE

IlexForestWildAreaLeftovers:
	itemball LEFTOVERS

IlexForestWildAreaHeavyBall:
	itemball HEAVY_BALL

IlexForestWildAreaFruitTree1:
	fruittree FRUITTREE_ILEX_FOREST_WILD_AREA_1

IlexForestWildAreaFruitTree2:
	fruittree FRUITTREE_ILEX_FOREST_WILD_AREA_2

IlexForestWildAreaHiddenPoisonBarb:
	hiddenitem POISON_BARB, EVENT_ILEX_FOREST_WILD_AREA_HIDDEN_POISON_BARB

IlexForestWildAreaHiddenLifeHerb:
	hiddenitem LIFE_HERB, EVENT_ILEX_FOREST_WILD_AREA_HIDDEN_LIFE_HERB

IlexForestWildAreaHiddenBrightPowder:
	hiddenitem BRIGHTPOWDER, EVENT_ILEX_FOREST_WILD_AREA_HIDDEN_BRIGHTPOWDER

IlexForestWildAreaHiddenNugget:
	hiddenitem NUGGET, EVENT_ILEX_FOREST_WILD_AREA_HIDDEN_NUGGET

IlexForestWildAreaBoulder: ; unreferenced
	jumpstd StrengthBoulderScript

IlexForestWildAreaSignpost:
	jumptext IlexForestWildAreaSignpostText

IlexForestWildAreaShrineScript:
	opentext
	writetext Text_ShrineForestSpiritEvent
	yesorno
	iftrue .BattleEvent
	closetext
	end

.BattleEvent:
	closetext
	pause 20
	showemote EMOTE_SHOCK, PLAYER, 20
	special FadeOutMusic

	; playmusic MUSIC_BATTLE_TOWER_THEME
	opentext
	writetext ShrineForestSpiritAttackedText
	waitbutton
	closetext
	winlosstext ShrineForestSpiritWinText, ShrineForestSpiritLossText
	; setlasttalked AZALEATOWN_SILVER
	; random 4
	; ifequal  1, .PositionOne
	; ifequal  2, .PositionTwo
	; ifequal  3, .PositionThree
	loadtrainer CAL, ILEX_SPIRIT
	startbattle
	reloadmapafterbattle
	playmapmusic
	end

IlexForestWildAreaSudowoodoShakeMovement:
	tree_shake
	step_end

IlexForestWildAreaUseSquirtbottleText:
	text "It's a weird tree."
	line "Use SQUIRTBOTTLE?"
	done

IlexForestWildAreaUsedSquirtbottleText:
	text "<PLAYER> used the"
	line "SQUIRTBOTTLE."
	done

IlexForestWildAreaSudowoodoAttackedText:
	text "The weird tree"
	line "doesn't like the"
	cont "SQUIRTBOTTLE!"

	para "The weird tree"
	line "attacked!"
	done

IlexForestWildAreaUrsaringCryText:
	text "The wild #MON"
	line "roars!"
	done

IlexForestWildAreaSignpostText:
	text "   CAUTION!"
	line "WILD AREA AHEAD"
	done

Text_ShrineForestSpiritEvent:
	text "A forest shrine…"

	para "There is an aura"
	line "around it."

	para "Are you ready for"
	line "battle?"
	done

ShrineForestSpiritAttackedText:
	text "A spirit of the"
	line "forest attacked!"
	done

ShrineForestSpiritWinText:
ShrineForestSpiritLossText:
	text "…"
	done

CooltrainerfFloraSeenText:
	text "This forest is"
	line "known for its rare"
  cont "plants and #MON."

  para "Let me show you!"
	done

CooltrainerfFloraBeatenText:
	text "Oh, no!"
	done

CooltrainerfFloraAfterBattleText:
	text "Dense forests hide"
	line "many secrets from"
	cont "the untrained eye."
	done

CooltrainermVictorSeenText:
	text "You must be strong"
	line "to be here on your"
	cont "own."

  para "Show me!"
	done

CooltrainermVictorBeatenText:
	text "I was right about"
  line "you."
	done

CooltrainermVictorAfterBattleText:
	text "I am looking for"
	line "rare #MON that are"
	cont "said to live here."
  done

CooltrainermGarySeenText:
	text "There are stories"
	line "about a spirit in"
	cont "the forest that"

  para "challenges strong"
	line "trainers."

  para "I am gonna beat"
	line "you, and show it"
	cont "who's boss here!"
	done

CooltrainermGaryBeatenText:
	text "What? No way!"
	done

CooltrainermGaryAfterBattleText:
	text "The stories say"
	line "that the spirit is"
	cont "somewhere nearby."
  done

IlexForestWildArea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 34, ILEX_FOREST, 4
	warp_event  3, 35, ILEX_FOREST, 5
	warp_event 37, 26, ROUTE_32, 5
	warp_event 37, 27, ROUTE_32, 6

	def_coord_events

	def_bg_events
	bg_event  3, 33, BGEVENT_READ, IlexForestWildAreaSignpost
	bg_event 35, 27, BGEVENT_READ, IlexForestWildAreaSignpost
	bg_event  0, 33, BGEVENT_ITEM, IlexForestWildAreaHiddenBrightPowder
	bg_event 27, 26, BGEVENT_ITEM, IlexForestWildAreaHiddenPoisonBarb
	bg_event  4,  0, BGEVENT_ITEM, IlexForestWildAreaHiddenLifeHerb
	bg_event 36, 32, BGEVENT_ITEM, IlexForestWildAreaHiddenNugget
	bg_event 34,  4, BGEVENT_UP, IlexForestWildAreaShrineScript

	def_object_events
	object_event  9, 16, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IlexForestWildAreaUrsaringScript, EVENT_ILEX_FOREST_WILD_AREA_URSARING
	object_event  8, 12, SPRITE_SUDOWOODO, SPRITEMOVEDATA_SUDOWOODO, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestWildAreaSudowoodoScript, -1
	object_event  1, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestWildAreaApricornGuyScript, -1
	object_event  1,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfFlora, -1
	object_event 27,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermVictor, -1
	object_event 24, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermGary, -1
	object_event 10, 16, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestWildAreaFruitTree1, -1
	object_event 34, 34, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestWildAreaFruitTree2, -1
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestWildAreaLeafStone, EVENT_ILEX_FOREST_WILD_AREA_LEAF_STONE
	object_event 35, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestWildAreaLeftovers, EVENT_ILEX_FOREST_WILD_AREA_LEFTOVERS
	object_event 21, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IlexForestWildAreaHeavyBall, EVENT_ILEX_FOREST_WILD_AREA_HEAVY_BALL
