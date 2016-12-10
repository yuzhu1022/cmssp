package com.cmssp.module.cmsense;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.cmssp.R;
import com.ox.base.BaseFragment;

import butterknife.BindView;

/**
 * Created by Administrator on 2016/11/10.
 */
public class FTSFragment extends BaseFragment{

    @BindView(R.id.title)
    TextView title;

    @BindView(R.id.FTSEditText)
    EditText editText;

    @Override
    protected int getLayout() {
        return R.layout.layout_fragment_cmfts;
    }

    @Override
    protected void initView(View view, Bundle savedInstanceState) {
        title.setText(R.string.app_name);

    }
}
