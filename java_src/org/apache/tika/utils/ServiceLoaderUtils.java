package org.apache.tika.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Comparator;
import java.util.List;
import org.apache.tika.config.ServiceLoader;
/* loaded from: classes2.dex */
public class ServiceLoaderUtils {
    public static <T> T newInstance(String str) {
        return (T) newInstance(str, ServiceLoader.class.getClassLoader());
    }

    public static <T> void sortLoadedClasses(List<T> list) {
        list.sort(new Comparator() { // from class: org.apache.tika.utils.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return CompareUtils.compareClassName(obj, obj2);
            }
        });
    }

    public static <T> T newInstance(String str, ClassLoader classLoader) {
        try {
            return (T) Class.forName(str, true, classLoader).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static <T> T newInstance(Class cls, ServiceLoader serviceLoader) {
        try {
            try {
                try {
                    return cls.getDeclaredConstructor(ServiceLoader.class).newInstance(serviceLoader);
                } catch (IllegalAccessException e10) {
                    e = e10;
                    throw new RuntimeException(e);
                } catch (InstantiationException e11) {
                    e = e11;
                    throw new RuntimeException(e);
                }
            } catch (NoSuchMethodException unused) {
                return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException(e12);
            }
        } catch (NoSuchMethodException e13) {
            e = e13;
        } catch (InvocationTargetException e14) {
            e = e14;
        }
    }
}
