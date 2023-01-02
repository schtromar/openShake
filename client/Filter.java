package openShake.client;

public interface Filter{
	public String toString();
	public Sample filter(Sample sample);
}
