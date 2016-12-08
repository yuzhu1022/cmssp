package com.ox.data.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.ox.utils.LogUtil;

/**
 * 建表，查询
 * Created by Administrator on 2016/12/8.
 */

public class OXSqliteTableHelper extends SQLiteOpenHelper {

    public static final int DATABASE_VERSION = 1;

    public static final String DATABASE_NAME = "ox.db";

    private static final String COMMA_SEP = ",";

    private SQLiteDatabase mDb;

    private LogUtil logger = LogUtil.getLogger(OXSqliteTableHelper.class.getSimpleName());

    protected String mTableName = "";

    protected String[] mDescs;

    public OXSqliteTableHelper(Context context , String tableName , String[] descs) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
        mTableName = tableName;
        mDescs = descs;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        mDb = db;

        createTable(mTableName , mDescs);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        dropTable();

        onCreate(db);
    }

    /**
     * columnSqls example
     * [
     *  FeedEntry._ID  INTEGER PRIMARY KEY  ,
     *  pic varchar(45) DEFAULT NULL COMMENT ,
     * ]
     */
    private void createTable(String tableName , String[] columnSqls){

        if (columnSqls.length == 0){
            logger.e("table column is empty !!!!");
            return;
        }

        String columnDesc = "";
        for (String desc:columnSqls) {
            columnDesc.concat(desc).concat(COMMA_SEP);
        }

        logger.d("sql create table ===> " +"CREATE TABLE " + tableName + " ("+columnDesc+ " ) ENGINE=InnoDB DEFAULT CHARSET=utf8");

        mDb.execSQL(
            "CREATE TABLE " + tableName + " ("+columnDesc+ " ) ENGINE=InnoDB DEFAULT CHARSET=utf8"
        );
    }

    public void dropTable(){
        mDb.execSQL("DROP TABLE IF EXISTS " + mTableName);
    }

    public Cursor queryAll(){
        return mDb.query(mTableName , null , null , null , null ,null,null);
    }

    /**
     * @param selection  WHERE name = ? and age =?
     * @param selectionArgs {"Jim} , "18"}
     * @return
     */
    public Cursor querySimple(String selection , String [] selectionArgs , String groupBy ,String orderBy){
        return mDb.query(mTableName , null , selection , selectionArgs ,groupBy , null , orderBy);
    }

    public Cursor querySimple(String selection , String [] selectionArgs){
        return mDb.query(mTableName , null , selection , selectionArgs ,null , null , null);
    }
}
