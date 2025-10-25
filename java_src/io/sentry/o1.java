package io.sentry;

import java.io.Writer;
/* loaded from: classes2.dex */
public final class o1 implements m2 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.vendor.gson.stream.c f23283a;

    /* renamed from: b  reason: collision with root package name */
    private final n1 f23284b;

    public o1(Writer writer, int i10) {
        this.f23283a = new io.sentry.vendor.gson.stream.c(writer);
        this.f23284b = new n1(i10);
    }

    @Override // io.sentry.m2
    /* renamed from: A */
    public o1 f(Number number) {
        this.f23283a.X(number);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: B */
    public o1 c(String str) {
        this.f23283a.d0(str);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: C */
    public o1 d(boolean z10) {
        this.f23283a.k0(z10);
        return this;
    }

    @Override // io.sentry.m2
    public m2 e(String str) {
        this.f23283a.j(str);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: m */
    public o1 l() {
        this.f23283a.c();
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: n */
    public o1 t() {
        this.f23283a.e();
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: o */
    public o1 j() {
        this.f23283a.g();
        return this;
    }

    @Override // io.sentry.m2
    public void p(boolean z10) {
        this.f23283a.p(z10);
    }

    @Override // io.sentry.m2
    /* renamed from: q */
    public o1 r() {
        this.f23283a.h();
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: s */
    public o1 k(String str) {
        this.f23283a.k(str);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: u */
    public o1 i() {
        this.f23283a.s();
        return this;
    }

    public void v(String str) {
        this.f23283a.z(str);
    }

    @Override // io.sentry.m2
    /* renamed from: w */
    public o1 b(double d10) {
        this.f23283a.H(d10);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: x */
    public o1 a(long j10) {
        this.f23283a.P(j10);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: y */
    public o1 g(ILogger iLogger, Object obj) {
        this.f23284b.a(this, iLogger, obj);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: z */
    public o1 h(Boolean bool) {
        this.f23283a.W(bool);
        return this;
    }
}
