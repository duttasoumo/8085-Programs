	   LXI H,1000
	   MOV A,M
	   INX H
	   MVI C,04

L1:	   RRC
	   MOV E,D	// swap A<-->D
	   MOV D,A
	   MOV A,E
	   RAL
	   MOV E,D	// swap A<-->D
	   MOV D,A
	   MOV A,E
	   DCR C
	   JNZ L1
	   ANI 0F
	   CMP D
	   JNZ L2
	   MVI M,01

L2:	   HLT
#ORG 1000
#DB 18
