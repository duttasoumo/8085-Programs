	   LXI H,0100
	   MVI C,00
	   MOV A,M
	   INX H
	   ADD M
	   DAA
	   JNC L1
	   INR C

L1:	   INX H
	   MOV M,A
	   INX H
	   MOV M,C
	   HLT
# ORG 0100
# DB 16,17
