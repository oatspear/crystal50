; MobileEZChatCategoryPointers indexes (see mobile/fixed_words.asm)
	const_def
	const EZCHAT_POKEMON
	const EZCHAT_TYPES
	const EZCHAT_GREETINGS
	const EZCHAT_PEOPLE
	const EZCHAT_BATTLE
	const EZCHAT_EXCLAMATIONS
	const EZCHAT_CONVERSATION
	const EZCHAT_FEELINGS
	const EZCHAT_CONDITIONS
	const EZCHAT_LIFE
	const EZCHAT_HOBBIES
	const EZCHAT_ACTIONS
	const EZCHAT_TIME
	const EZCHAT_FAREWELLS
	const EZCHAT_THISANDTHAT

DEF NUM_KANA EQU 45 ; length of SortedPokemon table (see mobile/fixed_words.asm)

DEF MOBILE_LOGIN_PASSWORD_LENGTH EQU 17
DEF MOBILE_PHONE_NUMBER_LENGTH EQU 20

; Maximum amount of time allowed for mobile battles each day
DEF MOBILE_BATTLE_ALLOWED_SECONDS EQU 0
DEF MOBILE_BATTLE_ALLOWED_MINUTES EQU 10
