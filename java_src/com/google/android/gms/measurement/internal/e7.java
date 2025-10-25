package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class e7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7476a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7477b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7478c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ y7 f7479d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e7(y7 y7Var, String str, String str2, String str3) {
        this.f7476a = str;
        this.f7477b = str2;
        this.f7478c = str3;
        Objects.requireNonNull(y7Var);
        this.f7479d = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7479d;
        y7Var.j1().E();
        return y7Var.j1().F0().D0(this.f7476a, this.f7477b, this.f7478c);
    }
}
