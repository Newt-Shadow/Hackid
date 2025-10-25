package com.google.crypto.tink.shaded.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z0 {

    /* renamed from: c  reason: collision with root package name */
    private static final z0 f8672c = new z0();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f8674b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final e1 f8673a = new g0();

    private z0() {
    }

    public static z0 a() {
        return f8672c;
    }

    public d1 b(Class cls, d1 d1Var) {
        z.b(cls, "messageType");
        z.b(d1Var, "schema");
        return (d1) this.f8674b.putIfAbsent(cls, d1Var);
    }

    public d1 c(Class cls) {
        z.b(cls, "messageType");
        d1 d1Var = (d1) this.f8674b.get(cls);
        if (d1Var == null) {
            d1 a10 = this.f8673a.a(cls);
            d1 b10 = b(cls, a10);
            if (b10 != null) {
                return b10;
            }
            return a10;
        }
        return d1Var;
    }

    public d1 d(Object obj) {
        return c(obj.getClass());
    }
}
