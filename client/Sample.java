package openShake.client;

import java.util.Date;

class Sample{
	private int value;
	private Date date;

	protected Sample(byte[] value, Date date){
		this.value = 10;
		this.date = date;
	}

	protected Sample(int value, Date date){
		this.value = value;
		this.date = date;
	}

	public String toString(){
		return String.format("%s : %d", this.date.toString(), this.value);
	}
}
