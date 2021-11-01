; For priorities by move effect see "data/moves/effects_priorities.asm".
; This is a complementary table for exceptions to the norm, by move ID.

MovePrioritiesExceptions:
	db VITAL_THROW,  PRIORITY_M1
	db EXTREMESPEED, PRIORITY_P2
	db -1
