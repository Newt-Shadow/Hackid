package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class d7 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7438a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7439b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7440c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ y7 f7441d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d7(y7 y7Var, String str, String str2, String str3) {
        this.f7438a = str;
        this.f7439b = str2;
        this.f7440c = str3;
        Objects.requireNonNull(y7Var);
        this.f7441d = y7Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        y7 y7Var = this.f7441d;
        y7Var.j1().E();
        return y7Var.j1().F0().D0(this.f7438a, this.f7439b, this.f7440c);
    }
}
