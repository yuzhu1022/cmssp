package com.cmssp.model.service;

import com.cmssp.model.entity.DiseaseListEntity;
import com.ox.base.BaseEntity;

import retrofit2.http.GET;
import retrofit2.http.Query;
import rx.Observable;

/**
 * Created by Administrator on 2016/11/16.
 */
public interface DiseaseService {

    public static final int CATE_ALL = 0;

    @GET("cmssp")
    Observable<BaseEntity<DiseaseListEntity>> diseaseList(
            @Query("service") String service,
            @Query("token") String token,
            @Query("pageNumber") int pageNumber,
            @Query("cateId") int cateId
    );

    @GET("disease")
    Observable<BaseEntity<DiseaseListEntity>> diseaseListTest(
            @Query("service") String service,
            @Query("token") String token,
            @Query("pageNumber") int pageNumber,
            @Query("cateId") int cateId
    );
}
