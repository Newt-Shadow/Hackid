package io.sentry;
/* loaded from: classes2.dex */
public final class a implements c1 {
    @Override // io.sentry.c1
    public io.sentry.transport.q a(s5 s5Var, a3 a3Var) {
        io.sentry.util.q.c(s5Var, "options is required");
        io.sentry.util.q.c(a3Var, "requestDetails is required");
        return new io.sentry.transport.e(s5Var, new io.sentry.transport.z(s5Var), s5Var.getTransportGate(), a3Var);
    }
}
