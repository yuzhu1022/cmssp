package com.ox.utils;

/**
 * Created by Administrator on 2016/9/27.
 */
import android.util.Log;

import com.ox.Constant;

import java.util.Hashtable;

/**
 * 日志类
 */
public class LogUtil {

    private final static String LOG_TAG = "OX";
    private static Hashtable<String, LogUtil> sLoggerTable;
    private String mClassName;

    static {
        sLoggerTable = new Hashtable<String, LogUtil>();
    }

    public static LogUtil getLogger(String className) {
        LogUtil classLogger = (LogUtil) sLoggerTable.get(className);
        if (classLogger == null) {
            classLogger = new LogUtil(className);
            sLoggerTable.put(className, classLogger);
        }
        return classLogger;
    }

    private LogUtil(String name) {
        mClassName = name;
    }

    public void v(String log) {
        if (Constant.DEBUG_MODE) {
            Log.v(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log);
        }
    }

    public void d(String log) {
        if (Constant.DEBUG_MODE) {
            Log.d(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log);
        }
    }

    public void i(String log) {
        if (Constant.DEBUG_MODE) {
            Log.i(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log);
        }
    }

    public void i(String log, Throwable tr) {
        if (Constant.DEBUG_MODE) {
            Log.i(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log + "\n" + Log.getStackTraceString(tr));
        }
    }

    public void w(String log) {
        if (Constant.DEBUG_MODE) {
            Log.w(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log);
        }
    }

    public void w(String log, Throwable tr) {
        if (Constant.DEBUG_MODE) {
            Log.w(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log + "\n" + Log.getStackTraceString(tr));
        }
    }

    public void e(String log) {
        if (Constant.DEBUG_MODE) {
            Log.e(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log);
        }
    }

    public void e(String log, Throwable tr) {
        if (Constant.DEBUG_MODE) {
            Log.e(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + log + "\n" + Log.getStackTraceString(tr));
        }
    }
    /**
     * 将日志写到本地
     * @param str 0：文件夹名称；
     */
    public void writeLog(String str){
        Log.d(LOG_TAG, "{Thread:" + Thread.currentThread().getName() + "}" + "[" + mClassName + ":] " + str);
        FileUtils.writeFile("CMSSP.txt" , str);
    }
}
