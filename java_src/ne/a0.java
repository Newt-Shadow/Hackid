package ne;

import java.io.Closeable;
import java.util.List;
import ne.s;
/* loaded from: classes2.dex */
public final class a0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final y f26568a;

    /* renamed from: b  reason: collision with root package name */
    private final x f26569b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26570c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26571d;

    /* renamed from: e  reason: collision with root package name */
    private final r f26572e;

    /* renamed from: f  reason: collision with root package name */
    private final s f26573f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f26574g;

    /* renamed from: h  reason: collision with root package name */
    private final a0 f26575h;

    /* renamed from: i  reason: collision with root package name */
    private final a0 f26576i;

    /* renamed from: j  reason: collision with root package name */
    private final a0 f26577j;

    /* renamed from: k  reason: collision with root package name */
    private final long f26578k;

    /* renamed from: l  reason: collision with root package name */
    private final long f26579l;

    /* renamed from: m  reason: collision with root package name */
    private final se.c f26580m;

    /* renamed from: n  reason: collision with root package name */
    private d f26581n;

    public a0(y request, x protocol, String message, int i10, r rVar, s headers, b0 b0Var, a0 a0Var, a0 a0Var2, a0 a0Var3, long j10, long j11, se.c cVar) {
        kotlin.jvm.internal.m.e(request, "request");
        kotlin.jvm.internal.m.e(protocol, "protocol");
        kotlin.jvm.internal.m.e(message, "message");
        kotlin.jvm.internal.m.e(headers, "headers");
        this.f26568a = request;
        this.f26569b = protocol;
        this.f26570c = message;
        this.f26571d = i10;
        this.f26572e = rVar;
        this.f26573f = headers;
        this.f26574g = b0Var;
        this.f26575h = a0Var;
        this.f26576i = a0Var2;
        this.f26577j = a0Var3;
        this.f26578k = j10;
        this.f26579l = j11;
        this.f26580m = cVar;
    }

    public static /* synthetic */ String k(a0 a0Var, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return a0Var.j(str, str2);
    }

    public final long E() {
        return this.f26579l;
    }

    public final y H() {
        return this.f26568a;
    }

    public final long P() {
        return this.f26578k;
    }

    public final b0 a() {
        return this.f26574g;
    }

    public final d b() {
        d dVar = this.f26581n;
        if (dVar == null) {
            d b10 = d.f26611n.b(this.f26573f);
            this.f26581n = b10;
            return b10;
        }
        return dVar;
    }

    public final a0 c() {
        return this.f26576i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b0 b0Var = this.f26574g;
        if (b0Var != null) {
            b0Var.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
    }

    public final List e() {
        String str;
        List h10;
        s sVar = this.f26573f;
        int i10 = this.f26571d;
        if (i10 != 401) {
            if (i10 != 407) {
                h10 = yc.o.h();
                return h10;
            }
            str = "Proxy-Authenticate";
        } else {
            str = "WWW-Authenticate";
        }
        return te.e.a(sVar, str);
    }

    public final int f() {
        return this.f26571d;
    }

    public final se.c g() {
        return this.f26580m;
    }

    public final r h() {
        return this.f26572e;
    }

    public final String j(String name, String str) {
        kotlin.jvm.internal.m.e(name, "name");
        String g10 = this.f26573f.g(name);
        if (g10 != null) {
            return g10;
        }
        return str;
    }

    public final s q() {
        return this.f26573f;
    }

    public final boolean s() {
        int i10 = this.f26571d;
        if (200 > i10 || i10 >= 300) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "Response{protocol=" + this.f26569b + ", code=" + this.f26571d + ", message=" + this.f26570c + ", url=" + this.f26568a.i() + '}';
    }

    public final String u() {
        return this.f26570c;
    }

    public final a0 v() {
        return this.f26575h;
    }

    public final a w() {
        return new a(this);
    }

    public final a0 x() {
        return this.f26577j;
    }

    public final x z() {
        return this.f26569b;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private y f26582a;

        /* renamed from: b  reason: collision with root package name */
        private x f26583b;

        /* renamed from: c  reason: collision with root package name */
        private int f26584c;

        /* renamed from: d  reason: collision with root package name */
        private String f26585d;

        /* renamed from: e  reason: collision with root package name */
        private r f26586e;

        /* renamed from: f  reason: collision with root package name */
        private s.a f26587f;

        /* renamed from: g  reason: collision with root package name */
        private b0 f26588g;

        /* renamed from: h  reason: collision with root package name */
        private a0 f26589h;

        /* renamed from: i  reason: collision with root package name */
        private a0 f26590i;

        /* renamed from: j  reason: collision with root package name */
        private a0 f26591j;

        /* renamed from: k  reason: collision with root package name */
        private long f26592k;

        /* renamed from: l  reason: collision with root package name */
        private long f26593l;

        /* renamed from: m  reason: collision with root package name */
        private se.c f26594m;

        public a() {
            this.f26584c = -1;
            this.f26587f = new s.a();
        }

        private final void e(a0 a0Var) {
            boolean z10;
            if (a0Var != null) {
                if (a0Var.a() == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    return;
                }
                throw new IllegalArgumentException("priorResponse.body != null".toString());
            }
        }

        private final void f(String str, a0 a0Var) {
            boolean z10;
            boolean z11;
            boolean z12;
            if (a0Var != null) {
                boolean z13 = true;
                if (a0Var.a() == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    if (a0Var.v() == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        if (a0Var.c() == null) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            if (a0Var.x() != null) {
                                z13 = false;
                            }
                            if (z13) {
                                return;
                            }
                            throw new IllegalArgumentException(kotlin.jvm.internal.m.l(str, ".priorResponse != null").toString());
                        }
                        throw new IllegalArgumentException(kotlin.jvm.internal.m.l(str, ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException(kotlin.jvm.internal.m.l(str, ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException(kotlin.jvm.internal.m.l(str, ".body != null").toString());
            }
        }

        public final void A(a0 a0Var) {
            this.f26589h = a0Var;
        }

        public final void B(a0 a0Var) {
            this.f26591j = a0Var;
        }

        public final void C(x xVar) {
            this.f26583b = xVar;
        }

        public final void D(long j10) {
            this.f26593l = j10;
        }

        public final void E(y yVar) {
            this.f26582a = yVar;
        }

        public final void F(long j10) {
            this.f26592k = j10;
        }

        public a a(String name, String value) {
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            i().a(name, value);
            return this;
        }

        public a b(b0 b0Var) {
            u(b0Var);
            return this;
        }

        public a0 c() {
            boolean z10;
            int i10 = this.f26584c;
            if (i10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                y yVar = this.f26582a;
                if (yVar != null) {
                    x xVar = this.f26583b;
                    if (xVar != null) {
                        String str = this.f26585d;
                        if (str != null) {
                            return new a0(yVar, xVar, str, i10, this.f26586e, this.f26587f.d(), this.f26588g, this.f26589h, this.f26590i, this.f26591j, this.f26592k, this.f26593l, this.f26594m);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            throw new IllegalStateException(kotlin.jvm.internal.m.l("code < 0: ", Integer.valueOf(h())).toString());
        }

        public a d(a0 a0Var) {
            f("cacheResponse", a0Var);
            v(a0Var);
            return this;
        }

        public a g(int i10) {
            w(i10);
            return this;
        }

        public final int h() {
            return this.f26584c;
        }

        public final s.a i() {
            return this.f26587f;
        }

        public a j(r rVar) {
            x(rVar);
            return this;
        }

        public a k(String name, String value) {
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            i().g(name, value);
            return this;
        }

        public a l(s headers) {
            kotlin.jvm.internal.m.e(headers, "headers");
            y(headers.l());
            return this;
        }

        public final void m(se.c deferredTrailers) {
            kotlin.jvm.internal.m.e(deferredTrailers, "deferredTrailers");
            this.f26594m = deferredTrailers;
        }

        public a n(String message) {
            kotlin.jvm.internal.m.e(message, "message");
            z(message);
            return this;
        }

        public a o(a0 a0Var) {
            f("networkResponse", a0Var);
            A(a0Var);
            return this;
        }

        public a p(a0 a0Var) {
            e(a0Var);
            B(a0Var);
            return this;
        }

        public a q(x protocol) {
            kotlin.jvm.internal.m.e(protocol, "protocol");
            C(protocol);
            return this;
        }

        public a r(long j10) {
            D(j10);
            return this;
        }

        public a s(y request) {
            kotlin.jvm.internal.m.e(request, "request");
            E(request);
            return this;
        }

        public a t(long j10) {
            F(j10);
            return this;
        }

        public final void u(b0 b0Var) {
            this.f26588g = b0Var;
        }

        public final void v(a0 a0Var) {
            this.f26590i = a0Var;
        }

        public final void w(int i10) {
            this.f26584c = i10;
        }

        public final void x(r rVar) {
            this.f26586e = rVar;
        }

        public final void y(s.a aVar) {
            kotlin.jvm.internal.m.e(aVar, "<set-?>");
            this.f26587f = aVar;
        }

        public final void z(String str) {
            this.f26585d = str;
        }

        public a(a0 response) {
            kotlin.jvm.internal.m.e(response, "response");
            this.f26584c = -1;
            this.f26582a = response.H();
            this.f26583b = response.z();
            this.f26584c = response.f();
            this.f26585d = response.u();
            this.f26586e = response.h();
            this.f26587f = response.q().l();
            this.f26588g = response.a();
            this.f26589h = response.v();
            this.f26590i = response.c();
            this.f26591j = response.x();
            this.f26592k = response.P();
            this.f26593l = response.E();
            this.f26594m = response.g();
        }
    }
}
