package com.cmssp.model.repository;

import android.content.Context;
import android.database.Cursor;

import com.cmssp.model.fts.SymbotomEntity;
import com.cmssp.model.fts.SymbotomEntityList;
import com.ox.base.BaseRepo;
import com.ox.data.sqlite.OXSqliteTableHelper;

import rx.Observable;
import rx.Subscriber;

/**
 * Created by Administrator on 2016/12/9.
 */

public class FTSRepo extends BaseRepo {

    private static final String SYMBOTOM_TABLE_NAME = "cmssp_symbotom";

    private String selection = "content MATCH ?";

    private String [] descs = {
            SymbotomEntity._ID + " INTEGER PRIMARY KEY",
            "type INTEGER",
            "content VARCHAR(300)",
            "name VARCHAR(100)",
            "id bigint(20)",
    };

    private OXSqliteTableHelper<SymbotomEntity> mHelper;

    public FTSRepo(Context context){
        mHelper = new OXSqliteTableHelper(context, SYMBOTOM_TABLE_NAME, descs, true);
    }

    public Observable<SymbotomEntityList> searchSymbotom(final String tag){
        return transform(Observable.create(new Observable.OnSubscribe<SymbotomEntityList>(){
                    @Override
                    public void call(Subscriber<? super SymbotomEntityList> subscriber) {
                        Cursor c = mHelper.querySimple(selection , new String[]{tag});
                        SymbotomEntityList symbotomEntities = new SymbotomEntityList();
                        symbotomEntities.symbotomEntityList = mHelper.toBeanList(c , SymbotomEntity.class);
                        subscriber.onNext(symbotomEntities);
                    }
                }) );
    }
}
