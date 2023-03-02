#!/usr/bin/python3

import pandas as pd
import soundfile as sf
import sys

infilename = str(sys.argv[1])
outfilename = infilename + ".wav"

print(infilename)

# assume we have columns 'time' and 'value'
#df = pd.read_csv('test.csv', sep=',|;', skipinitialspace=True)
df = pd.read_csv(infilename, sep=',|;', skipinitialspace=True)

print(df)
print(df.columns)

# compute sample rate, assuming times are in seconds
#times = df['index'].values
#n_measurements = len(times)
#timespan_seconds = times[-1] - times[0]
timespan_seconds = 86

data = df[' value'].values
n_measurements = len(data)

print('JSDLPAJ', type(list(data)[0]))

#sample_rate_hz = int(n_measurements / timespan_seconds)
sample_rate_hz = 1300

print(sample_rate_hz)

# write data
#data = df['value'].values
#for i in data:
#	print(i)

#max_sample = max(data)

#data /= 150

data = data + 35
data = data % 55
data = data - 35

data = data / 150

#sf.write('test.wav', data, sample_rate_hz)
sf.write(outfilename, data, sample_rate_hz)
