package io.sentry.util;
/* loaded from: classes2.dex */
public abstract class a {
    public static ClassLoader a(ClassLoader classLoader) {
        if (classLoader == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return classLoader;
    }
}
