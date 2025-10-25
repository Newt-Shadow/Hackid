package ve;

import af.a1;
import af.b1;
import af.y0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ne.s;
import xc.t;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: o  reason: collision with root package name */
    public static final a f31591o = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f31592a;

    /* renamed from: b  reason: collision with root package name */
    private final f f31593b;

    /* renamed from: c  reason: collision with root package name */
    private long f31594c;

    /* renamed from: d  reason: collision with root package name */
    private long f31595d;

    /* renamed from: e  reason: collision with root package name */
    private long f31596e;

    /* renamed from: f  reason: collision with root package name */
    private long f31597f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque f31598g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f31599h;

    /* renamed from: i  reason: collision with root package name */
    private final c f31600i;

    /* renamed from: j  reason: collision with root package name */
    private final b f31601j;

    /* renamed from: k  reason: collision with root package name */
    private final d f31602k;

    /* renamed from: l  reason: collision with root package name */
    private final d f31603l;

    /* renamed from: m  reason: collision with root package name */
    private ve.b f31604m;

    /* renamed from: n  reason: collision with root package name */
    private IOException f31605n;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public final class b implements y0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f31606a;

        /* renamed from: b  reason: collision with root package name */
        private final af.d f31607b;

        /* renamed from: c  reason: collision with root package name */
        private s f31608c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f31609d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ i f31610e;

        public b(i this$0, boolean z10) {
            kotlin.jvm.internal.m.e(this$0, "this$0");
            this.f31610e = this$0;
            this.f31606a = z10;
            this.f31607b = new af.d();
        }

        private final void a(boolean z10) {
            long min;
            boolean z11;
            boolean z12;
            i iVar = this.f31610e;
            synchronized (iVar) {
                iVar.s().v();
                while (iVar.r() >= iVar.q() && !c() && !b() && iVar.h() == null) {
                    iVar.F();
                }
                iVar.s().C();
                iVar.c();
                min = Math.min(iVar.q() - iVar.r(), this.f31607b.k0());
                iVar.D(iVar.r() + min);
                if (z10 && min == this.f31607b.k0()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                z12 = z11;
                t tVar = t.f32733a;
            }
            this.f31610e.s().v();
            try {
                this.f31610e.g().o1(this.f31610e.j(), z12, this.f31607b, min);
            } finally {
                this.f31610e.s().C();
            }
        }

        public final boolean b() {
            return this.f31609d;
        }

        public final boolean c() {
            return this.f31606a;
        }

        @Override // af.y0
        public void c0(af.d source, long j10) {
            kotlin.jvm.internal.m.e(source, "source");
            i iVar = this.f31610e;
            if (oe.d.f27589h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + iVar);
            }
            this.f31607b.c0(source, j10);
            while (this.f31607b.k0() >= 16384) {
                a(false);
            }
        }

        @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            boolean z10;
            boolean z11;
            boolean z12;
            i iVar = this.f31610e;
            if (oe.d.f27589h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + iVar);
            }
            i iVar2 = this.f31610e;
            synchronized (iVar2) {
                if (b()) {
                    return;
                }
                if (iVar2.h() == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                t tVar = t.f32733a;
                if (!this.f31610e.o().f31606a) {
                    if (this.f31607b.k0() > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (this.f31608c != null) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        while (this.f31607b.k0() > 0) {
                            a(false);
                        }
                        f g10 = this.f31610e.g();
                        int j10 = this.f31610e.j();
                        s sVar = this.f31608c;
                        kotlin.jvm.internal.m.b(sVar);
                        g10.p1(j10, z10, oe.d.N(sVar));
                    } else if (z11) {
                        while (this.f31607b.k0() > 0) {
                            a(true);
                        }
                    } else if (z10) {
                        this.f31610e.g().o1(this.f31610e.j(), true, null, 0L);
                    }
                }
                synchronized (this.f31610e) {
                    e(true);
                    t tVar2 = t.f32733a;
                }
                this.f31610e.g().flush();
                this.f31610e.b();
            }
        }

        public final void e(boolean z10) {
            this.f31609d = z10;
        }

        @Override // af.y0, java.io.Flushable
        public void flush() {
            i iVar = this.f31610e;
            if (oe.d.f27589h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + iVar);
            }
            i iVar2 = this.f31610e;
            synchronized (iVar2) {
                iVar2.c();
                t tVar = t.f32733a;
            }
            while (this.f31607b.k0() > 0) {
                a(false);
                this.f31610e.g().flush();
            }
        }

        @Override // af.y0
        public b1 n() {
            return this.f31610e.s();
        }
    }

    /* loaded from: classes2.dex */
    public final class c implements a1 {

        /* renamed from: a  reason: collision with root package name */
        private final long f31611a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f31612b;

        /* renamed from: c  reason: collision with root package name */
        private final af.d f31613c;

        /* renamed from: d  reason: collision with root package name */
        private final af.d f31614d;

        /* renamed from: e  reason: collision with root package name */
        private s f31615e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f31616f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ i f31617g;

        public c(i this$0, long j10, boolean z10) {
            kotlin.jvm.internal.m.e(this$0, "this$0");
            this.f31617g = this$0;
            this.f31611a = j10;
            this.f31612b = z10;
            this.f31613c = new af.d();
            this.f31614d = new af.d();
        }

        private final void k(long j10) {
            i iVar = this.f31617g;
            if (oe.d.f27589h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + iVar);
            }
            this.f31617g.g().n1(j10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x00d5, code lost:
            throw new java.io.IOException("stream closed");
         */
        @Override // af.a1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long L0(af.d r18, long r19) {
            /*
                Method dump skipped, instructions count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ve.i.c.L0(af.d, long):long");
        }

        public final boolean a() {
            return this.f31616f;
        }

        public final boolean b() {
            return this.f31612b;
        }

        public final af.d c() {
            return this.f31614d;
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long k02;
            i iVar = this.f31617g;
            synchronized (iVar) {
                g(true);
                k02 = c().k0();
                c().a();
                iVar.notifyAll();
                t tVar = t.f32733a;
            }
            if (k02 > 0) {
                k(k02);
            }
            this.f31617g.b();
        }

        public final af.d e() {
            return this.f31613c;
        }

        public final void f(af.f source, long j10) {
            boolean b10;
            boolean z10;
            boolean z11;
            long j11;
            kotlin.jvm.internal.m.e(source, "source");
            i iVar = this.f31617g;
            if (oe.d.f27589h && Thread.holdsLock(iVar)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + iVar);
            }
            while (j10 > 0) {
                synchronized (this.f31617g) {
                    b10 = b();
                    z10 = true;
                    if (c().k0() + j10 > this.f31611a) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    t tVar = t.f32733a;
                }
                if (z11) {
                    source.skip(j10);
                    this.f31617g.f(ve.b.FLOW_CONTROL_ERROR);
                    return;
                } else if (b10) {
                    source.skip(j10);
                    return;
                } else {
                    long L0 = source.L0(this.f31613c, j10);
                    if (L0 != -1) {
                        j10 -= L0;
                        i iVar2 = this.f31617g;
                        synchronized (iVar2) {
                            if (a()) {
                                j11 = e().k0();
                                e().a();
                            } else {
                                if (c().k0() != 0) {
                                    z10 = false;
                                }
                                c().W0(e());
                                if (z10) {
                                    iVar2.notifyAll();
                                }
                                j11 = 0;
                            }
                        }
                        if (j11 > 0) {
                            k(j11);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        public final void g(boolean z10) {
            this.f31616f = z10;
        }

        public final void h(boolean z10) {
            this.f31612b = z10;
        }

        public final void j(s sVar) {
            this.f31615e = sVar;
        }

        @Override // af.a1
        public b1 n() {
            return this.f31617g.m();
        }
    }

    /* loaded from: classes2.dex */
    public final class d extends af.c {

        /* renamed from: o  reason: collision with root package name */
        final /* synthetic */ i f31618o;

        public d(i this$0) {
            kotlin.jvm.internal.m.e(this$0, "this$0");
            this.f31618o = this$0;
        }

        @Override // af.c
        protected void B() {
            this.f31618o.f(ve.b.CANCEL);
            this.f31618o.g().g1();
        }

        public final void C() {
            if (!w()) {
                return;
            }
            throw x(null);
        }

        @Override // af.c
        protected IOException x(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }
    }

    public i(int i10, f connection, boolean z10, boolean z11, s sVar) {
        kotlin.jvm.internal.m.e(connection, "connection");
        this.f31592a = i10;
        this.f31593b = connection;
        this.f31597f = connection.A0().c();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f31598g = arrayDeque;
        this.f31600i = new c(this, connection.t0().c(), z11);
        this.f31601j = new b(this, z10);
        this.f31602k = new d(this);
        this.f31603l = new d(this);
        if (sVar != null) {
            if (!t()) {
                arrayDeque.add(sVar);
                return;
            }
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
        } else if (t()) {
        } else {
            throw new IllegalStateException("remotely-initiated streams should have headers".toString());
        }
    }

    private final boolean e(ve.b bVar, IOException iOException) {
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (h() != null) {
                return false;
            }
            if (p().b() && o().c()) {
                return false;
            }
            z(bVar);
            A(iOException);
            notifyAll();
            t tVar = t.f32733a;
            this.f31593b.f1(this.f31592a);
            return true;
        }
    }

    public final void A(IOException iOException) {
        this.f31605n = iOException;
    }

    public final void B(long j10) {
        this.f31595d = j10;
    }

    public final void C(long j10) {
        this.f31594c = j10;
    }

    public final void D(long j10) {
        this.f31596e = j10;
    }

    public final synchronized s E() {
        Object removeFirst;
        this.f31602k.v();
        while (this.f31598g.isEmpty() && this.f31604m == null) {
            F();
        }
        this.f31602k.C();
        if (!this.f31598g.isEmpty()) {
            removeFirst = this.f31598g.removeFirst();
            kotlin.jvm.internal.m.d(removeFirst, "headersQueue.removeFirst()");
        } else {
            IOException iOException = this.f31605n;
            if (iOException == null) {
                ve.b bVar = this.f31604m;
                kotlin.jvm.internal.m.b(bVar);
                throw new n(bVar);
            }
            throw iOException;
        }
        return (s) removeFirst;
    }

    public final void F() {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final b1 G() {
        return this.f31603l;
    }

    public final void a(long j10) {
        this.f31597f += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public final void b() {
        boolean z10;
        boolean u10;
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (!p().b() && p().a() && (o().c() || o().b())) {
                z10 = true;
            } else {
                z10 = false;
            }
            u10 = u();
            t tVar = t.f32733a;
        }
        if (z10) {
            d(ve.b.CANCEL, null);
        } else if (!u10) {
            this.f31593b.f1(this.f31592a);
        }
    }

    public final void c() {
        if (!this.f31601j.b()) {
            if (!this.f31601j.c()) {
                if (this.f31604m != null) {
                    IOException iOException = this.f31605n;
                    if (iOException == null) {
                        ve.b bVar = this.f31604m;
                        kotlin.jvm.internal.m.b(bVar);
                        throw new n(bVar);
                    }
                    throw iOException;
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public final void d(ve.b rstStatusCode, IOException iOException) {
        kotlin.jvm.internal.m.e(rstStatusCode, "rstStatusCode");
        if (!e(rstStatusCode, iOException)) {
            return;
        }
        this.f31593b.r1(this.f31592a, rstStatusCode);
    }

    public final void f(ve.b errorCode) {
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        if (!e(errorCode, null)) {
            return;
        }
        this.f31593b.s1(this.f31592a, errorCode);
    }

    public final f g() {
        return this.f31593b;
    }

    public final synchronized ve.b h() {
        return this.f31604m;
    }

    public final IOException i() {
        return this.f31605n;
    }

    public final int j() {
        return this.f31592a;
    }

    public final long k() {
        return this.f31595d;
    }

    public final long l() {
        return this.f31594c;
    }

    public final d m() {
        return this.f31602k;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0011 A[Catch: all -> 0x0023, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:11:0x0011, B:15:0x0017, B:16:0x0022), top: B:20:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0017 A[Catch: all -> 0x0023, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:11:0x0011, B:15:0x0017, B:16:0x0022), top: B:20:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final af.y0 n() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.f31599h     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto Le
            boolean r0 = r2.t()     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto Lc
            goto Le
        Lc:
            r0 = 0
            goto Lf
        Le:
            r0 = 1
        Lf:
            if (r0 == 0) goto L17
            xc.t r0 = xc.t.f32733a     // Catch: java.lang.Throwable -> L23
            monitor-exit(r2)
            ve.i$b r0 = r2.f31601j
            return r0
        L17:
            java.lang.String r0 = "reply before requesting the sink"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L23
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L23
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L23
            throw r1     // Catch: java.lang.Throwable -> L23
        L23:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ve.i.n():af.y0");
    }

    public final b o() {
        return this.f31601j;
    }

    public final c p() {
        return this.f31600i;
    }

    public final long q() {
        return this.f31597f;
    }

    public final long r() {
        return this.f31596e;
    }

    public final d s() {
        return this.f31603l;
    }

    public final boolean t() {
        boolean z10;
        if ((this.f31592a & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f31593b.X() == z10) {
            return true;
        }
        return false;
    }

    public final synchronized boolean u() {
        if (this.f31604m != null) {
            return false;
        }
        if ((this.f31600i.b() || this.f31600i.a()) && (this.f31601j.c() || this.f31601j.b())) {
            if (this.f31599h) {
                return false;
            }
        }
        return true;
    }

    public final b1 v() {
        return this.f31602k;
    }

    public final void w(af.f source, int i10) {
        kotlin.jvm.internal.m.e(source, "source");
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        this.f31600i.f(source, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0051 A[Catch: all -> 0x006c, TryCatch #0 {, blocks: (B:10:0x0038, B:14:0x0040, B:17:0x0051, B:18:0x0058, B:15:0x0048), top: B:26:0x0038 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(ne.s r3, boolean r4) {
        /*
            r2 = this;
            java.lang.String r0 = "headers"
            kotlin.jvm.internal.m.e(r3, r0)
            boolean r0 = oe.d.f27589h
            if (r0 == 0) goto L37
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto L10
            goto L37
        L10:
            java.lang.AssertionError r3 = new java.lang.AssertionError
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Thread "
            r4.append(r0)
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r0 = r0.getName()
            r4.append(r0)
            java.lang.String r0 = " MUST NOT hold lock on "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L37:
            monitor-enter(r2)
            boolean r0 = r2.f31599h     // Catch: java.lang.Throwable -> L6c
            r1 = 1
            if (r0 == 0) goto L48
            if (r4 != 0) goto L40
            goto L48
        L40:
            ve.i$c r0 = r2.p()     // Catch: java.lang.Throwable -> L6c
            r0.j(r3)     // Catch: java.lang.Throwable -> L6c
            goto L4f
        L48:
            r2.f31599h = r1     // Catch: java.lang.Throwable -> L6c
            java.util.ArrayDeque r0 = r2.f31598g     // Catch: java.lang.Throwable -> L6c
            r0.add(r3)     // Catch: java.lang.Throwable -> L6c
        L4f:
            if (r4 == 0) goto L58
            ve.i$c r3 = r2.p()     // Catch: java.lang.Throwable -> L6c
            r3.h(r1)     // Catch: java.lang.Throwable -> L6c
        L58:
            boolean r3 = r2.u()     // Catch: java.lang.Throwable -> L6c
            r2.notifyAll()     // Catch: java.lang.Throwable -> L6c
            xc.t r4 = xc.t.f32733a     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r2)
            if (r3 != 0) goto L6b
            ve.f r3 = r2.f31593b
            int r4 = r2.f31592a
            r3.f1(r4)
        L6b:
            return
        L6c:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ve.i.x(ne.s, boolean):void");
    }

    public final synchronized void y(ve.b errorCode) {
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        if (this.f31604m == null) {
            this.f31604m = errorCode;
            notifyAll();
        }
    }

    public final void z(ve.b bVar) {
        this.f31604m = bVar;
    }
}
