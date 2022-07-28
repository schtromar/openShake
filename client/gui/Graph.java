package openShake.client.gui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.Date;

import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.TimeSeriesCollection;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.ChartPanel;
import org.jfree.data.time.Millisecond;

import openShake.client.Updater;
import openShake.client.Sample;


class Graph extends Chart implements Updater{

	private final String timeAxisLabel = "Time";
	private final String valueAxisLabel = "Value";

	private final boolean filterDuplicateDates = true;

	private TimeSeries series;
//	private double lastValue = 100.0;

	private Date lastDate;

	public Graph(String s){
		super(s);

		this.lastDate = new Date();

		this.series = new TimeSeries(s);
		TimeSeriesCollection dataset = new TimeSeriesCollection(series);
		JFreeChart chart = ChartFactory.createTimeSeriesChart(s, timeAxisLabel, valueAxisLabel, dataset, true, true, false);
		XYPlot plot = chart.getXYPlot();
		ValueAxis axis = plot.getDomainAxis();
		axis.setAutoRange(true);
		axis.setFixedAutoRange(60000.0);
		axis = plot.getRangeAxis();
		axis.setRange(0.0, 1000.0);

		ChartPanel chartPanel = new ChartPanel(chart);
/*
		JButton button = new JButton("Add New Data Item");
		button.setActionCommand("ADD_DATA");
		button.addActionListener(
			new ActionListener(){
				public void actionPerformed(ActionEvent e){
					if(e.getActionCommand().equals("ADD_DATA")){
						double factor = 0.90 + 0.2 * Math.random();
						lastValue = lastValue * factor;
						Millisecond now = new Millisecond();
						series.add(new Millisecond(), lastValue);
					}
				}
			}
		);

		this.add(button, BorderLayout.SOUTH);
//		setContentPane(this);
*/
		this.add(chartPanel);

	}

	public void addSample(Sample sample){
		if(this.isVisible()){
			if(!this.lastDate.equals(sample.getDate())){
				this.series.add(new Millisecond(/*sample.getDate()*/), sample.getValue());
				this.lastDate=sample.getDate();
			}
		}
	}
}
