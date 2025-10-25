package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b8 f8150a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x f8151b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x xVar, b8 b8Var) {
        this.f8150a = b8Var;
        Objects.requireNonNull(xVar);
        this.f8151b = xVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b8 b8Var = this.f8150a;
        b8Var.c();
        if (f.a()) {
            b8Var.b().t(this);
            return;
        }
        x xVar = this.f8151b;
        boolean c10 = xVar.c();
        xVar.e(0L);
        if (c10) {
            xVar.a();
        }
    }
}
