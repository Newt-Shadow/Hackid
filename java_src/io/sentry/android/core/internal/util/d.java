package io.sentry.android.core.internal.util;
/* loaded from: classes2.dex */
public abstract class d {
    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        String canonicalName = obj.getClass().getCanonicalName();
        if (canonicalName != null) {
            return canonicalName;
        }
        return obj.getClass().getSimpleName();
    }
}
