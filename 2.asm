LOOP1	LDA	VAR1	

LOOP2	LDA	VAR2
	MUL	VAR1

WRITE	TD	OUTDEV
	JEQ	WRITE
	WD	OUTDEV

	LDA	VAR2
	ADD	ONE
	STA	VAR2
	COMP	TEN
	JLT	LOOP2

	LDA	ONE
	STA	VAR2

	LDA	VAR1
	ADD	ONE
	STA	VAR1
	COMP	TEN
	JLT	LOOP1


VAR1	WORD	1
VAR2	WORD	1
ONE	WORD	1
TEN	WORD	10
ANS	RESW	1

OUTDEV	BYTE 	X'F2'	OUTPOUT DEVICE NUMBER
EOF	BYTE 	X'FF'


