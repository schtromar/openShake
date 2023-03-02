
#include "avr/io.h"
#define __SFR_OFFSET 0

; SH pulse:     1
; CCD clock:    2
; Master clock: 3

.global start
.global forever

#define S1 sbi PORTB, 3
#define C1 cbi PORTB, 3
#define S2 sbi PORTB, 2
#define C2 cbi PORTB, 2
#define S3 sbi PORTB, 4
#define C3 cbi PORTB, 4

start:  SBI DDRB, 3
        SBI DDRB, 2
        SBI DDRB, 4
forever:


	S3
	S2
	S1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	S1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	S1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	S1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	S2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	S3
	C2
	C1
	nop
	nop
	nop
	nop
	nop

	C3
	C2
	C1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jmp forever
