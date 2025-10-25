package com.google.android.gms.measurement.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ld {

    /* renamed from: a  reason: collision with root package name */
    com.google.android.gms.internal.measurement.f7 f7731a;

    /* renamed from: b  reason: collision with root package name */
    List f7732b;

    /* renamed from: c  reason: collision with root package name */
    List f7733c;

    /* renamed from: d  reason: collision with root package name */
    long f7734d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ pd f7735e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ld(pd pdVar, byte[] bArr) {
        Objects.requireNonNull(pdVar);
        this.f7735e = pdVar;
    }

    private static final long b(com.google.android.gms.internal.measurement.t6 t6Var) {
        return ((t6Var.H() / 1000) / 60) / 60;
    }

    public final boolean a(long j10, com.google.android.gms.internal.measurement.t6 t6Var) {
        n5.q.k(t6Var);
        if (this.f7733c == null) {
            this.f7733c = new ArrayList();
        }
        if (this.f7732b == null) {
            this.f7732b = new ArrayList();
        }
        if (!this.f7733c.isEmpty() && b((com.google.android.gms.internal.measurement.t6) this.f7733c.get(0)) != b(t6Var)) {
            return false;
        }
        long a10 = this.f7734d + t6Var.a();
        pd pdVar = this.f7735e;
        if (pdVar.B0().H(null, c5.f7338e1)) {
            if (!this.f7733c.isEmpty()) {
                pdVar.B0();
                if (a10 >= m.o()) {
                    return false;
                }
            }
        } else {
            pdVar.B0();
            if (a10 >= m.o()) {
                return false;
            }
        }
        this.f7734d = a10;
        this.f7733c.add(t6Var);
        this.f7732b.add(Long.valueOf(j10));
        int size = this.f7733c.size();
        pdVar.B0();
        if (size >= Math.max(1, ((Integer) c5.f7354k.b(null)).intValue())) {
            return false;
        }
        return true;
    }
}
