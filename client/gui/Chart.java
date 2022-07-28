package openShake.client.gui;

import javax.swing.*;

public class Chart extends JInternalFrame{

	private static int chartCount = 0;

	public Chart(String s){
		super(s, true, false, true, true);
		this.setSize(800, 500);
	}

	protected void setRender(boolean b){
		this.setVisible(b);
		if(b){
			chartCount++;
			this.resize();
			this.autoMove();
		}else{
			chartCount--;
		}
	}

	protected void resize(){
		int width = this.getDesktopPane().getWidth();
		int height = this.getDesktopPane().getHeight();
		this.setSize(width, height/chartCount);
	}

	protected void autoMove(int id, int height){
		this.setLocation(0, height/(chartCount)*id);
	}

	protected void autoMove(){
		int height = this.getDesktopPane().getHeight();
		JInternalFrame[] frames = this.getDesktopPane().getAllFrames();
		int id = chartCount-1;
		for(JInternalFrame i : frames){
			if(/*(i instanceof Chart) &&*/ i.isVisible()){
				((Chart)i).autoMove(id, height);
				((Chart)i).resize();
				id--;
			}
		}
	}

}
