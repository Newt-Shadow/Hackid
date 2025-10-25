package io.sentry;
/* loaded from: classes2.dex */
public final class k3 implements j3 {

    /* renamed from: a  reason: collision with root package name */
    private final h3 f23204a;

    public k3(h3 h3Var) {
        this.f23204a = (h3) io.sentry.util.q.c(h3Var, "SendFireAndForgetDirPath is required");
    }

    @Override // io.sentry.j3
    public g3 d(o0 o0Var, s5 s5Var) {
        io.sentry.util.q.c(o0Var, "Hub is required");
        io.sentry.util.q.c(s5Var, "SentryOptions is required");
        String a10 = this.f23204a.a();
        if (a10 != null && e(a10, s5Var.getLogger())) {
            return a(new x(o0Var, s5Var.getSerializer(), s5Var.getLogger(), s5Var.getFlushTimeoutMillis(), s5Var.getMaxQueueSize()), a10, s5Var.getLogger());
        }
        s5Var.getLogger().c(j5.ERROR, "No cache dir path is defined in options.", new Object[0]);
        return null;
    }
}
