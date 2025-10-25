package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class o8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f7832a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7833b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o8(w9 w9Var, long j10) {
        this.f7832a = j10;
        Objects.requireNonNull(w9Var);
        this.f7833b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w6 w6Var = this.f7833b.f8322a;
        a6 a6Var = w6Var.x().f7423l;
        long j10 = this.f7832a;
        a6Var.b(j10);
        w6Var.a().v().b("Session timeout duration set", Long.valueOf(j10));
    }
}
