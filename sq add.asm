	   LDA 1000
	   MOV C,A
	   XRA A

L1:	   MOV B,C
	   CALL SQ
	   ADD B
	   JNC AFTER
	   INR H

AFTER:	   DCR C
	   JNZ L1
	   STA 1001
	   MOV A,H
	   STA 1002
	   HLT
// mvi b,05 using sq function
# ORG 0020

SQ:	   MOV D,B
		MOV E,A
		XRA A
L2:	   ADD B
	   DCR D
	   JNZ L2
	   MOV B,A
	   MOV A,E
	   RET
# ORG 1000
# DB 13
