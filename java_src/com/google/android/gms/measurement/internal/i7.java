package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class i7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7632a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f7633b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i7(y7 y7Var, ae aeVar) {
        this.f7632a = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7633b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7633b;
        y7Var.j1().E();
        y7Var.j1().b0(this.f7632a);
    }
}
