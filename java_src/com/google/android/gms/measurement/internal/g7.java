package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class g7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7561a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7562b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7563c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ y7 f7564d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g7(y7 y7Var, String str, String str2, String str3) {
        this.f7561a = str;
        this.f7562b = str2;
        this.f7563c = str3;
        Objects.requireNonNull(y7Var);
        this.f7564d = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7564d;
        y7Var.j1().E();
        return y7Var.j1().F0().H0(this.f7561a, this.f7562b, this.f7563c);
    }
}
