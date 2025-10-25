package io.sentry;
/* loaded from: classes2.dex */
public final class l3 implements j3 {

    /* renamed from: a  reason: collision with root package name */
    private final h3 f23233a;

    public l3(h3 h3Var) {
        this.f23233a = (h3) io.sentry.util.q.c(h3Var, "SendFireAndForgetDirPath is required");
    }

    @Override // io.sentry.j3
    public g3 d(o0 o0Var, s5 s5Var) {
        io.sentry.util.q.c(o0Var, "Hub is required");
        io.sentry.util.q.c(s5Var, "SentryOptions is required");
        String a10 = this.f23233a.a();
        if (a10 != null && e(a10, s5Var.getLogger())) {
            return a(new q2(o0Var, s5Var.getEnvelopeReader(), s5Var.getSerializer(), s5Var.getLogger(), s5Var.getFlushTimeoutMillis(), s5Var.getMaxQueueSize()), a10, s5Var.getLogger());
        }
        s5Var.getLogger().c(j5.ERROR, "No outbox dir path is defined in options.", new Object[0]);
        return null;
    }
}
