package ne;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import ne.t;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final p f26557a;

    /* renamed from: b  reason: collision with root package name */
    private final SocketFactory f26558b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f26559c;

    /* renamed from: d  reason: collision with root package name */
    private final HostnameVerifier f26560d;

    /* renamed from: e  reason: collision with root package name */
    private final f f26561e;

    /* renamed from: f  reason: collision with root package name */
    private final b f26562f;

    /* renamed from: g  reason: collision with root package name */
    private final Proxy f26563g;

    /* renamed from: h  reason: collision with root package name */
    private final ProxySelector f26564h;

    /* renamed from: i  reason: collision with root package name */
    private final t f26565i;

    /* renamed from: j  reason: collision with root package name */
    private final List f26566j;

    /* renamed from: k  reason: collision with root package name */
    private final List f26567k;

    public a(String uriHost, int i10, p dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, f fVar, b proxyAuthenticator, Proxy proxy, List protocols, List connectionSpecs, ProxySelector proxySelector) {
        String str;
        kotlin.jvm.internal.m.e(uriHost, "uriHost");
        kotlin.jvm.internal.m.e(dns, "dns");
        kotlin.jvm.internal.m.e(socketFactory, "socketFactory");
        kotlin.jvm.internal.m.e(proxyAuthenticator, "proxyAuthenticator");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        kotlin.jvm.internal.m.e(connectionSpecs, "connectionSpecs");
        kotlin.jvm.internal.m.e(proxySelector, "proxySelector");
        this.f26557a = dns;
        this.f26558b = socketFactory;
        this.f26559c = sSLSocketFactory;
        this.f26560d = hostnameVerifier;
        this.f26561e = fVar;
        this.f26562f = proxyAuthenticator;
        this.f26563g = proxy;
        this.f26564h = proxySelector;
        t.a aVar = new t.a();
        if (sSLSocketFactory != null) {
            str = "https";
        } else {
            str = "http";
        }
        this.f26565i = aVar.v(str).l(uriHost).r(i10).a();
        this.f26566j = oe.d.R(protocols);
        this.f26567k = oe.d.R(connectionSpecs);
    }

    public final f a() {
        return this.f26561e;
    }

    public final List b() {
        return this.f26567k;
    }

    public final p c() {
        return this.f26557a;
    }

    public final boolean d(a that) {
        kotlin.jvm.internal.m.e(that, "that");
        if (kotlin.jvm.internal.m.a(this.f26557a, that.f26557a) && kotlin.jvm.internal.m.a(this.f26562f, that.f26562f) && kotlin.jvm.internal.m.a(this.f26566j, that.f26566j) && kotlin.jvm.internal.m.a(this.f26567k, that.f26567k) && kotlin.jvm.internal.m.a(this.f26564h, that.f26564h) && kotlin.jvm.internal.m.a(this.f26563g, that.f26563g) && kotlin.jvm.internal.m.a(this.f26559c, that.f26559c) && kotlin.jvm.internal.m.a(this.f26560d, that.f26560d) && kotlin.jvm.internal.m.a(this.f26561e, that.f26561e) && this.f26565i.l() == that.f26565i.l()) {
            return true;
        }
        return false;
    }

    public final HostnameVerifier e() {
        return this.f26560d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (kotlin.jvm.internal.m.a(this.f26565i, aVar.f26565i) && d(aVar)) {
                return true;
            }
        }
        return false;
    }

    public final List f() {
        return this.f26566j;
    }

    public final Proxy g() {
        return this.f26563g;
    }

    public final b h() {
        return this.f26562f;
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.f26565i.hashCode()) * 31) + this.f26557a.hashCode()) * 31) + this.f26562f.hashCode()) * 31) + this.f26566j.hashCode()) * 31) + this.f26567k.hashCode()) * 31) + this.f26564h.hashCode()) * 31) + Objects.hashCode(this.f26563g)) * 31) + Objects.hashCode(this.f26559c)) * 31) + Objects.hashCode(this.f26560d)) * 31) + Objects.hashCode(this.f26561e);
    }

    public final ProxySelector i() {
        return this.f26564h;
    }

    public final SocketFactory j() {
        return this.f26558b;
    }

    public final SSLSocketFactory k() {
        return this.f26559c;
    }

    public final t l() {
        return this.f26565i;
    }

    public String toString() {
        String l10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f26565i.h());
        sb2.append(':');
        sb2.append(this.f26565i.l());
        sb2.append(", ");
        Proxy proxy = this.f26563g;
        if (proxy != null) {
            l10 = kotlin.jvm.internal.m.l("proxy=", proxy);
        } else {
            l10 = kotlin.jvm.internal.m.l("proxySelector=", this.f26564h);
        }
        sb2.append(l10);
        sb2.append('}');
        return sb2.toString();
    }
}
