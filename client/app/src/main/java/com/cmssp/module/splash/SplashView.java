package com.cmssp.module.splash;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.cmssp.Const;
import com.cmssp.R;
import com.cmssp.model.MyEvent;
import com.ox.utils.LogUtil;

import org.greenrobot.eventbus.EventBus;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by Administrator on 2016/9/26.
 */
public class SplashView extends RelativeLayout implements ViewPager.OnPageChangeListener , View.OnClickListener{

    private static final int MAX_PAGE_SIZE = 3;

    private ViewPager mPager;
    private LinearLayout mPoints;

    private ImageView points[];
    private List<View> viewList;

    private int currentIndex = 0;

    private Context mContext;

    private LogUtil logger = LogUtil.getLogger(SplashView.class.getName());

    public SplashView(Context context) {
        super(context);

        mContext = context;

        inflate(context , R.layout.splash ,SplashView.this);

        initPager();

        initPoints();
    }

    private void initPager() {

        viewList = new ArrayList<View>();

        mPager = (ViewPager)findViewById(R.id.splash_viewpager);
        for (int i = 0 ; i < MAX_PAGE_SIZE;i++){
            RelativeLayout view = (RelativeLayout)View.inflate(mContext, R.layout.page_item , null);
            viewList.add(view);
        }

        ViewPageAdapter adapter = new ViewPageAdapter(viewList);

        mPager.setAdapter(adapter);

        mPager.addOnPageChangeListener(this);
    }

    private void initPoints() {

        points = new ImageView[MAX_PAGE_SIZE];

        mPoints = (LinearLayout)findViewById(R.id.splash_points);

        for (int i = 0 ; i < MAX_PAGE_SIZE ; i++){
            ImageView view = new ImageView(mContext);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                view.setImageDrawable(mContext.getResources().getDrawable(R.drawable.guide_dots , null));
            }else{
                view.setImageDrawable(mContext.getResources().getDrawable(R.drawable.guide_dots ));
            }

            view.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT , LinearLayout.LayoutParams.WRAP_CONTENT , 1.0f));

            points[i] = view;

            points[i].setOnClickListener(this);
            points[i].setTag(i);

            mPoints.addView(view);

        }

        points[currentIndex].setEnabled(false);
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {

    }

    @Override
    public void onPageSelected(int position) {
        for (int i = 0 ; i < MAX_PAGE_SIZE ; i++){
            points[i].setEnabled(!(i == position));
        }
        currentIndex = position;
    }

    @Override
    public void onPageScrollStateChanged(int state) {

    }

    @Override
    public void onClick(View v) {
        int position = (Integer) v.getTag();
        mPager.setCurrentItem(position);

        points[currentIndex].setEnabled(true);
        points[position].setEnabled(false);

        currentIndex = position;
    }

    private class ViewPageAdapter extends PagerAdapter{

        private List<View> mList ;
        public ViewPageAdapter(List<View> viewList) {
            mList = viewList;
        }

        @Override
        public int getCount() {
            return mList.size();
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view.equals(object);
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {

            RelativeLayout view = (RelativeLayout)mList.get(position);
            ImageView bg = (ImageView)view.findViewById(R.id.page_item_bg);

            Drawable d;
            int rid = R.drawable.guide1;
            switch (position){
                case 0 :
                    rid = R.drawable.guide1;
                    break;
                case 1 :
                    rid = R.drawable.guide2;
                    break;
                case 2 :
                    rid = R.drawable.guide3;
                    break;
                default:
                    rid = R.drawable.guide1;
                    break;
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                d = mContext.getDrawable(rid);
            }else{
                d = mContext.getResources().getDrawable(rid);
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
                bg.setBackground(d);
            }else{
                bg.setImageDrawable(d);
            }

            Button b = (Button)view.findViewById(R.id.startButton);
            if (position == MAX_PAGE_SIZE -1 ){
                b.setVisibility(VISIBLE);
                b.setOnClickListener(new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        EventBus.getDefault().post(new MyEvent<Object>(Const.EVENT_EXIT_SPLASH , null));
                    }
                });
            }else {
                b.setVisibility(GONE);
            }
            container.addView(view);
            return mList.get(position);
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView(mList.get(position));
        }
    }
}
