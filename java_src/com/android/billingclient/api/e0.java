package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.h;
import com.google.android.gms.internal.play_billing.c6;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e0 extends c6 {

    /* renamed from: a  reason: collision with root package name */
    final c2.h f5297a;

    /* renamed from: g  reason: collision with root package name */
    final i0 f5298g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e0(c2.h hVar, i0 i0Var, c2.y yVar) {
        this.f5297a = hVar;
        this.f5298g = i0Var;
    }

    @Override // com.google.android.gms.internal.play_billing.d6
    public final void c(Bundle bundle) {
        if (bundle == null) {
            i0 i0Var = this.f5298g;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(63, 13, hVar));
            this.f5297a.a(hVar, null);
            return;
        }
        int b10 = com.google.android.gms.internal.play_billing.b0.b(bundle, "BillingClient");
        String g10 = com.google.android.gms.internal.play_billing.b0.g(bundle, "BillingClient");
        h.a c10 = h.c();
        c10.c(b10);
        c10.b(g10);
        if (b10 != 0) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getBillingConfig() failed. Response code: " + b10);
            h a10 = c10.a();
            this.f5298g.e(h0.b(23, 13, a10));
            this.f5297a.a(a10, null);
        } else if (!bundle.containsKey("BILLING_CONFIG")) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
            c10.c(6);
            h a11 = c10.a();
            this.f5298g.e(h0.b(64, 13, a11));
            this.f5297a.a(a11, null);
        } else {
            try {
                this.f5297a.a(c10.a(), new f(bundle.getString("BILLING_CONFIG")));
            } catch (JSONException e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e10);
                i0 i0Var2 = this.f5298g;
                h hVar2 = j0.f5407j;
                i0Var2.e(h0.b(65, 13, hVar2));
                this.f5297a.a(hVar2, null);
            }
        }
    }
}
