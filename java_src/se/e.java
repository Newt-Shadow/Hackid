package se;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.q;
import ne.t;
import ne.w;
import ne.y;
/* loaded from: classes2.dex */
public final class e implements ne.e {

    /* renamed from: a  reason: collision with root package name */
    private final w f29631a;

    /* renamed from: b  reason: collision with root package name */
    private final y f29632b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f29633c;

    /* renamed from: d  reason: collision with root package name */
    private final g f29634d;

    /* renamed from: e  reason: collision with root package name */
    private final q f29635e;

    /* renamed from: f  reason: collision with root package name */
    private final b f29636f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f29637g;

    /* renamed from: h  reason: collision with root package name */
    private Object f29638h;

    /* renamed from: i  reason: collision with root package name */
    private d f29639i;

    /* renamed from: j  reason: collision with root package name */
    private f f29640j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f29641k;

    /* renamed from: l  reason: collision with root package name */
    private c f29642l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29643m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29644n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29645o;

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f29646p;

    /* renamed from: q  reason: collision with root package name */
    private volatile c f29647q;

    /* renamed from: r  reason: collision with root package name */
    private volatile f f29648r;

    /* loaded from: classes2.dex */
    public static final class a extends WeakReference {

        /* renamed from: a  reason: collision with root package name */
        private final Object f29649a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e referent, Object obj) {
            super(referent);
            m.e(referent, "referent");
            this.f29649a = obj;
        }

        public final Object a() {
            return this.f29649a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends af.c {
        b() {
        }

        @Override // af.c
        protected void B() {
            e.this.d();
        }
    }

    public e(w client, y originalRequest, boolean z10) {
        m.e(client, "client");
        m.e(originalRequest, "originalRequest");
        this.f29631a = client;
        this.f29632b = originalRequest;
        this.f29633c = z10;
        this.f29634d = client.j().a();
        this.f29635e = client.o().a(this);
        b bVar = new b();
        bVar.g(k().e(), TimeUnit.MILLISECONDS);
        this.f29636f = bVar;
        this.f29637g = new AtomicBoolean();
        this.f29645o = true;
    }

    private final IOException b(IOException iOException) {
        Socket u10;
        boolean z10;
        boolean z11 = oe.d.f27589h;
        if (z11 && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        f fVar = this.f29640j;
        if (fVar != null) {
            if (z11 && Thread.holdsLock(fVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + fVar);
            }
            synchronized (fVar) {
                u10 = u();
            }
            if (this.f29640j == null) {
                if (u10 != null) {
                    oe.d.m(u10);
                }
                this.f29635e.k(this, fVar);
            } else {
                if (u10 == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        IOException y10 = y(iOException);
        if (iOException != null) {
            q qVar = this.f29635e;
            m.b(y10);
            qVar.d(this, y10);
        } else {
            this.f29635e.c(this);
        }
        return y10;
    }

    private final void c() {
        this.f29638h = we.j.f32161a.g().h("response.body().close()");
        this.f29635e.e(this);
    }

    private final ne.a f(t tVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        ne.f fVar;
        if (tVar.i()) {
            sSLSocketFactory = this.f29631a.F();
            hostnameVerifier = this.f29631a.t();
            fVar = this.f29631a.f();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            fVar = null;
        }
        return new ne.a(tVar.h(), tVar.l(), this.f29631a.n(), this.f29631a.E(), sSLSocketFactory, hostnameVerifier, fVar, this.f29631a.A(), this.f29631a.z(), this.f29631a.y(), this.f29631a.k(), this.f29631a.B());
    }

    private final IOException y(IOException iOException) {
        if (this.f29641k) {
            return iOException;
        }
        if (!this.f29636f.w()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void a(f connection) {
        boolean z10;
        m.e(connection, "connection");
        if (oe.d.f27589h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + connection);
        }
        if (this.f29640j == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f29640j = connection;
            connection.n().add(new a(this, this.f29638h));
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public void d() {
        if (this.f29646p) {
            return;
        }
        this.f29646p = true;
        c cVar = this.f29647q;
        if (cVar != null) {
            cVar.b();
        }
        f fVar = this.f29648r;
        if (fVar != null) {
            fVar.d();
        }
        this.f29635e.f(this);
    }

    /* renamed from: e */
    public e clone() {
        return new e(this.f29631a, this.f29632b, this.f29633c);
    }

    @Override // ne.e
    public a0 execute() {
        if (this.f29637g.compareAndSet(false, true)) {
            this.f29636f.v();
            c();
            try {
                this.f29631a.m().a(this);
                return o();
            } finally {
                this.f29631a.m().d(this);
            }
        }
        throw new IllegalStateException("Already Executed".toString());
    }

    public final void i(y request, boolean z10) {
        boolean z11;
        m.e(request, "request");
        if (this.f29642l == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            synchronized (this) {
                if (!this.f29644n) {
                    if (!this.f29643m) {
                        xc.t tVar = xc.t.f32733a;
                    } else {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                } else {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
                }
            }
            if (z10) {
                this.f29639i = new d(this.f29634d, f(request.i()), this, this.f29635e);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final void j(boolean z10) {
        c cVar;
        synchronized (this) {
            if (this.f29645o) {
                xc.t tVar = xc.t.f32733a;
            } else {
                throw new IllegalStateException("released".toString());
            }
        }
        if (z10 && (cVar = this.f29647q) != null) {
            cVar.d();
        }
        this.f29642l = null;
    }

    public final w k() {
        return this.f29631a;
    }

    public final f l() {
        return this.f29640j;
    }

    public final q m() {
        return this.f29635e;
    }

    public final c n() {
        return this.f29642l;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ne.a0 o() {
        /*
            r12 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            ne.w r0 = r12.f29631a
            java.util.List r0 = r0.u()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            yc.m.v(r2, r0)
            te.j r0 = new te.j
            ne.w r1 = r12.f29631a
            r0.<init>(r1)
            r2.add(r0)
            te.a r0 = new te.a
            ne.w r1 = r12.f29631a
            ne.m r1 = r1.l()
            r0.<init>(r1)
            r2.add(r0)
            qe.a r0 = new qe.a
            ne.w r1 = r12.f29631a
            r1.d()
            r9 = 0
            r0.<init>(r9)
            r2.add(r0)
            se.a r0 = se.a.f29598a
            r2.add(r0)
            boolean r0 = r12.f29633c
            if (r0 != 0) goto L4a
            ne.w r0 = r12.f29631a
            java.util.List r0 = r0.v()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            yc.m.v(r2, r0)
        L4a:
            te.b r0 = new te.b
            boolean r1 = r12.f29633c
            r0.<init>(r1)
            r2.add(r0)
            te.g r10 = new te.g
            r3 = 0
            r4 = 0
            ne.y r5 = r12.f29632b
            ne.w r0 = r12.f29631a
            int r6 = r0.i()
            ne.w r0 = r12.f29631a
            int r7 = r0.C()
            ne.w r0 = r12.f29631a
            int r8 = r0.H()
            r0 = r10
            r1 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            ne.y r1 = r12.f29632b     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            ne.a0 r1 = r10.a(r1)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            boolean r2 = r12.q()     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            if (r2 != 0) goto L82
            r12.t(r9)
            return r1
        L82:
            oe.d.l(r1)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            java.lang.String r2 = "Canceled"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
            throw r1     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
        L8d:
            r1 = move-exception
            goto La4
        L8f:
            r0 = move-exception
            r1 = 1
            java.io.IOException r0 = r12.t(r0)     // Catch: java.lang.Throwable -> La0
            if (r0 != 0) goto L9f
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.Throwable"
            r0.<init>(r2)     // Catch: java.lang.Throwable -> La0
            throw r0     // Catch: java.lang.Throwable -> La0
        L9f:
            throw r0     // Catch: java.lang.Throwable -> La0
        La0:
            r0 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        La4:
            if (r0 != 0) goto La9
            r12.t(r9)
        La9:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: se.e.o():ne.a0");
    }

    public final c p(te.g chain) {
        m.e(chain, "chain");
        synchronized (this) {
            if (this.f29645o) {
                if (!this.f29644n) {
                    if (!this.f29643m) {
                        xc.t tVar = xc.t.f32733a;
                    } else {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            } else {
                throw new IllegalStateException("released".toString());
            }
        }
        d dVar = this.f29639i;
        m.b(dVar);
        c cVar = new c(this, this.f29635e, dVar, dVar.a(this.f29631a, chain));
        this.f29642l = cVar;
        this.f29647q = cVar;
        synchronized (this) {
            this.f29643m = true;
            this.f29644n = true;
        }
        if (!this.f29646p) {
            return cVar;
        }
        throw new IOException("Canceled");
    }

    public boolean q() {
        return this.f29646p;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0021 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:47:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0025 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:47:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.IOException r(se.c r2, boolean r3, boolean r4, java.io.IOException r5) {
        /*
            r1 = this;
            java.lang.String r0 = "exchange"
            kotlin.jvm.internal.m.e(r2, r0)
            se.c r0 = r1.f29647q
            boolean r2 = kotlin.jvm.internal.m.a(r2, r0)
            if (r2 != 0) goto Le
            return r5
        Le:
            monitor-enter(r1)
            r2 = 0
            if (r3 == 0) goto L19
            boolean r0 = r1.f29643m     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L1f
            goto L19
        L17:
            r2 = move-exception
            goto L5a
        L19:
            if (r4 == 0) goto L41
            boolean r0 = r1.f29644n     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L41
        L1f:
            if (r3 == 0) goto L23
            r1.f29643m = r2     // Catch: java.lang.Throwable -> L17
        L23:
            if (r4 == 0) goto L27
            r1.f29644n = r2     // Catch: java.lang.Throwable -> L17
        L27:
            boolean r3 = r1.f29643m     // Catch: java.lang.Throwable -> L17
            r4 = 1
            if (r3 != 0) goto L32
            boolean r0 = r1.f29644n     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L32
            r0 = r4
            goto L33
        L32:
            r0 = r2
        L33:
            if (r3 != 0) goto L3e
            boolean r3 = r1.f29644n     // Catch: java.lang.Throwable -> L17
            if (r3 != 0) goto L3e
            boolean r3 = r1.f29645o     // Catch: java.lang.Throwable -> L17
            if (r3 != 0) goto L3e
            r2 = r4
        L3e:
            r3 = r2
            r2 = r0
            goto L42
        L41:
            r3 = r2
        L42:
            xc.t r4 = xc.t.f32733a     // Catch: java.lang.Throwable -> L17
            monitor-exit(r1)
            if (r2 == 0) goto L52
            r2 = 0
            r1.f29647q = r2
            se.f r2 = r1.f29640j
            if (r2 != 0) goto L4f
            goto L52
        L4f:
            r2.s()
        L52:
            if (r3 == 0) goto L59
            java.io.IOException r2 = r1.b(r5)
            return r2
        L59:
            return r5
        L5a:
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: se.e.r(se.c, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    public final IOException t(IOException iOException) {
        boolean z10;
        synchronized (this) {
            z10 = false;
            if (this.f29645o) {
                this.f29645o = false;
                if (!this.f29643m && !this.f29644n) {
                    z10 = true;
                }
            }
            xc.t tVar = xc.t.f32733a;
        }
        if (z10) {
            return b(iOException);
        }
        return iOException;
    }

    public final Socket u() {
        f fVar = this.f29640j;
        m.b(fVar);
        if (oe.d.f27589h && !Thread.holdsLock(fVar)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + fVar);
        }
        List n10 = fVar.n();
        Iterator it = n10.iterator();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (m.a(((Reference) it.next()).get(), this)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 != -1) {
            z10 = true;
        }
        if (z10) {
            n10.remove(i10);
            this.f29640j = null;
            if (n10.isEmpty()) {
                fVar.B(System.nanoTime());
                if (this.f29634d.c(fVar)) {
                    return fVar.D();
                }
            }
            return null;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final boolean v() {
        d dVar = this.f29639i;
        m.b(dVar);
        return dVar.e();
    }

    public final void w(f fVar) {
        this.f29648r = fVar;
    }

    public final void x() {
        if (!this.f29641k) {
            this.f29641k = true;
            this.f29636f.w();
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }
}
