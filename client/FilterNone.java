package openShake.client;

public class FilterNone implements OffsetFilter{
	private final String filterNameString = "None";

	public String toString(){
		return filterNameString;
	}

	public Sample filter(Sample sample){
		return sample;
	}
}
