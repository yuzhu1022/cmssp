package com.ox.base;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;

import com.ox.utils.LogUtil;
import com.trello.rxlifecycle.components.support.RxAppCompatActivity;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * Created by Administrator on 2016/11/3.
 */
public abstract class BaseActivity extends RxAppCompatActivity {
    protected Activity mContext;
    private Unbinder mUnbinder;
    protected boolean isFirstShow = true;

    protected String TAG = this.getClass().getSimpleName();

    protected LogUtil mLogger = LogUtil.getLogger(TAG);

    public abstract int getLayout();
    public abstract void initView(Bundle savedInstanceState);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        setContentView(getLayout());
        mUnbinder = ButterKnife.bind(this);
        mContext = this;
        initView(savedInstanceState);
    }

    @Override
    protected void onResume() {
        if (isFirstShow){
            isFirstShow = false;
            initData();
        }
        super.onResume();
    }

    @Override
    protected void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    protected void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mUnbinder.unbind();
    }

    protected void initData(){

    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(BaseEvent event){

    }
}
