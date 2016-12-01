package com.ox.base;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.ox.widgets.pullToRefreshView.OXRecyclerView.LoadingListener;
import com.trello.rxlifecycle.components.RxFragment;

import butterknife.ButterKnife;
import butterknife.Unbinder;

/**
 * Created by Administrator on 2016/11/3.
 */
public abstract class BaseFragment extends RxFragment implements LoadingListener{

    protected Activity mContext;
    private Unbinder mUnbinder;
    protected boolean isRefresh = false;

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mContext = activity;
    }

    @Override
    public void onResume() {
        super.onResume();

    }

    @Override
    public void onPause() {
        super.onPause();

    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mUnbinder.unbind();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(getLayout(), container, false);
        mUnbinder = ButterKnife.bind(this, view);
        initView(view, savedInstanceState);
        initData();
        return view;
    }

    //获取布局Fragment文件
    protected abstract int getLayout();

    //初始化Fragment的布局
    protected abstract void initView(View view, Bundle savedInstanceState);

    protected void initData() {
    }

    @Override
    public void onRefresh() {
        isRefresh = true;
    }

    @Override
    public void onLoadMore() {
        isRefresh = false;
    }
}
