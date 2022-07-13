#define __SFR_OFFSET 0

; master clock 3
; ccd clock 2
; sh 1

#define S1 sbi PORTD, 5
#define S2 sbi PORTD, 3
#define S3 sbi PORTD, 7
#define C1 cbi PORTD, 5
#define C2 cbi PORTD, 3
#define C3 cbi PORTD, 7

#define S7 sbi PORTB, 7
#define C7 cbi PORTB, 7

#include "avr/io.h"

.global start
.global forever

start:
  SBI DDRD, 5    ; Set PB1 as Output
  SBI DDRD, 3    ; Set PB2 as Output
  SBI DDRD, 7    ; Set PB3 as Output
  ;SBI DDRB, 7
  
forever:
  loop1:
    ;sts PORTD, r16   ; Set PORTD to counter
    ;inc R16


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
    S1
    
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

    

    jmp loop1




  pulse:
    sbi PORTB, 2
    ret

  nopulse:
    cbi PORTB, 2
    ret


sleep3:
  ldi r19, 0
  sleep3L:
    inc r19
    cpi r19, 100
    call sleep2
    brlo sleep3L
    ret

sleep2:
  ldi r18, 0
  sleep2L:
    inc r18
    cpi r18, 100
    call sleep
    brlo sleep2L
    ret

sleep:
  ldi r17, 0
  sleepL:
    inc r17
    nop
    cpi r17, 100
    brlo sleepL
    ret

nothing:
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
  ret
