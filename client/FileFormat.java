package openShake.client;

public interface FileFormat{
	public String toString();
	public String header();
	public String convertTo(Sample sample);
	public String footer();
}
