package com.cmssp.model.service;

import com.cmssp.model.entity.ChannelListEntity;
import com.ox.base.BaseEntity;

import java.util.ArrayList;

import retrofit2.http.GET;
import retrofit2.http.Query;
import rx.Observable;

/**
 * Created by hucaihua on 2016/12/10.
 */

public interface FTSService {
    @GET("cmssp")
    Observable<BaseEntity<ArrayList<String>>> hotTag(
            @Query("service") String service,
            @Query("token") String token
    );

    @GET("hottag")
    Observable<BaseEntity<ArrayList<String>>> hotTagTest(
            @Query("service") String service,
            @Query("token") String token
    );
}
