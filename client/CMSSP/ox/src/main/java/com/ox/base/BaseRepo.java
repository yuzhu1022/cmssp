package com.ox.base;

import com.ox.utils.SingletonUtils;

import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/**
 * Created by Administrator on 2016/11/3.
 */
public class BaseRepo{

    protected Observable transform(Observable ob){
        return ob.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
    }
}
