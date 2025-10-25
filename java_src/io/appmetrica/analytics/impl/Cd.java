package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class Cd {

    /* renamed from: a  reason: collision with root package name */
    public static I9 f18048a;

    public static final synchronized I9 a(Context context) {
        I9 i92;
        synchronized (Cd.class) {
            i92 = f18048a;
            if (i92 == null) {
                i92 = new I9(context, "uuid.dat");
                f18048a = i92;
            }
        }
        return i92;
    }
}
