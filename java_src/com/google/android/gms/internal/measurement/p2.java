package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ i2 f6632e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f6633f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ String f6634g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ a4 f6635h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p2(a4 a4Var, i2 i2Var, String str, String str2) {
        super(a4Var, true);
        this.f6632e = i2Var;
        this.f6633f = str;
        this.f6634g = str2;
        Objects.requireNonNull(a4Var);
        this.f6635h = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6635h.n())).setCurrentScreenByScionActivityInfo(this.f6632e, this.f6633f, this.f6634g, this.f6636a);
    }
}
