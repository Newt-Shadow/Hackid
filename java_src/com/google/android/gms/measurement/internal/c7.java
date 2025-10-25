package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class c7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f7392a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f7393b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c7(y7 y7Var, i iVar) {
        this.f7392a = iVar;
        Objects.requireNonNull(y7Var);
        this.f7393b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7393b;
        y7Var.j1().E();
        i iVar = this.f7392a;
        if (iVar.f7613c.g() == null) {
            y7Var.j1().l0(iVar);
        } else {
            y7Var.j1().j0(iVar);
        }
    }
}
