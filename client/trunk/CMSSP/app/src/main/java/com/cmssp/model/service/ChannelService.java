package com.cmssp.model.service;

import com.cmssp.model.entity.ChannelListEntity;
import com.ox.base.BaseEntity;

import retrofit2.http.GET;
import retrofit2.http.Query;
import rx.Observable;

/**
 * Created by Administrator on 2016/11/16.
 */
public interface ChannelService {
    @GET("cmssp")
    Observable<BaseEntity<ChannelListEntity>> channelList(
            @Query("service") String service,
            @Query("token") String token,
            @Query("pageNumber") int pageNumber
    );

    @GET("channel")
    Observable<BaseEntity<ChannelListEntity>> channelListTest(
            @Query("service") String service,
            @Query("token") String token,
            @Query("pageNumber") int pageNumber
    );
}
