package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.e6;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 extends e6 {

    /* renamed from: a  reason: collision with root package name */
    final c2.d f5306a;

    /* renamed from: g  reason: collision with root package name */
    final i0 f5307g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f0(c2.d dVar, i0 i0Var, c2.z zVar) {
        this.f5306a = dVar;
        this.f5307g = i0Var;
    }

    @Override // com.google.android.gms.internal.play_billing.f6
    public final void c(Bundle bundle) {
        if (bundle == null) {
            i0 i0Var = this.f5307g;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(67, 14, hVar));
            this.f5306a.a(hVar);
            return;
        }
        int b10 = com.google.android.gms.internal.play_billing.b0.b(bundle, "BillingClient");
        h a10 = j0.a(b10, com.google.android.gms.internal.play_billing.b0.g(bundle, "BillingClient"));
        if (b10 != 0) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "isAlternativeBillingOnlyAvailableAsync() failed. Response code: " + b10);
            this.f5307g.e(h0.b(23, 14, a10));
        }
        this.f5306a.a(a10);
    }
}
