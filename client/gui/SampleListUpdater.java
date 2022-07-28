package openShake.client.gui;

import javax.swing.*;

import openShake.client.Updater;
import openShake.client.Sample;

class SampleListUpdater implements Updater{

	private JTextArea text;

	SampleListUpdater(JTextArea text){
		this.text = text;
	}

	void setTextArea(JTextArea text){
		this.text = text;
	}

	public void addSample(Sample sample){
		if(this.text.isVisible()){
			this.text.append(sample.toString() + "\n");
			this.text.setCaretPosition(text.getDocument().getLength());		// TODO: Find less janky solution
		}
	}
}
