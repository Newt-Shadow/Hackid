package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class l8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f7714a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l8(w9 w9Var, boolean z10) {
        this.f7714a = z10;
        Objects.requireNonNull(w9Var);
        this.f7715b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f7715b;
        w6 w6Var = w9Var.f8322a;
        boolean g10 = w6Var.g();
        boolean d10 = w6Var.d();
        boolean z10 = this.f7714a;
        w6Var.P(z10);
        if (d10 == z10) {
            w6Var.a().w().b("Default data collection state already set to", Boolean.valueOf(z10));
        }
        if (w6Var.g() == g10 || w6Var.g() != w6Var.d()) {
            w6Var.a().t().c("Default data collection is different than actual status", Boolean.valueOf(z10), Boolean.valueOf(g10));
        }
        w9Var.Y();
    }
}
