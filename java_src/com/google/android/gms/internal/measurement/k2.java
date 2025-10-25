package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6465e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6466f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Object f6467g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ boolean f6468h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ a4 f6469i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k2(a4 a4Var, String str, String str2, Object obj, boolean z10) {
        super(a4Var, true);
        this.f6465e = str;
        this.f6466f = str2;
        this.f6467g = obj;
        this.f6468h = z10;
        Objects.requireNonNull(a4Var);
        this.f6469i = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6469i.n())).setUserProperty(this.f6465e, this.f6466f, u5.b.e1(this.f6467g), this.f6468h, this.f6636a);
    }
}
