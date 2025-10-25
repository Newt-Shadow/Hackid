package ne;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ne.q;
import we.j;
import ze.c;
/* loaded from: classes2.dex */
public class w implements Cloneable {
    public static final b D = new b(null);
    private static final List E = oe.d.v(x.HTTP_2, x.HTTP_1_1);
    private static final List F = oe.d.v(k.f26729i, k.f26731k);
    private final int A;
    private final long B;
    private final se.h C;

    /* renamed from: a  reason: collision with root package name */
    private final o f26808a;

    /* renamed from: b  reason: collision with root package name */
    private final j f26809b;

    /* renamed from: c  reason: collision with root package name */
    private final List f26810c;

    /* renamed from: d  reason: collision with root package name */
    private final List f26811d;

    /* renamed from: e  reason: collision with root package name */
    private final q.c f26812e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f26813f;

    /* renamed from: g  reason: collision with root package name */
    private final ne.b f26814g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f26815h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f26816i;

    /* renamed from: j  reason: collision with root package name */
    private final m f26817j;

    /* renamed from: k  reason: collision with root package name */
    private final p f26818k;

    /* renamed from: l  reason: collision with root package name */
    private final Proxy f26819l;

    /* renamed from: m  reason: collision with root package name */
    private final ProxySelector f26820m;

    /* renamed from: n  reason: collision with root package name */
    private final ne.b f26821n;

    /* renamed from: o  reason: collision with root package name */
    private final SocketFactory f26822o;

    /* renamed from: p  reason: collision with root package name */
    private final SSLSocketFactory f26823p;

    /* renamed from: q  reason: collision with root package name */
    private final X509TrustManager f26824q;

    /* renamed from: r  reason: collision with root package name */
    private final List f26825r;

    /* renamed from: s  reason: collision with root package name */
    private final List f26826s;

    /* renamed from: t  reason: collision with root package name */
    private final HostnameVerifier f26827t;

    /* renamed from: u  reason: collision with root package name */
    private final f f26828u;

    /* renamed from: v  reason: collision with root package name */
    private final ze.c f26829v;

    /* renamed from: w  reason: collision with root package name */
    private final int f26830w;

    /* renamed from: x  reason: collision with root package name */
    private final int f26831x;

    /* renamed from: y  reason: collision with root package name */
    private final int f26832y;

    /* renamed from: z  reason: collision with root package name */
    private final int f26833z;

    /* loaded from: classes2.dex */
    public static final class a {
        private int A;
        private long B;
        private se.h C;

        /* renamed from: a  reason: collision with root package name */
        private o f26834a = new o();

        /* renamed from: b  reason: collision with root package name */
        private j f26835b = new j();

        /* renamed from: c  reason: collision with root package name */
        private final List f26836c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private final List f26837d = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        private q.c f26838e = oe.d.g(q.f26769b);

        /* renamed from: f  reason: collision with root package name */
        private boolean f26839f = true;

        /* renamed from: g  reason: collision with root package name */
        private ne.b f26840g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f26841h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f26842i;

        /* renamed from: j  reason: collision with root package name */
        private m f26843j;

        /* renamed from: k  reason: collision with root package name */
        private p f26844k;

        /* renamed from: l  reason: collision with root package name */
        private Proxy f26845l;

        /* renamed from: m  reason: collision with root package name */
        private ProxySelector f26846m;

        /* renamed from: n  reason: collision with root package name */
        private ne.b f26847n;

        /* renamed from: o  reason: collision with root package name */
        private SocketFactory f26848o;

        /* renamed from: p  reason: collision with root package name */
        private SSLSocketFactory f26849p;

        /* renamed from: q  reason: collision with root package name */
        private X509TrustManager f26850q;

        /* renamed from: r  reason: collision with root package name */
        private List f26851r;

        /* renamed from: s  reason: collision with root package name */
        private List f26852s;

        /* renamed from: t  reason: collision with root package name */
        private HostnameVerifier f26853t;

        /* renamed from: u  reason: collision with root package name */
        private f f26854u;

        /* renamed from: v  reason: collision with root package name */
        private ze.c f26855v;

        /* renamed from: w  reason: collision with root package name */
        private int f26856w;

        /* renamed from: x  reason: collision with root package name */
        private int f26857x;

        /* renamed from: y  reason: collision with root package name */
        private int f26858y;

        /* renamed from: z  reason: collision with root package name */
        private int f26859z;

        public a() {
            ne.b bVar = ne.b.f26596b;
            this.f26840g = bVar;
            this.f26841h = true;
            this.f26842i = true;
            this.f26843j = m.f26755b;
            this.f26844k = p.f26766b;
            this.f26847n = bVar;
            SocketFactory socketFactory = SocketFactory.getDefault();
            kotlin.jvm.internal.m.d(socketFactory, "getDefault()");
            this.f26848o = socketFactory;
            b bVar2 = w.D;
            this.f26851r = bVar2.a();
            this.f26852s = bVar2.b();
            this.f26853t = ze.d.f33635a;
            this.f26854u = f.f26644d;
            this.f26857x = 10000;
            this.f26858y = 10000;
            this.f26859z = 10000;
            this.B = 1024L;
        }

        public final boolean A() {
            return this.f26839f;
        }

        public final se.h B() {
            return this.C;
        }

        public final SocketFactory C() {
            return this.f26848o;
        }

        public final SSLSocketFactory D() {
            return this.f26849p;
        }

        public final int E() {
            return this.f26859z;
        }

        public final X509TrustManager F() {
            return this.f26850q;
        }

        public final a G(Proxy proxy) {
            if (!kotlin.jvm.internal.m.a(proxy, w())) {
                I(null);
            }
            H(proxy);
            return this;
        }

        public final void H(Proxy proxy) {
            this.f26845l = proxy;
        }

        public final void I(se.h hVar) {
            this.C = hVar;
        }

        public final a a(u interceptor) {
            kotlin.jvm.internal.m.e(interceptor, "interceptor");
            r().add(interceptor);
            return this;
        }

        public final w b() {
            return new w(this);
        }

        public final ne.b c() {
            return this.f26840g;
        }

        public final c d() {
            return null;
        }

        public final int e() {
            return this.f26856w;
        }

        public final ze.c f() {
            return this.f26855v;
        }

        public final f g() {
            return this.f26854u;
        }

        public final int h() {
            return this.f26857x;
        }

        public final j i() {
            return this.f26835b;
        }

        public final List j() {
            return this.f26851r;
        }

        public final m k() {
            return this.f26843j;
        }

        public final o l() {
            return this.f26834a;
        }

        public final p m() {
            return this.f26844k;
        }

        public final q.c n() {
            return this.f26838e;
        }

        public final boolean o() {
            return this.f26841h;
        }

        public final boolean p() {
            return this.f26842i;
        }

        public final HostnameVerifier q() {
            return this.f26853t;
        }

        public final List r() {
            return this.f26836c;
        }

        public final long s() {
            return this.B;
        }

        public final List t() {
            return this.f26837d;
        }

        public final int u() {
            return this.A;
        }

        public final List v() {
            return this.f26852s;
        }

        public final Proxy w() {
            return this.f26845l;
        }

        public final ne.b x() {
            return this.f26847n;
        }

        public final ProxySelector y() {
            return this.f26846m;
        }

        public final int z() {
            return this.f26858y;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return w.F;
        }

        public final List b() {
            return w.E;
        }
    }

    public w(a builder) {
        ProxySelector y10;
        kotlin.jvm.internal.m.e(builder, "builder");
        this.f26808a = builder.l();
        this.f26809b = builder.i();
        this.f26810c = oe.d.R(builder.r());
        this.f26811d = oe.d.R(builder.t());
        this.f26812e = builder.n();
        this.f26813f = builder.A();
        this.f26814g = builder.c();
        this.f26815h = builder.o();
        this.f26816i = builder.p();
        this.f26817j = builder.k();
        builder.d();
        this.f26818k = builder.m();
        this.f26819l = builder.w();
        if (builder.w() != null) {
            y10 = ye.a.f33311a;
        } else {
            y10 = builder.y();
            y10 = y10 == null ? ProxySelector.getDefault() : y10;
            if (y10 == null) {
                y10 = ye.a.f33311a;
            }
        }
        this.f26820m = y10;
        this.f26821n = builder.x();
        this.f26822o = builder.C();
        List j10 = builder.j();
        this.f26825r = j10;
        this.f26826s = builder.v();
        this.f26827t = builder.q();
        this.f26830w = builder.e();
        this.f26831x = builder.h();
        this.f26832y = builder.z();
        this.f26833z = builder.E();
        this.A = builder.u();
        this.B = builder.s();
        se.h B = builder.B();
        this.C = B == null ? new se.h() : B;
        List list = j10;
        boolean z10 = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((k) it.next()).f()) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            this.f26823p = null;
            this.f26829v = null;
            this.f26824q = null;
            this.f26828u = f.f26644d;
        } else if (builder.D() != null) {
            this.f26823p = builder.D();
            ze.c f10 = builder.f();
            kotlin.jvm.internal.m.b(f10);
            this.f26829v = f10;
            X509TrustManager F2 = builder.F();
            kotlin.jvm.internal.m.b(F2);
            this.f26824q = F2;
            f g10 = builder.g();
            kotlin.jvm.internal.m.b(f10);
            this.f26828u = g10.e(f10);
        } else {
            j.a aVar = we.j.f32161a;
            X509TrustManager o10 = aVar.g().o();
            this.f26824q = o10;
            we.j g11 = aVar.g();
            kotlin.jvm.internal.m.b(o10);
            this.f26823p = g11.n(o10);
            c.a aVar2 = ze.c.f33634a;
            kotlin.jvm.internal.m.b(o10);
            ze.c a10 = aVar2.a(o10);
            this.f26829v = a10;
            f g12 = builder.g();
            kotlin.jvm.internal.m.b(a10);
            this.f26828u = g12.e(a10);
        }
        G();
    }

    private final void G() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13 = true;
        if (!this.f26810c.contains(null)) {
            if (!this.f26811d.contains(null)) {
                List<k> list = this.f26825r;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (k kVar : list) {
                        if (kVar.f()) {
                            z10 = false;
                            break;
                        }
                    }
                }
                z10 = true;
                if (z10) {
                    if (this.f26823p == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        if (this.f26829v == null) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (z12) {
                            if (this.f26824q != null) {
                                z13 = false;
                            }
                            if (z13) {
                                if (!kotlin.jvm.internal.m.a(this.f26828u, f.f26644d)) {
                                    throw new IllegalStateException("Check failed.".toString());
                                }
                                return;
                            }
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    throw new IllegalStateException("Check failed.".toString());
                } else if (this.f26823p != null) {
                    if (this.f26829v != null) {
                        if (this.f26824q != null) {
                            return;
                        }
                        throw new IllegalStateException("x509TrustManager == null".toString());
                    }
                    throw new IllegalStateException("certificateChainCleaner == null".toString());
                } else {
                    throw new IllegalStateException("sslSocketFactory == null".toString());
                }
            }
            throw new IllegalStateException(kotlin.jvm.internal.m.l("Null network interceptor: ", v()).toString());
        }
        throw new IllegalStateException(kotlin.jvm.internal.m.l("Null interceptor: ", u()).toString());
    }

    public final ne.b A() {
        return this.f26821n;
    }

    public final ProxySelector B() {
        return this.f26820m;
    }

    public final int C() {
        return this.f26832y;
    }

    public final boolean D() {
        return this.f26813f;
    }

    public final SocketFactory E() {
        return this.f26822o;
    }

    public final SSLSocketFactory F() {
        SSLSocketFactory sSLSocketFactory = this.f26823p;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    public final int H() {
        return this.f26833z;
    }

    public final ne.b c() {
        return this.f26814g;
    }

    public Object clone() {
        return super.clone();
    }

    public final c d() {
        return null;
    }

    public final int e() {
        return this.f26830w;
    }

    public final f f() {
        return this.f26828u;
    }

    public final int i() {
        return this.f26831x;
    }

    public final j j() {
        return this.f26809b;
    }

    public final List k() {
        return this.f26825r;
    }

    public final m l() {
        return this.f26817j;
    }

    public final o m() {
        return this.f26808a;
    }

    public final p n() {
        return this.f26818k;
    }

    public final q.c o() {
        return this.f26812e;
    }

    public final boolean p() {
        return this.f26815h;
    }

    public final boolean q() {
        return this.f26816i;
    }

    public final se.h r() {
        return this.C;
    }

    public final HostnameVerifier t() {
        return this.f26827t;
    }

    public final List u() {
        return this.f26810c;
    }

    public final List v() {
        return this.f26811d;
    }

    public e w(y request) {
        kotlin.jvm.internal.m.e(request, "request");
        return new se.e(this, request, false);
    }

    public final int x() {
        return this.A;
    }

    public final List y() {
        return this.f26826s;
    }

    public final Proxy z() {
        return this.f26819l;
    }
}
