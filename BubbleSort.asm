	   LXI H,1000
	   MOV C,M

L1:	   LXI H,1001
	   MOV D,C

L2:	   MOV A,M
	   INX H
	   CMP M
	   JC AFTER
	   MOV E,M
	   DCX H
	   MOV M,E
	   INX H
	   MOV M,A

AFTER:	   DCR D
	   JNZ L2
	   DCR C
	   JNZ L1
	   HLT
# ORG 1000
# DB 5,5,4,3,2,1
