package se;

import af.m0;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import ne.a0;
import ne.c0;
import ne.k;
import ne.q;
import ne.r;
import ne.t;
import ne.w;
import ne.x;
import ne.y;
import ve.f;
import yc.p;
/* loaded from: classes2.dex */
public final class f extends f.c implements ne.i {

    /* renamed from: t  reason: collision with root package name */
    public static final a f29651t = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private final g f29652c;

    /* renamed from: d  reason: collision with root package name */
    private final c0 f29653d;

    /* renamed from: e  reason: collision with root package name */
    private Socket f29654e;

    /* renamed from: f  reason: collision with root package name */
    private Socket f29655f;

    /* renamed from: g  reason: collision with root package name */
    private r f29656g;

    /* renamed from: h  reason: collision with root package name */
    private x f29657h;

    /* renamed from: i  reason: collision with root package name */
    private ve.f f29658i;

    /* renamed from: j  reason: collision with root package name */
    private af.f f29659j;

    /* renamed from: k  reason: collision with root package name */
    private af.e f29660k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f29661l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29662m;

    /* renamed from: n  reason: collision with root package name */
    private int f29663n;

    /* renamed from: o  reason: collision with root package name */
    private int f29664o;

    /* renamed from: p  reason: collision with root package name */
    private int f29665p;

    /* renamed from: q  reason: collision with root package name */
    private int f29666q;

    /* renamed from: r  reason: collision with root package name */
    private final List f29667r;

    /* renamed from: s  reason: collision with root package name */
    private long f29668s;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f29669a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
            f29669a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ne.f f29670e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ r f29671f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ne.a f29672g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ne.f fVar, r rVar, ne.a aVar) {
            super(0);
            this.f29670e = fVar;
            this.f29671f = rVar;
            this.f29672g = aVar;
        }

        @Override // id.a
        /* renamed from: b */
        public final List invoke() {
            ze.c d10 = this.f29670e.d();
            m.b(d10);
            return d10.a(this.f29671f.d(), this.f29672g.l().h());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d extends n implements id.a {
        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final List invoke() {
            int r10;
            r rVar = f.this.f29656g;
            m.b(rVar);
            List<Certificate> d10 = rVar.d();
            r10 = p.r(d10, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (Certificate certificate : d10) {
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public f(g connectionPool, c0 route) {
        m.e(connectionPool, "connectionPool");
        m.e(route, "route");
        this.f29652c = connectionPool;
        this.f29653d = route;
        this.f29666q = 1;
        this.f29667r = new ArrayList();
        this.f29668s = Long.MAX_VALUE;
    }

    private final boolean A(List list) {
        boolean z10;
        List<c0> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (c0 c0Var : list2) {
            if (c0Var.b().type() == Proxy.Type.DIRECT && this.f29653d.b().type() == Proxy.Type.DIRECT && m.a(this.f29653d.d(), c0Var.d())) {
                z10 = true;
                continue;
            } else {
                z10 = false;
                continue;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    private final void E(int i10) {
        Socket socket = this.f29655f;
        m.b(socket);
        af.f fVar = this.f29659j;
        m.b(fVar);
        af.e eVar = this.f29660k;
        m.b(eVar);
        socket.setSoTimeout(0);
        ve.f a10 = new f.a(true, re.e.f29139i).s(socket, this.f29653d.a().l().h(), fVar, eVar).k(this).l(i10).a();
        this.f29658i = a10;
        this.f29666q = ve.f.C.a().d();
        ve.f.m1(a10, false, null, 3, null);
    }

    private final boolean F(t tVar) {
        r rVar;
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        t l10 = this.f29653d.a().l();
        if (tVar.l() != l10.l()) {
            return false;
        }
        if (m.a(tVar.h(), l10.h())) {
            return true;
        }
        if (this.f29662m || (rVar = this.f29656g) == null) {
            return false;
        }
        m.b(rVar);
        if (!e(tVar, rVar)) {
            return false;
        }
        return true;
    }

    private final boolean e(t tVar, r rVar) {
        List d10 = rVar.d();
        if ((!d10.isEmpty()) && ze.d.f33635a.e(tVar.h(), (X509Certificate) d10.get(0))) {
            return true;
        }
        return false;
    }

    private final void h(int i10, int i11, ne.e eVar, q qVar) {
        int i12;
        Socket createSocket;
        Proxy b10 = this.f29653d.b();
        ne.a a10 = this.f29653d.a();
        Proxy.Type type = b10.type();
        if (type == null) {
            i12 = -1;
        } else {
            i12 = b.f29669a[type.ordinal()];
        }
        if (i12 != 1 && i12 != 2) {
            createSocket = new Socket(b10);
        } else {
            createSocket = a10.j().createSocket();
            m.b(createSocket);
        }
        this.f29654e = createSocket;
        qVar.i(eVar, this.f29653d.d(), b10);
        createSocket.setSoTimeout(i11);
        try {
            we.j.f32161a.g().f(createSocket, this.f29653d.d(), i10);
            try {
                this.f29659j = m0.b(m0.g(createSocket));
                this.f29660k = m0.a(m0.d(createSocket));
            } catch (NullPointerException e10) {
                if (!m.a(e10.getMessage(), "throw with null exception")) {
                    return;
                }
                throw new IOException(e10);
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException(m.l("Failed to connect to ", this.f29653d.d()));
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private final void i(se.b bVar) {
        x xVar;
        String l10;
        ne.a a10 = this.f29653d.a();
        SSLSocketFactory k10 = a10.k();
        SSLSocket sSLSocket = null;
        String str = null;
        try {
            m.b(k10);
            Socket createSocket = k10.createSocket(this.f29654e, a10.l().h(), a10.l().l(), true);
            if (createSocket != null) {
                SSLSocket sSLSocket2 = (SSLSocket) createSocket;
                try {
                    k a11 = bVar.a(sSLSocket2);
                    if (a11.h()) {
                        we.j.f32161a.g().e(sSLSocket2, a10.l().h(), a10.f());
                    }
                    sSLSocket2.startHandshake();
                    SSLSession sslSocketSession = sSLSocket2.getSession();
                    r.a aVar = r.f26770e;
                    m.d(sslSocketSession, "sslSocketSession");
                    r a12 = aVar.a(sslSocketSession);
                    HostnameVerifier e10 = a10.e();
                    m.b(e10);
                    if (!e10.verify(a10.l().h(), sslSocketSession)) {
                        List d10 = a12.d();
                        if (!d10.isEmpty()) {
                            X509Certificate x509Certificate = (X509Certificate) d10.get(0);
                            l10 = rd.r.l("\n              |Hostname " + a10.l().h() + " not verified:\n              |    certificate: " + ne.f.f26643c.a(x509Certificate) + "\n              |    DN: " + ((Object) x509Certificate.getSubjectDN().getName()) + "\n              |    subjectAltNames: " + ze.d.f33635a.a(x509Certificate) + "\n              ", null, 1, null);
                            throw new SSLPeerUnverifiedException(l10);
                        }
                        throw new SSLPeerUnverifiedException("Hostname " + a10.l().h() + " not verified (no certificates)");
                    }
                    ne.f a13 = a10.a();
                    m.b(a13);
                    this.f29656g = new r(a12.e(), a12.a(), a12.c(), new c(a13, a12, a10));
                    a13.b(a10.l().h(), new d());
                    if (a11.h()) {
                        str = we.j.f32161a.g().g(sSLSocket2);
                    }
                    this.f29655f = sSLSocket2;
                    this.f29659j = m0.b(m0.g(sSLSocket2));
                    this.f29660k = m0.a(m0.d(sSLSocket2));
                    if (str != null) {
                        xVar = x.f26860b.a(str);
                    } else {
                        xVar = x.HTTP_1_1;
                    }
                    this.f29657h = xVar;
                    we.j.f32161a.g().b(sSLSocket2);
                    return;
                } catch (Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        we.j.f32161a.g().b(sSLSocket);
                    }
                    if (sSLSocket != null) {
                        oe.d.m(sSLSocket);
                    }
                    throw th;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final void j(int i10, int i11, int i12, ne.e eVar, q qVar) {
        y l10 = l();
        t i13 = l10.i();
        int i14 = 0;
        while (i14 < 21) {
            i14++;
            h(i10, i11, eVar, qVar);
            l10 = k(i11, i12, l10, i13);
            if (l10 != null) {
                Socket socket = this.f29654e;
                if (socket != null) {
                    oe.d.m(socket);
                }
                this.f29654e = null;
                this.f29660k = null;
                this.f29659j = null;
                qVar.g(eVar, this.f29653d.d(), this.f29653d.b(), null);
            } else {
                return;
            }
        }
    }

    private final y k(int i10, int i11, y yVar, t tVar) {
        boolean x10;
        String str = "CONNECT " + oe.d.P(tVar, true) + " HTTP/1.1";
        while (true) {
            af.f fVar = this.f29659j;
            m.b(fVar);
            af.e eVar = this.f29660k;
            m.b(eVar);
            ue.b bVar = new ue.b(null, this, fVar, eVar);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            fVar.n().g(i10, timeUnit);
            eVar.n().g(i11, timeUnit);
            bVar.A(yVar.e(), str);
            bVar.b();
            a0.a c10 = bVar.c(false);
            m.b(c10);
            a0 c11 = c10.s(yVar).c();
            bVar.z(c11);
            int f10 = c11.f();
            if (f10 != 200) {
                if (f10 == 407) {
                    y a10 = this.f29653d.a().h().a(this.f29653d, c11);
                    if (a10 != null) {
                        x10 = rd.y.x("close", a0.k(c11, "Connection", null, 2, null), true);
                        if (x10) {
                            return a10;
                        }
                        yVar = a10;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                } else {
                    throw new IOException(m.l("Unexpected response code for CONNECT: ", Integer.valueOf(c11.f())));
                }
            } else if (fVar.d().N() && eVar.d().N()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    private final y l() {
        y a10 = new y.a().n(this.f29653d.a().l()).f("CONNECT", null).d("Host", oe.d.P(this.f29653d.a().l(), true)).d("Proxy-Connection", "Keep-Alive").d("User-Agent", "okhttp/4.11.0").a();
        y a11 = this.f29653d.a().h().a(this.f29653d, new a0.a().s(a10).q(x.HTTP_1_1).g(407).n("Preemptive Authenticate").b(oe.d.f27584c).t(-1L).r(-1L).k("Proxy-Authenticate", "OkHttp-Preemptive").c());
        if (a11 != null) {
            return a11;
        }
        return a10;
    }

    private final void m(se.b bVar, int i10, ne.e eVar, q qVar) {
        if (this.f29653d.a().k() == null) {
            List f10 = this.f29653d.a().f();
            x xVar = x.H2_PRIOR_KNOWLEDGE;
            if (f10.contains(xVar)) {
                this.f29655f = this.f29654e;
                this.f29657h = xVar;
                E(i10);
                return;
            }
            this.f29655f = this.f29654e;
            this.f29657h = x.HTTP_1_1;
            return;
        }
        qVar.B(eVar);
        i(bVar);
        qVar.A(eVar, this.f29656g);
        if (this.f29657h == x.HTTP_2) {
            E(i10);
        }
    }

    public final void B(long j10) {
        this.f29668s = j10;
    }

    public final void C(boolean z10) {
        this.f29661l = z10;
    }

    public Socket D() {
        Socket socket = this.f29655f;
        m.b(socket);
        return socket;
    }

    public final synchronized void G(e call, IOException iOException) {
        m.e(call, "call");
        if (iOException instanceof ve.n) {
            if (((ve.n) iOException).f31640a == ve.b.REFUSED_STREAM) {
                int i10 = this.f29665p + 1;
                this.f29665p = i10;
                if (i10 > 1) {
                    this.f29661l = true;
                    this.f29663n++;
                }
            } else if (((ve.n) iOException).f31640a != ve.b.CANCEL || !call.q()) {
                this.f29661l = true;
                this.f29663n++;
            }
        } else if (!v() || (iOException instanceof ve.a)) {
            this.f29661l = true;
            if (this.f29664o == 0) {
                if (iOException != null) {
                    g(call.k(), this.f29653d, iOException);
                }
                this.f29663n++;
            }
        }
    }

    @Override // ve.f.c
    public synchronized void a(ve.f connection, ve.m settings) {
        m.e(connection, "connection");
        m.e(settings, "settings");
        this.f29666q = settings.d();
    }

    @Override // ve.f.c
    public void b(ve.i stream) {
        m.e(stream, "stream");
        stream.d(ve.b.REFUSED_STREAM, null);
    }

    public final void d() {
        Socket socket = this.f29654e;
        if (socket != null) {
            oe.d.m(socket);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a2 A[Catch: IOException -> 0x00fd, TRY_LEAVE, TryCatch #1 {IOException -> 0x00fd, blocks: (B:21:0x009a, B:23:0x00a2), top: B:70:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014e A[EDGE_INSN: B:74:0x014e->B:63:0x014e ?: BREAK  ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(int r17, int r18, int r19, int r20, boolean r21, ne.e r22, ne.q r23) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: se.f.f(int, int, int, int, boolean, ne.e, ne.q):void");
    }

    public final void g(w client, c0 failedRoute, IOException failure) {
        m.e(client, "client");
        m.e(failedRoute, "failedRoute");
        m.e(failure, "failure");
        if (failedRoute.b().type() != Proxy.Type.DIRECT) {
            ne.a a10 = failedRoute.a();
            a10.i().connectFailed(a10.l().q(), failedRoute.b().address(), failure);
        }
        client.r().b(failedRoute);
    }

    public final List n() {
        return this.f29667r;
    }

    public final long o() {
        return this.f29668s;
    }

    public final boolean p() {
        return this.f29661l;
    }

    public final int q() {
        return this.f29663n;
    }

    public r r() {
        return this.f29656g;
    }

    public final synchronized void s() {
        this.f29664o++;
    }

    public final boolean t(ne.a address, List list) {
        m.e(address, "address");
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        } else if (this.f29667r.size() >= this.f29666q || this.f29661l || !this.f29653d.a().d(address)) {
            return false;
        } else {
            if (m.a(address.l().h(), z().a().l().h())) {
                return true;
            }
            if (this.f29658i == null || list == null || !A(list) || address.e() != ze.d.f33635a || !F(address.l())) {
                return false;
            }
            try {
                ne.f a10 = address.a();
                m.b(a10);
                String h10 = address.l().h();
                r r10 = r();
                m.b(r10);
                a10.a(h10, r10.d());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
    }

    public String toString() {
        ne.h a10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f29653d.a().l().h());
        sb2.append(':');
        sb2.append(this.f29653d.a().l().l());
        sb2.append(", proxy=");
        sb2.append(this.f29653d.b());
        sb2.append(" hostAddress=");
        sb2.append(this.f29653d.d());
        sb2.append(" cipherSuite=");
        r rVar = this.f29656g;
        Object obj = "none";
        if (rVar != null && (a10 = rVar.a()) != null) {
            obj = a10;
        }
        sb2.append(obj);
        sb2.append(" protocol=");
        sb2.append(this.f29657h);
        sb2.append('}');
        return sb2.toString();
    }

    public final boolean u(boolean z10) {
        long o10;
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.f29654e;
        m.b(socket);
        Socket socket2 = this.f29655f;
        m.b(socket2);
        af.f fVar = this.f29659j;
        m.b(fVar);
        if (!socket.isClosed() && !socket2.isClosed() && !socket2.isInputShutdown() && !socket2.isOutputShutdown()) {
            ve.f fVar2 = this.f29658i;
            if (fVar2 != null) {
                return fVar2.X0(nanoTime);
            }
            synchronized (this) {
                o10 = nanoTime - o();
            }
            if (o10 >= 10000000000L && z10) {
                return oe.d.E(socket2, fVar);
            }
            return true;
        }
        return false;
    }

    public final boolean v() {
        if (this.f29658i != null) {
            return true;
        }
        return false;
    }

    public final te.d w(w client, te.g chain) {
        m.e(client, "client");
        m.e(chain, "chain");
        Socket socket = this.f29655f;
        m.b(socket);
        af.f fVar = this.f29659j;
        m.b(fVar);
        af.e eVar = this.f29660k;
        m.b(eVar);
        ve.f fVar2 = this.f29658i;
        if (fVar2 != null) {
            return new ve.g(client, this, chain, fVar2);
        }
        socket.setSoTimeout(chain.k());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        fVar.n().g(chain.h(), timeUnit);
        eVar.n().g(chain.j(), timeUnit);
        return new ue.b(client, this, fVar, eVar);
    }

    public final synchronized void x() {
        this.f29662m = true;
    }

    public final synchronized void y() {
        this.f29661l = true;
    }

    public c0 z() {
        return this.f29653d;
    }
}
