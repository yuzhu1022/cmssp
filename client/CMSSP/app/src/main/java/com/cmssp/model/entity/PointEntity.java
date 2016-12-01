package com.cmssp.model.entity;

import com.cmssp.model.service.DiseaseService;

/**
 * Created by Administrator on 2016/11/21.
 * 穴位
 */
public class PointEntity {
    public long id = -1L;
    public String tag = "";//穴位主治标签
    public int channelId = 0;//穴位所属经脉ID
    public String name = "";//穴位名称
    public String tone = "";//穴位拼音
    public String effect = "";//穴位按摩主治
    public String locate = "";//治疗思路
    public String expr = "";//经验取穴
    public String ext_data = "";//额外数据
}
