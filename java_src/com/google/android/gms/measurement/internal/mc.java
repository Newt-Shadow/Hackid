package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public final class mc extends e5 {

    /* renamed from: c  reason: collision with root package name */
    private Handler f7766c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7767d;

    /* renamed from: e  reason: collision with root package name */
    protected final lc f7768e;

    /* renamed from: f  reason: collision with root package name */
    protected final kc f7769f;

    /* renamed from: g  reason: collision with root package name */
    protected final hc f7770g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mc(w6 w6Var) {
        super(w6Var);
        this.f7767d = true;
        this.f7768e = new lc(this);
        this.f7769f = new kc(this);
        this.f7770g = new hc(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final void q() {
        h();
        if (this.f7766c == null) {
            this.f7766c = new com.google.android.gms.internal.measurement.p1(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(boolean z10) {
        h();
        this.f7767d = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p() {
        h();
        return this.f7767d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void r(long j10) {
        h();
        q();
        w6 w6Var = this.f8322a;
        w6Var.a().w().b("Activity resumed, time", Long.valueOf(j10));
        if (w6Var.w().H(null, c5.V0)) {
            if (w6Var.w().N() || this.f7767d) {
                this.f7769f.a(j10);
            }
        } else if (w6Var.w().N() || w6Var.x().f7431t.a()) {
            this.f7769f.a(j10);
        }
        this.f7770g.a();
        lc lcVar = this.f7768e;
        mc mcVar = lcVar.f7730a;
        mcVar.h();
        if (!mcVar.f8322a.g()) {
            return;
        }
        lcVar.b(mcVar.f8322a.f().currentTimeMillis(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void s(long j10) {
        h();
        q();
        w6 w6Var = this.f8322a;
        w6Var.a().w().b("Activity paused, time", Long.valueOf(j10));
        this.f7770g.b(j10);
        if (w6Var.w().N()) {
            this.f7769f.b(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Handler t() {
        return this.f7766c;
    }
}
