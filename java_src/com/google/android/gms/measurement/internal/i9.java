package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d8 f7635a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f7636b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ boolean f7637c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ w9 f7638d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i9(w9 w9Var, d8 d8Var, long j10, boolean z10) {
        this.f7635a = d8Var;
        this.f7636b = j10;
        this.f7637c = z10;
        Objects.requireNonNull(w9Var);
        this.f7638d = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f7638d;
        d8 d8Var = this.f7635a;
        w9Var.o(d8Var);
        w9Var.X(d8Var, this.f7636b, false, this.f7637c);
    }
}
