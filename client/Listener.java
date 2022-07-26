package openShake.client;

import com.fazecast.jSerialComm.SerialPortMessageListener;
import com.fazecast.jSerialComm.SerialPortEvent;
import com.fazecast.jSerialComm.SerialPort;

import openShake.client.Sample;
import openShake.client.Data;

public class Listener implements SerialPortMessageListener{
	@Override
	public int getListeningEvents() { return SerialPort.LISTENING_EVENT_DATA_RECEIVED; }

	@Override
	public byte[] getMessageDelimiter() { return new byte[] { (byte)'\n' }; }

	@Override
	public boolean delimiterIndicatesEndOfMessage() { return true; }

	@Override
	public void serialEvent(SerialPortEvent event){
		byte[] delimitedMessage = event.getReceivedData();
		System.out.println("Received the following delimited message: " + delimitedMessage);
	}
}
