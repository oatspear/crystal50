MoveEffectsPointers:
; entries correspond to EFFECT_* constants
	table_width 2, MoveEffectsPointers
	dw NormalHit
	dw DoSleep
	dw PoisonHit
	dw LeechHit
	dw BurnHit
	dw FreezeHit
	dw ParalyzeHit
	dw Selfdestruct
	dw DreamEater
	dw Roost
	dw OffensesUp  ; AttackUp
	dw DefensesUp  ; DefenseUp
	dw SpeedUp
	dw NormalHit  ; SpecialAttackUp
	dw NormalHit  ; SpecialDefenseUp
	dw AccuracyUp
	dw EvasionUp
	dw OffensesDown  ; AttackDown
	dw DefensesDown  ; DefenseDown
	dw SpeedDown
	dw NormalHit  ; SpecialAttackDown
	dw NormalHit  ; SpecialDefenseDown
	dw AccuracyDown
	dw EvasionDown
	dw ResetStats
	dw Acrobatics
	dw Rampage
	dw ForceSwitch
	dw MultiHit
	dw Conversion
	dw FlinchHit
	dw Heal
	dw Toxic
	dw PayDay
	dw LightScreen
	dw TriAttack
	dw Growth
	dw OHKOHit
	dw CalmMind
	dw SuperFang
	dw StaticDamage
	dw TrapTarget
	dw DragonDance
	dw MultiHit
	dw NormalHit
	dw Mist
	dw FocusEnergy
	dw RecoilHit
	dw DoConfuse
	dw OffensesUp2  ; AttackUp2
	dw DefensesUp2  ; DefenseUp2
	dw SpeedUp2
	dw NormalHit  ; SpecialAttackUp2
	dw NormalHit  ; SpecialDefenseUp2
	dw AccuracyUp2
	dw EvasionUp2
	dw Transform
	dw OffensesDown2  ; AttackDown2
	dw DefensesDown2  ; DefenseDown2
	dw SpeedDown2
	dw NormalHit  ; SpecialAttackDown2
	dw NormalHit  ; SpecialDefenseDown2
	dw AccuracyDown2
	dw EvasionDown2
	dw Reflect
	dw DoPoison
	dw DoParalyze
	dw OffensesDownHit  ; AttackDownHit
	dw DefensesDownHit  ; DefenseDownHit
	dw SpeedDownHit
	dw NormalHit  ; SpecialAttackDownHit
	dw NormalHit  ; SpecialDefenseDownHit
	dw AccuracyDownHit
	dw EvasionDownHit
	dw SkyAttack
	dw ConfuseHit
	dw Revenge
	dw BodySlam
	dw Substitute
	dw HyperBeam
	dw Mimic
	dw Metronome
	dw LeechSeed
	dw Splash
	dw Disable
	dw StaticDamage
	dw CloseCombat
	dw Counter
	dw Encore
	dw PainSplit
	dw Snore
	dw Conversion2
	dw LockOn
	dw Sketch
	dw DefrostOpponent
	dw SleepTalk
	dw DestinyBond
	dw Reversal
	dw Spite
	dw FalseSwipe
	dw HealBell
	dw NormalHit
	dw TripleKick
	dw Thief
	dw MeanLook
	dw Hex
	dw FlameWheel
	dw Curse
	dw Superpower
	dw Protect
	dw Spikes
	dw Payback
	dw PerishSong
	dw Sandstorm
	dw Endure
	dw Rollout
	dw Swagger
	dw FuryCutter
	dw Attract
	dw BrickBreak
	dw Present
	dw Hail
	dw Safeguard
	dw SacredFire
	dw Facade
	dw BatonPass
	dw DoBurn
	dw RapidSpin
	dw NormalHit
	dw NormalHit
	dw MorningSun
	dw Synthesis
	dw Moonlight
	dw HiddenPower
	dw RainDance
	dw SunnyDay
	dw OffensesUpHit  ; AttackUpHit
	dw DefensesUpHit  ; DefenseUpHit
	dw AllUpHit
	dw FakeOut
	dw BellyDrum
	dw PsychUp
	dw MirrorCoat
	dw SkullBash
	dw Twister
	dw Earthquake
	dw FutureSight
	dw Gust
	dw Stomp
	dw Solarbeam
	dw Thunder
	dw Teleport
	dw BeatUp
	dw Fly
	dw DefenseCurl
	dw FreezeHit ; for Blizzard, purposefully with different EFFECT_* constant
	assert_table_length NUM_MOVE_EFECTS
