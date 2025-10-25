package io.sentry;

import io.sentry.util.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class k6 implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private y3 f23212a;

    /* renamed from: b  reason: collision with root package name */
    private y3 f23213b;

    /* renamed from: c  reason: collision with root package name */
    private final l6 f23214c;

    /* renamed from: d  reason: collision with root package name */
    private final d6 f23215d;

    /* renamed from: e  reason: collision with root package name */
    private Throwable f23216e;

    /* renamed from: f  reason: collision with root package name */
    private final o0 f23217f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23218g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f23219h;

    /* renamed from: i  reason: collision with root package name */
    private final o6 f23220i;

    /* renamed from: j  reason: collision with root package name */
    private m6 f23221j;

    /* renamed from: k  reason: collision with root package name */
    private final Map f23222k;

    /* renamed from: l  reason: collision with root package name */
    private final Map f23223l;

    /* renamed from: m  reason: collision with root package name */
    private final io.sentry.util.m f23224m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k6(io.sentry.protocol.r rVar, n6 n6Var, d6 d6Var, String str, o0 o0Var, y3 y3Var, o6 o6Var, m6 m6Var) {
        this.f23218g = false;
        this.f23219h = new AtomicBoolean(false);
        this.f23222k = new ConcurrentHashMap();
        this.f23223l = new ConcurrentHashMap();
        this.f23224m = new io.sentry.util.m(new m.a() { // from class: io.sentry.j6
            @Override // io.sentry.util.m.a
            public final Object a() {
                io.sentry.metrics.c J;
                J = k6.J();
                return J;
            }
        });
        this.f23214c = new l6(rVar, new n6(), str, n6Var, d6Var.L());
        this.f23215d = (d6) io.sentry.util.q.c(d6Var, "transaction is required");
        this.f23217f = (o0) io.sentry.util.q.c(o0Var, "hub is required");
        this.f23220i = o6Var;
        this.f23221j = m6Var;
        if (y3Var != null) {
            this.f23212a = y3Var;
        } else {
            this.f23212a = o0Var.B().getDateProvider().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ io.sentry.metrics.c J() {
        return new io.sentry.metrics.c();
    }

    private void M(y3 y3Var) {
        this.f23212a = y3Var;
    }

    private List w() {
        ArrayList arrayList = new ArrayList();
        for (k6 k6Var : this.f23215d.M()) {
            if (k6Var.B() != null && k6Var.B().equals(E())) {
                arrayList.add(k6Var);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o6 A() {
        return this.f23220i;
    }

    public n6 B() {
        return this.f23214c.d();
    }

    public x6 C() {
        return this.f23214c.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m6 D() {
        return this.f23221j;
    }

    public n6 E() {
        return this.f23214c.h();
    }

    public Map F() {
        return this.f23214c.j();
    }

    public io.sentry.protocol.r G() {
        return this.f23214c.k();
    }

    public Boolean H() {
        return this.f23214c.e();
    }

    public Boolean I() {
        return this.f23214c.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(m6 m6Var) {
        this.f23221j = m6Var;
    }

    public z0 L(String str, String str2, y3 y3Var, d1 d1Var, o6 o6Var) {
        if (this.f23218g) {
            return g2.u();
        }
        return this.f23215d.a0(this.f23214c.h(), str, str2, y3Var, d1Var, o6Var);
    }

    @Override // io.sentry.z0
    public void b(String str, Object obj) {
        this.f23222k.put(str, obj);
    }

    @Override // io.sentry.z0
    public boolean c() {
        return this.f23218g;
    }

    @Override // io.sentry.z0
    public p6 d() {
        return this.f23214c.i();
    }

    @Override // io.sentry.z0
    public boolean f(y3 y3Var) {
        if (this.f23213b != null) {
            this.f23213b = y3Var;
            return true;
        }
        return false;
    }

    @Override // io.sentry.z0
    public void g(p6 p6Var) {
        r(p6Var, this.f23217f.B().getDateProvider().a());
    }

    @Override // io.sentry.z0
    public String getDescription() {
        return this.f23214c.a();
    }

    @Override // io.sentry.z0
    public void i() {
        g(this.f23214c.i());
    }

    @Override // io.sentry.z0
    public void j(String str, Number number, t1 t1Var) {
        if (c()) {
            this.f23217f.B().getLogger().c(j5.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.f23223l.put(str, new io.sentry.protocol.h(number, t1Var.apiName()));
        if (this.f23215d.K() != this) {
            this.f23215d.Z(str, number, t1Var);
        }
    }

    @Override // io.sentry.z0
    public void l(String str) {
        this.f23214c.l(str);
    }

    @Override // io.sentry.z0
    public l6 o() {
        return this.f23214c;
    }

    @Override // io.sentry.z0
    public y3 p() {
        return this.f23213b;
    }

    @Override // io.sentry.z0
    public void q(String str, Number number) {
        if (c()) {
            this.f23217f.B().getLogger().c(j5.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.f23223l.put(str, new io.sentry.protocol.h(number, null));
        if (this.f23215d.K() != this) {
            this.f23215d.Y(str, number);
        }
    }

    @Override // io.sentry.z0
    public void r(p6 p6Var, y3 y3Var) {
        List<k6> w10;
        y3 y3Var2;
        if (!this.f23218g && this.f23219h.compareAndSet(false, true)) {
            this.f23214c.o(p6Var);
            if (y3Var == null) {
                y3Var = this.f23217f.B().getDateProvider().a();
            }
            this.f23213b = y3Var;
            if (this.f23220i.c() || this.f23220i.b()) {
                if (this.f23215d.K().E().equals(E())) {
                    w10 = this.f23215d.G();
                } else {
                    w10 = w();
                }
                y3 y3Var3 = null;
                y3 y3Var4 = null;
                for (k6 k6Var : w10) {
                    if (y3Var3 == null || k6Var.t().i(y3Var3)) {
                        y3Var3 = k6Var.t();
                    }
                    if (y3Var4 == null || (k6Var.p() != null && k6Var.p().f(y3Var4))) {
                        y3Var4 = k6Var.p();
                    }
                }
                if (this.f23220i.c() && y3Var3 != null && this.f23212a.i(y3Var3)) {
                    M(y3Var3);
                }
                if (this.f23220i.b() && y3Var4 != null && ((y3Var2 = this.f23213b) == null || y3Var2.f(y3Var4))) {
                    f(y3Var4);
                }
            }
            Throwable th = this.f23216e;
            if (th != null) {
                this.f23217f.A(th, this, this.f23215d.getName());
            }
            m6 m6Var = this.f23221j;
            if (m6Var != null) {
                m6Var.a(this);
            }
            this.f23218g = true;
        }
    }

    @Override // io.sentry.z0
    public y3 t() {
        return this.f23212a;
    }

    public Map v() {
        return this.f23222k;
    }

    public io.sentry.metrics.c x() {
        return (io.sentry.metrics.c) this.f23224m.a();
    }

    public Map y() {
        return this.f23223l;
    }

    public String z() {
        return this.f23214c.b();
    }

    public k6(y6 y6Var, d6 d6Var, o0 o0Var, y3 y3Var, o6 o6Var) {
        this.f23218g = false;
        this.f23219h = new AtomicBoolean(false);
        this.f23222k = new ConcurrentHashMap();
        this.f23223l = new ConcurrentHashMap();
        this.f23224m = new io.sentry.util.m(new m.a() { // from class: io.sentry.j6
            @Override // io.sentry.util.m.a
            public final Object a() {
                io.sentry.metrics.c J;
                J = k6.J();
                return J;
            }
        });
        this.f23214c = (l6) io.sentry.util.q.c(y6Var, "context is required");
        this.f23215d = (d6) io.sentry.util.q.c(d6Var, "sentryTracer is required");
        this.f23217f = (o0) io.sentry.util.q.c(o0Var, "hub is required");
        this.f23221j = null;
        if (y3Var != null) {
            this.f23212a = y3Var;
        } else {
            this.f23212a = o0Var.B().getDateProvider().a();
        }
        this.f23220i = o6Var;
    }
}
