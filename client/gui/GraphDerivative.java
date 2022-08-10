package openShake.client.gui;

import openShake.client.Sample;
import java.util.Date;

class GraphDerivative extends Graph{

//	private Sample lastSample;
	private int lastValue;

	public GraphDerivative(String s){
		super(s);
//		this.lastSample = new Sample(0, new Date());
		this.lastValue = 0;
	}

	public void addSample(Sample s){
//		Sample d = new Sample(this.lastSample.getValue()-s.getValue(), s.getDate());
		Sample d = new Sample(s, this.lastValue - s.getValue());
//		this.lastSample = s;
		this.lastValue = s.getValue();
		super.addSample(d);
	}
}
