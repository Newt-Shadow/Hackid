package io.sentry;
/* loaded from: classes2.dex */
public interface w0 {
    void a(f6 f6Var, c0 c0Var);

    io.sentry.protocol.r b(t5 t5Var, u0 u0Var, c0 c0Var);

    io.sentry.protocol.r d(io.sentry.protocol.y yVar, v6 v6Var, u0 u0Var, c0 c0Var, u2 u2Var);

    io.sentry.protocol.r e(z4 z4Var, u0 u0Var, c0 c0Var);

    void i(boolean z10);

    io.sentry.transport.z l();

    boolean m();

    void o(long j10);

    io.sentry.protocol.r u(a4 a4Var, c0 c0Var);

    default io.sentry.protocol.r v(a4 a4Var) {
        return u(a4Var, null);
    }
}
