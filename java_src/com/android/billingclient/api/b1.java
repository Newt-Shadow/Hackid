package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5243a;

    /* renamed from: b  reason: collision with root package name */
    private final c2.o f5244b;

    /* renamed from: c  reason: collision with root package name */
    private final c2.s f5245c;

    /* renamed from: d  reason: collision with root package name */
    private final i0 f5246d;

    /* renamed from: e  reason: collision with root package name */
    private final a1 f5247e = new a1(this, true);

    /* renamed from: f  reason: collision with root package name */
    private final a1 f5248f = new a1(this, false);

    /* renamed from: g  reason: collision with root package name */
    private boolean f5249g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(Context context, c2.o oVar, c2.l0 l0Var, c2.c cVar, c2.s sVar, i0 i0Var) {
        this.f5243a = context;
        this.f5244b = oVar;
        this.f5245c = sVar;
        this.f5246d = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ c2.c a(b1 b1Var) {
        b1Var.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c2.o d() {
        return this.f5244b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        this.f5247e.b(this.f5243a);
        this.f5248f.b(this.f5243a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(boolean z10) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f5249g = z10;
        this.f5248f.a(this.f5243a, intentFilter2);
        if (this.f5249g) {
            z0.a(this.f5243a);
        }
        this.f5247e.a(this.f5243a, intentFilter);
    }
}
