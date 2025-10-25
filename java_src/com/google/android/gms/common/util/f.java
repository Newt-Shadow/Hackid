package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5913a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean a(Context context, Throwable th) {
        try {
            n5.q.k(context);
            n5.q.k(th);
            return false;
        } catch (Exception e10) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e10);
            return false;
        }
    }
}
