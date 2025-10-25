package we;

import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.w;
import ne.x;
import yc.p;
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32161a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile j f32162b;

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f32163c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final j d() {
            xe.e.f32783a.b();
            j a10 = we.a.f32131e.a();
            if (a10 == null) {
                j a11 = b.f32134f.a();
                m.b(a11);
                return a11;
            }
            return a10;
        }

        private final j e() {
            i a10;
            c a11;
            d b10;
            if (j() && (b10 = d.f32143e.b()) != null) {
                return b10;
            }
            if (i() && (a11 = c.f32140e.a()) != null) {
                return a11;
            }
            if (k() && (a10 = i.f32158e.a()) != null) {
                return a10;
            }
            h a12 = h.f32156d.a();
            if (a12 != null) {
                return a12;
            }
            j a13 = e.f32147i.a();
            if (a13 != null) {
                return a13;
            }
            return new j();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final j f() {
            if (h()) {
                return d();
            }
            return e();
        }

        private final boolean i() {
            return m.a("BC", Security.getProviders()[0].getName());
        }

        private final boolean j() {
            return m.a("Conscrypt", Security.getProviders()[0].getName());
        }

        private final boolean k() {
            return m.a("OpenJSSE", Security.getProviders()[0].getName());
        }

        public final List b(List protocols) {
            int r10;
            boolean z10;
            m.e(protocols, "protocols");
            ArrayList<x> arrayList = new ArrayList();
            for (Object obj : protocols) {
                if (((x) obj) != x.HTTP_1_0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    arrayList.add(obj);
                }
            }
            r10 = p.r(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(r10);
            for (x xVar : arrayList) {
                arrayList2.add(xVar.toString());
            }
            return arrayList2;
        }

        public final byte[] c(List protocols) {
            m.e(protocols, "protocols");
            af.d dVar = new af.d();
            for (String str : b(protocols)) {
                dVar.O(str.length());
                dVar.g0(str);
            }
            return dVar.z();
        }

        public final j g() {
            return j.f32162b;
        }

        public final boolean h() {
            return m.a("Dalvik", System.getProperty("java.vm.name"));
        }
    }

    static {
        a aVar = new a(null);
        f32161a = aVar;
        f32162b = aVar.f();
        f32163c = Logger.getLogger(w.class.getName());
    }

    public static /* synthetic */ void k(j jVar, String str, int i10, Throwable th, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 4;
            }
            if ((i11 & 4) != 0) {
                th = null;
            }
            jVar.j(str, i10, th);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
    }

    public void b(SSLSocket sslSocket) {
        m.e(sslSocket, "sslSocket");
    }

    public ze.c c(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        return new ze.a(d(trustManager));
    }

    public ze.e d(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        X509Certificate[] acceptedIssuers = trustManager.getAcceptedIssuers();
        m.d(acceptedIssuers, "trustManager.acceptedIssuers");
        return new ze.b((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
    }

    public void f(Socket socket, InetSocketAddress address, int i10) {
        m.e(socket, "socket");
        m.e(address, "address");
        socket.connect(address, i10);
    }

    public String g(SSLSocket sslSocket) {
        m.e(sslSocket, "sslSocket");
        return null;
    }

    public Object h(String closer) {
        m.e(closer, "closer");
        if (f32163c.isLoggable(Level.FINE)) {
            return new Throwable(closer);
        }
        return null;
    }

    public boolean i(String hostname) {
        m.e(hostname, "hostname");
        return true;
    }

    public void j(String message, int i10, Throwable th) {
        Level level;
        m.e(message, "message");
        if (i10 == 5) {
            level = Level.WARNING;
        } else {
            level = Level.INFO;
        }
        f32163c.log(level, message, th);
    }

    public void l(String message, Object obj) {
        m.e(message, "message");
        if (obj == null) {
            message = m.l(message, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        j(message, 5, (Throwable) obj);
    }

    public SSLContext m() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        m.d(sSLContext, "getInstance(\"TLS\")");
        return sSLContext;
    }

    public SSLSocketFactory n(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        try {
            SSLContext m10 = m();
            m10.init(null, new TrustManager[]{trustManager}, null);
            SSLSocketFactory socketFactory = m10.getSocketFactory();
            m.d(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e10) {
            throw new AssertionError(m.l("No System TLS: ", e10), e10);
        }
    }

    public X509TrustManager o() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        m.b(trustManagers);
        boolean z10 = true;
        if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
            z10 = false;
        }
        if (z10) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager != null) {
                return (X509TrustManager) trustManager;
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
        }
        String arrays = Arrays.toString(trustManagers);
        m.d(arrays, "toString(this)");
        throw new IllegalStateException(m.l("Unexpected default trust managers: ", arrays).toString());
    }

    public String toString() {
        String simpleName = getClass().getSimpleName();
        m.d(simpleName, "javaClass.simpleName");
        return simpleName;
    }
}
