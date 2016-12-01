package com.ox.utils;

public class ExecuteTimeAnalyzeUtil {
	
	private static long startTime;
	
	private static final boolean ANALYZEOPEN = true;
	
	private static String preTag = "";
	
	private static LogUtil logger = LogUtil.getLogger(ExecuteTimeAnalyzeUtil.class.getSimpleName());
	
	public static void start(){
		if (ANALYZEOPEN) {
			startTime = System.currentTimeMillis();
			
			logger.e("ayalyze started at ------------> " + startTime);
		}
	}
	
	public static void tag(String tag) {
		if (ANALYZEOPEN) {
			
			if (preTag.equals("")) {
				logger.e("execute from start to ["+tag+"] time used ------------> " + (System.currentTimeMillis() - startTime));
				
			}else{
				logger.e("execute from ["+preTag+"] to ["+tag+"] time used ------------> " + (System.currentTimeMillis() - startTime));
			}
			preTag = tag;
			startTime = System.currentTimeMillis();
		}
	}
	
	public static void tag() {
		if (ANALYZEOPEN) {
			logger.e("util now  time used ------------> " + (System.currentTimeMillis() - startTime));
			
			startTime = System.currentTimeMillis();
		}
	}
	
	public static void end() {
		preTag = "";
		startTime = 0;
	}

}
