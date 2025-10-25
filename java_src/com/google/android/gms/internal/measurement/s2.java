package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ a4 f6766e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s2(a4 a4Var) {
        super(a4Var, true);
        Objects.requireNonNull(a4Var);
        this.f6766e = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6766e.n())).resetAnalyticsData(this.f6636a);
    }
}
