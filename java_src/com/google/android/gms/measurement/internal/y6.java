package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class y6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f8277a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f8278b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y6(y7 y7Var, ae aeVar) {
        this.f8277a = aeVar;
        Objects.requireNonNull(y7Var);
        this.f8278b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f8278b;
        y7Var.j1().E();
        y7Var.j1().h0(this.f8277a);
    }
}
