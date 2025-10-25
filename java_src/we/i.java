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
import org.openjsse.javax.net.ssl.SSLParameters;
import org.openjsse.net.ssl.OpenJSSE;
/* loaded from: classes2.dex */
public final class i extends j {

    /* renamed from: e  reason: collision with root package name */
    public static final a f32158e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f32159f;

    /* renamed from: d  reason: collision with root package name */
    private final Provider f32160d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a() {
            if (!b()) {
                return null;
            }
            return new i(null);
        }

        public final boolean b() {
            return i.f32159f;
        }
    }

    static {
        a aVar = new a(null);
        f32158e = aVar;
        boolean z10 = false;
        try {
            Class.forName("org.openjsse.net.ssl.OpenJSSE", false, aVar.getClass().getClassLoader());
            z10 = true;
        } catch (ClassNotFoundException unused) {
        }
        f32159f = z10;
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        if (sslSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            org.openjsse.javax.net.ssl.SSLSocket sSLSocket = (org.openjsse.javax.net.ssl.SSLSocket) sslSocket;
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            if (sSLParameters instanceof SSLParameters) {
                SSLParameters sSLParameters2 = sSLParameters;
                Object[] array = j.f32161a.b(protocols).toArray(new String[0]);
                if (array != null) {
                    sSLParameters2.setApplicationProtocols((String[]) array);
                    sSLSocket.setSSLParameters(sSLParameters);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            return;
        }
        super.e(sslSocket, str, protocols);
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        boolean a10;
        m.e(sslSocket, "sslSocket");
        if (sslSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            String applicationProtocol = ((org.openjsse.javax.net.ssl.SSLSocket) sslSocket).getApplicationProtocol();
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
        SSLContext sSLContext = SSLContext.getInstance("TLSv1.3", this.f32160d);
        m.d(sSLContext, "getInstance(\"TLSv1.3\", provider)");
        return sSLContext;
    }

    @Override // we.j
    public X509TrustManager o() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm(), this.f32160d);
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

    private i() {
        this.f32160d = new OpenJSSE();
    }
}
