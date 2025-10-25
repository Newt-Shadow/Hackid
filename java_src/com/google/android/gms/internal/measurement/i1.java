package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes.dex */
public abstract class i1 {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f6427a = new h1();

    public static SharedPreferences a(Context context, String str, int i10, d1 d1Var) {
        g1 g1Var;
        x0.a();
        if (str.equals("")) {
            g1Var = new g1();
        } else {
            g1Var = null;
        }
        if (g1Var != null) {
            return g1Var;
        }
        ThreadLocal threadLocal = f6427a;
        n6.m.d(((Boolean) threadLocal.get()).booleanValue());
        threadLocal.set(Boolean.FALSE);
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            threadLocal.set(Boolean.TRUE);
            return sharedPreferences;
        } catch (Throwable th) {
            f6427a.set(Boolean.TRUE);
            throw th;
        }
    }
}
