LOOP	JSUB	READ
	COMP	SIGN
	JEQ	FIN	IF DOLLAR SIGN JUMP TO END
	COMP	CAPITAL
	JGT	OK	IF BIGGER THAN 'Z' SKIP 
	ADD	ALPHBET	CHANGE TO CAPITAL
OK	JSUB	WRITE
	J	LOOP
	
READ	TD	INDEV	TEST INPUT DEVICE
	JEQ	READ	LOOP UNTIL DEVICE IS READY
	RD	INDEV 	READ ONE BYTE INTO REGISTER A
	RSUB
WRITE	TD	OUTDEV	TEST OUTPUT DEVICE
	JEQ 	WRITE 	LOOP UNTIL DEVICE IS READY
	WD 	OUTDEV 	WRITE ONE BYTE TO OUTPUT DEVICE
	RSUB
FIN	TD	OUTDEV	TEST OUTPUT DEVICE
	JEQ 	WRITE 	LOOP UNTIL DEVICE IS READY
	WD 	OUTDEV 	WRITE ONE BYTE TO OUTPUT DEVICE
	J	EOF



INDEV	BYTE 	X'F1' 	INPUT DEVICE NUMBER
OUTDEV	BYTE 	X'F2'	OUTPOUT DEVICE NUMBER
SIGN	BYTE	X'000024'	'$'
CAPITAL	BYTE	X'000060'	'`'a-1
ALPHBET	BYTE	X'000020'	DIFFERENCE
EOF	BYTE 	X'0000FF'