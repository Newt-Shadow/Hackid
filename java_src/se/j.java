package se;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.c0;
import ne.q;
import ne.t;
import yc.n;
import yc.o;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: i  reason: collision with root package name */
    public static final a f29684i = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final ne.a f29685a;

    /* renamed from: b  reason: collision with root package name */
    private final h f29686b;

    /* renamed from: c  reason: collision with root package name */
    private final ne.e f29687c;

    /* renamed from: d  reason: collision with root package name */
    private final q f29688d;

    /* renamed from: e  reason: collision with root package name */
    private List f29689e;

    /* renamed from: f  reason: collision with root package name */
    private int f29690f;

    /* renamed from: g  reason: collision with root package name */
    private List f29691g;

    /* renamed from: h  reason: collision with root package name */
    private final List f29692h;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(InetSocketAddress inetSocketAddress) {
            m.e(inetSocketAddress, "<this>");
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                String hostName = inetSocketAddress.getHostName();
                m.d(hostName, "hostName");
                return hostName;
            }
            String hostAddress = address.getHostAddress();
            m.d(hostAddress, "address.hostAddress");
            return hostAddress;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List f29693a;

        /* renamed from: b  reason: collision with root package name */
        private int f29694b;

        public b(List routes) {
            m.e(routes, "routes");
            this.f29693a = routes;
        }

        public final List a() {
            return this.f29693a;
        }

        public final boolean b() {
            if (this.f29694b < this.f29693a.size()) {
                return true;
            }
            return false;
        }

        public final c0 c() {
            if (b()) {
                List list = this.f29693a;
                int i10 = this.f29694b;
                this.f29694b = i10 + 1;
                return (c0) list.get(i10);
            }
            throw new NoSuchElementException();
        }
    }

    public j(ne.a address, h routeDatabase, ne.e call, q eventListener) {
        List h10;
        List h11;
        m.e(address, "address");
        m.e(routeDatabase, "routeDatabase");
        m.e(call, "call");
        m.e(eventListener, "eventListener");
        this.f29685a = address;
        this.f29686b = routeDatabase;
        this.f29687c = call;
        this.f29688d = eventListener;
        h10 = o.h();
        this.f29689e = h10;
        h11 = o.h();
        this.f29691g = h11;
        this.f29692h = new ArrayList();
        f(address.l(), address.g());
    }

    private final boolean b() {
        if (this.f29690f < this.f29689e.size()) {
            return true;
        }
        return false;
    }

    private final Proxy d() {
        if (b()) {
            List list = this.f29689e;
            int i10 = this.f29690f;
            this.f29690f = i10 + 1;
            Proxy proxy = (Proxy) list.get(i10);
            e(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f29685a.l().h() + "; exhausted proxy configurations: " + this.f29689e);
    }

    private final void e(Proxy proxy) {
        String h10;
        int l10;
        List<InetAddress> a10;
        ArrayList arrayList = new ArrayList();
        this.f29691g = arrayList;
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress proxyAddress = proxy.address();
            if (proxyAddress instanceof InetSocketAddress) {
                a aVar = f29684i;
                m.d(proxyAddress, "proxyAddress");
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxyAddress;
                h10 = aVar.a(inetSocketAddress);
                l10 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException(m.l("Proxy.address() is not an InetSocketAddress: ", proxyAddress.getClass()).toString());
            }
        } else {
            h10 = this.f29685a.l().h();
            l10 = this.f29685a.l().l();
        }
        boolean z10 = false;
        if (1 <= l10 && l10 < 65536) {
            z10 = true;
        }
        if (z10) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList.add(InetSocketAddress.createUnresolved(h10, l10));
                return;
            }
            if (oe.d.i(h10)) {
                a10 = n.b(InetAddress.getByName(h10));
            } else {
                this.f29688d.m(this.f29687c, h10);
                a10 = this.f29685a.c().a(h10);
                if (!a10.isEmpty()) {
                    this.f29688d.l(this.f29687c, h10, a10);
                } else {
                    throw new UnknownHostException(this.f29685a.c() + " returned no addresses for " + h10);
                }
            }
            for (InetAddress inetAddress : a10) {
                arrayList.add(new InetSocketAddress(inetAddress, l10));
            }
            return;
        }
        throw new SocketException("No route to " + h10 + ':' + l10 + "; port is out of range");
    }

    private final void f(t tVar, Proxy proxy) {
        this.f29688d.o(this.f29687c, tVar);
        List g10 = g(proxy, tVar, this);
        this.f29689e = g10;
        this.f29690f = 0;
        this.f29688d.n(this.f29687c, tVar, g10);
    }

    private static final List g(Proxy proxy, t tVar, j jVar) {
        boolean z10;
        List b10;
        if (proxy != null) {
            b10 = n.b(proxy);
            return b10;
        }
        URI q10 = tVar.q();
        if (q10.getHost() == null) {
            return oe.d.v(Proxy.NO_PROXY);
        }
        List<Proxy> proxiesOrNull = jVar.f29685a.i().select(q10);
        List<Proxy> list = proxiesOrNull;
        if (list != null && !list.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            return oe.d.v(Proxy.NO_PROXY);
        }
        m.d(proxiesOrNull, "proxiesOrNull");
        return oe.d.R(proxiesOrNull);
    }

    public final boolean a() {
        if (b() || (!this.f29692h.isEmpty())) {
            return true;
        }
        return false;
    }

    public final b c() {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (b()) {
                Proxy d10 = d();
                for (InetSocketAddress inetSocketAddress : this.f29691g) {
                    c0 c0Var = new c0(this.f29685a, d10, inetSocketAddress);
                    if (this.f29686b.c(c0Var)) {
                        this.f29692h.add(c0Var);
                    } else {
                        arrayList.add(c0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                yc.t.v(arrayList, this.f29692h);
                this.f29692h.clear();
            }
            return new b(arrayList);
        }
        throw new NoSuchElementException();
    }
}
