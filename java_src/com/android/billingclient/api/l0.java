package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.u5;
/* loaded from: classes.dex */
final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5441a;

    /* renamed from: b  reason: collision with root package name */
    private n2.i f5442b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Context context) {
        try {
            p2.u.f(context);
            this.f5442b = p2.u.c().g(com.google.android.datatransport.cct.a.f5557g).a("PLAY_BILLING_LIBRARY", u5.class, n2.c.b("proto"), new n2.h() { // from class: c2.k0
                @Override // n2.h
                public final Object apply(Object obj) {
                    return ((u5) obj).d();
                }
            });
        } catch (Throwable unused) {
            this.f5441a = true;
        }
    }

    public final void a(u5 u5Var) {
        if (this.f5441a) {
            com.google.android.gms.internal.play_billing.b0.k("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f5442b.b(n2.d.f(u5Var));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.b0.k("BillingLogger", "logging failed.");
        }
    }
}
