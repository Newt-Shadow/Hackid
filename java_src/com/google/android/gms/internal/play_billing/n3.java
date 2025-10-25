package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
final class n3 {

    /* renamed from: c  reason: collision with root package name */
    private static final n3 f7078c = new n3();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f7080b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final r3 f7079a = new y2();

    private n3() {
    }

    public static n3 a() {
        return f7078c;
    }

    public final q3 b(Class cls) {
        j2.c(cls, "messageType");
        q3 q3Var = (q3) this.f7080b.get(cls);
        if (q3Var == null) {
            q3Var = this.f7079a.a(cls);
            j2.c(cls, "messageType");
            q3 q3Var2 = (q3) this.f7080b.putIfAbsent(cls, q3Var);
            if (q3Var2 != null) {
                return q3Var2;
            }
        }
        return q3Var;
    }
}
