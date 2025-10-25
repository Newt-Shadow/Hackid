package com.google.android.gms.internal.measurement;

import android.app.Activity;
import java.util.Objects;
/* loaded from: classes.dex */
final class x3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f6882e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ z3 f6883f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(z3 z3Var, Activity activity) {
        super(z3Var.f6908a, true);
        this.f6882e = activity;
        Objects.requireNonNull(z3Var);
        this.f6883f = z3Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6883f.f6908a.n())).onActivityDestroyedByScionActivityInfo(i2.g(this.f6882e), this.f6637b);
    }
}
