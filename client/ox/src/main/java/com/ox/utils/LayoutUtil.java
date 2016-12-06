package com.ox.utils;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager;

import com.ox.R;
import com.yqritc.recyclerviewflexibledivider.HorizontalDividerItemDecoration;

/**
 * Created by Administrator on 2016/11/16.
 */
public class LayoutUtil {

    public static LinearLayoutManager getLinearLayout(Context context) {
        return new LinearLayoutManager(context);
    }


    public static GridLayoutManager getGridLayout(Context context, int count) {
        return new GridLayoutManager(context, count);
    }

    public static StaggeredGridLayoutManager getVerticalStagLayout() {
        return new StaggeredGridLayoutManager(2, StaggeredGridLayoutManager.VERTICAL);
    }


    public static HorizontalDividerItemDecoration getHorizontalDivider_5(Context context) {
        return new HorizontalDividerItemDecoration.Builder(context)
                .color(Color.WHITE)
                .sizeResId(R.dimen.five)
                .build();
    }

    public static HorizontalDividerItemDecoration getHorizontalDivider_6(Context context) {
        return new HorizontalDividerItemDecoration.Builder(context)
                .color(Color.parseColor("#f5f5f5"))
                .sizeResId(R.dimen.six)
                .build();
    }

    public static HorizontalDividerItemDecoration getHorizontalDivider_3(Context context) {
        return new HorizontalDividerItemDecoration.Builder(context)
                .color(Color.parseColor("#f5f5f5"))
                .sizeResId(R.dimen.three)
                .build();
    }
}
