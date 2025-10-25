package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class kc {

    /* renamed from: a  reason: collision with root package name */
    protected long f7696a;

    /* renamed from: b  reason: collision with root package name */
    protected long f7697b;

    /* renamed from: c  reason: collision with root package name */
    private final x f7698c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ mc f7699d;

    public kc(mc mcVar) {
        Objects.requireNonNull(mcVar);
        this.f7699d = mcVar;
        this.f7698c = new ic(this, mcVar.f8322a);
        long elapsedRealtime = mcVar.f8322a.f().elapsedRealtime();
        this.f7696a = elapsedRealtime;
        this.f7697b = elapsedRealtime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j10) {
        this.f7699d.h();
        this.f7698c.d();
        this.f7696a = j10;
        this.f7697b = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(long j10) {
        this.f7698c.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f7698c.d();
        long elapsedRealtime = this.f7699d.f8322a.f().elapsedRealtime();
        this.f7696a = elapsedRealtime;
        this.f7697b = elapsedRealtime;
    }

    public final boolean d(boolean z10, boolean z11, long j10) {
        mc mcVar = this.f7699d;
        mcVar.h();
        mcVar.j();
        if (mcVar.f8322a.g()) {
            w6 w6Var = mcVar.f8322a;
            w6Var.x().f7428q.b(w6Var.f().currentTimeMillis());
        }
        long j11 = j10 - this.f7696a;
        if (!z10 && j11 < 1000) {
            mcVar.f8322a.a().w().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j11));
            return false;
        }
        if (!z11) {
            j11 = j10 - this.f7697b;
            this.f7697b = j10;
        }
        w6 w6Var2 = mcVar.f8322a;
        w6Var2.a().w().b("Recording user engagement, ms", Long.valueOf(j11));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        w6 w6Var3 = mcVar.f8322a;
        yd.k0(w6Var3.I().q(!w6Var2.w().N()), bundle, true);
        if (!z11) {
            w6Var3.B().t("auto", "_e", bundle);
        }
        this.f7696a = j10;
        x xVar = this.f7698c;
        xVar.d();
        xVar.b(((Long) c5.f7371r0.b(null)).longValue());
        return true;
    }
}
