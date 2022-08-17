package openShake.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class Data{
//	private List<Sample> samples;
	private CircularList<Sample> samples;
	private List<Updater> updaters;
	private long sampleCount;


	Data(){
//		this.samples = new ArrayList<Sample>();
		this.samples = new CircularList<Sample>(4096);
		this.updaters = new ArrayList<Updater>();
		this.sampleCount = 0;
	}

	public void addUpdater(Updater u){
		this.updaters.add(u);
	}

	public void removeUpdater(Updater u){
		this.updaters.remove(u);
	}

	protected void addSample(Sample sample){
		try{
			sample.setIndex(this.sampleCount++);
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
