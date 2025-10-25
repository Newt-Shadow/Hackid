package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f5488a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c2.n f5489b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ e f5490c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(e eVar, String str, c2.n nVar) {
        this.f5488a = str;
        this.f5489b = nVar;
        this.f5490c = eVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        c2.q0 X = e.X(this.f5490c, this.f5488a, 9);
        if (X.b() != null) {
            this.f5489b.onQueryPurchasesResponse(X.a(), X.b());
            return null;
        }
        this.f5489b.onQueryPurchasesResponse(X.a(), com.google.android.gms.internal.play_billing.j.s());
        return null;
    }
}
