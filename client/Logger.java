package openShake.client;

class Logger{
	enum Level{
		QUIET,
		SILENT,
		INFO,
		ALL
	}

	private static boolean printData = true;
	private static Level level = Level.ALL;

	protected void setPrintData(boolean value){
		this.printData = value;
	}

	protected void Data(String s){
		if(this.printData){
			System.out.println(s);
		}
	}

}
