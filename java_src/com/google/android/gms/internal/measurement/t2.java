package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ long f6797e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6798f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(a4 a4Var, long j10) {
        super(a4Var, true);
        this.f6797e = j10;
        Objects.requireNonNull(a4Var);
        this.f6798f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6798f.n())).setSessionTimeoutDuration(this.f6797e);
    }
}
