package com.cmssp.model;

import com.ox.base.BaseEntity;
import com.ox.base.BaseEvent;

/**
 * Created by Administrator on 2016/11/3.
 */
public class MyEvent<T> extends BaseEvent<T>{

    public MyEvent(int eventType , T data){
        this.eventType = eventType;
        this.data = data;
    }
}
