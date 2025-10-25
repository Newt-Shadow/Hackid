package io.sentry;

import io.sentry.d3;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class d6 implements a1 {

    /* renamed from: b  reason: collision with root package name */
    private final k6 f23040b;

    /* renamed from: d  reason: collision with root package name */
    private final o0 f23042d;

    /* renamed from: e  reason: collision with root package name */
    private String f23043e;

    /* renamed from: g  reason: collision with root package name */
    private volatile TimerTask f23045g;

    /* renamed from: h  reason: collision with root package name */
    private volatile TimerTask f23046h;

    /* renamed from: i  reason: collision with root package name */
    private volatile Timer f23047i;

    /* renamed from: m  reason: collision with root package name */
    private final d f23051m;

    /* renamed from: n  reason: collision with root package name */
    private io.sentry.protocol.a0 f23052n;

    /* renamed from: o  reason: collision with root package name */
    private final d1 f23053o;

    /* renamed from: q  reason: collision with root package name */
    private final b7 f23055q;

    /* renamed from: r  reason: collision with root package name */
    private final a7 f23056r;

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.r f23039a = new io.sentry.protocol.r();

    /* renamed from: c  reason: collision with root package name */
    private final List f23041c = new CopyOnWriteArrayList();

    /* renamed from: f  reason: collision with root package name */
    private c f23044f = c.f23059c;

    /* renamed from: j  reason: collision with root package name */
    private final Object f23048j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private final AtomicBoolean f23049k = new AtomicBoolean(false);

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f23050l = new AtomicBoolean(false);

    /* renamed from: p  reason: collision with root package name */
    private final io.sentry.protocol.c f23054p = new io.sentry.protocol.c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            d6.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            d6.this.V();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        static final c f23059c = d();

        /* renamed from: a  reason: collision with root package name */
        private final boolean f23060a;

        /* renamed from: b  reason: collision with root package name */
        private final p6 f23061b;

        private c(boolean z10, p6 p6Var) {
            this.f23060a = z10;
            this.f23061b = p6Var;
        }

        static c c(p6 p6Var) {
            return new c(true, p6Var);
        }

        private static c d() {
            return new c(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d6(y6 y6Var, o0 o0Var, a7 a7Var, b7 b7Var) {
        this.f23047i = null;
        io.sentry.util.q.c(y6Var, "context is required");
        io.sentry.util.q.c(o0Var, "hub is required");
        this.f23040b = new k6(y6Var, this, o0Var, a7Var.h(), a7Var);
        this.f23043e = y6Var.t();
        this.f23053o = y6Var.s();
        this.f23042d = o0Var;
        this.f23055q = b7Var;
        this.f23052n = y6Var.v();
        this.f23056r = a7Var;
        if (y6Var.r() != null) {
            this.f23051m = y6Var.r();
        } else {
            this.f23051m = new d(o0Var.B().getLogger());
        }
        if (b7Var != null) {
            b7Var.d(this);
        }
        if (a7Var.g() != null || a7Var.f() != null) {
            this.f23047i = new Timer(true);
            X();
            n();
        }
    }

    private void B() {
        synchronized (this.f23048j) {
            if (this.f23046h != null) {
                this.f23046h.cancel();
                this.f23050l.set(false);
                this.f23046h = null;
            }
        }
    }

    private void C() {
        synchronized (this.f23048j) {
            if (this.f23045g != null) {
                this.f23045g.cancel();
                this.f23049k.set(false);
                this.f23045g = null;
            }
        }
    }

    private z0 D(n6 n6Var, String str, String str2, y3 y3Var, d1 d1Var, o6 o6Var) {
        String name;
        if (this.f23040b.c()) {
            return g2.u();
        }
        if (!this.f23053o.equals(d1Var)) {
            return g2.u();
        }
        if (this.f23041c.size() < this.f23042d.B().getMaxSpans()) {
            io.sentry.util.q.c(n6Var, "parentSpanId is required");
            io.sentry.util.q.c(str, "operation is required");
            C();
            k6 k6Var = new k6(this.f23040b.G(), n6Var, this, str, this.f23042d, y3Var, o6Var, new m6() { // from class: io.sentry.a6
                @Override // io.sentry.m6
                public final void a(k6 k6Var2) {
                    d6.this.Q(k6Var2);
                }
            });
            k6Var.l(str2);
            k6Var.b("thread.id", String.valueOf(Thread.currentThread().getId()));
            if (this.f23042d.B().getMainThreadChecker().a()) {
                name = "main";
            } else {
                name = Thread.currentThread().getName();
            }
            k6Var.b("thread.name", name);
            this.f23041c.add(k6Var);
            b7 b7Var = this.f23055q;
            if (b7Var != null) {
                b7Var.b(k6Var);
            }
            return k6Var;
        }
        this.f23042d.B().getLogger().c(j5.WARNING, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan.", str, str2);
        return g2.u();
    }

    private z0 E(String str, String str2, y3 y3Var, d1 d1Var, o6 o6Var) {
        if (this.f23040b.c()) {
            return g2.u();
        }
        if (!this.f23053o.equals(d1Var)) {
            return g2.u();
        }
        if (this.f23041c.size() < this.f23042d.B().getMaxSpans()) {
            return this.f23040b.L(str, str2, y3Var, d1Var, o6Var);
        }
        this.f23042d.B().getLogger().c(j5.WARNING, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan.", str, str2);
        return g2.u();
    }

    private boolean N() {
        ArrayList<k6> arrayList = new ArrayList(this.f23041c);
        if (!arrayList.isEmpty()) {
            for (k6 k6Var : arrayList) {
                if (!k6Var.c() && k6Var.p() == null) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(k6 k6Var) {
        b7 b7Var = this.f23055q;
        if (b7Var != null) {
            b7Var.a(k6Var);
        }
        c cVar = this.f23044f;
        if (this.f23056r.g() != null) {
            if (!this.f23056r.l() || N()) {
                n();
            }
        } else if (cVar.f23060a) {
            g(cVar.f23061b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(m6 m6Var, AtomicReference atomicReference, k6 k6Var) {
        if (m6Var != null) {
            m6Var.a(k6Var);
        }
        z6 i10 = this.f23056r.i();
        if (i10 != null) {
            i10.a(this);
        }
        b7 b7Var = this.f23055q;
        if (b7Var != null) {
            atomicReference.set(b7Var.c(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(u0 u0Var, a1 a1Var) {
        if (a1Var == this) {
            u0Var.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(final u0 u0Var) {
        u0Var.D(new d3.c() { // from class: io.sentry.c6
            @Override // io.sentry.d3.c
            public final void a(a1 a1Var) {
                d6.this.S(u0Var, a1Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U(AtomicReference atomicReference, AtomicReference atomicReference2, u0 u0Var) {
        atomicReference.set(u0Var.G());
        atomicReference2.set(u0Var.o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        boolean z10;
        p6 d10 = d();
        if (d10 == null) {
            d10 = p6.DEADLINE_EXCEEDED;
        }
        if (this.f23056r.g() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(d10, z10, null);
        this.f23050l.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        p6 d10 = d();
        if (d10 == null) {
            d10 = p6.OK;
        }
        g(d10);
        this.f23049k.set(false);
    }

    private void X() {
        Long f10 = this.f23056r.f();
        if (f10 != null) {
            synchronized (this.f23048j) {
                if (this.f23047i != null) {
                    B();
                    this.f23050l.set(true);
                    this.f23046h = new b();
                    this.f23047i.schedule(this.f23046h, f10.longValue());
                }
            }
        }
    }

    private void c0() {
        synchronized (this) {
            if (this.f23051m.r()) {
                final AtomicReference atomicReference = new AtomicReference();
                final AtomicReference atomicReference2 = new AtomicReference();
                this.f23042d.y(new e3() { // from class: io.sentry.b6
                    @Override // io.sentry.e3
                    public final void a(u0 u0Var) {
                        d6.U(atomicReference, atomicReference2, u0Var);
                    }
                });
                this.f23051m.G(this, (io.sentry.protocol.b0) atomicReference.get(), (io.sentry.protocol.r) atomicReference2.get(), this.f23042d.B(), L());
                this.f23051m.a();
            }
        }
    }

    public void F(p6 p6Var, y3 y3Var, boolean z10, c0 c0Var) {
        u2 u2Var;
        p6 p6Var2;
        y3 p10 = this.f23040b.p();
        if (y3Var == null) {
            y3Var = p10;
        }
        if (y3Var == null) {
            y3Var = this.f23042d.B().getDateProvider().a();
        }
        for (k6 k6Var : this.f23041c) {
            if (k6Var.A().a()) {
                if (p6Var != null) {
                    p6Var2 = p6Var;
                } else {
                    p6Var2 = o().f23245g;
                }
                k6Var.r(p6Var2, y3Var);
            }
        }
        this.f23044f = c.c(p6Var);
        if (!this.f23040b.c()) {
            if (!this.f23056r.l() || N()) {
                final AtomicReference atomicReference = new AtomicReference();
                final m6 D = this.f23040b.D();
                this.f23040b.K(new m6() { // from class: io.sentry.y5
                    @Override // io.sentry.m6
                    public final void a(k6 k6Var2) {
                        d6.this.R(D, atomicReference, k6Var2);
                    }
                });
                this.f23040b.r(this.f23044f.f23061b, y3Var);
                Boolean bool = Boolean.TRUE;
                if (bool.equals(P()) && bool.equals(O())) {
                    u2Var = this.f23042d.B().getTransactionProfiler().a(this, (List) atomicReference.get(), this.f23042d.B());
                } else {
                    u2Var = null;
                }
                if (atomicReference.get() != null) {
                    ((List) atomicReference.get()).clear();
                }
                this.f23042d.y(new e3() { // from class: io.sentry.z5
                    @Override // io.sentry.e3
                    public final void a(u0 u0Var) {
                        d6.this.T(u0Var);
                    }
                });
                io.sentry.protocol.y yVar = new io.sentry.protocol.y(this);
                if (this.f23047i != null) {
                    synchronized (this.f23048j) {
                        if (this.f23047i != null) {
                            C();
                            B();
                            this.f23047i.cancel();
                            this.f23047i = null;
                        }
                    }
                }
                if (z10 && this.f23041c.isEmpty() && this.f23056r.g() != null) {
                    this.f23042d.B().getLogger().c(j5.DEBUG, "Dropping idle transaction %s because it has no child spans", this.f23043e);
                    return;
                }
                yVar.o0().putAll(this.f23040b.y());
                this.f23042d.C(yVar, a(), c0Var, u2Var);
            }
        }
    }

    public List G() {
        return this.f23041c;
    }

    public io.sentry.protocol.c H() {
        return this.f23054p;
    }

    public Map I() {
        return this.f23040b.v();
    }

    public io.sentry.metrics.c J() {
        return this.f23040b.x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k6 K() {
        return this.f23040b;
    }

    public x6 L() {
        return this.f23040b.C();
    }

    public List M() {
        return this.f23041c;
    }

    public Boolean O() {
        return this.f23040b.H();
    }

    public Boolean P() {
        return this.f23040b.I();
    }

    public void Y(String str, Number number) {
        if (!this.f23040b.y().containsKey(str)) {
            q(str, number);
        }
    }

    public void Z(String str, Number number, t1 t1Var) {
        if (!this.f23040b.y().containsKey(str)) {
            j(str, number, t1Var);
        }
    }

    @Override // io.sentry.z0
    public v6 a() {
        if (this.f23042d.B().isTraceSampling()) {
            c0();
            return this.f23051m.H();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0 a0(n6 n6Var, String str, String str2, y3 y3Var, d1 d1Var, o6 o6Var) {
        return D(n6Var, str, str2, y3Var, d1Var, o6Var);
    }

    @Override // io.sentry.z0
    public void b(String str, Object obj) {
        if (this.f23040b.c()) {
            this.f23042d.B().getLogger().c(j5.DEBUG, "The transaction is already finished. Data %s cannot be set", str);
        } else {
            this.f23040b.b(str, obj);
        }
    }

    public z0 b0(String str, String str2, y3 y3Var, d1 d1Var, o6 o6Var) {
        return E(str, str2, y3Var, d1Var, o6Var);
    }

    @Override // io.sentry.z0
    public boolean c() {
        return this.f23040b.c();
    }

    @Override // io.sentry.z0
    public p6 d() {
        return this.f23040b.d();
    }

    @Override // io.sentry.a1
    public void e(p6 p6Var, boolean z10, c0 c0Var) {
        if (c()) {
            return;
        }
        y3 a10 = this.f23042d.B().getDateProvider().a();
        List list = this.f23041c;
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            k6 k6Var = (k6) listIterator.previous();
            k6Var.K(null);
            k6Var.r(p6Var, a10);
        }
        F(p6Var, a10, z10, c0Var);
    }

    @Override // io.sentry.z0
    public boolean f(y3 y3Var) {
        return this.f23040b.f(y3Var);
    }

    @Override // io.sentry.z0
    public void g(p6 p6Var) {
        r(p6Var, null);
    }

    @Override // io.sentry.z0
    public String getDescription() {
        return this.f23040b.getDescription();
    }

    @Override // io.sentry.a1
    public String getName() {
        return this.f23043e;
    }

    @Override // io.sentry.z0
    public z0 h(String str, String str2, y3 y3Var, d1 d1Var) {
        return b0(str, str2, y3Var, d1Var, new o6());
    }

    @Override // io.sentry.z0
    public void i() {
        g(d());
    }

    @Override // io.sentry.z0
    public void j(String str, Number number, t1 t1Var) {
        this.f23040b.j(str, number, t1Var);
    }

    @Override // io.sentry.a1
    public k6 k() {
        ArrayList arrayList = new ArrayList(this.f23041c);
        if (!arrayList.isEmpty()) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!((k6) arrayList.get(size)).c()) {
                    return (k6) arrayList.get(size);
                }
            }
            return null;
        }
        return null;
    }

    @Override // io.sentry.z0
    public void l(String str) {
        if (this.f23040b.c()) {
            this.f23042d.B().getLogger().c(j5.DEBUG, "The transaction is already finished. Description %s cannot be set", str);
        } else {
            this.f23040b.l(str);
        }
    }

    @Override // io.sentry.a1
    public io.sentry.protocol.r m() {
        return this.f23039a;
    }

    @Override // io.sentry.a1
    public void n() {
        Long g10;
        synchronized (this.f23048j) {
            if (this.f23047i != null && (g10 = this.f23056r.g()) != null) {
                C();
                this.f23049k.set(true);
                this.f23045g = new a();
                this.f23047i.schedule(this.f23045g, g10.longValue());
            }
        }
    }

    @Override // io.sentry.z0
    public l6 o() {
        return this.f23040b.o();
    }

    @Override // io.sentry.z0
    public y3 p() {
        return this.f23040b.p();
    }

    @Override // io.sentry.z0
    public void q(String str, Number number) {
        this.f23040b.q(str, number);
    }

    @Override // io.sentry.z0
    public void r(p6 p6Var, y3 y3Var) {
        F(p6Var, y3Var, true, null);
    }

    @Override // io.sentry.a1
    public io.sentry.protocol.a0 s() {
        return this.f23052n;
    }

    @Override // io.sentry.z0
    public y3 t() {
        return this.f23040b.t();
    }
}
