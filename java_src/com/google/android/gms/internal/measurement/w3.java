package com.google.android.gms.internal.measurement;

import android.app.Activity;
import java.util.Objects;
/* loaded from: classes.dex */
final class w3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f6863e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ q1 f6864f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ z3 f6865g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w3(z3 z3Var, Activity activity, q1 q1Var) {
        super(z3Var.f6908a, true);
        this.f6863e = activity;
        this.f6864f = q1Var;
        Objects.requireNonNull(z3Var);
        this.f6865g = z3Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6865g.f6908a.n())).onActivitySaveInstanceStateByScionActivityInfo(i2.g(this.f6863e), this.f6864f, this.f6637b);
    }
}
