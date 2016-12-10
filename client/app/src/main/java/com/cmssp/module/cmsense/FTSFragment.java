package com.cmssp.module.cmsense;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.cmssp.Const;
import com.cmssp.R;
import com.cmssp.model.repository.FTSRepo;
import com.cmssp.model.repository.HotTagRepo;
import com.ox.adapter.Adapter;
import com.ox.adapter.AdapterHelper;
import com.ox.base.BaseEntity;
import com.ox.base.BaseFragment;
import com.ox.data.retrofit.DefaultSubscriber;
import com.ox.utils.ResourceUtils;
import com.ox.widgets.CustomGrideView;

import java.util.ArrayList;

import butterknife.BindView;

/**
 * Created by Administrator on 2016/11/10.
 */
public class FTSFragment extends BaseFragment{

    @BindView(R.id.title)
    TextView title;

    @BindView(R.id.FTSEditText)
    EditText editText;

    @BindView(R.id.hotTags)
    CustomGrideView gridView;

    private Adapter<String> gridAdapter;

    @Override
    protected int getLayout() {
        return R.layout.layout_fragment_cmfts;
    }

    @Override
    protected void initView(View view, Bundle savedInstanceState) {
        title.setText(R.string.app_name);

        gridAdapter = new Adapter<String>(mContext , R.layout.layout_hottag_item) {
            @Override
            protected void convert(AdapterHelper helper, String item) {
                helper.setText(R.id.hotitem , item);
                if (helper.getPosition() == 0){
                    helper.setTextColor(R.id.hotitem , ResourceUtils.getColor(mContext , "red") );
                }else if (helper.getPosition() == 1){
                    helper.setTextColor(R.id.hotitem , ResourceUtils.getColor(mContext , "hotpink") );
                }else if (helper.getPosition() == 2){
                    helper.setTextColor(R.id.hotitem , ResourceUtils.getColor(mContext , "orange") );
                }
            }
        };

        gridView.setAdapter(gridAdapter);

    }

    @Override
    protected void initData() {
        super.initData();

        HotTagRepo.instance.hotTags().subscribe(new DefaultSubscriber<BaseEntity<ArrayList<String>>>() {
            @Override
            protected void _onNext(BaseEntity<ArrayList<String>> arrayListBaseEntity) {
                if (arrayListBaseEntity.ret == Const.ERROR_OK){
                    gridAdapter.addAll(arrayListBaseEntity.data);
                }else{
                    gridAdapter.clear();
                }
            }
        });
    }
}
