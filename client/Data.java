package openShake.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class Data{
	private List<Sample> samples;
	private List<Updater> updaters;

	Data(){
		this.samples = new ArrayList<Sample>();
		this.updaters = new ArrayList<Updater>();
	}

	public void addUpdater(Updater u){
		this.updaters.add(u);
	}

	protected void addSample(Sample sample){
		try{
			this.samples.add(sample);
		}catch(Exception e){
			Logger.error("Error adding sample to List", e);
		}
		Logger.data(sample.toString());
		Iterator<Updater> i = this.updaters.iterator();
		while(i.hasNext()){
			i.next().addSample(sample);
		}
	}
}
