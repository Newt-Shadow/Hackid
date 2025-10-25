package io.sentry;
/* loaded from: classes2.dex */
public final class f1 implements t0 {

    /* renamed from: a  reason: collision with root package name */
    private final Runtime f23103a = Runtime.getRuntime();

    @Override // io.sentry.t0
    public void c(r2 r2Var) {
        r2Var.b(new u1(System.currentTimeMillis(), this.f23103a.totalMemory() - this.f23103a.freeMemory()));
    }

    @Override // io.sentry.t0
    public void e() {
    }
}
