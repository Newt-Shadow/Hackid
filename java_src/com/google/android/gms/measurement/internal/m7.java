package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class m7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g0 f7753a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7754b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f7755c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m7(y7 y7Var, g0 g0Var, String str) {
        this.f7753a = g0Var;
        this.f7754b = str;
        Objects.requireNonNull(y7Var);
        this.f7755c = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y7 y7Var = this.f7755c;
        y7Var.j1().E();
        y7Var.j1().i(this.f7753a, this.f7754b);
    }
}
