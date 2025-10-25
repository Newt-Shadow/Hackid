package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class x6 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f8241a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y7 f8242b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x6(y7 y7Var, String str) {
        this.f8241a = str;
        Objects.requireNonNull(y7Var);
        this.f8242b = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f8242b;
        y7Var.j1().E();
        return y7Var.j1().F0().C0(this.f8241a);
    }
}
