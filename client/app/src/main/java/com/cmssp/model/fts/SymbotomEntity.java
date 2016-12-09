package com.cmssp.model.fts;

import android.provider.BaseColumns;

/**
 * Created by Administrator on 2016/12/7.
 */

public class SymbotomEntity implements BaseColumns{
    private int type = 0;
    private String content = "";// tag and title json
    private String name = "";
    private int id = -1; // 对应模块的id

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
