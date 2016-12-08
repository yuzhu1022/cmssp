package com.cmssp;

import com.ox.base.BaseApplication;
import com.ox.data.retrofit.RetrofitClient;

/**
 * Created by Administrator on 2016/9/27.
 */
public class CMSSPApplication extends BaseApplication {

    private static CMSSPApplication instance;

    public CMSSPApplication(){
    }

    public static final CMSSPApplication getInstance() {
        if (instance == null) {
            synchronized (CMSSPApplication.class) {
                if (instance == null) {
                    instance = new CMSSPApplication();
                }
            }
        }
        return instance;
    }

    @Override
    public void onCreate() {
        super.onCreate();

        RetrofitClient.init(this , Const.NET_BASE_URL);
    }
}
