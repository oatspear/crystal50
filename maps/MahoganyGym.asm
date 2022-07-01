	object_const_def
	const MAHOGANYGYM_PRYCE
	const MAHOGANYGYM_BEAUTY1
	const MAHOGANYGYM_ROCKER1
	const MAHOGANYGYM_BEAUTY2
	const MAHOGANYGYM_ROCKER2
	const MAHOGANYGYM_ROCKER3
	const MAHOGANYGYM_GYM_GUIDE

MahoganyGym_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	readvar VAR_BADGES
	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_HM07_AVALANCHE
	iftrue PryceScript_Defeat
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegiveitem HM_AVALANCHE
	iffalse MahoganyGym_NoRoomForAvalanche
	setevent EVENT_GOT_HM07_AVALANCHE
	writetext PryceText_AvalancheSpeech
	waitbutton
	closetext
	end

PryceScript_Defeat:
	writetext PryceText_CherishYourPokemon
	waitbutton
MahoganyGym_NoRoomForAvalanche:
	closetext
	end

MahoganyGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSkierRoxanne:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_PRYCE, HAIL, NEVERMELTICE, SkierRoxanneTutorText, SkierRoxanneTutorThanksText, SkierRoxanneTutorRefusedText

TrainerSkierClarissa:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierClarissaAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_PRYCE, AURORA_BEAM, LEMONADE, SkierClarissaTutorText, SkierClarissaTutorThanksText, SkierClarissaTutorRefusedText

TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_PRYCE, ICE_FANG, NEVERMELTICE, BoarderRonaldTutorText, BoarderRonaldTutorThanksText, BoarderRonaldTutorRefusedText

TrainerBoarderBrad:
	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBradAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_PRYCE, ICE_SHARD, FRESH_WATER, BoarderBradTutorText, BoarderBradTutorThanksText, BoarderBradTutorRefusedText

TrainerBoarderDouglas:
	trainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderDouglasAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_PRYCE, ICY_WIND, CARBOS, BoarderDouglasTutorText, BoarderDouglasTutorThanksText, BoarderDouglasTutorRefusedText

MahoganyGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuideWinScript
	writetext MahoganyGymGuideText
	waitbutton
	closetext
	end

.MahoganyGymGuideWinScript:
	writetext MahoganyGymGuideWinText
	waitbutton
	closetext
	end

MahoganyGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd GymStatue2Script

PryceText_Intro:
	text "#MON have many"
	line "experiences in"

	para "their lives, just "
	line "like we do. "

	para "I, too, have seen"
	line "and suffered much"
	cont "in my life."

	para "Since I am your"
	line "elder, let me show"
	cont "you what I mean."

	para "I have been with"
	line "#MON since"

	para "before you were"
	line "born."

	para "I do not lose"
	line "easily."

	para "I, PRYCE--the"
	line "winter trainer--"

	para "shall demonstrate"
	line "my power!"
	done

PryceText_Impressed:
	text "Ah, I am impressed"
	line "by your prowess."

	para "With your strong"
	line "will, I know you"

	para "will overcome all"
	line "life's obstacles."

	para "You are worthy of"
	line "this BADGE!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> received"
	line "GLACIERBADGE."
	done

PryceText_GlacierBadgeSpeech:
	text "That BADGE lets"
	line "your #MON use"
	cont "WHIRLPOOL out of"
	cont "battle to cross"
	cont "real whirlpools."

	para "Like a glacier,"
	line "it stills the"
	cont "raging water."

	para "And this… This is"
	line "a gift from me!"
	done

PryceText_AvalancheSpeech:
	text "That HM contains"
	line "AVALANCHE."

	para "It takes time to"
	line "build up, but it"
	cont "inflicts more"

	para "damage if the"
	line "opponent hurts"
	cont "your #MON."

	para "It demonstrates"
	line "the harshness of"
	cont "winter."
	done

PryceText_CherishYourPokemon:
	text "When the ice and"
	line "snow melt, spring"
	cont "arrives."

	para "You and your #-"
	line "MON will be to-"

	para "gether for many"
	line "years to come."

	para "Cherish your time"
	line "together!"
	done

BoarderRonaldSeenText:
	text "I'll freeze your"
	line "#MON, so you"
	cont "can't do a thing!"
	done

BoarderRonaldBeatenText:
	text "Darn. I couldn't"
	line "do a thing."
	done

BoarderRonaldAfterBattleText:
	text "NEVERMELTICE is"
	line "great for the GYM"

	para "floor, but also"
	cont "for our #MON!"
	done

BoarderRonaldTutorText:
	text "Do you have some?"
	line "We never get too"
	cont "much of it!"

	para "I'll teach you the"
	line "chilling ICE FANG!"
	done

BoarderRonaldTutorThanksText:
	text "You're so cool!"
	done

BoarderRonaldTutorRefusedText:
	text "B-but it's such"
	line "a cool move!"
	done

BoarderBradSeenText:
	text "This GYM has a"
	line "slippery floor."

	para "It's great,"
	line "isn't it?"

	para "I love boarding"
	line "with my #MON!"
	done

BoarderBradBeatenText:
	text "I see you're not"
	line "playing around!"
	done

BoarderBradAfterBattleText:
	text "Watch out for the"
	line "low temperatures."

	para "FRESH WATER will"
	line "freeze in here!"
	done

BoarderBradTutorText:
	text "If you bring me"
	line "some, I'll show"

	para "you how to turn"
	line "it into a million"
	cont "ICE SHARDS!"
	done

BoarderBradTutorThanksText:
	text "Cool, isn't it?"
	done

BoarderBradTutorRefusedText:
	text "It's a cool trick,"
	line "I promise!"
	done

BoarderDouglasSeenText:
	text "The secret behind"
	line "PRYCE's power…"

	para "He meditates under"
	line "a waterfall daily"

	para "to strengthen his"
	line "mind and body."

	para "That's how he can"
	line "withstand the icy"
	cont "winds of winter!"
	done

BoarderDouglasBeatenText:
	text "How did you do it?"
	done

BoarderDouglasAfterBattleText:
	text "The icy winds make"
	line "it harder to move."

	para "That's why I love"
	line "the speed boost of"
	cont "CARBOS!"
	done

BoarderDouglasTutorText:
	text "Tell you what, for"
	line "some CARBOS, I can"

	para "teach you how to"
	line "summon ICY WINDS."
	done

BoarderDouglasTutorThanksText:
	text "I'll be faster"
	line "than ever now!"
	done

BoarderDouglasTutorRefusedText:
	text "That's cold."
	done

SkierRoxanneSeenText:
	text "To get to PRYCE,"
	line "our GYM LEADER,"

	para "you need to think"
	line "before you skate."
	done

SkierRoxanneBeatenText:
	text "I wouldn't lose to"
	line "you in skiing!"
	done

SkierRoxanneAfterBattleText:
	text "This ice never"
	line "melts, just like"
	cont "NEVERMELTICE!"

	para "But it still needs"
	line "repairing, from"
	cont "all the skating."
	done

SkierRoxanneTutorText:
	text "Do you have some"
	line "you could donate?"

	para "I'll teach you"
	line "how to summon"
	cont "powerful HAIL!"
	done

SkierRoxanneTutorThanksText:
	text "Great! Now I can"
	line "ski some more!"
	done

SkierRoxanneTutorRefusedText:
	text "Don't you like"
	line "ice skating?"
	done

SkierClarissaSeenText:
	text "Check out these"
	line "gorgeous auroras!"
	done

SkierClarissaBeatenText:
	text "No! My lovely"
	line "winter lights!"
	done

SkierClarissaAfterBattleText:
	text "I should pay more"
	line "attention to the"
	cont "battles…"

	para "But I just love an"
	line "ice-cold LEMONADE"
	cont "while watching"
	cont "the auroras…"
	done

SkierClarissaTutorText:
	text "If you fetch me"
	line "some, I'll teach"
	cont "you how to summon"
	cont "the winter lights!"
	done

SkierClarissaTutorThanksText:
	text "Lovely!"
	done

SkierClarissaTutorRefusedText:
	text "Shame…"
	done

MahoganyGymGuideText:
	text "PRYCE is a veteran"
	line "who has trained"

	para "#MON for some"
	line "50 years."

	para "He's said to be"
	line "good at freezing"

	para "opponents with"
	line "ice-type moves."

	para "That means you"
	line "should melt him"

	para "with your burning"
	line "ambition!"
	done

MahoganyGymGuideWinText:
	text "PRYCE is some-"
	line "thing, but you're"
	cont "something else!"

	para "That was a hot"
	line "battle that"

	para "bridged the gen-"
	line "eration gap!"
	done

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  4,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierRoxanne, -1
	object_event  0, 17, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1
	object_event  9, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierClarissa, -1
	object_event  5,  9, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBrad, -1
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderDouglas, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuideScript, -1
