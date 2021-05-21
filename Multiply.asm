	   LXI H,8000
	   MOV B,M
	   INX H
	   MOV C,M

LOOP:	   ADD B
	   JNC AFTER
	   INR D

AFTER:	   DCR C
	   JNZ LOOP
	   INX H
	   MOV M,A
	   INX H
	   MOV M,D
	   HLT
# ORG 8000
# DB 6F,99
