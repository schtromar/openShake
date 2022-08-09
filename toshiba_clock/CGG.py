# The clock generator genrator.

# Configuration
outfile = "toshiba_clock.S"
pulses = 1104
nops_between = 0
nops_after = 100

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

""")


# Generate magic code
sh = True
fm = True
fc = True


for i in range(pulses):

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








