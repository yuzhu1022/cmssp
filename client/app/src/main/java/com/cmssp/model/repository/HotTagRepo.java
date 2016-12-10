package com.cmssp.model.repository;

import com.cmssp.Const;
import com.cmssp.model.service.FTSService;
import com.ox.base.BaseEntity;
import com.ox.base.BaseRepo;
import com.ox.data.retrofit.RetrofitClient;
import com.ox.utils.MockUtil;
import com.ox.utils.SingletonUtils;

import java.util.ArrayList;

import rx.Observable;

/**
 * Created by hucaihua on 2016/12/10.
 */

public class HotTagRepo extends BaseRepo {
    private FTSService ftsService;

    public static HotTagRepo instance = SingletonUtils.newInstance(HotTagRepo.class);

    public HotTagRepo(){
        ftsService = RetrofitClient.getInstance().createService(FTSService.class);
    }

    public Observable<BaseEntity<ArrayList<String>>> hotTags(){

        return transform(
                !MockUtil.OPEN_MOCK ?
                        ftsService.hotTag(Const.SERVICE_FTS_HOTTAGS , Const.AUTH_TOKEN)
                        :
                        ftsService.hotTagTest(Const.SERVICE_FTS_HOTTAGS , Const.AUTH_TOKEN)
        );
    }
}
