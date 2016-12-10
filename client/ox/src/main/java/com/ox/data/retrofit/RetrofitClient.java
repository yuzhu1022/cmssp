package com.ox.data.retrofit;

import android.content.Context;

import com.ox.utils.MockUtil;
import com.zhy.http.okhttp.log.LoggerInterceptor;

import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/**
 * Created by Administrator on 2016/11/3.
 */
public class RetrofitClient {
    private static RetrofitClient client;
    private static String BASE_URL = "";
    private static Context mContext;
    private Retrofit.Builder builder;

    private Retrofit retrofit;

    public RetrofitClient(){
        if (BASE_URL.equals("")){
            throw new Error("call RetrofitClient.init first!");
        }

        OkHttpClient.Builder okBuilder = new OkHttpClient.Builder();
        okBuilder.addInterceptor(new LoggerInterceptor("ox"));
        if (MockUtil.OPEN_MOCK){
            MockUtil.openMock(mContext , okBuilder , null);
        }
        OkHttpClient okHttpClient = okBuilder.build();

        builder = new Retrofit.Builder()
                .client(okHttpClient)
                .addConverterFactory(GsonConverterFactory.create())
                .addCallAdapterFactory(RxJavaCallAdapterFactory.create());


        retrofit = builder.baseUrl(BASE_URL).build();
    }

    public static RetrofitClient getInstance(){
        if (client == null){
            synchronized (RetrofitClient.class){
                if (client == null){
                    client = new RetrofitClient();
                }
            }
        }
        return client;
    }



    /**
     * @param apiUrl ： API服务地址
     */
    public static void init(Context context , String apiUrl){
        mContext = context;
        BASE_URL = apiUrl;
    }

    public <T> T createService(Class<T> service){
        return retrofit.create(service);
    }
}
