package ne;

import java.util.LinkedHashMap;
import java.util.Map;
import ne.s;
import yc.h0;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private final t f26869a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26870b;

    /* renamed from: c  reason: collision with root package name */
    private final s f26871c;

    /* renamed from: d  reason: collision with root package name */
    private final z f26872d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f26873e;

    /* renamed from: f  reason: collision with root package name */
    private d f26874f;

    public y(t url, String method, s headers, z zVar, Map tags) {
        kotlin.jvm.internal.m.e(url, "url");
        kotlin.jvm.internal.m.e(method, "method");
        kotlin.jvm.internal.m.e(headers, "headers");
        kotlin.jvm.internal.m.e(tags, "tags");
        this.f26869a = url;
        this.f26870b = method;
        this.f26871c = headers;
        this.f26872d = zVar;
        this.f26873e = tags;
    }

    public final z a() {
        return this.f26872d;
    }

    public final d b() {
        d dVar = this.f26874f;
        if (dVar == null) {
            d b10 = d.f26611n.b(this.f26871c);
            this.f26874f = b10;
            return b10;
        }
        return dVar;
    }

    public final Map c() {
        return this.f26873e;
    }

    public final String d(String name) {
        kotlin.jvm.internal.m.e(name, "name");
        return this.f26871c.g(name);
    }

    public final s e() {
        return this.f26871c;
    }

    public final boolean f() {
        return this.f26869a.i();
    }

    public final String g() {
        return this.f26870b;
    }

    public final a h() {
        return new a(this);
    }

    public final t i() {
        return this.f26869a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request{method=");
        sb2.append(g());
        sb2.append(", url=");
        sb2.append(i());
        if (e().size() != 0) {
            sb2.append(", headers=[");
            int i10 = 0;
            for (Object obj : e()) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    yc.o.q();
                }
                xc.k kVar = (xc.k) obj;
                String str = (String) kVar.a();
                String str2 = (String) kVar.b();
                if (i10 > 0) {
                    sb2.append(", ");
                }
                sb2.append(str);
                sb2.append(':');
                sb2.append(str2);
                i10 = i11;
            }
            sb2.append(']');
        }
        if (!c().isEmpty()) {
            sb2.append(", tags=");
            sb2.append(c());
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private t f26875a;

        /* renamed from: b  reason: collision with root package name */
        private String f26876b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f26877c;

        /* renamed from: d  reason: collision with root package name */
        private z f26878d;

        /* renamed from: e  reason: collision with root package name */
        private Map f26879e;

        public a() {
            this.f26879e = new LinkedHashMap();
            this.f26876b = "GET";
            this.f26877c = new s.a();
        }

        public y a() {
            t tVar = this.f26875a;
            if (tVar != null) {
                return new y(tVar, this.f26876b, this.f26877c.d(), this.f26878d, oe.d.S(this.f26879e));
            }
            throw new IllegalStateException("url == null".toString());
        }

        public a b() {
            return f("GET", null);
        }

        public final s.a c() {
            return this.f26877c;
        }

        public a d(String name, String value) {
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            c().g(name, value);
            return this;
        }

        public a e(s headers) {
            kotlin.jvm.internal.m.e(headers, "headers");
            j(headers.l());
            return this;
        }

        public a f(String method, z zVar) {
            boolean z10;
            kotlin.jvm.internal.m.e(method, "method");
            if (method.length() > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                if (zVar == null) {
                    if (!(true ^ te.f.d(method))) {
                        throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                    }
                } else if (!te.f.a(method)) {
                    throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
                }
                k(method);
                i(zVar);
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true".toString());
        }

        public a g(z body) {
            kotlin.jvm.internal.m.e(body, "body");
            return f("POST", body);
        }

        public a h(String name) {
            kotlin.jvm.internal.m.e(name, "name");
            c().f(name);
            return this;
        }

        public final void i(z zVar) {
            this.f26878d = zVar;
        }

        public final void j(s.a aVar) {
            kotlin.jvm.internal.m.e(aVar, "<set-?>");
            this.f26877c = aVar;
        }

        public final void k(String str) {
            kotlin.jvm.internal.m.e(str, "<set-?>");
            this.f26876b = str;
        }

        public final void l(t tVar) {
            this.f26875a = tVar;
        }

        public a m(String url) {
            boolean F;
            boolean F2;
            kotlin.jvm.internal.m.e(url, "url");
            F = rd.y.F(url, "ws:", true);
            if (!F) {
                F2 = rd.y.F(url, "wss:", true);
                if (F2) {
                    String substring = url.substring(4);
                    kotlin.jvm.internal.m.d(substring, "this as java.lang.String).substring(startIndex)");
                    url = kotlin.jvm.internal.m.l("https:", substring);
                }
            } else {
                String substring2 = url.substring(3);
                kotlin.jvm.internal.m.d(substring2, "this as java.lang.String).substring(startIndex)");
                url = kotlin.jvm.internal.m.l("http:", substring2);
            }
            return n(t.f26780k.d(url));
        }

        public a n(t url) {
            kotlin.jvm.internal.m.e(url, "url");
            l(url);
            return this;
        }

        public a(y request) {
            Map s10;
            kotlin.jvm.internal.m.e(request, "request");
            this.f26879e = new LinkedHashMap();
            this.f26875a = request.i();
            this.f26876b = request.g();
            this.f26878d = request.a();
            if (!request.c().isEmpty()) {
                s10 = h0.s(request.c());
            } else {
                s10 = new LinkedHashMap();
            }
            this.f26879e = s10;
            this.f26877c = request.e().l();
        }
    }
}
