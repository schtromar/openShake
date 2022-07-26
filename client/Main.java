package openShake.client;

import com.fazecast.jSerialComm.SerialPort;

import openShake.client.*;
import openShake.client.gui.*;

public class Main {

	public static Comm channel;
	public static Data data;

	public static void main(String[] args) {
		data = new Data();
		System.out.println("Hello world");
		SerialPort[] ports = SerialPort.getCommPorts();
		for (SerialPort port: ports) {
			System.out.println(port.getSystemPortName());
		}
		Window window = new Window();
	}
}
