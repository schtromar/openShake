package openShake.client;

import java.util.ArrayList;
import java.util.List;

class Data{
	private List<Sample> samples;

	Data(){
		this.samples = new ArrayList<Sample>();
	}

	protected void addSample(Sample sample){
		try{
			this.samples.add(sample);
		}catch(Exception e){
			Logger.error("Error adding sample to List", e);
		}
		Logger.data(sample.toString());
	}
}
