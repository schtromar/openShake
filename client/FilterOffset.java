package openShake.client;

public class FilterOffset implements OffsetFilter{
	private final String filterNameString = "One-shot";
	private int offset = 0;

	public String toString(){
		return filterNameString;
	}

	public Sample filter(Sample sample){
		if(this.offset == 0){
			this.offset = sample.getValue();
		}
		return new Sample(sample, sample.getValue() - this.offset);
	}
}
