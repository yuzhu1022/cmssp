package com.ox.utils;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * 懒人单例
 *
 * @useage : Foo f = SingletonUtils.newInstance(Foo.class);
 */
public class SingletonUtils<T> {

    private static final ConcurrentMap<Class, Object> map = new ConcurrentHashMap<>();

    public static <T> T newInstance(Class<T> type) {
        Object ob = map.get(type);
        try {
            if (ob == null) {
                synchronized (type) {
                    ob = type.newInstance();
                    map.put(type, ob);
                }
            }
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return (T) ob;
    }

    public static <T> void remove(Class<T> type) {
        map.remove(type);
    }

    public static <T> void clear() {
        map.clear();
    }

}
