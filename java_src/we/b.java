package we;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xe.k;
import xe.l;
import xe.n;
import yc.o;
/* loaded from: classes2.dex */
public final class b extends j {

    /* renamed from: f  reason: collision with root package name */
    public static final a f32134f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f32135g;

    /* renamed from: d  reason: collision with root package name */
    private final List f32136d;

    /* renamed from: e  reason: collision with root package name */
    private final xe.j f32137e;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            if (b()) {
                return new b();
            }
            return null;
        }

        public final boolean b() {
            return b.f32135g;
        }
    }

    /* renamed from: we.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0361b implements ze.e {

        /* renamed from: a  reason: collision with root package name */
        private final X509TrustManager f32138a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f32139b;

        public C0361b(X509TrustManager trustManager, Method findByIssuerAndSignatureMethod) {
            m.e(trustManager, "trustManager");
            m.e(findByIssuerAndSignatureMethod, "findByIssuerAndSignatureMethod");
            this.f32138a = trustManager;
            this.f32139b = findByIssuerAndSignatureMethod;
        }

        @Override // ze.e
        public X509Certificate a(X509Certificate cert) {
            m.e(cert, "cert");
            try {
                Object invoke = this.f32139b.invoke(this.f32138a, cert);
                if (invoke != null) {
                    return ((TrustAnchor) invoke).getTrustedCert();
                }
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.TrustAnchor");
            } catch (IllegalAccessException e10) {
                throw new AssertionError("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0361b) {
                C0361b c0361b = (C0361b) obj;
                return m.a(this.f32138a, c0361b.f32138a) && m.a(this.f32139b, c0361b.f32139b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f32138a.hashCode() * 31) + this.f32139b.hashCode();
        }

        public String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.f32138a + ", findByIssuerAndSignatureMethod=" + this.f32139b + ')';
        }
    }

    static {
        boolean z10 = false;
        if (j.f32161a.h() && Build.VERSION.SDK_INT < 30) {
            z10 = true;
        }
        f32135g = z10;
    }

    public b() {
        List l10;
        l10 = o.l(n.a.b(n.f32805j, null, 1, null), new l(xe.h.f32787f.d()), new l(k.f32801a.a()), new l(xe.i.f32795a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : l10) {
            if (((xe.m) obj).a()) {
                arrayList.add(obj);
            }
        }
        this.f32136d = arrayList;
        this.f32137e = xe.j.f32797d.a();
    }

    @Override // we.j
    public ze.c c(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        xe.d a10 = xe.d.f32780d.a(trustManager);
        if (a10 == null) {
            return super.c(trustManager);
        }
        return a10;
    }

    @Override // we.j
    public ze.e d(X509TrustManager trustManager) {
        m.e(trustManager, "trustManager");
        try {
            Method method = trustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            method.setAccessible(true);
            m.d(method, "method");
            return new C0361b(trustManager, method);
        } catch (NoSuchMethodException unused) {
            return super.d(trustManager);
        }
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        Object obj;
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        Iterator it = this.f32136d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((xe.m) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        xe.m mVar = (xe.m) obj;
        if (mVar != null) {
            mVar.d(sslSocket, str, protocols);
        }
    }

    @Override // we.j
    public void f(Socket socket, InetSocketAddress address, int i10) {
        m.e(socket, "socket");
        m.e(address, "address");
        try {
            socket.connect(address, i10);
        } catch (ClassCastException e10) {
            if (Build.VERSION.SDK_INT == 26) {
                throw new IOException("Exception in connect", e10);
            }
            throw e10;
        }
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        Object obj;
        m.e(sslSocket, "sslSocket");
        Iterator it = this.f32136d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((xe.m) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        xe.m mVar = (xe.m) obj;
        if (mVar == null) {
            return null;
        }
        return mVar.c(sslSocket);
    }

    @Override // we.j
    public Object h(String closer) {
        m.e(closer, "closer");
        return this.f32137e.a(closer);
    }

    @Override // we.j
    public boolean i(String hostname) {
        m.e(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }

    @Override // we.j
    public void l(String message, Object obj) {
        m.e(message, "message");
        if (!this.f32137e.b(obj)) {
            j.k(this, message, 5, null, 4, null);
        }
    }
}
