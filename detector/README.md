# The detector program
There are two approaches to the detector. Sync should be used.

## Why?
Async was the first method developed, and was a fine proof of concept, but is dependent on the `time_us_64()` function, which read the system time. While this usually works, it can introduce noise due to inerrupts and other delays and is generally bad practice. Sync mode reads the state of PULSE only at CCD clock pulses and counts records the first and last positive one. As it is actually dependent on the data transfer clock, it is more reliable and accurate.
