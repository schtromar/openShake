
#include "avr/io.h"
#define __SFR_OFFSET 0

; SH pulse:     1
; CCD clock:    2
; Master clock: 3

.global start
.global forever

#define S1 sbi PORTD, 5
#define C1 cbi PORTD, 5
#define S2 sbi PORTD, 7
#define C2 cbi PORTD, 7
#define S3 sbi PORTD, 3
#define C3 cbi PORTD, 3

start:  SBI DDRD, 5
        SBI DDRD, 7
        SBI DDRD, 3
forever:


	S3
	S2
	S1

	C3
	S2
	S1

	S3
	S2
	S1

	C3
	S2
	S1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	S2
	C1

	C3
	S2
	C1

	S3
	C2
	C1

	C3
	C2
	C1

	S3
	C2
	C1

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
	jmp forever
