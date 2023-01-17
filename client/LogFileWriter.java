package openShake.client;

import java.io.*;

public class LogFileWriter implements Updater{

	private FileFormat converter;
	private BufferedWriter bw;

	public LogFileWriter(FileFormat converter, String filename){
		this.converter = converter;
		try{
			this.bw = new BufferedWriter(new FileWriter(new File(filename)));
			this.bw.write(this.converter.header());
		}catch(IOException e){
			Logger.error("IO Exception! Cannot open file.");
		}
	}

	public void addSample(Sample sample){
		try{
			this.bw.write(this.converter.convertTo(sample));
		}catch(IOException e){
			Logger.error("IO Exception! Cannot write to file.");
		}
	}

	public void flush(){
		try{
			this.bw.flush();
		}catch(IOException e){
			Logger.error("IO Exception! Cannot flush to file.");
		}
	}

	public void close(){
		try{
			this.bw.write(this.converter.footer());
			this.bw.close();
		}catch(IOException e){
			Logger.error("IO Exception! Cannot flush to file.");
		}

	}

}
