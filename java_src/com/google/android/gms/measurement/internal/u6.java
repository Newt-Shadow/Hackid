package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f8 f8079a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w6 f8080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u6(w6 w6Var, f8 f8Var) {
        this.f8079a = f8Var;
        Objects.requireNonNull(w6Var);
        this.f8080b = w6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w6 w6Var = this.f8080b;
        f8 f8Var = this.f8079a;
        w6Var.p(f8Var);
        w6Var.v(f8Var.f7527d);
    }
}
