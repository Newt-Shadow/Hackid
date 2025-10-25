package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.android.billingclient.api.h;
import com.google.android.gms.internal.play_billing.y4;
/* loaded from: classes.dex */
final class y extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c2.e f5497a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e f5498b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(e eVar, Handler handler, c2.e eVar2) {
        super(handler);
        this.f5497a = eVar2;
        this.f5498b = eVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        i0 i0Var;
        int i11;
        i0 i0Var2;
        h.a c10 = h.c();
        c10.c(i10);
        if (i10 != 0) {
            if (bundle == null) {
                i0Var2 = this.f5498b.f5276f;
                h hVar = j0.f5407j;
                i0Var2.e(h0.b(73, 16, hVar));
                this.f5497a.a(hVar);
                return;
            }
            c10.b(com.google.android.gms.internal.play_billing.b0.g(bundle, "BillingClient"));
            int i12 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            i0Var = this.f5498b.f5276f;
            if (i12 != 0) {
                i11 = y4.a(i12);
            } else {
                i11 = 23;
            }
            i0Var.e(h0.c(i11, 16, c10.a(), bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS")));
        }
        this.f5497a.a(c10.a());
    }
}
