package openShake.client;

import java.util.Date;

public class Sample{
	private int value;
	private Date date;

	protected Sample(byte[] value, Date date){
		this(new String(value), date);
	}

	protected Sample(String value, Date date){
		if(value.startsWith("DT:")){
			this.value = Integer.valueOf(value.substring(3).strip());
		}else{
			Logger.warn("Non-data String passed: " + value);
			this.value = 0;
		}
		this.date = date;
	}

	protected Sample(int value, Date date){
		Logger.debug("createing Sample(int, Date)");
		this.value = value;
		this.date = date;
	}

	public String toString(){
		return String.format("%s : %d", this.date.toString(), this.value);
	}
}
