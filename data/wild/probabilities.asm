mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 1,  0 ; 20% chance
	mon_prob 2,  1 ; 20% chance
	mon_prob 3,  2 ; 20% chance
	mon_prob 4,  3 ; 20% chance
	mon_prob 5,  4 ;  9% chance
	mon_prob 6,  5 ;  9% chance
	mon_prob 100, 6 ;  2% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
	assert_table_length NUM_WATERMON
