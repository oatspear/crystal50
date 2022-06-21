	object_const_def
	const LAKEOFRAGEENERGYBALLHOUSE_FISHER

LakeOfRageEnergyBallHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EnergyBallGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM24_ENERGY_BALL
	iftrue .AlreadyGotItem
	writetext EnergyBallGuyText1
	promptbutton
	verbosegiveitem TM_ENERGY_BALL
	iffalse .Done
	setevent EVENT_GOT_TM24_ENERGY_BALL
	writetext EnergyBallGuyText2
	waitbutton
	closetext
	end
.AlreadyGotItem:
	writetext EnergyBallGuyText3
	waitbutton
.Done:
	closetext
	end

EnergyBallHouseBookshelf:
	jumpstd DifficultBookshelfScript

EnergyBallGuyText1:
	text "…You have strayed"
	line "far…"

	para "Here I have medi-"
	line "tated. I have"

	para "found how #MON"
	line "harness the power"
	cont "of nature itself."

	para "Let me share"
	line "this power with"

	para "your #MON."
	line "Take this, child."
	done

EnergyBallGuyText2:
	text "Do you see it? It"
	line "is ENERGY BALL!"

	para "It draws out the"
	line "power of #MON"
	cont "attuned to nature"
	cont "for attacking."
	done

EnergyBallGuyText3:
	text "I am meditating…"
	done

LakeOfRageEnergyBallHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, EnergyBallHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, EnergyBallHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EnergyBallGuy, -1
