package com.android.billingclient.api;

import android.os.Bundle;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c0 extends com.google.android.gms.internal.play_billing.b1 {

    /* renamed from: a  reason: collision with root package name */
    final c2.f f5256a;

    /* renamed from: g  reason: collision with root package name */
    final i0 f5257g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ c0(c2.f fVar, i0 i0Var, c2.v vVar) {
        this.f5256a = fVar;
        this.f5257g = i0Var;
    }

    @Override // com.google.android.gms.internal.play_billing.z1
    public final void c(Bundle bundle) {
        if (bundle == null) {
            i0 i0Var = this.f5257g;
            h hVar = j0.f5407j;
            i0Var.e(h0.b(71, 15, hVar));
            this.f5256a.a(hVar, null);
            return;
        }
        int b10 = com.google.android.gms.internal.play_billing.b0.b(bundle, "BillingClient");
        h a10 = j0.a(b10, com.google.android.gms.internal.play_billing.b0.g(bundle, "BillingClient"));
        if (b10 != 0) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: " + b10);
            this.f5257g.e(h0.b(23, 15, a10));
            this.f5256a.a(a10, null);
            return;
        }
        try {
            this.f5256a.a(a10, new b(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")));
        } catch (JSONException e10) {
            com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e10);
            i0 i0Var2 = this.f5257g;
            h hVar2 = j0.f5407j;
            i0Var2.e(h0.b(72, 15, hVar2));
            this.f5256a.a(hVar2, null);
        }
    }
}
