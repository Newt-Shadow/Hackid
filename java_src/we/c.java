package we;

import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import org.bouncycastle.jsse.provider.BouncyCastleJsseProvider;
/* loaded from: classes2.dex */
public final class c extends j {

    /* renamed from: e  reason: collision with root package name */
    public static final a f32140e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f32141f;

    /* renamed from: d  reason: collision with root package name */
    private final Provider f32142d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            if (!b()) {
                return null;
            }
            return new c(null);
        }

        public final boolean b() {
            return c.f32141f;
        }
    }

    static {
        a aVar = new a(null);
        f32140e = aVar;
        boolean z10 = false;
        try {
            Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, aVar.getClass().getClassLoader());
            z10 = true;
        } catch (ClassNotFoundException unused) {
        }
        f32141f = z10;
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        if (sslSocket instanceof BCSSLSocket) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sslSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            Object[] array = j.f32161a.b(protocols).toArray(new String[0]);
            if (array != null) {
                parameters.setApplicationProtocols((String[]) array);
                bCSSLSocket.setParameters(parameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        super.e(sslSocket, str, protocols);
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        boolean a10;
        m.e(sslSocket, "sslSocket");
        if (sslSocket instanceof BCSSLSocket) {
            String applicationProtocol = ((BCSSLSocket) sslSocket).getApplicationProtocol();
            if (applicationProtocol == null) {
                a10 = true;
            } else {
                a10 = m.a(applicationProtocol, "");
            }
            if (a10) {
                return null;
            }
            return applicationProtocol;
        }
        return super.g(sslSocket);
    }

    @Override // we.j
    public SSLContext m() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f32142d);
        m.d(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // we.j
    public X509TrustManager o() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("PKIX", "BCJSSE");
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

    private c() {
        this.f32142d = new BouncyCastleJsseProvider();
    }
}
