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

import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;

class Graph extends Chart implements Updater{

	private final String timeAxisLabel = "Time";
	private final String valueAxisLabel = "Value";
	private final int maximumSampleCount = 8192;

//	private final boolean filterDuplicateDates = true;
//	private TimeSeries series;

	private XYSeries series;

//	private Date lastDate;

	public Graph(String s){
		super(s);

//		this.lastDate = new Date();
//		this.series = new TimeSeries(s);
		this.series = new XYSeries("Series");
		this.series.setMaximumItemCount(maximumSampleCount);

//		TimeSeriesCollection dataset = new TimeSeriesCollection(series);
//		JFreeChart chart = ChartFactory.createTimeSeriesChart(s, timeAxisLabel, valueAxisLabel, dataset, true, true, false);
//		XYPlot plot = chart.getXYPlot();

		NumberAxis timeAxis = new NumberAxis(timeAxisLabel);
		timeAxis.setAutoRange(true);
		timeAxis.setAutoRangeIncludesZero(false);

//		ValueAxis axis = plot.getDomainAxis();
//		axis.setAutoRange(true);
//		axis.setFixedAutoRange(60000.0);
//		axis = plot.getRangeAxis();
//		axis.setRange(0.0, 700.0);
		NumberAxis valueAxis = new NumberAxis(valueAxisLabel);
//		valueAxis.setAutoRangeIncludesZero(false);
		valueAxis.setRange(0,500);

		XYPlot plot = new XYPlot(new XYSeriesCollection(series), timeAxis, valueAxis, new XYLineAndShapeRenderer(true, false));
		JFreeChart chart = new JFreeChart(s, JFreeChart.DEFAULT_TITLE_FONT, plot, false);

		ChartPanel chartPanel = new ChartPanel(chart);
		this.add(chartPanel);

	}

	public void addSample(Sample sample){
		if(this.isVisible()){
//			if(!this.lastDate.equals(sample.getDate())){
//				this.series.add(new Millisecond(/*sample.getDate()*/), sample.getValue());
				this.series.add(sample.getIndex(), sample.getValue());
//				this.lastDate=sample.getDate();
//			}
		}
	}
}
