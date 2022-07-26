package openShake.client;

import com.fazecast.jSerialComm.SerialPort;
import com.fazecast.jSerialComm.SerialPortMessageListener;

import openShake.client.Listener;
import openShake.client.Logger;

public class Comm{
	private SerialPort port;
	private SerialPortMessageListener listener;
	private int baudrate;

	public Comm(SerialPort port, SerialPortMessageListener listener){
		this.port = port;
		this.listener = listener;
		this.baudrate = 115200;
		Logger.debug(String.format("Set serial port %s to baudrate %d with listener object %s\n", this.port.getSystemPortName(), this.baudrate, this.listener));
	}

	public void begin(){
		Logger.info(String.format("Begin communication with port %s at %d\n", this.port.getSystemPortName​(), this.baudrate));
		boolean success;

		success = this.port.addDataListener(this.listener);
		Logger.debug(String.format("SerialPort.addDataListener(): %s\n", success));

		success = this.port.setBaudRate(this.baudrate);
		Logger.debug(String.format("SerialPort.setBaudRate(): %s\n", success));

		success = this.port.openPort();
		Logger.debug(String.format("SerialPort.openPort(): %s\n", success));


	}

	public void end(){
		this.port.removeDataListener();
		this.port.closePort();
	}

	public static SerialPort[] getCommPorts(){
		return SerialPort.getCommPorts();
	}
}
