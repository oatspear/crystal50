  object_const_def
  const MOUNTMORTARB2F_POKE_BALL1
  const MOUNTMORTARB2F_POKE_BALL2
  ; const MOUNTMORTARB2F_BOULDER
  ; const MOUNTMORTARB2F_KIYO
  const MOUNTMORTARB2F_POKE_BALL3
  ; const MOUNTMORTARB2F_POKE_BALL4
  ; const MOUNTMORTARB2F_POKE_BALL5

MountMortarB2F_MapScripts:
  def_scene_scripts

  def_callbacks

MountMortarB2FFireStone:
	itemball FIRE_STONE

MountMortarB2FTM30Scald:
  itemball TM_SCALD

MountMortarB2FRevive:
  itemball REVIVE

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
  ; object_event  9, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB1FBoulder, -1
  ; object_event 16,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortarB1FKiyoScript, -1
  object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB2FRevive, EVENT_MOUNT_MORTAR_B2F_REVIVE
  ; object_event 32,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FMaxEther, EVENT_MOUNT_MORTAR_B1F_MAX_ETHER
  ; object_event 21, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FPPUp, EVENT_MOUNT_MORTAR_B1F_PP_UP
