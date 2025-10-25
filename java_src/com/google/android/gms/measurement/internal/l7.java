package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class l7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g0 f7711a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ae f7712b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7713c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l7(y7 y7Var, g0 g0Var, ae aeVar) {
        this.f7711a = g0Var;
        this.f7712b = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7713c = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g0 g0Var = this.f7711a;
        ae aeVar = this.f7712b;
        y7 y7Var = this.f7713c;
        y7Var.n1(y7Var.o1(g0Var, aeVar), aeVar);
    }
}
