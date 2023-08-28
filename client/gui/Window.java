package openShake.client.gui;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import com.fazecast.jSerialComm.SerialPort;

import openShake.client.Main;
import openShake.client.Comm;
import openShake.client.Listener;
import openShake.client.FileFormat;
import openShake.client.OutputCSV;
import openShake.client.LogFileWriter;
import openShake.client.Filter;
import openShake.client.OffsetFilter;
import openShake.client.FilterNone;
import openShake.client.FilterOffset;
import openShake.client.FilterAdaptive;

public class Window{

	private LogFileWriter logFileWriter;

	final int windowHeight = 800;
	final int windowWidth = 1200;
	final String windowTitleText = "OpenShake client";

	final String configTabText = "Configuration";
	final String connectButtonText = "Connect";
	final String refreshButtonText = "Refresh";
	final String communicationText = "Communication";
	final String outputFileText = "Output file";
	final String fileSelectButtonText = "Select";
	final String startFileLoggingButtonText = "Start";
	final String stopFileLoggingButtonText = "Stop";
	final String averagingModeText = "Averaging mode";
	final String averagingModeNoneText = "none";
	final String averagingModeSingleText = "one-shot";
	final String averagingModeRollingText = "RollingAverage";


	final String logTabText = "Samples";

	final String graphTabText = "Visual";
	final String rawGraphLabelText = "Raw data";
	final String derivativeGraphLabelText = "Derivative";
	final String FFTPanadapterLabelText = "FFT Panadapter";
	final String FFTWaterfallLabelText = "FFT Waterfall";

	public Window(){
		JFrame frame = new JFrame();
		frame.setSize(windowWidth, windowHeight);
		frame.setTitle(windowTitleText);
		frame.setLayout(new BorderLayout());

		JTabbedPane tabs = new JTabbedPane();

		// Create panels
		tabs.add(configTabText, configPanel());
		tabs.add(logTabText, logPanel());
		tabs.add(graphTabText, graphPanel());

		frame.add(tabs, BorderLayout.CENTER);
		frame.setVisible(true);
	}

	private JPanel configPanel(){
		JPanel r = new JPanel();
		r.setLayout(new GridBagLayout());
		GridBagConstraints c = new GridBagConstraints();

		// Communication label
		JLabel communicationLabel = new JLabel(communicationText);
		c.fill = GridBagConstraints.HORIZONTAL;
		c.gridx = 0;
		c.gridy = 0;
		r.add(communicationLabel, c);

		// Serial port selector dropdown
		JComboBox<SerialPort> serialPortSelector = new JComboBox<SerialPort>(Comm.getCommPorts());
		c.gridy++;
		r.add(serialPortSelector, c);

		// Connect button
		JButton connectButton = new JButton(connectButtonText);
		connectButton.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
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
		c.gridy++;
		c.gridwidth = 2;
		r.add(refreshButton, c);

		// Output file label
		JLabel outputFileLabel = new JLabel(outputFileText);
		c.gridwidth = 1;
		c.gridy++;
		r.add(outputFileLabel, c);

		// File selector
/*
		JFileChooser fc = new JFileChooser();
		c.gridx = 0;
		c.gridy++;
		r.add(fc, c);
*/
		JTextField filenameTextField = new JTextField();
		c.gridy++;
		r.add(filenameTextField, c);

		// File type selector
		JComboBox<FileFormat> fileFormats= new JComboBox<FileFormat>();
		fileFormats.addItem(new OutputCSV());
		fileFormats.addItem(new OutputCSV());
		c.gridx = 1;
		r.add(fileFormats, c);

		// Select button
		JButton fileSelectButton = new JButton(fileSelectButtonText);
		fileSelectButton.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
				}
			}
		);
		c.gridx = 0;
		c.gridy++;
		r.add(fileSelectButton, c);

		// Start/stop button
		JButton startStopFileLoggingButton = new JButton(startFileLoggingButtonText);
		startStopFileLoggingButton.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
					if(logFileWriter == null){
						logFileWriter = new LogFileWriter((FileFormat)fileFormats.getSelectedItem(), filenameTextField.getText());
						Main.data.addUpdater(logFileWriter);
						startStopFileLoggingButton.setText(stopFileLoggingButtonText);
					}else{
						Main.data.removeUpdater(logFileWriter);
						logFileWriter = null;
						startStopFileLoggingButton.setText(startFileLoggingButtonText);
					}
				}
			}
		);
		c.gridx = 1;
		r.add(startStopFileLoggingButton, c);


		// Averaging mode label
		JLabel averagingModeLabel = new JLabel(averagingModeText);
		c.gridwidth = 1;
		c.gridx = 0;
		c.gridy++;
		r.add(averagingModeLabel, c);

		// Averaging mode selector
		JComboBox<OffsetFilter> filters = new JComboBox<OffsetFilter>();
		filters.addItem(new FilterNone());
		filters.addItem(new FilterOffset());
		filters.addItem(new FilterAdaptive());

		filters.addItemListener(
			new ItemListener(){
				public void itemStateChanged(ItemEvent e){
//					Main.data.setAveragingFilter(filters.getSelectedItem());
					Main.data.setAveragingFilter(filters.getItemAt(filters.getSelectedIndex()));	//dej neno
				}
			}
		);

		c.gridx = 1;
		r.add(filters, c);

		return r;
	}

	private JPanel logPanel(){
		JPanel r = new JPanel();
		r.setLayout(new BorderLayout());

		JTextArea log = new JTextArea();
		log.setEditable(false);
		Main.data.addUpdater(new SampleListUpdater(log));
		JScrollPane scrollPane = new JScrollPane(log);
		r.add(scrollPane);

		return r;
	}

	private JPanel graphPanel(){
		JPanel r = new JPanel();
		r.setLayout(new BorderLayout());


		Chart[] windows = new Chart[2];
		windows[0] = new Graph(rawGraphLabelText);
		Main.data.addUpdater((Graph)windows[0]);
		windows[1] = new GraphDerivative(derivativeGraphLabelText);
		Main.data.addUpdater((Graph)windows[1]);
//		windows[2] = new Chart(FFTPanadapterLabelText);
//		windows[3] = new Chart(FFTWaterfallLabelText);
		JPanel windowListPane = new JPanel();
		JScrollPane scrollPane = new JScrollPane(windowListPane);
		windowListPane.setLayout(new BoxLayout(windowListPane, BoxLayout.PAGE_AXIS));
		windowListPane.setMinimumSize(new Dimension(150,100));

		JDesktopPane graphs = new JDesktopPane();

		for(Chart i : windows){
			JCheckBox c = new JCheckBox(i.getTitle());
			c.addItemListener(
				new ItemListener(){
					public void itemStateChanged(ItemEvent e){
						switch(e.getStateChange()){
							case ItemEvent.SELECTED:
								i.setRender(true);
								break;
							case ItemEvent.DESELECTED:
								i.setRender(false);
								break;
						}
					}
				}
			);
			windowListPane.add(c);
			graphs.add(i);
			i.setVisible(false);
		}

		JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, windowListPane, graphs);
		splitPane.setOneTouchExpandable(true);
		splitPane.setDividerLocation(200);
		r.add(splitPane);

		return r;
	}

}
