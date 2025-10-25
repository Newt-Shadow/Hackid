package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class p7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7868a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f7869b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7870c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p7(y7 y7Var, ae aeVar, Bundle bundle) {
        this.f7868a = aeVar;
        this.f7869b = bundle;
        Objects.requireNonNull(y7Var);
        this.f7870c = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7870c;
        y7Var.j1().E();
        return y7Var.j1().q0(this.f7868a, this.f7869b);
    }
}
