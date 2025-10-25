package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ y f7566a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7567b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g9(w9 w9Var, y yVar) {
        this.f7566a = yVar;
        Objects.requireNonNull(w9Var);
        this.f7567b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f7567b;
        w6 w6Var = w9Var.f8322a;
        d6 x10 = w6Var.x();
        w6 w6Var2 = x10.f8322a;
        x10.h();
        y u10 = x10.u();
        y yVar = this.f7566a;
        if (d8.u(yVar.b(), u10.b())) {
            SharedPreferences.Editor edit = x10.p().edit();
            edit.putString("dma_consent_settings", yVar.e());
            edit.apply();
            w6Var.a().w().b("Setting DMA consent(FE)", yVar);
            w6 w6Var3 = w9Var.f8322a;
            if (w6Var3.J().D()) {
                w6Var3.J().a0();
                return;
            } else {
                w6Var3.J().Y(false);
                return;
            }
        }
        w6Var.a().u().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(yVar.b()));
    }
}
