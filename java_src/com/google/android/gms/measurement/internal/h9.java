package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d8 f7591a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f7592b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ boolean f7593c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ w9 f7594d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h9(w9 w9Var, d8 d8Var, long j10, boolean z10) {
        this.f7591a = d8Var;
        this.f7592b = j10;
        this.f7593c = z10;
        Objects.requireNonNull(w9Var);
        this.f7594d = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f7594d;
        d8 d8Var = this.f7591a;
        w9Var.o(d8Var);
        w9Var.X(d8Var, this.f7592b, true, this.f7593c);
    }
}
