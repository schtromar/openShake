package openShake.client.gui;

import openShake.client.Sample;
import java.util.Date;

class GraphDerivative extends Graph{

	private Sample lastSample;

	public GraphDerivative(String s){
		super(s);
		this.lastSample = new Sample(0, new Date());
	}

	public void addSample(Sample s){
		Sample d = new Sample(this.lastSample.getValue()-s.getValue(), s.getDate());
		this.lastSample = s;
		super.addSample(d);
	}
}
