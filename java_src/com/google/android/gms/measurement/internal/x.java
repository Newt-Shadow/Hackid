package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: d  reason: collision with root package name */
    private static volatile Handler f8229d;

    /* renamed from: a  reason: collision with root package name */
    private final b8 f8230a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f8231b;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f8232c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(b8 b8Var) {
        n5.q.k(b8Var);
        this.f8230a = b8Var;
        this.f8231b = new w(this, b8Var);
    }

    private final Handler f() {
        Handler handler;
        if (f8229d != null) {
            return f8229d;
        }
        synchronized (x.class) {
            if (f8229d == null) {
                f8229d = new com.google.android.gms.internal.measurement.p1(this.f8230a.e().getMainLooper());
            }
            handler = f8229d;
        }
        return handler;
    }

    public abstract void a();

    public final void b(long j10) {
        d();
        if (j10 >= 0) {
            b8 b8Var = this.f8230a;
            this.f8232c = b8Var.f().currentTimeMillis();
            if (!f().postDelayed(this.f8231b, j10)) {
                b8Var.a().o().b("Failed to schedule delayed post. time", Long.valueOf(j10));
            }
        }
    }

    public final boolean c() {
        return this.f8232c != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        this.f8232c = 0L;
        f().removeCallbacks(this.f8231b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void e(long j10) {
        this.f8232c = 0L;
    }
}
