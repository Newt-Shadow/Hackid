package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class p3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final long f6636a;

    /* renamed from: b  reason: collision with root package name */
    final long f6637b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f6638c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a4 f6639d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p3(a4 a4Var, boolean z10) {
        Objects.requireNonNull(a4Var);
        this.f6639d = a4Var;
        this.f6636a = a4Var.f6215b.currentTimeMillis();
        this.f6637b = a4Var.f6215b.elapsedRealtime();
        this.f6638c = z10;
    }

    abstract void a();

    protected void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f6639d.m()) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e10) {
            this.f6639d.k(e10, false, this.f6638c);
            b();
        }
    }
}
