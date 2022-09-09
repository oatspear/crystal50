AI_Redundant:
; Check if move effect c will fail because it's already been used.
; Return z if the move is a good choice.
; Return nz if the move is a bad choice.
	ld a, c
	ld de, 3
	ld hl, .Moves
	call IsInArray
	jp nc, .NotRedundant
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Moves:
	dbw EFFECT_DREAM_EATER,     .DreamEater
	dbw EFFECT_HEAL,            .Heal
	dbw EFFECT_ROOST,           .Roost
	dbw EFFECT_LIGHT_SCREEN,    .LightScreen
	dbw EFFECT_MIST,            .Mist
	dbw EFFECT_FOCUS_ENERGY,    .FocusEnergy
	dbw EFFECT_CONFUSE,         .Confuse
	dbw EFFECT_TRANSFORM,       .Transform
	dbw EFFECT_REFLECT,         .Reflect
	dbw EFFECT_SUBSTITUTE,      .Substitute
	dbw EFFECT_LEECH_SEED,      .LeechSeed
	dbw EFFECT_DISABLE,         .Disable
	dbw EFFECT_ENCORE,          .Encore
	dbw EFFECT_SLEEP_TALK,      .SleepTalk
	dbw EFFECT_MEAN_LOOK,       .MeanLook
	dbw EFFECT_SPIKES,          .Spikes
	dbw EFFECT_PERISH_SONG,     .PerishSong
	dbw EFFECT_SANDSTORM,       .Sandstorm
	dbw EFFECT_ATTRACT,         .Attract
	dbw EFFECT_SAFEGUARD,       .Safeguard
	dbw EFFECT_RAIN_DANCE,      .RainDance
	dbw EFFECT_SUNNY_DAY,       .SunnyDay
	dbw EFFECT_TELEPORT,        .Teleport
	dbw EFFECT_MORNING_SUN,     .MorningSun
	dbw EFFECT_SYNTHESIS,       .Synthesis
	dbw EFFECT_MOONLIGHT,       .Moonlight
	dbw EFFECT_SWAGGER,         .Swagger
	dbw EFFECT_FUTURE_SIGHT,    .FutureSight
	dbw EFFECT_HAIL,            .Hail
	dbw EFFECT_OFFENSES_UP,     .OffensesUp
	dbw EFFECT_DEFENSES_UP,     .DefensesUp
	dbw EFFECT_SPEED_UP,        .SpeedUp
	dbw EFFECT_PROWESS_UP,      .ProwessUp
	dbw EFFECT_ACCURACY_UP,     .AccuracyUp
	dbw EFFECT_EVASION_UP,      .EvasionUp
	dbw EFFECT_OFFENSES_UP_2,   .OffensesUp
	dbw EFFECT_DEFENSES_UP_2,   .DefensesUp
	dbw EFFECT_SPEED_UP_2,      .SpeedUp
	dbw EFFECT_ACCURACY_UP_2,   .AccuracyUp
	dbw EFFECT_EVASION_UP_2,    .EvasionUp
	dbw EFFECT_OFFENSES_DOWN,   .OffensesDown
	dbw EFFECT_DEFENSES_DOWN,   .DefensesDown
	dbw EFFECT_SPEED_DOWN,      .SpeedDown
	dbw EFFECT_ACCURACY_DOWN,   .AccuracyDown
	dbw EFFECT_EVASION_DOWN,    .EvasionDown
	dbw EFFECT_OFFENSES_DOWN_2, .OffensesDown
	dbw EFFECT_DEFENSES_DOWN_2, .DefensesDown
	dbw EFFECT_SPEED_DOWN_2,    .SpeedDown
	dbw EFFECT_ACCURACY_DOWN_2, .AccuracyDown
	dbw EFFECT_EVASION_DOWN_2,  .EvasionDown
	db -1

.LightScreen:
	ld a, [wEnemyScreens]
	bit SCREENS_LIGHT_SCREEN, a
	ret

.Mist:
	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_MIST, a
	ret

.FocusEnergy:
	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_FOCUS_ENERGY, a
	ret

.Confuse:
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	ret nz
	ld a, [wPlayerScreens]
	bit SCREENS_SAFEGUARD, a
	ret

.Transform:
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	ret

.Reflect:
	ld a, [wEnemyScreens]
	bit SCREENS_REFLECT, a
	ret

.Substitute:
	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_SUBSTITUTE, a
	ret

.LeechSeed:
	ld a, [wPlayerSubStatus4]
	bit SUBSTATUS_LEECH_SEED, a
	ret

.Disable:
	ld a, [wPlayerDisableCount]
	and a
	ret

.Encore:
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_ENCORED, a
	ret

.SleepTalk:
	ld a, [wEnemyMonStatus]
	and SLP_BIT
	jp z, .Redundant
	jp .NotRedundant

.MeanLook:
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	ret

.Safeguard:
	ld a, [wEnemyScreens]
	bit SCREENS_SAFEGUARD, a
	ret

.Swagger:
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	ret

.FutureSight:
	ld a, [wEnemyFutureSightCount]
	and a
	ret

.Spikes:
	ld a, [wPlayerScreens]
	and SCREENS_SPIKES_MASK
	cp SPIKES_3_LAYERS
	jp z, .Redundant
	jp .NotRedundant

.PerishSong:
	ld a, [wPlayerSubStatus1]
	bit SUBSTATUS_PERISH, a
	ret

.Sandstorm:
	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	jp z, .Redundant
	jp .NotRedundant

.Attract:
	farcall CheckOppositeGender
	jp c, .Redundant
	ld a, [wPlayerSubStatus1]
	bit SUBSTATUS_IN_LOVE, a
	ret

.RainDance:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jp z, .Redundant
	jp .NotRedundant

.SunnyDay:
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jp z, .Redundant
	jp .NotRedundant

.DreamEater:
	ld a, [wBattleMonStatus]
	and SLP_BIT
	jp z, .Redundant
	jp .NotRedundant

.Hail:
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jp z, .Redundant
	jp .NotRedundant

.Heal:
.Roost:
.MorningSun:
.Synthesis:
.Moonlight:
	farcall AICheckEnemyMaxHP
	jp nc, .NotRedundant

.ProwessUp:
	call .OffensesUp
	ret nz
	call .DefensesUp
	ret nz
	jr .SpeedUp

.OffensesUp:
	lda_stat_level [wEnemyAtkLevel]
	cp MAX_STAT_LEVEL
	jp c, .NotRedundant
	lda_stat_level [wEnemySAtkLevel]
	cp MAX_STAT_LEVEL
	jp c, .NotRedundant
	jp .Redundant

.DefensesUp:
	lda_stat_level [wEnemyDefLevel]
	cp MAX_STAT_LEVEL
	jp c, .NotRedundant
	lda_stat_level [wEnemySDefLevel]
	cp MAX_STAT_LEVEL
	jp c, .NotRedundant
	jp .Redundant

.SpeedUp:
	lda_stat_level [wEnemySpdLevel]
	cp MAX_STAT_LEVEL
	jr c, .NotRedundant
	jr .Redundant

.AccuracyUp:
	lda_stat_level [wEnemyAccLevel]
	cp MAX_STAT_LEVEL
	jr c, .NotRedundant
	jr .Redundant

.EvasionUp:
	lda_stat_level [wEnemyEvaLevel]
	cp MAX_STAT_LEVEL
	jr c, .NotRedundant
	jr .Redundant

.OffensesDown:
	lda_stat_level [wPlayerAtkLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	lda_stat_level [wPlayerSAtkLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	jr .Redundant

.DefensesDown:
	lda_stat_level [wPlayerDefLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	lda_stat_level [wPlayerSDefLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	jr .Redundant

.SpeedDown:
	lda_stat_level [wPlayerSpdLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	jr .Redundant

.AccuracyDown:
	lda_stat_level [wPlayerAccLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	jr .Redundant

.EvasionDown:
	lda_stat_level [wPlayerEvaLevel]
	cp MIN_STAT_LEVEL + 1
	jr nc, .NotRedundant
	jr .Redundant

.Teleport:
.Redundant:
	ld a, 1
	and a
	ret

.NotRedundant:
	xor a
	ret
