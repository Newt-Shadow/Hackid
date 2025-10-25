package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class b7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f7288a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ae f7289b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7290c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b7(y7 y7Var, i iVar, ae aeVar) {
        this.f7288a = iVar;
        this.f7289b = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7290c = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7290c;
        y7Var.j1().E();
        i iVar = this.f7288a;
        if (iVar.f7613c.g() == null) {
            y7Var.j1().m0(iVar, this.f7289b);
            return;
        }
        y7Var.j1().k0(iVar, this.f7289b);
    }
}
