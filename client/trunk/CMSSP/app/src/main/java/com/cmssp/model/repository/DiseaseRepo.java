package com.cmssp.model.repository;

import com.cmssp.Const;
import com.cmssp.model.entity.DiseaseListEntity;
import com.cmssp.model.service.DiseaseService;
import com.ox.Constant;
import com.ox.base.BaseEntity;
import com.ox.base.BaseRepo;
import com.ox.data.retrofit.RetrofitClient;
import com.ox.utils.SingletonUtils;

import rx.Observable;

/**
 * Created by Administrator on 2016/11/16.
 */
public class DiseaseRepo extends BaseRepo {

    public static DiseaseRepo instance = SingletonUtils.newInstance(DiseaseRepo.class);

    private DiseaseService service;

    public DiseaseRepo(){
        service = RetrofitClient.getInstance().createService(DiseaseService.class);
    }

    public Observable<BaseEntity<DiseaseListEntity>> getDiseaseList(int pageNumber , int cateId){
        return transform(
                !Constant.openMock
                        ?
                        service.diseaseList(Const.SERVICE_DISEASE_GETLIST , Const.AUTH_TOKEN , pageNumber , cateId)
                        :
                        service.diseaseListTest(Const.SERVICE_DISEASE_GETLIST , Const.AUTH_TOKEN , pageNumber , cateId));
    }
}
