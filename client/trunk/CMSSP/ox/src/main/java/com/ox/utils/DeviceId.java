package com.ox.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;

public final class DeviceId {
	private static final String TAG = "DeviceId";
	private static final String SHARED_NAME = "bids";
	private static final String KEY_IMEI = "i";
	private static final String KEY_ANDROID_ID = "a";
	private static String mDeviceId = null;
	
	public static final int SCREEN_PORTRAIT = 0;
    public static final int SCREEN_LANDSCAPE = 1;

	private DeviceId() {
	}

	/**
	 * For debug only
	 * 
	 * @param context
	 * @return
	 */
	public static String getDebugDeviceID(Context context) {
		SharedPreferences sharedpreferences = context.getSharedPreferences("bids", 0);
		String s = sharedpreferences.getString("i", null);

		if (s == null) {
			s = getIMEI(context);
			SharedPreferences.Editor editor = sharedpreferences.edit();
			editor.putString("i", s);
			editor.commit();
		}
		String s1 = sharedpreferences.getString("a", null);
		if (s1 == null) {
			s1 = getAndroidId(context);
			SharedPreferences.Editor editor1 = sharedpreferences.edit();
			editor1.putString("a", s1);
			editor1.commit();
		}

		mDeviceId = DigestUtils.md5((new StringBuilder()).append(System.currentTimeMillis()).append(s).append(s1).toString());

		return mDeviceId;
	}

	private static String getIMEI(Context context) {
		String s = "";
		TelephonyManager telephonymanager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		if (telephonymanager != null) {
			s = telephonymanager.getDeviceId();
			if (TextUtils.isEmpty(s))
				s = "";
		}
		return s;
	}

	private static String getAndroidId(Context context) {
		String s = "";
		s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
		if (TextUtils.isEmpty(s))
			s = "";
		return s;
	}
	
	/**
     * 当前屏幕的转向
     * 
     * @param context
     * @return
     */
    public static int getScreenOrientation(Context context) {
        DisplayMetrics display = context.getResources().getDisplayMetrics();

        int w = display.widthPixels;
        int h = display.heightPixels;

        if (h > w) {
            return SCREEN_PORTRAIT;
        }

        return SCREEN_LANDSCAPE;
    }

    /**
     * 获取屏幕宽度
     * 
     * @param context
     * @return
     */
    public static int getScreenWidth(Context context) {
        DisplayMetrics display = context.getResources().getDisplayMetrics();

        return display.widthPixels;
    }

    /**
     * 获取屏幕高度
     * 
     * @param context
     * @return
     */
    public static int getScreenHeight(Context context) {
        DisplayMetrics display = context.getResources().getDisplayMetrics();

        return display.heightPixels;
    }

    /**
     * dp转px
     * 
     * @return
     */
    public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * px转dp
     * @return
     */
    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }
}