	   LXI H,1000	// BCD MULTI
	   MOV B,M
	   INX H
	   XRA A
	   MOV C,A
	   MOV D,A
	   MOV E,A

LOOP:	   MOV A,E
	   ADD B
	   DAA
	   JNC AFTER
	   INR D
	   CMC

AFTER:	   MOV E,A
	   INR C
	   MOV A,C
	   DAA
	   MOV C,A
	   CMP M
	   JNZ LOOP
	   INX H
	   MOV M,E
	   INX H
	   MOV M,D
	   HLT
# ORG 1000
# DB 21,61
