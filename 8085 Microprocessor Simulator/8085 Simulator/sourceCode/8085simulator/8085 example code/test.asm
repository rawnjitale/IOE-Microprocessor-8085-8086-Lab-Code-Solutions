// hello
// hi
# START
	   MVI A,ZY
	   MVI A,43
# ORG 1000

HI:	   RAR
	   RAL
	   RAR
# ORG 1030
# ABCDE: DS 3
	   LXI B,ABCDE
	   LXI D,HELLO2*2
	   LXI B,HELLO
	   LXI H,TEST0

DW1:	   RAR
# ORG 2000
# DATA : DB 10,12,13,14

	   RAR
	   LXI H,DATA
// test
// test 3
// j
# ORG 2050
# TEST0: DW 1050
# ORG 2060
DW2:	   RAL
# HELLO EQU CFFF
# XY EQU 55
	   MVI A,XY	// terw
# HELLO2 EQU 1234
# ZY EQU 77
	   MVI A,78
# ORG 6000
# DW ABCD
# ORG 6010
# DW 1234
# ORG 6020
# DW 5678
# ORG 6030
# DW BCEF
	   HLT
