package io.sentry;
/* loaded from: classes2.dex */
public interface o0 {
    void A(Throwable th, z0 z0Var, String str);

    s5 B();

    io.sentry.protocol.r C(io.sentry.protocol.y yVar, v6 v6Var, c0 c0Var, u2 u2Var);

    io.sentry.protocol.r D(z4 z4Var, c0 c0Var);

    void a(String str);

    void b(String str, String str2);

    void c(String str);

    void d(String str, String str2);

    void e();

    void f();

    void i(boolean z10);

    boolean isEnabled();

    io.sentry.transport.z l();

    boolean m();

    void n(io.sentry.protocol.b0 b0Var);

    void o(long j10);

    void p(e eVar, c0 c0Var);

    void q();

    o0 r();

    a1 s();

    void t(e eVar);

    io.sentry.protocol.r u(a4 a4Var, c0 c0Var);

    default io.sentry.protocol.r v(a4 a4Var) {
        return u(a4Var, new c0());
    }

    a1 w(y6 y6Var, a7 a7Var);

    default io.sentry.protocol.r x(io.sentry.protocol.y yVar, v6 v6Var, c0 c0Var) {
        return C(yVar, v6Var, c0Var, null);
    }

    void y(e3 e3Var);

    io.sentry.protocol.r z(t5 t5Var, c0 c0Var);
}
