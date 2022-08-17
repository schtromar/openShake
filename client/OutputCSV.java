package openShake.client;

public class OutputCSV implements FileFormat{
	private final static String formatNameString = "CSV";

	public String toString(){
		return formatNameString;
	}

	public String header(){
		return "Date and time, index, value;\n";
	}

	public String convertTo(Sample sample){
		return String.format("%s, %d, %d;\n", sample.getDate().toString(), sample.getIndex(), sample.getValue());
	}

	public String footer(){
		return "";
	}

}
