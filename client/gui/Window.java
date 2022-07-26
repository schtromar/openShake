package openShake.client.gui;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import com.fazecast.jSerialComm.SerialPort;

import openShake.client.Main;
import openShake.client.Comm;
import openShake.client.Listener;

public class Window{

	final int windowHeight = 300;
	final int windowWidth = 500;
	final String windowTitleText = "OpenShake client";

	final String configTabText = "Configuration";
	final String connectButtonText = "Connect";
	final String refreshButtonText = "Refresh";

	final String logTabText = "Samples";

	public Window(){
		JFrame frame = new JFrame();
		frame.setSize(windowWidth, windowHeight);
		frame.setTitle(windowTitleText);
		frame.setLayout(new BorderLayout());

		JTabbedPane tabs = new JTabbedPane();

		// Create panels
		tabs.add(configTabText, configPanel());
		tabs.add(logTabText, logPanel());

		frame.add(tabs, BorderLayout.CENTER);
		frame.setVisible(true);
	}

	private JPanel configPanel(){
		JPanel r = new JPanel();
		r.setLayout(new GridBagLayout());
		GridBagConstraints c = new GridBagConstraints();

		// Serial port selector dropdown
		JComboBox<SerialPort> serialPortSelector = new JComboBox<SerialPort>(Comm.getCommPorts());
		c.fill = GridBagConstraints.HORIZONTAL;
		c.gridx = 0;
		c.gridy = 0;
		r.add(serialPortSelector, c);

		// Connect button
		JButton connectButton = new JButton(connectButtonText);
		connectButton.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
					System.out.println("BOOP");
					Main.channel = new Comm((SerialPort)serialPortSelector.getSelectedItem(), new Listener());
					Main.channel.begin();
				}
			}
		);
		c.gridx = 1;
		r.add(connectButton, c);

		// Refresh button
		JButton refreshButton = new JButton(refreshButtonText);
		refreshButton.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
					serialPortSelector.removeAllItems();
					for(SerialPort i : Comm.getCommPorts()){
						serialPortSelector.addItem(i);
					}
				}
			}
		);
		c.gridx = 0;
		c.gridy = 1;
		c.gridwidth = 2;
		r.add(refreshButton, c);

		return r;
	}

	private JPanel logPanel(){
		JPanel r = new JPanel();
		r.setLayout(new BorderLayout());

		return r;
	}

}
