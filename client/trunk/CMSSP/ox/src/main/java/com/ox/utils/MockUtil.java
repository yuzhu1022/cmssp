package com.ox.utils;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.shanbay.mock.MockApiInterceptor;
import com.shanbay.mock.MockApiSuite;
import com.shanbay.mock.api.StandardMockApi;
import com.shanbay.mock.constant.MockHttpMethod;
import com.shanbay.mock.constant.MockState;

import java.util.HashMap;
import java.util.Map;

import okhttp3.OkHttpClient;

/**
 *
 * 模拟http请求 ，输入需要模拟的API和对应结果的json名称
 * json默认放置在assets下
 * Created by Administrator on 2016/11/16.
 */
public class MockUtil {
    public static final MockHttpMethod MOCK_METHOD = MockHttpMethod.GET ;
    public static final MockState MOCK_STATE = MockState.SUCCESS;

    public static final String SUITE_NAME = "ox";

    public static final String ERROR_MOCK_JSON_NAME = "error";

    public static final boolean MOCK_JSON_IN_SDCARD = false;

    public static final long REQUEST_TIME = -1L;

    public static Map<String ,String> mAttrs = new HashMap<>();

    static {
        mAttrs.put("disease" , "disease");
        mAttrs.put("channel" , "channel");
        mAttrs.put("drug" , "drug");
        mAttrs.put("sense" , "sense");
    }

    /**
     * @param builder :
     * @param attrs ：url 和对应的 mock json，例如  "/api/user" ==> "user.json"
     */
    public static void openMock(Context context , @NonNull OkHttpClient.Builder builder , @Nullable Map<String ,String > attrs){

        if (attrs == null || attrs.isEmpty()){
            attrs = mAttrs;
        }

        MockApiSuite suite = new MockApiSuite(SUITE_NAME);
        for (String url : attrs.keySet()){
            suite.addMockApi(new StandardMockApi(MOCK_METHOD , url)
                    .setSuccessDataFile(attrs.get(url) + ".json")
                    .setErrorDataFile(ERROR_MOCK_JSON_NAME + ".json")
                    .setState(MOCK_STATE)
                    .setRequestTime(REQUEST_TIME));
        }

        MockApiInterceptor mockApiInterceptor = new MockApiInterceptor(context ,MOCK_JSON_IN_SDCARD);
        mockApiInterceptor.addMockApiSuite(suite);
        builder.addInterceptor(mockApiInterceptor);
    }
}
