package io.appmetrica.analytics.networktasks.internal.utils;
/* loaded from: classes2.dex */
public final class Utils {
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public static final boolean isBadRequest(int i10) {
        return i10 == 400;
    }
}
