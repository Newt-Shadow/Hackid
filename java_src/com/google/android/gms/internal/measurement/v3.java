package com.google.android.gms.internal.measurement;

import android.app.Activity;
import java.util.Objects;
/* loaded from: classes.dex */
final class v3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f6848e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ z3 f6849f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v3(z3 z3Var, Activity activity) {
        super(z3Var.f6908a, true);
        this.f6848e = activity;
        Objects.requireNonNull(z3Var);
        this.f6849f = z3Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        ((t1) n5.q.k(this.f6849f.f6908a.n())).onActivityStoppedByScionActivityInfo(i2.g(this.f6848e), this.f6637b);
    }
}
