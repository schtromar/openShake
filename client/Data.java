package openShake.client;

import java.util.ArrayList;
import java.util.List;

class Data{
	private List<Sample> samples;

	Data(){
		this.samples = new ArrayList<Sample>();
	}

	protected void addSample(Sample sample){
		this.samples.add(sample);
		Logger.data(sample.toString());
	}
}
