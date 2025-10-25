package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class j7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7658a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f7659b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j7(y7 y7Var, ae aeVar) {
        this.f7658a = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7659b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7659b;
        y7Var.j1().E();
        pd j12 = y7Var.j1();
        j12.b().h();
        j12.O0();
        ae aeVar = this.f7658a;
        n5.q.e(aeVar.f7236a);
        j12.P0(aeVar);
        j12.Q0(aeVar);
    }
}
