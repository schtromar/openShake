package openShake.client;

import com.fazecast.jSerialComm.SerialPort;
import com.fazecast.jSerialComm.SerialPortMessageListener;

import openShake.client.Listener;

public class Comm{
	private SerialPort port;
	private SerialPortMessageListener listener;
	private int baudrate;

	public Comm(SerialPort port, SerialPortMessageListener listener){
		this.port = port;
		this.listener = listener;
		this.baudrate = 200000;
	}

	public void begin(){
		this.port.openPort();
		this.port.addDataListener(this.listener);
		this.port.setBaudRate(this.baudrate);
	}

	public void end(){
		this.port.removeDataListener();
		this.port.closePort();
	}

	public static SerialPort[] getCommPorts(){
		return SerialPort.getCommPorts();
	}
}
