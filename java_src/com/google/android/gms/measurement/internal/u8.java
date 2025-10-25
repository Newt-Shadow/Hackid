package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f8085a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f8086b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u8(w9 w9Var, long j10) {
        this.f8085a = j10;
        Objects.requireNonNull(w9Var);
        this.f8086b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f8086b;
        w9Var.h();
        w9Var.j();
        w6 w6Var = w9Var.f8322a;
        w6Var.a().v().a("Resetting analytics data (FE)");
        w6 w6Var2 = w9Var.f8322a;
        mc z10 = w6Var2.z();
        z10.h();
        z10.f7769f.c();
        w6Var2.L().p();
        boolean z11 = !w9Var.f8322a.g();
        d6 x10 = w6Var.x();
        x10.f7417f.b(this.f8085a);
        w6 w6Var3 = x10.f8322a;
        if (!TextUtils.isEmpty(w6Var3.x().f7434w.a())) {
            x10.f7434w.b(null);
        }
        x10.f7428q.b(0L);
        x10.f7429r.b(0L);
        if (!w6Var3.w().L()) {
            x10.y(z11);
        }
        x10.f7435x.b(null);
        x10.f7436y.b(0L);
        x10.f7437z.b(null);
        w6Var2.J().p();
        w6Var2.z().f7768e.a();
        w9Var.f8207s = z11;
        w6Var2.J().q(new AtomicReference());
    }
}
