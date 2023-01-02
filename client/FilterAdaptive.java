package openShake.client;

public class FilterAdaptive implements Filter{
	private final String filterNameString = "Adaptive";
	private final int updateRate = 250;

	private int[] averages;
	private int counter = 0;
	private int offset = 0;

	public String toString(){
		return filterNameString;
	}

	public Sample filter(Sample sample){
		if(this.offset == 0){
			this.offset = sample.getValue();
			this.averages = new int[updateRate];
		}


System.out.println("offset: " + offset + " counter: " + counter);

		if(this.counter > this.updateRate){
			new Thread(){
				public void run(){
					int sum = 0;
					for(int i=0; i<updateRate; i++){
						sum+=averages[i];
					}
					offset = sum/updateRate;
					counter = 0;
System.out.println("Recalculated offset. New offset: " + offset + " counter: " + counter);
				}
			}.start();
		}

		this.averages[counter%updateRate] = sample.getValue();
		this.counter++;

		return new Sample(sample, sample.getValue() - this.offset);
	}
}
