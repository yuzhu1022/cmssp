package com.cmssp.module.loading;

import android.os.Bundle;

import com.cmssp.Const;
import com.cmssp.R;
import com.cmssp.module.main.CMMainActivity;
import com.cmssp.module.splash.SplashView;
import com.ox.base.BaseActivity;
import com.ox.base.BaseEvent;
import com.ox.utils.ActivityUtil;
import com.ox.utils.SPUtil;

import java.util.Timer;
import java.util.TimerTask;

public class EntryActivity extends BaseActivity {

    @Override
    public int getLayout() {
        return R.layout.activity_entry;
    }

    @Override
    public void initView(Bundle savedInstanceState) {

    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (checkFirstInit()){
            setContentView(new SplashView(this));
        }else{
            enterLoading();
        }
    }

    private boolean checkFirstInit(){
        String version = SPUtil.get(this ,SPUtil.SP_VERSION , "").toString();
        mLogger.d("APP_VERSION : " + version);
        if (version.equals("")){
            SPUtil.put(this , SPUtil.SP_VERSION , Const.APP_VERSION);
            return true;
        }
        return false;
    }

    @Override
    public void onEvent(BaseEvent event){
        if (event.eventType == Const.EVENT_EXIT_SPLASH){
            enterLoading();
        }
    }

    private void enterLoading() {
        setContentView(R.layout.activity_entry);
//        ImageView loading = (ImageView)findViewById(R.id.entry_loading);
//        Animation animation = AnimationUtils.loadAnimation(this,R.anim.entry_loading_rotation);
//        animation.setInterpolator(new LinearInterpolator());
//        loading.startAnimation(animation);

        TimerTask task = new TimerTask() {
            @Override
            public void run() {
                ActivityUtil.start(EntryActivity.this , CMMainActivity.class);
                EntryActivity.this.finish();
            }
        };

        Timer timer = new Timer();
        timer.schedule(task , 3000);
    }
}
