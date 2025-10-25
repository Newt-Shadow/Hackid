package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f6410e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Object f6411f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ a4 f6412g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g3(a4 a4Var, boolean z10, int i10, String str, Object obj, Object obj2, Object obj3) {
        super(a4Var, false);
        this.f6410e = str;
        this.f6411f = obj;
        Objects.requireNonNull(a4Var);
        this.f6412g = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6412g.n())).logHealthData(5, this.f6410e, u5.b.e1(this.f6411f), u5.b.e1(null), u5.b.e1(null));
    }
}
