INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:
	db SKULL_BASH
	db LEAF_STORM
	db MAGICAL_LEAF
	db PETAL_DANCE
	db -1 ; end

CharmanderEggMoves:
	db BELLY_DRUM
	db METAL_CLAW
	db BEAT_UP
	db CRUNCH
	db DRAGON_DANCE
	db OUTRAGE
	db -1 ; end

SquirtleEggMoves:
	db AQUA_JET
	db FLAIL
	db HAZE
	db MIRROR_COAT
	db MIST
	db -1 ; end

PidgeyEggMoves:
	db AIR_CUTTER
	db AIR_SLASH
	db -1 ; end

RattataEggMoves:
	db BITE
	db FLAME_WHEEL
	db REVENGE
	db REVERSAL
	db SCREECH
	db -1 ; end

SpearowEggMoves:
	db ASTONISH
	db QUICK_ATTACK
	db WHIRLWIND
	db -1 ; end

EkansEggMoves:
	db BEAT_UP
	db DISABLE
	db SPITE
	db SUCKER_PUNCH
	db -1 ; end

SandshrewEggMoves:
	db COUNTER
	db FLAIL
	db METAL_CLAW
	db NIGHT_SLASH
	db RAPID_SPIN
	db -1 ; end

NidoranFEggMoves:
	db COUNTER
	db DISABLE
	db SUPERSONIC
	db SKULL_BASH
	db FOCUS_ENERGY
	db CHARM
	db BEAT_UP
	db -1 ; end

NidoranMEggMoves:
	db CONFUSION
	db COUNTER
	db DISABLE
	db SUCKER_PUNCH
	db SUPERSONIC
	db BEAT_UP
	db -1 ; end

VulpixEggMoves:
	db CHARM
	db FLAIL
	db FLAME_WHEEL
	db HYPNOSIS
	; db DISABLE
	; db SPITE
	db -1 ; end

ZubatEggMoves:
	db GUST
	db QUICK_ATTACK
	db HYPNOSIS
	db WHIRLWIND
	db ZEN_HEADBUTT
	db -1 ; end

OddishEggMoves:
	db RAZOR_LEAF
	db FLAIL
	db SYNTHESIS
	db LEECH_SEED
	db -1 ; end

ParasEggMoves:
	db AGILITY
	db BUG_BITE
	db COUNTER
	db CROSS_POISON
	db FLAIL
	db FALSE_SWIPE
	db LEECH_SEED
	db METAL_CLAW
	db SCREECH
	db SWEET_SCENT
	db -1 ; end

VenonatEggMoves:
	db AGILITY
	db SCREECH
	db -1 ; end

DiglettEggMoves:
	db ANCIENTPOWER
	db BEAT_UP
	db REVERSAL
	db SCREECH
	db -1 ; end

MeowthEggMoves:
	db SPITE
	db CHARM
	db FLAIL
	db HYPNOSIS
	db -1 ; end

PsyduckEggMoves:
	db CONFUSE_RAY
	db CROSS_CHOP
	db HYPNOSIS
	db ENCORE
	db FUTURE_SIGHT
	db -1 ; end

MankeyEggMoves:
	db BEAT_UP
	db COUNTER
	db REVERSAL
	db NIGHT_SLASH
	db ENCORE
	db REVENGE
	db -1 ; end

GrowlitheEggMoves:
	db DOUBLE_KICK
	db DOUBLE_EDGE
	db MORNING_SUN
	db BODY_SLAM
	db CLOSE_COMBAT
	db FIRE_SPIN
	db -1 ; end

PoliwagEggMoves:
	db MIST
	db WATER_PULSE
	db ENCORE
	db HAZE
	db -1 ; end

AbraEggMoves:
	db CONFUSION
	db ENCORE
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db -1 ; end

MachopEggMoves:
	db COUNTER
	db ENCORE
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db -1 ; end

BellsproutEggMoves:
	db ENCORE
	db MAGICAL_LEAF
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db -1 ; end

GeodudeEggMoves:
	db FLAIL
	db -1 ; end

PonytaEggMoves:
	db MORNING_SUN
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db -1 ; end

SlowpokeEggMoves:
	db BELLY_DRUM
	db FUTURE_SIGHT
	db -1 ; end

FarfetchDEggMoves:
	db REVENGE
	db NIGHT_SLASH
	db GUST
	db QUICK_ATTACK
	db FLAIL
	db -1 ; end

DoduoEggMoves:
	db SUPERSONIC
	db HAZE
	db PAYBACK
	db -1 ; end

SeelEggMoves:
	db PERISH_SONG
	db DISABLE
	db -1 ; end

GrimerEggMoves:
	db HAZE
	db ACID_SPRAY
	db -1 ; end

ShellderEggMoves:
	db WATER_PULSE
	db RAPID_SPIN
	db SCREECH
	db -1 ; end

GastlyEggMoves:
	db TOXIC
	db PERISH_SONG
	db HAZE
	db -1 ; end

OnixEggMoves:
	db FLAIL
	db -1 ; end

DrowzeeEggMoves:
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db -1 ; end

KrabbyEggMoves:
	db SLASH
	db NIGHT_SLASH
	db ANCIENTPOWER
	db -1 ; end

ExeggcuteEggMoves:
	db MOONLIGHT
	db POISONPOWDER
	db STUN_SPORE
	db SLEEP_POWDER
	db ANCIENTPOWER
	db -1 ; end

CuboneEggMoves:
	db ROCK_SLIDE
	db ANCIENTPOWER
	db BELLY_DRUM
	db SCREECH
	db SKULL_BASH
	db PERISH_SONG
	db -1 ; end

LickitungEggMoves:
	db -1 ; end

KoffingEggMoves:
	db SCREECH
	db SPITE
	db DESTINY_BOND
	db PAIN_SPLIT
	db -1 ; end

RhyhornEggMoves:
	db CRUNCH
	db REVERSAL
	db FIRE_FANG
	db THUNDER_FANG
	db ICE_FANG
	db COUNTER
	db SKULL_BASH
	db -1 ; end

ChanseyEggMoves:
	db AROMATHERAPY
	db -1 ; end

TangelaEggMoves:
	db FLAIL
	db CONFUSION
	db LEECH_SEED
	db -1 ; end

KangaskhanEggMoves:
	db COUNTER
	db DISABLE
	db -1 ; end

HorseaEggMoves:
	db FLAIL
	db AURORA_BEAM
	db OCTAZOOKA
	db DISABLE
	db WATER_PULSE
	db OUTRAGE
	db -1 ; end

GoldeenEggMoves:
	db HAZE
	db HYDRO_PUMP
	db BODY_SLAM
	db -1 ; end

MrMimeEggMoves:
	db FUTURE_SIGHT
	db HYPNOSIS
	db CONFUSE_RAY
	db -1 ; end

ScytherEggMoves:
	db COUNTER
	db NIGHT_SLASH
	db REVERSAL
	db -1 ; end

PinsirEggMoves:
	db QUICK_ATTACK
	db FLAIL
	db CLOSE_COMBAT
	db -1 ; end

LaprasEggMoves:
	db AURORA_BEAM
	db ANCIENTPOWER
	db DRAGON_DANCE
	db FUTURE_SIGHT
	db WHIRLPOOL
	db -1 ; end

EeveeEggMoves:
	db FLAIL
	db DOUBLE_KICK
	db MUD_SLAP
	db -1 ; end

OmanyteEggMoves:
	db WATER_PULSE
	db AURORA_BEAM
	db BITE
	db SUPERSONIC
	db HAZE
	db SPIKES
	db WHIRLPOOL
	db -1 ; end

KabutoEggMoves:
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db CONFUSE_RAY
	db FLAIL
	db DIG
	db SCREECH
	db -1 ; end

AerodactylEggMoves:
	db WHIRLWIND
	db DRAGONBREATH
	db PAYBACK
	db -1 ; end

SnorlaxEggMoves:
	db COUNTER
	db DOUBLE_EDGE
	db -1 ; end

DratiniEggMoves:
	db AQUA_JET
	db EXTREMESPEED
	db MIST
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db -1 ; end

ChikoritaEggMoves:
	db ANCIENTPOWER
	db VINE_WHIP
	db LEECH_SEED
	db COUNTER
	db FLAIL
	db COUNTER
	db -1 ; end

CyndaquilEggMoves:
	db REVERSAL
	db FLARE_BLITZ
	db EXTRASENSORY
	db DOUBLE_KICK
	db -1 ; end

TotodileEggMoves:
	db AQUA_JET
	db ANCIENTPOWER
	db DRAGON_DANCE
	db ROCK_SLIDE
	db METAL_CLAW
	db -1 ; end

SentretEggMoves:
	db CHARM
	db SLASH
	db FOCUS_ENERGY
	db -1 ; end

HoothootEggMoves:
	db WHIRLWIND
	db NIGHT_SHADE
	db SUPERSONIC
	db MEAN_LOOK
	db -1 ; end

LedybaEggMoves:
	db BUG_BITE
	db COUNTER
	db ENCORE
	db SCREECH
	db -1 ; end

SpinarakEggMoves:
	db MEGAHORN
	db NIGHT_SLASH
	db -1 ; end

ChinchouEggMoves:
	db SUPERSONIC
	db SCREECH
	db WATER_PULSE
	db MIST
	db WHIRLPOOL
	db AGILITY
	db -1 ; end

PichuEggMoves:
	db REVERSAL
	db DISARMING_VOICE
	db ENCORE
	db FLAIL
	db -1 ; end

CleffaEggMoves:
	db AROMATHERAPY
	db METRONOME
	db MIMIC
	db BELLY_DRUM
	db -1 ; end

IgglybuffEggMoves:
	db PERISH_SONG
	db ROLLOUT
	db -1 ; end

TogepiEggMoves:
	db MORNING_SUN
	db FUTURE_SIGHT
	db -1 ; end

NatuEggMoves:
	db DRILL_PECK
	db HAZE
	db ROOST
	db SUCKER_PUNCH
	db -1 ; end

MareepEggMoves:
	db AGILITY
	db BODY_SLAM
	db SAND_ATTACK
	db SCREECH
	db -1 ; end

MarillEggMoves:
	db AQUA_JET
	db BELLY_DRUM
	db PERISH_SONG
	db SING
	db SUPERSONIC
	db BODY_SLAM
	db -1 ; end

SudowoodoEggMoves:
	db HEADBUTT
	db ROLLOUT
	db SAND_TOMB
	db SELFDESTRUCT
	db -1 ; end

HoppipEggMoves:
	db AROMATHERAPY
	db CONFUSION
	db DOUBLE_EDGE
	db ENCORE
	db SEED_BOMB
	db -1 ; end

AipomEggMoves:
	db BEAT_UP
	db COUNTER
	db REVENGE
	db SCREECH
	db SPITE
	db -1 ; end

SunkernEggMoves:
	db ENCORE
	db MORNING_SUN
	db SWEET_SCENT
	db -1 ; end

YanmaEggMoves:
	db REVERSAL
	db LEECH_LIFE
	db DOUBLE_EDGE
	db -1 ; end

WooperEggMoves:
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db ACID_SPRAY
	db COUNTER
	db DOUBLE_KICK
	db RECOVER
	db ENCORE
	db -1 ; end

MurkrowEggMoves:
	db WHIRLWIND
	db DRILL_PECK
	db QUICK_ATTACK
	db PERISH_SONG
	db SCREECH
	db CONFUSE_RAY
	db -1 ; end

MisdreavusEggMoves:
	db CURSE
	db DESTINY_BOND
	db SUCKER_PUNCH
	db OMINOUS_WIND
	db -1 ; end

GirafarigEggMoves:
	db BEAT_UP
	db DOUBLE_KICK
	db FUTURE_SIGHT
	db MEAN_LOOK
	db MIRROR_COAT
	db -1 ; end

PinecoEggMoves:
	db REVENGE
	db PIN_MISSILE
	db FLAIL
	db COUNTER
	db -1 ; end

DunsparceEggMoves:
	db AQUA_TAIL
	db ASTONISH
	db BITE
	db HEX
	db -1 ; end

GligarEggMoves:
	db METAL_CLAW
	db CROSS_POISON
	db AGILITY
	db COUNTER
	db DOUBLE_EDGE
	db NIGHT_SLASH
	db SAND_TOMB
	db -1 ; end

SnubbullEggMoves:
	db METRONOME
	db MIMIC
	db THUNDER_FANG
	db ICE_FANG
	db FIRE_FANG
	db CLOSE_COMBAT
	db -1 ; end

QwilfishEggMoves:
	db FLAIL
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db ACID_SPRAY
	db AQUA_JET
	db ASTONISH
	db -1 ; end

ShuckleEggMoves:
	db SWEET_SCENT
	db IRON_DEFENSE
	db TOXIC
	db -1 ; end

HeracrossEggMoves:
	db IRON_DEFENSE
	db NIGHT_SLASH
	db FLAIL
	db SEISMIC_TOSS
	db -1 ; end

SneaselEggMoves:
	db COUNTER
	db SPITE
	db BITE
	db -1 ; end

TeddiursaEggMoves:
	db CRUNCH
	db CLOSE_COMBAT
	db SEISMIC_TOSS
	db COUNTER
	db -1 ; end

SlugmaEggMoves:
	db ACID_ARMOR
	db -1 ; end

SwinubEggMoves:
	db BITE
	db BODY_SLAM
	db -1 ; end

CorsolaEggMoves:
	db WATER_PULSE
	db SAFEGUARD
	db MIST
	db CONFUSE_RAY
	db LIQUIDATION
	db SCREECH
	db -1 ; end

RemoraidEggMoves:
	db OCTAZOOKA
	db HAZE
	db SCREECH
	db ACID_SPRAY
	db -1 ; end

DelibirdEggMoves:
	db AURORA_BEAM
	db QUICK_ATTACK
	db FUTURE_SIGHT
	db COUNTER
	db RAPID_SPIN
	db ICE_SHARD
	db SPIKES
	db DESTINY_BOND
	db -1 ; end

MantineEggMoves:
	db TWISTER
	db HAZE
	db MIRROR_COAT
	db -1 ; end

SkarmoryEggMoves:
	db WHIRLWIND
	db NIGHT_SLASH
	db AIR_CUTTER
	db PAYBACK
	db -1 ; end

HoundourEggMoves:
	db FIRE_SPIN
	db COUNTER
	db SPITE
	db REVERSAL
	db DESTINY_BOND
	db SUCKER_PUNCH
	db THUNDER_FANG
	db -1 ; end

PhanpyEggMoves:
	db ANCIENTPOWER
	db WATER_GUN
	db COUNTER
	db ICE_SHARD
	db -1 ; end

StantlerEggMoves:
	db BITE
	db DOUBLE_KICK
	db MEGAHORN
	db SPITE
	db -1 ; end

TyrogueEggMoves:
	db RAPID_SPIN
	db HI_JUMP_KICK
	db MACH_PUNCH
	db COUNTER
	db -1 ; end

SmoochumEggMoves:
	db -1 ; end

ElekidEggMoves:
	db CROSS_CHOP
	db -1 ; end

MagbyEggMoves:
	db SCREECH
	db CROSS_CHOP
	db MACH_PUNCH
	db BELLY_DRUM
	db -1 ; end

MiltankEggMoves:
	db REVERSAL
	db SEISMIC_TOSS
	db -1 ; end

LarvitarEggMoves:
	db ANCIENTPOWER
	db OUTRAGE
	db IRON_DEFENSE
	db DRAGON_DANCE
	db IRON_HEAD
	db -1 ; end

NoEggMoves:
	db -1 ; end
