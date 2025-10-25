package com.google.android.gms.internal.auth;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h3 {

    /* renamed from: c  reason: collision with root package name */
    private static final h3 f6023c = new h3();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f6025b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final l3 f6024a = new r2();

    private h3() {
    }

    public static h3 a() {
        return f6023c;
    }

    public final k3 b(Class cls) {
        f2.c(cls, "messageType");
        k3 k3Var = (k3) this.f6025b.get(cls);
        if (k3Var == null) {
            k3Var = this.f6024a.a(cls);
            f2.c(cls, "messageType");
            k3 k3Var2 = (k3) this.f6025b.putIfAbsent(cls, k3Var);
            if (k3Var2 != null) {
                return k3Var2;
            }
        }
        return k3Var;
    }
}
