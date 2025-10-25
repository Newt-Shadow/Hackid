package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class o7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ud f7829a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ae f7830b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7831c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o7(y7 y7Var, ud udVar, ae aeVar) {
        this.f7829a = udVar;
        this.f7830b = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7831c = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7831c;
        y7Var.j1().E();
        ud udVar = this.f7829a;
        if (udVar.g() == null) {
            ae aeVar = this.f7830b;
            y7Var.j1().d0(udVar.f8095b, aeVar);
            return;
        }
        y7Var.j1().c0(udVar, this.f7830b);
    }
}
