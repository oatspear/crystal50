	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_GOLDENRODGYM_NOTHING
	scene_script .DummyScene1 ; SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_HM03_FACADE
	iftrue .GotFacade
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem HM_FACADE
	iffalse .NoRoomForFacade
	setevent EVENT_GOT_HM03_FACADE
	writetext WhitneyFacadeText
	waitbutton
	closetext
	end

.GotFacade:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForFacade:
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_WHITNEY, HEAL_BELL, POKE_DOLL, LassCarrieTutorText, LassCarrieTutorThanksText, LassCarrieTutorRefusedText

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOTHING
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_WHITNEY, DRAIN_KISS, CALCIUM, LassBridgetTutorText, LassBridgetTutorThanksText, LassBridgetTutorRefusedText

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_WHITNEY, ATTRACT, PECHA_BERRY, BeautyVictoriaTutorText, BeautyVictoriaTutorThanksText, BeautyVictoriaTutorRefusedText

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	gymtutor EVENT_BEAT_WHITNEY, SLASH, PINK_BOW, BeautySamanthaTutorText, BeautySamanthaTutorThanksText, BeautySamanthaTutorRefusedText

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "Hi! I'm WHITNEY!"

	para "Everyone was into"
	line "#MON, so I got"
	cont "into it too!"

	para "#MON are"
	line "super-cute!"

	para "You want to bat-"
	line "tle? I'm warning"
	cont "you--I'm good!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Sob…"

	para "…Waaaaaaah!"
	line "You're mean!"

	para "You shouldn't be"
	line "so serious! You…"
	cont "you child, you!"
	done

WhitneyYouMeanieText:
	text "Waaaaah!"

	para "Waaaaah!"

	para "…Snivel, hic…"
	line "…You meanie!"
	done

WhitneyWhatDoYouWantText:
	text "…Sniff…"

	para "What? What do you"
	line "want? A BADGE?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "PLAINBADGE."
	done

WhitneyPlainBadgeText:
	text "PLAINBADGE lets"
	line "your #MON use"

	para "STRENGTH outside"
	line "of battle."

	para "Oh, you can have"
	line "this too!"
	done

WhitneyFacadeText:
	text "It's FACADE!"
	line "It makes full use"

	para "of a #MON's"
	line "strength when"
	cont "it looks most"
	cont "vulnerable."

	para "Isn't it just per-"
	line "fect for a cutie"
	cont "like me?"
	done

WhitneyGoodCryText:
	text "Ah, that was a"
	line "good cry!"

	para "Come for a visit"
	line "again! Bye-bye!"
	done

LassCarrieSeenText:
	text "Don't let my"
	line "#MON's cute"

	para "looks fool you."
	line "They can whip you!"
	done

LassCarrieBeatenText:
	text "Darn… I thought"
	line "you were weak…"
	done

LassCarrieAfterBattleText:
	text "I should get a"
	line "#DOLL, for my"
	cont "cute #MON to"
	cont "play with!"
	done

LassCarrieTutorText:
	text "Oh! You have one!"
	line "Can we have it?"

	para "I'll teach you"
	line "our cute move,"
	cont "HEAL BELL!"
	done

LassCarrieTutorThanksText:
	text "This move is so"
	line "cute that it even"
	cont "heals sick #MON!"
	done

LassCarrieTutorRefusedText:
	text "You don't like it?"
	line "Okay…"
	done

LassBridgetSeenText:
	text "I like cute #-"
	line "MON better than"
	cont "strong #MON."

	para "But I have strong"
	line "and cute #MON!"
	done

LassBridgetBeatenText:
	text "Oh, no, no, no!"
	done

LassBridgetAfterBattleText:
	text "I'm trying to beat"
	line "WHITNEY, but…"
	cont "It's depressing."

	para "I'm okay! If I"
	line "lose, I'll just"

	para "try harder next"
	line "time! Maybe some"
	cont "CALCIUM will make"
	cont "my #MON stronger!"
	done

LassBridgetTutorText:
	text "If you get me some"
	line "I will make your"
	cont "cute #MON strong"
	cont "too!"

	para "I'll teach them"
	line "DRAIN KISS!"
	done

LassBridgetTutorThanksText:
	text "I knew you would"
	line "not let us down!"
	done

LassBridgetTutorRefusedText:
	text "No? Well, that's"
	line "also depressing…"
	done

BridgetWhitneyCriesText:
	text "Oh, no. You made"
	line "WHITNEY cry."

	para "It's OK. She'll"
	line "stop soon. She"

	para "always cries when"
	line "she loses."
	done

BeautyVictoriaSeenText:
	text "Oh, you are a cute"
	line "little trainer! "

	para "I like you, but I"
	line "won't hold back!"
	done

BeautyVictoriaBeatenText:
	text "Let's see… Oops,"
	line "it's over?"
	done

BeautyVictoriaAfterBattleText:
	text "Wow, you must be"
	line "good to break"
	cont "through ATTRACT!"

	para "I love this move"
	line "almost as much as"
	cont "I love PECHA"
	cont "BERRIES."
	done

BeautyVictoriaTutorText:
	text "Oh! You have some!"
	line "Can I have one?"

	para "I'll let you in on"
	line "the secrets of"
	cont "ATTRACT."
	done

BeautyVictoriaTutorThanksText:
	text "Thanks!"
	line "Keep it up!"
	done

BeautyVictoriaTutorRefusedText:
	text "Not everyone ap-"
	line "preciates beauty"
	cont "the same way."
	done

BeautySamanthaSeenText:
	text "Give it your best"
	line "shot, or I'll take"
	cont "you down!"
	done

BeautySamanthaBeatenText:
	text "No! Oh, MEOWTH,"
	line "I'm so sorry!"
	done

BeautySamanthaAfterBattleText:
	text "I taught MEOWTH"
	line "moves for taking"
	cont "on any type…"

	para "They probably need"
	line "a PINK BOW to get"
	cont "that extra power…"
	done

BeautySamanthaTutorText:
	text "Would you be a"
	line "cutie and get one"
	cont "for me?"

	para "I'll teach you our"
	line "special: SLASH!"
	done

BeautySamanthaTutorThanksText:
	text "Even cute #MON"
	line "hide deadly claws!"
	done

BeautySamanthaTutorRefusedText:
	text "Pretty please?"
	done

GoldenrodGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "This GYM is home"
	line "to normal-type"
	cont "#MON trainers."

	para "I recommend you"
	line "use fighting-type"
	cont "#MON."
	done

GoldenrodGymGuideWinText:
	text "You won? Great! I"
	line "was busy admiring"
	cont "the ladies here."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
