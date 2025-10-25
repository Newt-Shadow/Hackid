package af;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class n extends b1 {

    /* renamed from: f  reason: collision with root package name */
    private b1 f419f;

    public n(b1 delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f419f = delegate;
    }

    @Override // af.b1
    public b1 a() {
        return this.f419f.a();
    }

    @Override // af.b1
    public b1 b() {
        return this.f419f.b();
    }

    @Override // af.b1
    public long c() {
        return this.f419f.c();
    }

    @Override // af.b1
    public b1 d(long j10) {
        return this.f419f.d(j10);
    }

    @Override // af.b1
    public boolean e() {
        return this.f419f.e();
    }

    @Override // af.b1
    public void f() {
        this.f419f.f();
    }

    @Override // af.b1
    public b1 g(long j10, TimeUnit unit) {
        kotlin.jvm.internal.m.e(unit, "unit");
        return this.f419f.g(j10, unit);
    }

    public final b1 i() {
        return this.f419f;
    }

    public final n j(b1 delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f419f = delegate;
        return this;
    }
}
