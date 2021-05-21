	   LXI H,1000
	   MOV A,M
	   MOV B,A
	   ANI 0F
	   CALL FUN
	   RLC
	   RLC
	   RLC
	   RLC
	   ANI 0F
	   CALL FUN
	   HLT
# ORG 20

FUN:	   INX H
	   CPI 0A
	   JNC ELSE
	   ADI 30
	   JMP AFTER

ELSE:	   ADI 37

AFTER:	   MOV M,A
	   MOV A,B
	   RET
# ORG 1000
# DB 1B
