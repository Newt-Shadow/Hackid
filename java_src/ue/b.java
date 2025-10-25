package ue;

import af.a1;
import af.b1;
import af.n;
import af.y0;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.s;
import ne.t;
import ne.w;
import ne.y;
import te.i;
import te.k;
/* loaded from: classes2.dex */
public final class b implements te.d {

    /* renamed from: h  reason: collision with root package name */
    public static final d f31100h = new d(null);

    /* renamed from: a  reason: collision with root package name */
    private final w f31101a;

    /* renamed from: b  reason: collision with root package name */
    private final se.f f31102b;

    /* renamed from: c  reason: collision with root package name */
    private final af.f f31103c;

    /* renamed from: d  reason: collision with root package name */
    private final af.e f31104d;

    /* renamed from: e  reason: collision with root package name */
    private int f31105e;

    /* renamed from: f  reason: collision with root package name */
    private final ue.a f31106f;

    /* renamed from: g  reason: collision with root package name */
    private s f31107g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class a implements a1 {

        /* renamed from: a  reason: collision with root package name */
        private final n f31108a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f31109b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f31110c;

        public a(b this$0) {
            m.e(this$0, "this$0");
            this.f31110c = this$0;
            this.f31108a = new n(this$0.f31103c.n());
        }

        @Override // af.a1
        public long L0(af.d sink, long j10) {
            m.e(sink, "sink");
            try {
                return this.f31110c.f31103c.L0(sink, j10);
            } catch (IOException e10) {
                this.f31110c.d().y();
                b();
                throw e10;
            }
        }

        protected final boolean a() {
            return this.f31109b;
        }

        public final void b() {
            if (this.f31110c.f31105e == 6) {
                return;
            }
            if (this.f31110c.f31105e == 5) {
                this.f31110c.r(this.f31108a);
                this.f31110c.f31105e = 6;
                return;
            }
            throw new IllegalStateException(m.l("state: ", Integer.valueOf(this.f31110c.f31105e)));
        }

        protected final void c(boolean z10) {
            this.f31109b = z10;
        }

        @Override // af.a1
        public b1 n() {
            return this.f31108a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ue.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0346b implements y0 {

        /* renamed from: a  reason: collision with root package name */
        private final n f31111a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f31112b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f31113c;

        public C0346b(b this$0) {
            m.e(this$0, "this$0");
            this.f31113c = this$0;
            this.f31111a = new n(this$0.f31104d.n());
        }

        @Override // af.y0
        public void c0(af.d source, long j10) {
            m.e(source, "source");
            if (!this.f31112b) {
                if (j10 == 0) {
                    return;
                }
                this.f31113c.f31104d.n0(j10);
                this.f31113c.f31104d.g0("\r\n");
                this.f31113c.f31104d.c0(source, j10);
                this.f31113c.f31104d.g0("\r\n");
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f31112b) {
                return;
            }
            this.f31112b = true;
            this.f31113c.f31104d.g0("0\r\n\r\n");
            this.f31113c.r(this.f31111a);
            this.f31113c.f31105e = 3;
        }

        @Override // af.y0, java.io.Flushable
        public synchronized void flush() {
            if (this.f31112b) {
                return;
            }
            this.f31113c.f31104d.flush();
        }

        @Override // af.y0
        public b1 n() {
            return this.f31111a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c extends a {

        /* renamed from: d  reason: collision with root package name */
        private final t f31114d;

        /* renamed from: e  reason: collision with root package name */
        private long f31115e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f31116f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ b f31117g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b this$0, t url) {
            super(this$0);
            m.e(this$0, "this$0");
            m.e(url, "url");
            this.f31117g = this$0;
            this.f31114d = url;
            this.f31115e = -1L;
            this.f31116f = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
            if (r1 != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void e() {
            /*
                r7 = this;
                long r0 = r7.f31115e
                r2 = -1
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 == 0) goto L11
                ue.b r0 = r7.f31117g
                af.f r0 = ue.b.m(r0)
                r0.v0()
            L11:
                ue.b r0 = r7.f31117g     // Catch: java.lang.NumberFormatException -> La2
                af.f r0 = ue.b.m(r0)     // Catch: java.lang.NumberFormatException -> La2
                long r0 = r0.Q0()     // Catch: java.lang.NumberFormatException -> La2
                r7.f31115e = r0     // Catch: java.lang.NumberFormatException -> La2
                ue.b r0 = r7.f31117g     // Catch: java.lang.NumberFormatException -> La2
                af.f r0 = ue.b.m(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.v0()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.CharSequence r0 = rd.n.P0(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.toString()     // Catch: java.lang.NumberFormatException -> La2
                long r1 = r7.f31115e     // Catch: java.lang.NumberFormatException -> La2
                r3 = 0
                int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r1 < 0) goto L81
                int r1 = r0.length()     // Catch: java.lang.NumberFormatException -> La2
                r2 = 0
                if (r1 <= 0) goto L40
                r1 = 1
                goto L41
            L40:
                r1 = r2
            L41:
                if (r1 == 0) goto L4d
                java.lang.String r1 = ";"
                r5 = 2
                r6 = 0
                boolean r1 = rd.n.H(r0, r1, r2, r5, r6)     // Catch: java.lang.NumberFormatException -> La2
                if (r1 == 0) goto L81
            L4d:
                long r0 = r7.f31115e
                int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r0 != 0) goto L80
                r7.f31116f = r2
                ue.b r0 = r7.f31117g
                ue.a r1 = ue.b.k(r0)
                ne.s r1 = r1.a()
                ue.b.q(r0, r1)
                ue.b r0 = r7.f31117g
                ne.w r0 = ue.b.j(r0)
                kotlin.jvm.internal.m.b(r0)
                ne.m r0 = r0.l()
                ne.t r1 = r7.f31114d
                ue.b r2 = r7.f31117g
                ne.s r2 = ue.b.o(r2)
                kotlin.jvm.internal.m.b(r2)
                te.e.f(r0, r1, r2)
                r7.b()
            L80:
                return
            L81:
                java.net.ProtocolException r1 = new java.net.ProtocolException     // Catch: java.lang.NumberFormatException -> La2
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La2
                r2.<init>()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r3 = "expected chunk size and optional extensions but was \""
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                long r3 = r7.f31115e     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r0)     // Catch: java.lang.NumberFormatException -> La2
                r0 = 34
                r2.append(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r2.toString()     // Catch: java.lang.NumberFormatException -> La2
                r1.<init>(r0)     // Catch: java.lang.NumberFormatException -> La2
                throw r1     // Catch: java.lang.NumberFormatException -> La2
            La2:
                r0 = move-exception
                java.net.ProtocolException r1 = new java.net.ProtocolException
                java.lang.String r0 = r0.getMessage()
                r1.<init>(r0)
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: ue.b.c.e():void");
        }

        @Override // ue.b.a, af.a1
        public long L0(af.d sink, long j10) {
            boolean z10;
            m.e(sink, "sink");
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                if (!a()) {
                    if (!this.f31116f) {
                        return -1L;
                    }
                    long j11 = this.f31115e;
                    if (j11 == 0 || j11 == -1) {
                        e();
                        if (!this.f31116f) {
                            return -1L;
                        }
                    }
                    long L0 = super.L0(sink, Math.min(j10, this.f31115e));
                    if (L0 != -1) {
                        this.f31115e -= L0;
                        return L0;
                    }
                    this.f31117g.d().y();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    b();
                    throw protocolException;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(m.l("byteCount < 0: ", Long.valueOf(j10)).toString());
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (a()) {
                return;
            }
            if (this.f31116f && !oe.d.r(this, 100, TimeUnit.MILLISECONDS)) {
                this.f31117g.d().y();
                b();
            }
            c(true);
        }
    }

    /* loaded from: classes2.dex */
    public static final class d {
        private d() {
        }

        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends a {

        /* renamed from: d  reason: collision with root package name */
        private long f31118d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ b f31119e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(b this$0, long j10) {
            super(this$0);
            m.e(this$0, "this$0");
            this.f31119e = this$0;
            this.f31118d = j10;
            if (j10 == 0) {
                b();
            }
        }

        @Override // ue.b.a, af.a1
        public long L0(af.d sink, long j10) {
            boolean z10;
            m.e(sink, "sink");
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                if (!a()) {
                    long j11 = this.f31118d;
                    if (j11 == 0) {
                        return -1L;
                    }
                    long L0 = super.L0(sink, Math.min(j11, j10));
                    if (L0 != -1) {
                        long j12 = this.f31118d - L0;
                        this.f31118d = j12;
                        if (j12 == 0) {
                            b();
                        }
                        return L0;
                    }
                    this.f31119e.d().y();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    b();
                    throw protocolException;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(m.l("byteCount < 0: ", Long.valueOf(j10)).toString());
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (a()) {
                return;
            }
            if (this.f31118d != 0 && !oe.d.r(this, 100, TimeUnit.MILLISECONDS)) {
                this.f31119e.d().y();
                b();
            }
            c(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class f implements y0 {

        /* renamed from: a  reason: collision with root package name */
        private final n f31120a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f31121b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f31122c;

        public f(b this$0) {
            m.e(this$0, "this$0");
            this.f31122c = this$0;
            this.f31120a = new n(this$0.f31104d.n());
        }

        @Override // af.y0
        public void c0(af.d source, long j10) {
            m.e(source, "source");
            if (!this.f31121b) {
                oe.d.k(source.k0(), 0L, j10);
                this.f31122c.f31104d.c0(source, j10);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f31121b) {
                return;
            }
            this.f31121b = true;
            this.f31122c.r(this.f31120a);
            this.f31122c.f31105e = 3;
        }

        @Override // af.y0, java.io.Flushable
        public void flush() {
            if (this.f31121b) {
                return;
            }
            this.f31122c.f31104d.flush();
        }

        @Override // af.y0
        public b1 n() {
            return this.f31120a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class g extends a {

        /* renamed from: d  reason: collision with root package name */
        private boolean f31123d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ b f31124e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(b this$0) {
            super(this$0);
            m.e(this$0, "this$0");
            this.f31124e = this$0;
        }

        @Override // ue.b.a, af.a1
        public long L0(af.d sink, long j10) {
            boolean z10;
            m.e(sink, "sink");
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                if (!a()) {
                    if (this.f31123d) {
                        return -1L;
                    }
                    long L0 = super.L0(sink, j10);
                    if (L0 == -1) {
                        this.f31123d = true;
                        b();
                        return -1L;
                    }
                    return L0;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(m.l("byteCount < 0: ", Long.valueOf(j10)).toString());
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (a()) {
                return;
            }
            if (!this.f31123d) {
                b();
            }
            c(true);
        }
    }

    public b(w wVar, se.f connection, af.f source, af.e sink) {
        m.e(connection, "connection");
        m.e(source, "source");
        m.e(sink, "sink");
        this.f31101a = wVar;
        this.f31102b = connection;
        this.f31103c = source;
        this.f31104d = sink;
        this.f31106f = new ue.a(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(n nVar) {
        b1 i10 = nVar.i();
        nVar.j(b1.f354e);
        i10.a();
        i10.b();
    }

    private final boolean s(y yVar) {
        boolean x10;
        x10 = rd.y.x("chunked", yVar.d("Transfer-Encoding"), true);
        return x10;
    }

    private final boolean t(a0 a0Var) {
        boolean x10;
        x10 = rd.y.x("chunked", a0.k(a0Var, "Transfer-Encoding", null, 2, null), true);
        return x10;
    }

    private final y0 u() {
        int i10 = this.f31105e;
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        if (z10) {
            this.f31105e = 2;
            return new C0346b(this);
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    private final a1 v(t tVar) {
        boolean z10;
        int i10 = this.f31105e;
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f31105e = 5;
            return new c(this, tVar);
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    private final a1 w(long j10) {
        boolean z10;
        int i10 = this.f31105e;
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f31105e = 5;
            return new e(this, j10);
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    private final y0 x() {
        int i10 = this.f31105e;
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        if (z10) {
            this.f31105e = 2;
            return new f(this);
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    private final a1 y() {
        boolean z10;
        int i10 = this.f31105e;
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f31105e = 5;
            d().y();
            return new g(this);
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    public final void A(s headers, String requestLine) {
        boolean z10;
        m.e(headers, "headers");
        m.e(requestLine, "requestLine");
        int i10 = this.f31105e;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f31104d.g0(requestLine).g0("\r\n");
            int size = headers.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.f31104d.g0(headers.i(i11)).g0(": ").g0(headers.m(i11)).g0("\r\n");
            }
            this.f31104d.g0("\r\n");
            this.f31105e = 1;
            return;
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    @Override // te.d
    public void a(y request) {
        m.e(request, "request");
        i iVar = i.f30742a;
        Proxy.Type type = d().z().b().type();
        m.d(type, "connection.route().proxy.type()");
        A(request.e(), iVar.a(request, type));
    }

    @Override // te.d
    public void b() {
        this.f31104d.flush();
    }

    @Override // te.d
    public a0.a c(boolean z10) {
        boolean z11;
        int i10 = this.f31105e;
        boolean z12 = false;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (z11) {
            try {
                k a10 = k.f30745d.a(this.f31106f.b());
                a0.a l10 = new a0.a().q(a10.f30746a).g(a10.f30747b).n(a10.f30748c).l(this.f31106f.a());
                if (z10 && a10.f30747b == 100) {
                    return null;
                }
                int i11 = a10.f30747b;
                if (i11 == 100) {
                    this.f31105e = 3;
                    return l10;
                }
                if (102 <= i11 && i11 < 200) {
                    z12 = true;
                }
                if (z12) {
                    this.f31105e = 3;
                    return l10;
                }
                this.f31105e = 4;
                return l10;
            } catch (EOFException e10) {
                throw new IOException(m.l("unexpected end of stream on ", d().z().a().l().n()), e10);
            }
        }
        throw new IllegalStateException(m.l("state: ", Integer.valueOf(i10)).toString());
    }

    @Override // te.d
    public void cancel() {
        d().d();
    }

    @Override // te.d
    public se.f d() {
        return this.f31102b;
    }

    @Override // te.d
    public void e() {
        this.f31104d.flush();
    }

    @Override // te.d
    public long f(a0 response) {
        m.e(response, "response");
        if (!te.e.b(response)) {
            return 0L;
        }
        if (t(response)) {
            return -1L;
        }
        return oe.d.u(response);
    }

    @Override // te.d
    public a1 g(a0 response) {
        m.e(response, "response");
        if (!te.e.b(response)) {
            return w(0L);
        }
        if (t(response)) {
            return v(response.H().i());
        }
        long u10 = oe.d.u(response);
        if (u10 != -1) {
            return w(u10);
        }
        return y();
    }

    @Override // te.d
    public y0 h(y request, long j10) {
        m.e(request, "request");
        if (request.a() != null && request.a().c()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (s(request)) {
            return u();
        }
        if (j10 != -1) {
            return x();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public final void z(a0 response) {
        m.e(response, "response");
        long u10 = oe.d.u(response);
        if (u10 == -1) {
            return;
        }
        a1 w10 = w(u10);
        oe.d.K(w10, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        w10.close();
    }
}
