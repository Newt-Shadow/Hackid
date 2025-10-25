package we;

import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;
/* loaded from: classes2.dex */
public final class d extends j {

    /* renamed from: e  reason: collision with root package name */
    public static final a f32143e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f32144f;

    /* renamed from: d  reason: collision with root package name */
    private final Provider f32145d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(int i10, int i11, int i12) {
            Conscrypt.Version version = Conscrypt.version();
            if (version.major() != i10) {
                if (version.major() > i10) {
                    return true;
                }
                return false;
            } else if (version.minor() != i11) {
                if (version.minor() > i11) {
                    return true;
                }
                return false;
            } else if (version.patch() >= i12) {
                return true;
            } else {
                return false;
            }
        }

        public final d b() {
            if (!c()) {
                return null;
            }
            return new d(null);
        }

        public final boolean c() {
            return d.f32144f;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements ConscryptHostnameVerifier {

        /* renamed from: a  reason: collision with root package name */
        public static final b f32146a = new b();

        private b() {
        }
    }

    static {
        a aVar = new a(null);
        f32143e = aVar;
        boolean z10 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, aVar.getClass().getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (aVar.a(2, 1, 0)) {
                    z10 = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f32144f = z10;
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        if (Conscrypt.isConscrypt(sslSocket)) {
            Conscrypt.setUseSessionTickets(sslSocket, true);
            Object[] array = j.f32161a.b(protocols).toArray(new String[0]);
            if (array != null) {
                Conscrypt.setApplicationProtocols(sslSocket, (String[]) array);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        super.e(sslSocket, str, protocols);
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        m.e(sslSocket, "sslSocket");
        if (Conscrypt.isConscrypt(sslSocket)) {
            return Conscrypt.getApplicationProtocol(sslSocket);
        }
        return super.g(sslSocket);
    }

    @Override // we.j
    public SSLContext m() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f32145d);
        m.d(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // we.j
    public SSLSocketFactory n(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        SSLContext m10 = m();
        m10.init(null, new TrustManager[]{trustManager}, null);
        SSLSocketFactory socketFactory = m10.getSocketFactory();
        m.d(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // we.j
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
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, b.f32146a);
                return x509TrustManager;
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
        }
        String arrays = Arrays.toString(trustManagers);
        m.d(arrays, "toString(this)");
        throw new IllegalStateException(m.l("Unexpected default trust managers: ", arrays).toString());
    }

    private d() {
        Provider newProvider = Conscrypt.newProvider();
        m.d(newProvider, "newProvider()");
        this.f32145d = newProvider;
    }
}
