package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class gc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final long f7575a;

    /* renamed from: b  reason: collision with root package name */
    final long f7576b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ hc f7577c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc(hc hcVar, long j10, long j11) {
        Objects.requireNonNull(hcVar);
        this.f7577c = hcVar;
        this.f7575a = j10;
        this.f7576b = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7577c.f7600b.f8322a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.fc
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                long D;
                gc gcVar = gc.this;
                mc mcVar = gcVar.f7577c.f7600b;
                mcVar.h();
                w6 w6Var = mcVar.f8322a;
                w6Var.a().v().a("Application going to the background");
                w6Var.x().f7431t.b(true);
                mcVar.o(true);
                if (!w6Var.w().N()) {
                    long j10 = gcVar.f7576b;
                    kc kcVar = mcVar.f7769f;
                    kcVar.d(false, false, j10);
                    kcVar.b(j10);
                }
                w6Var.a().u().b("Application backgrounded at: timestamp_millis", Long.valueOf(gcVar.f7575a));
                w6 w6Var2 = mcVar.f8322a;
                w9 B = w6Var2.B();
                B.h();
                w6 w6Var3 = B.f8322a;
                B.j();
                vb J = w6Var3.J();
                J.h();
                J.j();
                if (!J.y() || J.f8322a.C().W() >= 242600) {
                    w6Var3.J().t();
                }
                if (w6Var.w().H(null, c5.O0)) {
                    if (w6Var.C().P(w6Var.e().getPackageName(), w6Var.w().R())) {
                        D = 1000;
                    } else {
                        D = w6Var.w().D(w6Var.e().getPackageName(), c5.E);
                    }
                    w6Var.a().w().b("[sgtm] Scheduling batch upload with minimum latency in millis", Long.valueOf(D));
                    w6Var2.N().o(D);
                }
            }
        });
    }
}
