 3Ch: DCR B 
RET
MVI A, 11010011b ; 19, 5000/256=19 и ост 136 поворка кратки имплуси
OUT THB
MVI A, 10001000b ; 136
OUT TLB
MVI A,11XXXXXXb ; се стартува тајмерот
OUT CSR
INIT: MVI B,250d
PAK:MOV A,B
 ANI FFh THB EQU 00001 101
 JNZ PAK TLB EQU 00001 100
 POP D CSR EQU 00001 000
 IN 01h
 CMP D
 JC STOP
 CMP E
 JNC STOP
 MVI A,11XXXXXXb
 SIM
JMP INIT
STOP: MVI A,01XXXXXXb
 SIM
 HLT
 END 
