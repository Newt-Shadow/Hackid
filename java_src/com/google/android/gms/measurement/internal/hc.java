package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class hc {

    /* renamed from: a  reason: collision with root package name */
    private gc f7599a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ mc f7600b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hc(mc mcVar) {
        Objects.requireNonNull(mcVar);
        this.f7600b = mcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        mc mcVar = this.f7600b;
        mcVar.h();
        gc gcVar = this.f7599a;
        if (gcVar != null) {
            mcVar.t().removeCallbacks(gcVar);
        }
        w6 w6Var = mcVar.f8322a;
        w6Var.x().f7431t.b(false);
        mcVar.o(false);
        if (w6Var.w().H(null, c5.U0)) {
            w6 w6Var2 = mcVar.f8322a;
            if (w6Var2.B().v0()) {
                w6Var.a().w().a("Retrying trigger URI registration in foreground");
                w6Var2.B().x0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(long j10) {
        mc mcVar = this.f7600b;
        this.f7599a = new gc(this, mcVar.f8322a.f().currentTimeMillis(), j10);
        mcVar.t().postDelayed(this.f7599a, 2000L);
    }
}
