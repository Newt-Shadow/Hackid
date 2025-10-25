package pe;

import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.b;
import ne.c0;
import ne.g;
import ne.n;
import ne.p;
import ne.t;
import ne.y;
import yc.w;
/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: d  reason: collision with root package name */
    private final p f27924d;

    /* renamed from: pe.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public /* synthetic */ class C0285a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f27925a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            f27925a = iArr;
        }
    }

    public a(p defaultDns) {
        m.e(defaultDns, "defaultDns");
        this.f27924d = defaultDns;
    }

    private final InetAddress b(Proxy proxy, t tVar, p pVar) {
        int i10;
        Object O;
        Proxy.Type type = proxy.type();
        if (type == null) {
            i10 = -1;
        } else {
            i10 = C0285a.f27925a[type.ordinal()];
        }
        if (i10 == 1) {
            O = w.O(pVar.a(tVar.h()));
            return (InetAddress) O;
        }
        SocketAddress address = proxy.address();
        if (address != null) {
            InetAddress address2 = ((InetSocketAddress) address).getAddress();
            m.d(address2, "address() as InetSocketAddress).address");
            return address2;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.net.InetSocketAddress");
    }

    @Override // ne.b
    public y a(c0 c0Var, a0 response) {
        boolean z10;
        Proxy proxy;
        boolean x10;
        ne.a a10;
        p c10;
        PasswordAuthentication requestPasswordAuthentication;
        String str;
        m.e(response, "response");
        List<g> e10 = response.e();
        y H = response.H();
        t i10 = H.i();
        if (response.f() == 407) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (c0Var == null) {
            proxy = null;
        } else {
            proxy = c0Var.b();
        }
        if (proxy == null) {
            proxy = Proxy.NO_PROXY;
        }
        for (g gVar : e10) {
            x10 = rd.y.x("Basic", gVar.c(), true);
            if (x10) {
                if (c0Var == null || (a10 = c0Var.a()) == null) {
                    c10 = null;
                } else {
                    c10 = a10.c();
                }
                if (c10 == null) {
                    c10 = this.f27924d;
                }
                if (z10) {
                    SocketAddress address = proxy.address();
                    if (address != null) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                        String hostName = inetSocketAddress.getHostName();
                        m.d(proxy, "proxy");
                        requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(hostName, b(proxy, i10, c10), inetSocketAddress.getPort(), i10.p(), gVar.b(), gVar.c(), i10.r(), Authenticator.RequestorType.PROXY);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.net.InetSocketAddress");
                    }
                } else {
                    String h10 = i10.h();
                    m.d(proxy, "proxy");
                    requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(h10, b(proxy, i10, c10), i10.l(), i10.p(), gVar.b(), gVar.c(), i10.r(), Authenticator.RequestorType.SERVER);
                }
                if (requestPasswordAuthentication != null) {
                    if (z10) {
                        str = "Proxy-Authorization";
                    } else {
                        str = "Authorization";
                    }
                    String userName = requestPasswordAuthentication.getUserName();
                    m.d(userName, "auth.userName");
                    char[] password = requestPasswordAuthentication.getPassword();
                    m.d(password, "auth.password");
                    return H.h().d(str, n.a(userName, new String(password), gVar.a())).a();
                }
            }
        }
        return null;
    }

    public /* synthetic */ a(p pVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? p.f26766b : pVar);
    }
}
