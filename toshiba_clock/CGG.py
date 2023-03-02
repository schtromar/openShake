# The clock generator genrator.

# Configuration
outfile = "toshiba_clock.S"
pulses = 1091
nops_between = 0
nops_after = 50

# Open file and write header and setup code. Correct pins if needed.
f = open(outfile, "w")

f.write("""
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

""")


# Generate magic code
sh = True
fm = True
fc = True


for i in range(pulses*4):

	sh = i<4
	fm = not i%2
	fc = not (i >> 2)%2

	print(i, end="\t")
	print(("#" if fm else "_" )+ ("#" if fc else "_") + ("#" if sh else "_"), end="")
	print()

	# Master clock is first
	line = "\n\t"
	if(fm):
		line += "S3"
	else:
		line += "C3"

	# CCD clock is second
	line +="\n\t"
	if(fc):
		line += "S2"
	else:
		line += "C2"

	# SH is last
	line +="\n\t"
	if(sh):
		line += "S1"
	else:
		line += "C1"

	# Include optional nops to slow it down
	line += "\n"
	for j in range(nops_between):
		line+="\tnop\n"

	f.write(line)

# Include nops at the end to increase time between SH pulses
for i in range(nops_after):
	f.write("\tnop\n")

# Finish up
f.write("\tjmp forever\n")
f.close()








