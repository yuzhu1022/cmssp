package com.ox.data.retrofit;

import com.ox.utils.LogUtil;
import com.ox.utils.ToastUtils;

import rx.Subscriber;

/**
 * 简单订阅者，负责实际处理结果
 * Created by Administrator on 2016/11/3.
 */
public abstract class DefaultSubscriber<T> extends Subscriber<T> {

    private LogUtil log = LogUtil.getLogger(DefaultSubscriber.class.getSimpleName());

    @Override
    public void onCompleted() {
        
    }

    @Override
    public void onError(Throwable e) {
        log.e(e.getMessage());
    }

    @Override
    public void onNext(T t) {
        _onNext(t);
    }

    /**
     * 重载这个方法，用于实际处理
     * @param t
     */
    protected abstract void _onNext(T t);
}
