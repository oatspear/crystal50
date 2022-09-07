  object_const_def
  const VIRIDIAN_FOREST_BULBASAUR
  const VIRIDIAN_FOREST_BUG_CATCHER1
  const VIRIDIAN_FOREST_BUG_CATCHER2
  const VIRIDIAN_FOREST_ACE_TRAINER1
  const VIRIDIAN_FOREST_ACE_TRAINER2
  const VIRIDIAN_FOREST_POKE_BALL1
  const VIRIDIAN_FOREST_POKE_BALL2
  const VIRIDIAN_FOREST_POKE_BALL3
  const VIRIDIAN_FOREST_POKE_BALL4
  const VIRIDIAN_FOREST_FRUIT_TREE1
  const VIRIDIAN_FOREST_FRUIT_TREE2
  const VIRIDIAN_FOREST_FRUIT_TREE3

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .BulbasaurCallback

.BulbasaurCallback:
	checkevent EVENT_GOT_TM49_FALSE_SWIPE
	iftrue .Static
	readmem wBulbasaurPosition
	ifequal  1, .PositionOne
	ifequal  2, .PositionTwo
	ifequal  3, .PositionThree
.Static:
	endcallback

.PositionOne:
	moveobject VIRIDIANFOREST_FARFETCHD, 14, 31
	appear VIRIDIANFOREST_FARFETCHD
	endcallback

.PositionTwo:
	moveobject VIRIDIANFOREST_FARFETCHD, 15, 25
	appear VIRIDIANFOREST_FARFETCHD
	endcallback

.PositionThree:
	moveobject VIRIDIANFOREST_FARFETCHD, 20, 24
	appear VIRIDIANFOREST_FARFETCHD
	endcallback



ViridianForestBulbasaurScript:
  end



TrainerBugCatcherArthur:
  trainer BUG_CATCHER, ARTHUR, EVENT_BEAT_BUG_CATCHER_ARTHUR, BugCatcherArthurSeenText, BugCatcherArthurBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext BugCatcherArthurAfterBattleText
  waitbutton
  closetext
  end

TrainerBugCatcherManuel:
  trainer BUG_CATCHER, MANUEL, EVENT_BEAT_BUG_CATCHER_MANUEL, BugCatcherManuelSeenText, BugCatcherManuelBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext BugCatcherManuelAfterBattleText
  waitbutton
  closetext
  end

TrainerCooltrainerfJoana:
  trainer COOLTRAINERF, JOANA, EVENT_BEAT_COOLTRAINERF_JOANA, CooltrainerfJoanaSeenText, CooltrainerfJoanaBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CooltrainerfJoanaAfterBattleText
  waitbutton
  closetext
  end

TrainerCooltrainermErick:
  trainer COOLTRAINERM, ERICK, EVENT_BEAT_COOLTRAINERM_ERICK, CooltrainermErickSeenText, CooltrainermErickBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CooltrainermErickAfterBattleText
  waitbutton
  closetext
  end




ViridianForestFullHeal:
	itemball FULL_HEAL

ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestCarbos:
	itemball CARBOS

ViridianForestElixer:
	itemball ELIXER

ViridianForestFruitTree1:
  setval 1
  writemem wViridianForestWildMon
  scall ViridianForestWildTreeMon
  fruittree FRUITTREE_AZALEA_TOWN

ViridianForestFruitTree2:
  fruittree FRUITTREE_AZALEA_TOWN

ViridianForestFruitTree3:
  fruittree FRUITTREE_AZALEA_TOWN

ViridianForestWildTreeMon:
  readvar VAR_WEEKDAY
  showemote EMOTE_SHOCK, PLAYER, 15
  opentext
  writetext ViridianForestWildCryText
  pause 15
  cry PINSIR
  closetext
  loadwildmon PINSIR, 30
  loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
  startbattle
  ifequal LOSE, .NotBeaten
  disappear LAKEOFRAGE_GYARADOS
.NotBeaten:
  reloadmapafterbattle
  opentext
  giveitem RED_SCALE
  waitsfx
  writetext LakeOfRageGotRedScaleText
  playsound SFX_ITEM
  waitsfx
  itemnotify
  closetext

ViridianForestHiddenSilverpowder:
	hiddenitem SILVERPOWDER, EVENT_VIRIDIAN_FOREST_HIDDEN_SILVERPOWDER

ViridianForestHiddenMiracleSeed:
	hiddenitem MIRACLE_SEED, EVENT_VIRIDIAN_FOREST_HIDDEN_MIRACLE_SEED

ViridianForestHiddenPoisonBarb:
	hiddenitem POISON_BARB, EVENT_VIRIDIAN_FOREST_HIDDEN_POISON_BARB

ViridianForestSignpost:
	jumptext ViridianForestSignpostText




ViridianForestShrineScript:
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .ForestIsRestless
	sjump .DontDoCelebiEvent

.ForestIsRestless:
	checkitem GS_BALL
	iftrue .AskCelebiEvent
.DontDoCelebiEvent:
	jumptext Text_ViridianForestShrine

.AskCelebiEvent:
	opentext
	writetext Text_ShrineCelebiEvent
	yesorno
	iftrue .CelebiEvent
	closetext
	end

.CelebiEvent:
	takeitem GS_BALL
	clearevent EVENT_FOREST_IS_RESTLESS
	setevent EVENT_AZALEA_TOWN_KURT
	disappear VIRIDIANFOREST_LASS
	clearevent EVENT_ROUTE_34_VIRIDIAN_FOREST_GATE_LASS
	writetext Text_InsertGSBall
	waitbutton
	closetext
	pause 20
	showemote EMOTE_SHOCK, PLAYER, 20
	special FadeOutMusic
	applymovement PLAYER, ViridianForestPlayerStepsDownMovement
	pause 30
	turnobject PLAYER, DOWN
	pause 20
	clearflag ENGINE_FOREST_IS_RESTLESS
	special CelebiShrineEvent
	loadwildmon CELEBI, 30
	startbattle
	reloadmapafterbattle
	pause 20
	special CheckCaughtCelebi
	iffalse .DidntCatchCelebi
	appear VIRIDIANFOREST_KURT
	applymovement VIRIDIANFOREST_KURT, ViridianForestKurtStepsUpMovement
	opentext
	writetext Text_KurtCaughtCelebi
	waitbutton
	closetext
	applymovement VIRIDIANFOREST_KURT, ViridianFOrestKurtStepsDownMovement
	disappear VIRIDIANFOREST_KURT
.DidntCatchCelebi:
	end


ViridianForestSignpostText:
	text "VIRIDIAN FOREST is"
	line "a natural maze,"

	para "filled with nature"
	line "and #MON."

	para "WARNING: many"
	line "people become"
	cont "lost inside."
	done

BugCatcherArthurSeenText:
	text "I'm on the lookout"
	line "for rare Bug-type"
  cont "#MON!"
	done

BugCatcherArthurBeatenText:
	text "What? My awesome"
  line "bugs lost!"
	done

BugCatcherArthurAfterBattleText:
	text "BUG CATCHERS like"
	line "me are experts at"
	cont "catching #MON."
	done

BugCatcherManuelSeenText:
	text "You are going to"
	line "get lost in this"
  cont "forest."
	done

BugCatcherManuelBeatenText:
	text "I see. Your senses"
  line "are keen."
	done

BugCatcherManuelAfterBattleText:
	text "Bug #MON have"
	line "great perception"
	cont "skills."

  para "I will never get"
  line "lost here."
	done

CooltrainerfJoanaSeenText:
	text "This forest is"
	line "known for its rare"
  cont "#MON."

  para "Wanna see some?"
	done

CooltrainerfJoanaBeatenText:
	text "Oh, no!"
	done

CooltrainerfJoanaAfterBattleText:
	text "Dense forests like"
	line "this hold many"
	cont "secrets."
	done

CooltrainermErickSeenText:
	text "Strong trainers"
	line "are bound to meet"

  para "in the most inter-"
  line "esting places."
	done

CooltrainermErickBeatenText:
	text "I was right about"
  line "you."
	done

CooltrainermErickAfterBattleText:
	text "Some #MON show"
	line "up sometimes,"

	para "guarding the berry"
  line "trees."
	done

ViridianForestWildCryText:
  text "A growling sound"
  line "comes toward the"
  cont "berry tree."
  done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2, 6
	warp_event  4,  0, ROUTE_2, 6
	warp_event 17, 53, ROUTE_2, 7
	warp_event 18, 53, ROUTE_2, 7

	def_coord_events

	def_bg_events
	bg_event  5,  5, BGEVENT_READ, ViridianForestSignpost
  bg_event 19, 47, BGEVENT_READ, ViridianForestSignpost
	bg_event 23, 27, BGEVENT_ITEM, ViridianForestHiddenSilverpowder
	bg_event 20, 21, BGEVENT_ITEM, ViridianForestHiddenMiracleSeed
	bg_event 13, 21, BGEVENT_ITEM, ViridianForestHiddenPoisonBarb

	def_object_events
	object_event  3, 38, SPRITE_BULBASAUR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestBulbasaurScript, EVENT_VIRIDIAN_FOREST_BULBASAUR
	object_event  5, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherArthur, -1
  object_event 27, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherManuel, -1
	object_event  4, 45, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfJoana, -1
	object_event 18, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermErick, -1
  object_event  3, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestFullHeal, EVENT_VIRIDIAN_FOREST_FULL_HEAL
	object_event 10, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
	object_event 14, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestCarbos, EVENT_VIRIDIAN_FOREST_CARBOS
	object_event 37, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestElixer, EVENT_VIRIDIAN_FOREST_ELIXER
	object_event  2, 38, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree1, -1
	object_event 27, 50, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree2, -1
	object_event 35, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree3, -1
