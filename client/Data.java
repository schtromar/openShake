package openShake.client;

import java.util.ArrayList;
import java.util.List;

import openShake.client.Sample;
import openShake.client.Logger;

class Data{
	private List samples;

	Data(){
		this.List = new ArrayList<Sample>();
	}

	protected void addSample(Sample sample){
		this.samples.add(sample);
		Logger.data(sample.toString);
	}
}
