package com.google.android.gms.common.util;

import android.os.SystemClock;
/* loaded from: classes.dex */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final g f5914a = new g();

    private g() {
    }

    public static d b() {
        return f5914a;
    }

    @Override // com.google.android.gms.common.util.d
    public final long a() {
        return System.nanoTime();
    }

    @Override // com.google.android.gms.common.util.d
    public final long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.d
    public final long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }
}
