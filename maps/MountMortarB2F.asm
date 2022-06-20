  object_const_def
  const MOUNTMORTARB2F_POKE_BALL1
  const MOUNTMORTARB2F_POKE_BALL2
  const MOUNTMORTARB2F_POKE_BALL3
  const MOUNTMORTARB2F_BOULDER
  const MOUNTMORTARB2F_ROCK1
  const MOUNTMORTARB2F_ROCK2
  const MOUNTMORTARB2F_KAI
  const MOUNTMORTARB2F_DAISUKE

MountMortarB2F_MapScripts:
  def_scene_scripts

  def_callbacks

MountMortarB2FFireStone:
	itemball FIRE_STONE

MountMortarB2FTM30Scald:
  itemball TM_SCALD

MountMortarB2FRevive:
  itemball REVIVE

MountMortarB2FBoulder:
  jumpstd StrengthBoulderScript

MountMortarB2FRock1:
  jumpstd SmashRockScript

MountMortarB2FRock2:
  jumpstd SmashRockScript

TrainerFirebreatherKai:
  trainer FIREBREATHER, KAI, EVENT_BEAT_FIREBREATHER_KAI, FirebreatherKaiSeenText, FirebreatherKaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherKaiAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackbeltDaisuke:
  trainer BLACKBELT_T, DAISUKE, EVENT_BEAT_BLACKBELT_DAISUKE, BlackbeltDaisukeSeenText, BlackbeltDaisukeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltDaisukeAfterBattleText
	waitbutton
	closetext
	end

FirebreatherKaiSeenText:
  text "The intense heat"
  line "down here is"

  para "perfect to train"
  line "my #MON."
  done

FirebreatherKaiBeatenText:
  text "Looks like you"
  line "are fired up!"
  done

FirebreatherKaiAfterBattleText:
  text "Nothing like a"
  line "volcanic sauna"
  cont "to relax."
  done

BlackbeltDaisukeSeenText:
  text "Do you think the"
  line "heat will slow"
  cont "down my training?"

  para "I'll show you"
  line "just how tough"
  cont "my #MON are!"
  done

BlackbeltDaisukeBeatenText:
  text "You gave it your"
  line "all, despite the"
  cont "harsh conditions."

  para "Well done. You've"
  line "got some guts."
  done

BlackbeltDaisukeAfterBattleText:
  text "Beware the burns"
  line "caused by so many"
  cont "fire-type #MON."
  done

MountMortarB2F_MapEvents:
  db 0, 0 ; filler

  def_warp_events
  warp_event 21, 13, MOUNT_MORTAR_B1F, 3
  warp_event 35, 11, MOUNT_MORTAR_B1F, 4

  def_coord_events

  def_bg_events
  ; bg_event  4,  6, BGEVENT_ITEM, MountMortarB1FHiddenMaxRevive

  def_object_events
  object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB2FFireStone, EVENT_MOUNT_MORTAR_B2F_FIRE_STONE
  object_event 14,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB2FTM30Scald, EVENT_MOUNT_MORTAR_B2F_TM_SCALD
  object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB2FRevive, EVENT_MOUNT_MORTAR_B2F_REVIVE
  object_event  7,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB2FBoulder, -1
  object_event 23, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB2FRock1, -1
  object_event  2,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB2FRock2, -1
  object_event  9,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherKai, -1
  object_event 27,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltDaisuke, -1
