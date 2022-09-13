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
	callback MAPCALLBACK_OBJECTS, .WildMonCallback

.WildMonCallback:
	; setevent EVENT_BEAT_BUG_CATCHER_ARTHUR
	; setevent EVENT_BEAT_BUG_CATCHER_MANUEL
	; setevent EVENT_BEAT_COOLTRAINERF_JOANA
	; setevent EVENT_BEAT_COOLTRAINERM_ERICK
	; setflag ENGINE_HIVEBADGE
	; setflag ENGINE_FOGBADGE
	; setflag ENGINE_STORMBADGE
	; opentext
	; givepoke AERODACTYL, 40
	; writetext ViridianForestWildCryText
	; waitbutton
	; closetext
	checkflag ENGINE_VIRIDIAN_FOREST_WILD_MON
	iftrue .Static
	random 4
	ifequal  1, .PositionOne
	ifequal  2, .PositionTwo
	ifequal  3, .PositionThree
; else
  moveobject VIRIDIAN_FOREST_BULBASAUR, 20, 27
	appear VIRIDIAN_FOREST_BULBASAUR
.Static:
	endcallback

.PositionOne:
	moveobject VIRIDIAN_FOREST_BULBASAUR, 3, 38
	appear VIRIDIAN_FOREST_BULBASAUR
	endcallback

.PositionTwo:
	moveobject VIRIDIAN_FOREST_BULBASAUR, 27, 51
	appear VIRIDIAN_FOREST_BULBASAUR
	endcallback

.PositionThree:
	moveobject VIRIDIAN_FOREST_BULBASAUR, 35, 16
	appear VIRIDIAN_FOREST_BULBASAUR
	endcallback

ViridianForestBulbasaurScript:
  opentext
  writetext ViridianForestBulbasaurCryText
  pause 15
  cry BULBASAUR
  closetext
  loadwildmon BULBASAUR, 12
  loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
  random 128
  ifequal 1, .Battle
  loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
.Battle:
  startbattle
  ifequal LOSE, .NotBeaten
  disappear VIRIDIAN_FOREST_BULBASAUR
.NotBeaten:
  reloadmapafterbattle
  setflag ENGINE_VIRIDIAN_FOREST_WILD_MON
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
  checkflag ENGINE_VIRIDIAN_FOREST_FRUIT_TREE_MON
  iftrue .NoWildmon
  scall ViridianForestFruitTreeMon
.NoWildmon
  fruittree FRUITTREE_VIRIDIAN_FOREST_1

ViridianForestFruitTree2:
  checkflag ENGINE_VIRIDIAN_FOREST_FRUIT_TREE_MON
  iftrue .NoWildmon
  scall ViridianForestFruitTreeMon
.NoWildmon
  fruittree FRUITTREE_VIRIDIAN_FOREST_2

ViridianForestFruitTreeMon:
  opentext
  writetext ViridianForestWildCryText
  pause 15
  showemote EMOTE_SHOCK, PLAYER, 15
  readvar VAR_WEEKDAY
  ; ifequal MONDAY, .LoadMon1
  ifequal TUESDAY, .LoadMon2
  ; ifequal WEDNESDAY, .LoadMon1
  ifequal THURSDAY, .LoadMon3
  ifequal FRIDAY, .LoadMon2
  ifequal SATURDAY, .LoadMon3
  ifequal SUNDAY, .LoadMon4
  cry PINSIR
  closetext
  loadwildmon PINSIR, 24
  sjump .GetShinyOdds
.LoadMon2
  cry KANGASKHAN
  closetext
  loadwildmon KANGASKHAN, 24
  sjump .GetShinyOdds
.LoadMon3
  cry LICKITUNG
  closetext
  loadwildmon LICKITUNG, 24
  sjump .GetShinyOdds
.LoadMon4
  cry SCYTHER
  closetext
  loadwildmon SCYTHER, 24
  ; fallthrough
.GetShinyOdds
; 1 in 8 chance to be shiny
  loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
  random 8
  ifequal 1, .Battle
  loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
.Battle
  setflag ENGINE_VIRIDIAN_FOREST_FRUIT_TREE_MON
  startbattle
  reloadmapafterbattle
  end

ViridianForestFakeFruitTree:
  showemote EMOTE_SHOCK, PLAYER, 15
  opentext
  writetext ViridianForestTreeFullOfMonsText
  promptbutton
  readvar VAR_WEEKDAY
  ifless TUESDAY, .LoadMon1
  ifless THURSDAY, .LoadMon2
  ifless SATURDAY, .LoadMon3
  cry PIKACHU
  loadwildmon PIKACHU, 12
  sjump .Battle
.LoadMon1
  cry BUTTERFREE
  loadwildmon BUTTERFREE, 14
  sjump .Battle
.LoadMon2
  cry BEEDRILL
  loadwildmon BEEDRILL, 14
  sjump .Battle
.LoadMon3
  cry PIDGEOTTO
  loadwildmon PIDGEOTTO, 16
  ; fallthrough
.Battle
  writetext ViridianForestTreeMonAttackedText
  promptbutton
  closetext
  loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
  startbattle
  reloadmapafterbattle
  end

ViridianForestHiddenSilverpowder:
	hiddenitem SILVERPOWDER, EVENT_VIRIDIAN_FOREST_HIDDEN_SILVERPOWDER

ViridianForestHiddenMiracleSeed:
	hiddenitem MIRACLE_SEED, EVENT_VIRIDIAN_FOREST_HIDDEN_MIRACLE_SEED

ViridianForestHiddenPoisonBarb:
	hiddenitem POISON_BARB, EVENT_VIRIDIAN_FOREST_HIDDEN_POISON_BARB

ViridianForestSignpost:
	jumptext ViridianForestSignpostText

ViridianForestBulbasaurCryText:
  text "BULBASAUR: Saaaur!"
  done

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

ViridianForestTreeFullOfMonsText:
  text "The berry tree is"
  line "full of #MON!"
  done

ViridianForestTreeMonAttackedText:
  text "The wild #MON"
  line "attacked!"
  done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ROUTE_2, 6
	warp_event 15, 52, ROUTE_2, 8
	warp_event 15, 53, ROUTE_2, 8

	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_READ, ViridianForestSignpost
	bg_event 17, 45, BGEVENT_READ, ViridianForestSignpost
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
	object_event 35, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFakeFruitTree, -1
