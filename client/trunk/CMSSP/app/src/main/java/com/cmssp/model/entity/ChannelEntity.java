package com.cmssp.model.entity;

import java.util.List;

/**
 * Created by Administrator on 2016/11/21.
 * 经脉
 */
public class ChannelEntity {
    public long id = -1L;
    public String name = "";
    public String pic = "";
    public String effect = "";
    public String visc = "";
    public String time = "";
    public String shichen = "";
    public String ext_data = "";

    public List<PointEntity> points;

    public String getShowTime(){
        return shichen+"("+time+")";
    }
}
