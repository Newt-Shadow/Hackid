package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f6483e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6484f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l3(a4 a4Var, boolean z10) {
        super(a4Var, true);
        this.f6483e = z10;
        Objects.requireNonNull(a4Var);
        this.f6484f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6484f.n())).setDataCollectionEnabled(this.f6483e);
    }
}
