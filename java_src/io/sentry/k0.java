package io.sentry;
/* loaded from: classes2.dex */
public final class k0 implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final k0 f23202a = new k0();

    private k0() {
    }

    public static k0 h() {
        return f23202a;
    }

    @Override // io.sentry.o0
    public void A(Throwable th, z0 z0Var, String str) {
        q3.o().A(th, z0Var, str);
    }

    @Override // io.sentry.o0
    public s5 B() {
        return q3.o().B();
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r C(io.sentry.protocol.y yVar, v6 v6Var, c0 c0Var, u2 u2Var) {
        return q3.o().C(yVar, v6Var, c0Var, u2Var);
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r D(z4 z4Var, c0 c0Var) {
        return q3.h(z4Var, c0Var);
    }

    @Override // io.sentry.o0
    public void a(String str) {
        q3.A(str);
    }

    @Override // io.sentry.o0
    public void b(String str, String str2) {
        q3.D(str, str2);
    }

    @Override // io.sentry.o0
    public void c(String str) {
        q3.B(str);
    }

    @Override // io.sentry.o0
    public void d(String str, String str2) {
        q3.E(str, str2);
    }

    @Override // io.sentry.o0
    public void e() {
        q3.l();
    }

    @Override // io.sentry.o0
    public void f() {
        q3.G();
    }

    public void g() {
        q3.j();
    }

    @Override // io.sentry.o0
    public void i(boolean z10) {
        q3.j();
    }

    @Override // io.sentry.o0
    public boolean isEnabled() {
        return q3.t();
    }

    @Override // io.sentry.o0
    public io.sentry.transport.z l() {
        return q3.o().l();
    }

    @Override // io.sentry.o0
    public boolean m() {
        return q3.u();
    }

    @Override // io.sentry.o0
    public void n(io.sentry.protocol.b0 b0Var) {
        q3.F(b0Var);
    }

    @Override // io.sentry.o0
    public void o(long j10) {
        q3.n(j10);
    }

    @Override // io.sentry.o0
    public void p(e eVar, c0 c0Var) {
        q3.f(eVar, c0Var);
    }

    @Override // io.sentry.o0
    public void q() {
        q3.i();
    }

    @Override // io.sentry.o0
    /* renamed from: r */
    public o0 clone() {
        return q3.o().r();
    }

    @Override // io.sentry.o0
    public a1 s() {
        return q3.o().s();
    }

    @Override // io.sentry.o0
    public void t(e eVar) {
        p(eVar, new c0());
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r u(a4 a4Var, c0 c0Var) {
        return q3.o().u(a4Var, c0Var);
    }

    @Override // io.sentry.o0
    public a1 w(y6 y6Var, a7 a7Var) {
        return q3.H(y6Var, a7Var);
    }

    @Override // io.sentry.o0
    public void y(e3 e3Var) {
        q3.k(e3Var);
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r z(t5 t5Var, c0 c0Var) {
        return q3.o().z(t5Var, c0Var);
    }
}
