package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Boolean f6705e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6706f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q2(a4 a4Var, Boolean bool) {
        super(a4Var, true);
        this.f6705e = bool;
        Objects.requireNonNull(a4Var);
        this.f6706f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6706f.n())).setMeasurementEnabled(this.f6705e.booleanValue(), this.f6636a);
    }
}
