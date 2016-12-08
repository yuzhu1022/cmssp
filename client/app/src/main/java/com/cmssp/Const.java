package com.cmssp;

/**
 * Created by Administrator on 2016/9/27.
 */
public class Const {
    /******************版本配置相关********************/
    public static final String APP_VERSION = "1.0.0";

    public static boolean DEBUG_MODE = true ;

    /******************event bus 事件********************/
    public static final int EVENT_EXIT_SPLASH = 10001;


    /******************网络请求相关*******************/
    public static final String AUTH_TOKEN = "PHJlCTx5Orlt50vJYytlTkpa3xJQdXPzUggllQNUEodMxntAcwCMzxEGkPM8v5QU";
    public static final String NET_BASE_URL = "http://cmssp.applinzi.com/Public/";

    public static final String HTML_BASE_URL = "http://cmssp.applinzi.com/html/";
//    public static final String NET_BASE_URL = "http://192.168.253.1/";

    //接口列表
    public static final String SERVICE_DISEASE_GETLIST = "Disease.GetList";

    public static final String SERVICE_CHANNEL_GETLIST = "Channel.GetList";

    /******************错误码*******************/
    public static final int ERROR_OK = 200;



    /******************tag标签分类 0 - 常见疾病 1 - 穴位按摩 2 - 药方药材 3 - 其他*******************/
    public static final int TAG_DISEASE = 0 ;
    public static final int TAG_CHANNEL = 1 ;
    public static final int TAG_DRUG = 2 ;
    public static final int TAG_OTHER = 3 ;
}
