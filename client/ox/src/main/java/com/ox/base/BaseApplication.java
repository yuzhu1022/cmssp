package com.ox.base;

import android.app.Application;
import android.content.Context;
import android.os.Build;

import io.realm.Realm;

/**
 * Created by Administrator on 2016/11/3.
 */
public class BaseApplication extends Application {

    protected Context mContext;

    @Override
    public void onCreate() {

        super.onCreate();
        mContext = getApplicationContext();
        initRealm();

        Thread.setDefaultUncaughtExceptionHandler(new UncaughtHandler());
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
    }

    private void initRealm() {
        Realm.init(this);
    }

    public Context getAppContext() {
        return mContext;
    }

    class UncaughtHandler implements Thread.UncaughtExceptionHandler {

        @Override
        public void uncaughtException(Thread thread, Throwable ex) {
            ex.printStackTrace();
            System.exit(0);
            android.os.Process.killProcess(android.os.Process.myPid());
        }
    }
}
