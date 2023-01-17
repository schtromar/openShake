package openShake.client.gui;

import javax.swing.*;

import openShake.client.Updater;
import openShake.client.Sample;
import java.util.concurrent.LinkedBlockingDeque;

class SampleListUpdater implements Updater{

	private JTextArea text;
	private final static int historyLength = 128;
	//private String[] history;
	private LinkedBlockingDeque<String> history;

	SampleListUpdater(JTextArea text){
		this.text = text;
		//this.history = new String[historyLength];
		this.history = new LinkedBlockingDeque<String>(historyLength);
	}

	void setTextArea(JTextArea text){
		this.text = text;
	}

	public void addSample(Sample sample){
		if(this.text.isVisible()){
/*
			this.text.append(sample.toString() + "\n");
			this.text.setCaretPosition(text.getDocument().getLength());		// TODO: Find less janky solution
*/
			//The (slightly) less janky solution:

			try{
				this.history.addLast(sample.toString());
			}catch(java.lang.IllegalStateException e){
				this.history.removeFirst();
				this.history.addLast(sample.toString());
			}

			this.text.setText(this.history.toString().replaceAll(",|[|]", "\n"));




		}
	}
}
