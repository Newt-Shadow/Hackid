package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f5895a = Collections.newSetFromMap(new WeakHashMap());

    /* loaded from: classes.dex */
    public interface a extends m5.d {
    }

    /* loaded from: classes.dex */
    public interface b extends m5.m {
    }

    public static Set c() {
        Set set = f5895a;
        synchronized (set) {
        }
        return set;
    }

    public abstract com.google.android.gms.common.api.internal.a a(com.google.android.gms.common.api.internal.a aVar);

    public abstract com.google.android.gms.common.api.internal.a b(com.google.android.gms.common.api.internal.a aVar);

    public abstract Looper d();

    public boolean e(m5.r rVar) {
        throw new UnsupportedOperationException();
    }

    public void f() {
        throw new UnsupportedOperationException();
    }
}
