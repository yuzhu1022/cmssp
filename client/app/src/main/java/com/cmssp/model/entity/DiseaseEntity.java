package com.cmssp.model.entity;

import com.cmssp.model.service.DiseaseService;

/**
 * Created by Administrator on 2016/11/16.
 */
public class DiseaseEntity {
    public long id = -1L;
    public String tag = "";//症状标签
    public int cateId = DiseaseService.CATE_ALL;//症状分类ID
    public String name = "";//症状名称
    public String symptom = "";//症状
    public String cure = "";//治疗思路
    public String material = "";//药方
    public String ext_data = "";//额外数据
}
