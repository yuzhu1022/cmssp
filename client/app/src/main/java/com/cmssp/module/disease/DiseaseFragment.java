package com.cmssp.module.disease;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.cmssp.Const;
import com.cmssp.R;
import com.cmssp.model.entity.DiseaseEntity;
import com.cmssp.model.entity.DiseaseListEntity;
import com.cmssp.model.repository.DiseaseRepo;
import com.cmssp.model.service.DiseaseService;
import com.ox.adapter.RecyclerAdapter;
import com.ox.adapter.RecyclerAdapterHelper;
import com.ox.base.BaseEntity;
import com.ox.base.BaseFragment;
import com.ox.data.retrofit.DefaultSubscriber;
import com.ox.utils.LayoutUtil;
import com.ox.utils.ToastUtils;
import com.ox.widgets.pullToRefreshView.OXRecyclerView;

import butterknife.BindView;

/**
 * 疾病症状页
 * Created by Administrator on 2016/11/10.
 */
public class DiseaseFragment extends BaseFragment {

    @BindView(R.id.content_view)
    OXRecyclerView contentView;

    @BindView(R.id.title)
    TextView title;

    private int mCurrentPage = 0;

    private RecyclerAdapter<DiseaseEntity> mAdapter;

    @Override
    protected int getLayout() {
        return R.layout.layout_fragment_disease;
    }

    @Override
    protected void initView(View view, Bundle savedInstanceState) {
        contentView.setLayoutManager(LayoutUtil.getLinearLayout(mContext));
        contentView.setLoadingListener(this);

        title.setText(R.string.disease);

        mAdapter = new RecyclerAdapter<DiseaseEntity>(mContext , R.layout.layout_disease_item) {
            @Override
            protected void convert(RecyclerAdapterHelper helper, DiseaseEntity item) {
                helper.setText(R.id.disease_desc_dname , item.name);
                helper.setText(R.id.disease_desc_cure , item.cure);
                helper.setText(R.id.disease_desc_symptom , item.symptom);
                helper.setText(R.id.disease_desc_material , item.material);
            }
        };

        contentView.setAdapter(mAdapter);
        contentView.addItemDecoration(LayoutUtil.getHorizontalDivider_6(mContext));
    }

    @Override
    public void onRefresh() {
        super.onRefresh();
        mCurrentPage = 0;
        loadDataFromServer(mCurrentPage++);
    }

    @Override
    public void onLoadMore() {
        super.onLoadMore();
        loadDataFromServer(mCurrentPage++);
    }

    @Override
    protected void initData() {
        super.initData();
        loadDataFromServer(mCurrentPage++);
    }

    void loadDataFromServer(int pageNumber){
        DiseaseRepo.instance.getDiseaseList(pageNumber , DiseaseService.CATE_ALL)
//                .compose(bindUntilEvent(FragmentEvent.DESTROY))
                .subscribe(new DefaultSubscriber<BaseEntity<DiseaseListEntity>>() {
                    @Override
                    protected void _onNext(BaseEntity<DiseaseListEntity> result) {
                        if (isRefresh){
                            mAdapter.clear();
                        }
                        if (result.ret == Const.ERROR_OK){
                            DiseaseListEntity listEntity = result.data;
                            if(!listEntity.diseaseEntityList.isEmpty()){
                                mAdapter.addAll(listEntity.diseaseEntityList);
                            }
                        }
                    }

                    @Override
                    public void onCompleted() {
                        super.onCompleted();

                        contentView.refreshComplete();
                        contentView.loadMoreComplete();
                    }

                    @Override
                    public void onError(Throwable e) {
                        super.onError(e);
                        contentView.refreshComplete();
                        contentView.loadMoreComplete();

                        ToastUtils.show(mContext , "刷新失败");
                    }
                });
    }
}
