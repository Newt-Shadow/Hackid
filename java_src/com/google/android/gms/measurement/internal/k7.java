package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class k7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7689a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f7690b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k7(y7 y7Var, ae aeVar) {
        this.f7689a = aeVar;
        Objects.requireNonNull(y7Var);
        this.f7690b = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7690b;
        y7Var.j1().E();
        return new i6.a(y7Var.j1().S0(this.f7689a.f7236a));
    }
}
