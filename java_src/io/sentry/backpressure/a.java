package io.sentry.backpressure;

import io.sentry.j5;
import io.sentry.o0;
import io.sentry.s5;
import io.sentry.x0;
/* loaded from: classes2.dex */
public final class a implements b, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22909a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f22910b;

    /* renamed from: c  reason: collision with root package name */
    private int f22911c = 0;

    public a(s5 s5Var, o0 o0Var) {
        this.f22909a = s5Var;
        this.f22910b = o0Var;
    }

    private boolean c() {
        return this.f22910b.m();
    }

    private void d(int i10) {
        x0 executorService = this.f22909a.getExecutorService();
        if (!executorService.b()) {
            executorService.c(this, i10);
        }
    }

    @Override // io.sentry.backpressure.b
    public int a() {
        return this.f22911c;
    }

    void b() {
        if (c()) {
            if (this.f22911c > 0) {
                this.f22909a.getLogger().c(j5.DEBUG, "Health check positive, reverting to normal sampling.", new Object[0]);
            }
            this.f22911c = 0;
            return;
        }
        int i10 = this.f22911c;
        if (i10 < 10) {
            this.f22911c = i10 + 1;
            this.f22909a.getLogger().c(j5.DEBUG, "Health check negative, downsampling with a factor of %d", Integer.valueOf(this.f22911c));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        b();
        d(10000);
    }

    @Override // io.sentry.backpressure.b
    public void start() {
        d(500);
    }
}
