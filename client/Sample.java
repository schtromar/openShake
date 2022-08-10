package openShake.client;

import java.util.Date;

public class Sample{
	private int value;
	private Date date;
	private long index;

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

	public Sample(int value, Date date){
		Logger.debug("createing Sample(int, Date)");
		this.value = value;
		this.date = date;
	}

	public Sample(Sample sample){
		this.value = sample.getValue();
		this.date = sample.getDate();
		this.index = sample.getIndex();
	}

	public Sample(Sample sample, int newValue){
		this.value = newValue;
		this.date = sample.getDate();
		this.index = sample.getIndex();
	}

	public String toString(){
		return String.format("%s : %d", this.date.toString(), this.value);
	}

	public Date getDate(){
		return this.date;
	}

	public int getValue(){
		return this.value;
	}


	public void setIndex(long i){
		this.index = i;
	}

	public long getIndex(){
		return this.index;
	}

}
