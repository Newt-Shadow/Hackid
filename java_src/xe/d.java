package xe;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class d extends ze.c {

    /* renamed from: d  reason: collision with root package name */
    public static final a f32780d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final X509TrustManager f32781b;

    /* renamed from: c  reason: collision with root package name */
    private final X509TrustManagerExtensions f32782c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(X509TrustManager trustManager) {
            X509TrustManagerExtensions x509TrustManagerExtensions;
            kotlin.jvm.internal.m.e(trustManager, "trustManager");
            try {
                x509TrustManagerExtensions = new X509TrustManagerExtensions(trustManager);
            } catch (IllegalArgumentException unused) {
                x509TrustManagerExtensions = null;
            }
            if (x509TrustManagerExtensions == null) {
                return null;
            }
            return new d(trustManager, x509TrustManagerExtensions);
        }
    }

    public d(X509TrustManager trustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        kotlin.jvm.internal.m.e(trustManager, "trustManager");
        kotlin.jvm.internal.m.e(x509TrustManagerExtensions, "x509TrustManagerExtensions");
        this.f32781b = trustManager;
        this.f32782c = x509TrustManagerExtensions;
    }

    @Override // ze.c
    public List a(List chain, String hostname) {
        kotlin.jvm.internal.m.e(chain, "chain");
        kotlin.jvm.internal.m.e(hostname, "hostname");
        Object[] array = chain.toArray(new X509Certificate[0]);
        if (array != null) {
            try {
                List<X509Certificate> checkServerTrusted = this.f32782c.checkServerTrusted((X509Certificate[]) array, "RSA", hostname);
                kotlin.jvm.internal.m.d(checkServerTrusted, "x509TrustManagerExtensio…ficates, \"RSA\", hostname)");
                return checkServerTrusted;
            } catch (CertificateException e10) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e10.getMessage());
                sSLPeerUnverifiedException.initCause(e10);
                throw sSLPeerUnverifiedException;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    public boolean equals(Object obj) {
        if ((obj instanceof d) && ((d) obj).f32781b == this.f32781b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return System.identityHashCode(this.f32781b);
    }
}
