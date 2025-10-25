package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ q1 f6211e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6212f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a3(a4 a4Var, q1 q1Var) {
        super(a4Var, true);
        this.f6211e = q1Var;
        Objects.requireNonNull(a4Var);
        this.f6212f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6212f.n())).getCachedAppInstanceId(this.f6211e);
    }

    @Override // com.google.android.gms.internal.measurement.p3
    protected final void b() {
        this.f6211e.zzb(null);
    }
}
