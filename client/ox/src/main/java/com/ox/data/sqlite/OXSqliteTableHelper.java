package com.ox.data.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.ox.utils.LogUtil;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 建表，查询
 * Created by Administrator on 2016/12/8.
 */

public class OXSqliteTableHelper<B> extends SQLiteOpenHelper {

    public static final int DATABASE_VERSION = 1;

    public static final String DATABASE_NAME = "ox.db";

    private static final String COMMA_SEP = ",";

    private SQLiteDatabase mDb;

    private LogUtil logger = LogUtil.getLogger(OXSqliteTableHelper.class.getSimpleName());

    private boolean mUseFTS;

    protected String mTableName = "";

    protected String[] mDescs;

    public OXSqliteTableHelper(Context context , String tableName , String[] descs , boolean useFTS) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
        mTableName = tableName;
        mDescs = descs;

        mUseFTS = useFTS;
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

        if (!mUseFTS){
            mDb.execSQL("CREATE TABLE " + tableName + " ("+columnDesc+ " ) ENGINE=InnoDB DEFAULT CHARSET=utf8");
        }else{
            mDb.execSQL("CREATE TABLE " + tableName + " USING FTS4("+columnDesc+ " ) ENGINE=InnoDB DEFAULT CHARSET=utf8");
        }

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

    public List<B> toBeanList(Cursor c , Class clazz){
        List<B> result = new ArrayList<B>();
        while (c.moveToNext()){
            try {
                result.add(toBean(c , clazz));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return result;
    }

    public B toBean(Cursor c, Class clazz) throws Exception {
        String[] columnNames = c.getColumnNames();// 字段数组
        Object obj = clazz.newInstance();
        Field[] fields = clazz.getDeclaredFields();

        for (Field _field : fields) {
            Class<? extends Object> typeClass = _field.getType();// 属性类型
            for (int j = 0; j < columnNames.length; j++) {
                String columnName = columnNames[j];
                typeClass = getBasicClass(typeClass);
                boolean isBasicType = isBasicType(typeClass);

                if (isBasicType) {
                    if (columnName.equalsIgnoreCase(_field.getName())) {// 是基本类型
                        String _str = c.getString(c.getColumnIndex(columnName));
                        if (_str == null) {
                            break;
                        }
                        _str = _str == null ? "" : _str;
                        Constructor<? extends Object> cons = typeClass
                                .getConstructor(String.class);
                        Object attribute = cons.newInstance(_str);
                        _field.setAccessible(true);
                        _field.set(obj, attribute);
                        break;
                    }
                } else {
                    Object obj2 = toBean(c, typeClass);// 递归
                    _field.set(obj, obj2);
                    break;
                }

            }
        }
        return (B)obj;
    }

    /**
     * 判断是不是基本类型
     *
     * @param typeClass
     * @return
     */
    @SuppressWarnings("rawtypes")
    private static boolean isBasicType(Class typeClass) {
        if (typeClass.equals(Integer.class) || typeClass.equals(Long.class)
                || typeClass.equals(Float.class)
                || typeClass.equals(Double.class)
                || typeClass.equals(Boolean.class)
                || typeClass.equals(Byte.class)
                || typeClass.equals(Short.class)
                || typeClass.equals(String.class)) {

            return true;

        } else {
            return false;
        }
    }

    /**
     * 获得包装类
     *
     * @param typeClass
     * @return
     */
    @SuppressWarnings("all")
    public static Class<? extends Object> getBasicClass(Class typeClass) {
        Class _class = basicMap.get(typeClass);
        if (_class == null)
            _class = typeClass;
        return _class;
    }

    @SuppressWarnings("rawtypes")
    private static Map<Class, Class> basicMap = new HashMap<Class, Class>();

    static {
        basicMap.put(int.class, Integer.class);
        basicMap.put(long.class, Long.class);
        basicMap.put(float.class, Float.class);
        basicMap.put(double.class, Double.class);
        basicMap.put(boolean.class, Boolean.class);
        basicMap.put(byte.class, Byte.class);
        basicMap.put(short.class, Short.class);
    }
}
