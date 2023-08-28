package openShake.client;

public class FilterAdaptive implements OffsetFilter{
	private final String filterNameString = "Adaptive";
	private final int updateRate = 256;

	//private int[] averages;
	private int sum = 0;
	private int counter = 0;
	private int offset = 0;

	public String toString(){
		return filterNameString;
	}

	public Sample filter(Sample sample){
		if(this.offset == 0){
			this.offset = sample.getValue();
//			this.averages = new int[updateRate];
		}



		if(this.counter > this.updateRate){
			new Thread(){
				public void run(){
/*
					int sum = 0;
					for(int i=0; i<updateRate; i++){
						sum+=averages[i];
					}
*/
					offset = sum/updateRate;
					counter = 0;

					sum = 0;
				}
			}.start();
		}

		//this.averages[counter%updateRate] = sample.getValue();
		this.sum += sample.getValue();
		this.counter++;

		return new Sample(sample, sample.getValue() - this.offset);
	}
}
