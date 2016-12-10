package com.cmssp.model.repository;

import com.cmssp.Const;
import com.cmssp.model.entity.ChannelListEntity;
import com.cmssp.model.service.ChannelService;
import com.ox.base.BaseEntity;
import com.ox.base.BaseRepo;
import com.ox.data.retrofit.RetrofitClient;
import com.ox.utils.MockUtil;
import com.ox.utils.SingletonUtils;

import rx.Observable;

/**
 * Created by Administrator on 2016/11/16.
 */
public class ChannelRepo extends BaseRepo {
    public static ChannelRepo instance = SingletonUtils.newInstance(ChannelRepo.class);

    private ChannelService service;

    public ChannelRepo(){
        service = RetrofitClient.getInstance().createService(ChannelService.class);
    }

    public Observable<BaseEntity<ChannelListEntity>> getChannelList(int pageNumber){
        return transform(
                !MockUtil.OPEN_MOCK
                        ?
                        service.channelList(Const.SERVICE_CHANNEL_GETLIST , Const.AUTH_TOKEN , pageNumber)
                        :
                        service.channelListTest(Const.SERVICE_CHANNEL_GETLIST , Const.AUTH_TOKEN , pageNumber)
        );
    }
}
