package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f5492a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c2.m f5493b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ e f5494c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(e eVar, String str, c2.m mVar) {
        this.f5492a = str;
        this.f5493b = mVar;
        this.f5494c = eVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        g0 l02 = e.l0(this.f5494c, this.f5492a);
        this.f5493b.onPurchaseHistoryResponse(l02.a(), l02.b());
        return null;
    }
}
