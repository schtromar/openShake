package openShake.client;

class Logger{
	enum Level{
		QUIET,
		SILENT,
		INFO,
		ALL
	}

	private static boolean printData = true;
	private static boolean printInfo = true;
	private static boolean printDebug = true;
	private static boolean printError = true;
	private static boolean printWarn = true;


	private static Level level = Level.ALL;

	protected void setPrintData(boolean value){
		printData = value;
	}

	static void data(String s){
		if(printData){
			System.out.println(s);
		}
	}

	static void info(String s){
		if(printInfo){
			System.out.println(s);
		}
	}

	static void debug(String s){
		if(printDebug){
			System.out.println(s);
		}
	}

	static void error(String s){
		if(printError){
			System.out.println(s);
		}
	}

	static void error(String s, Exception e){
		if(printError){
			System.out.println(s);
			e.printStackTrace();
		}
	}

	static void warn(String s){
		if(printWarn){
			System.out.println(s);
		}
	}


}