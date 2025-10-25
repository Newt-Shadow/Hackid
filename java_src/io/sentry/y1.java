package io.sentry;
/* loaded from: classes2.dex */
public final class y1 implements o0 {

    /* renamed from: c  reason: collision with root package name */
    private static final y1 f23928c = new y1();

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23929a = s5.empty();

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.metrics.d f23930b = new io.sentry.metrics.d(io.sentry.metrics.f.a());

    private y1() {
    }

    public static y1 g() {
        return f23928c;
    }

    @Override // io.sentry.o0
    public void A(Throwable th, z0 z0Var, String str) {
    }

    @Override // io.sentry.o0
    public s5 B() {
        return this.f23929a;
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r C(io.sentry.protocol.y yVar, v6 v6Var, c0 c0Var, u2 u2Var) {
        return io.sentry.protocol.r.f23462b;
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r D(z4 z4Var, c0 c0Var) {
        return io.sentry.protocol.r.f23462b;
    }

    @Override // io.sentry.o0
    public void a(String str) {
    }

    @Override // io.sentry.o0
    public void b(String str, String str2) {
    }

    @Override // io.sentry.o0
    public void c(String str) {
    }

    @Override // io.sentry.o0
    public void d(String str, String str2) {
    }

    @Override // io.sentry.o0
    public void e() {
    }

    @Override // io.sentry.o0
    public void f() {
    }

    @Override // io.sentry.o0
    public void i(boolean z10) {
    }

    @Override // io.sentry.o0
    public boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.o0
    public io.sentry.transport.z l() {
        return null;
    }

    @Override // io.sentry.o0
    public boolean m() {
        return true;
    }

    @Override // io.sentry.o0
    public void n(io.sentry.protocol.b0 b0Var) {
    }

    @Override // io.sentry.o0
    public void o(long j10) {
    }

    @Override // io.sentry.o0
    public void p(e eVar, c0 c0Var) {
    }

    @Override // io.sentry.o0
    public void q() {
    }

    @Override // io.sentry.o0
    /* renamed from: r */
    public o0 clone() {
        return f23928c;
    }

    @Override // io.sentry.o0
    public a1 s() {
        return null;
    }

    @Override // io.sentry.o0
    public void t(e eVar) {
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r u(a4 a4Var, c0 c0Var) {
        return io.sentry.protocol.r.f23462b;
    }

    @Override // io.sentry.o0
    public a1 w(y6 y6Var, a7 a7Var) {
        return h2.u();
    }

    @Override // io.sentry.o0
    public void y(e3 e3Var) {
    }

    @Override // io.sentry.o0
    public io.sentry.protocol.r z(t5 t5Var, c0 c0Var) {
        return io.sentry.protocol.r.f23462b;
    }
}
