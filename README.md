# openShake
![OpenShake Logo](./Logo_OpenShake.svg)

An attempt to measure vibrations optically by refleting a laser beam from a moving mirror and measuring the movements using a linear CCD sensor.

More info, wiring, prebuilt releases etc. coming soon!

## Requirements
To build you own OpenShake, you will need:
+ A Raspberry Pi Pico
+ An Arduino Nano
+ A Toshiba TCD132D or TCD132DG linear CCD sensor
+ 2x LM393 or similar
+ A laser pointer with line-projecting lens
+ Some resistors and other passive components
+ A *DARK* case to house it all
+ A lot of patience

## The Sensor clock
The sensor clock generator (and clock generator generator) can be found [here](toshiba_clock). Edit the paramaters in CGG.py as needed. The defaults are fine for most uses, but you can choose not to read the whole sensor and increase the frequency accordingly.
The script will generate a new [toshiba_clock.S](toshiba_clock/toshiba_clock.S) file, which is included in the [toshiba_clock.ino](toshiba_clock/toshiba_clock.ino) Arduino sketch. Upload it to the Arduino using [Arduino IDE](https://www.arduino.cc/en/software).

## The Detector
Upload [the detector program](detector/sync) to the Raspberry Pi Pico and connect the appropriate signals. CCD_CLOCK, PULSE and SH are needed on GPIO pins 0, 1 and 2.

## The Client
Run [the Java PC client program](client), connect the detector via USB and start measuring the vibrations!

## Converting the recordings
The client can save its recordings in a timestamped CSV file, which can be converted to a WAV audio file using [CSV2WAV](csv2wav/csv2wav.py).

## Examples
Some example recordings can be found [here](tests).
A demo can be seen [onYouTube](https://youtu.be/EQ8wb5Zc1EE)
