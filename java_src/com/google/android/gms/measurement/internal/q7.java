package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class q7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7927a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f7928b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7929c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q7(y7 y7Var, ae aeVar, Bundle bundle) {
        this.f7927a = aeVar;
        this.f7928b = bundle;
        Objects.requireNonNull(y7Var);
        this.f7929c = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7929c;
        y7Var.j1().E();
        return y7Var.j1().q0(this.f7927a, this.f7928b);
    }
}
