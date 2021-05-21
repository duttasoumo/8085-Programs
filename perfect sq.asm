	   LDA 1000	// perfect sq
	   CALL ROOT
	   STA 1001
	   HLT

ROOT:	   MVI B,FF
	   MVI C,00

L1:	   INR B
	   INR B
	   INR C
	   SUB B
	   JNZ L1
	   MOV A,C
	   RET
# ORG 1000
# DB 19
