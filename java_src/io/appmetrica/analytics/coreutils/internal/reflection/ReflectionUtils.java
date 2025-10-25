package io.appmetrica.analytics.coreutils.internal.reflection;

import java.lang.reflect.Constructor;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class ReflectionUtils {
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    public static final boolean detectClassExists(String str) {
        if (findClass(str) != null) {
            return true;
        }
        return false;
    }

    public static final Class<?> findClass(String str) {
        try {
            return Class.forName(str, false, ReflectionUtils.class.getClassLoader());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean isArgumentsOfClasses(Object[] objArr, Class<?>... clsArr) {
        if (objArr.length != clsArr.length) {
            return false;
        }
        int length = objArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            int i12 = i11 + 1;
            if (obj == null || !clsArr[i11].isAssignableFrom(obj.getClass())) {
                return false;
            }
            i10++;
            i11 = i12;
        }
        return true;
    }

    public static final <T> T loadAndInstantiateClassWithDefaultConstructor(String str, Class<T> cls) {
        Constructor<T> constructor;
        try {
            Class loadClass = loadClass(str, cls);
            if (loadClass != null && (constructor = loadClass.getConstructor(new Class[0])) != null) {
                return constructor.newInstance(new Object[0]);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static final <T> Class<T> loadClass(String str, Class<T> cls) {
        try {
            Class<T> cls2 = (Class<T>) Class.forName(str);
            if (cls.isAssignableFrom(cls2)) {
                return cls2;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final /* synthetic */ <T> T loadAndInstantiateClassWithDefaultConstructor(String str) {
        m.i(4, "T");
        return (T) loadAndInstantiateClassWithDefaultConstructor(str, Object.class);
    }
}
