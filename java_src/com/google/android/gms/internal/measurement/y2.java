package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y2 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Runnable f6886e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a4 f6887f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y2(a4 a4Var, Runnable runnable) {
        super(a4Var, true);
        this.f6886e = runnable;
        Objects.requireNonNull(a4Var);
        this.f6887f = a4Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6887f.n())).retrieveAndUploadBatches(new x2(this, this.f6886e));
    }
}
