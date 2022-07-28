package openShake.client.gui;

import javax.swing.*;

public class Chart extends JInternalFrame{

	public Chart(String s){
		super(s, true, false, true, true);
		this.setSize(800, 500);
	}

	protected void setRender(boolean b){
		this.setVisible(b);
	}

}
