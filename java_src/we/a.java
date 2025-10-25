package we;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import xe.k;
import xe.l;
import xe.m;
import yc.o;
/* loaded from: classes2.dex */
public final class a extends j {

    /* renamed from: e  reason: collision with root package name */
    public static final C0360a f32131e = new C0360a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f32132f;

    /* renamed from: d  reason: collision with root package name */
    private final List f32133d;

    /* renamed from: we.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0360a {
        private C0360a() {
        }

        public /* synthetic */ C0360a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            if (b()) {
                return new a();
            }
            return null;
        }

        public final boolean b() {
            return a.f32132f;
        }
    }

    static {
        boolean z10;
        if (j.f32161a.h() && Build.VERSION.SDK_INT >= 29) {
            z10 = true;
        } else {
            z10 = false;
        }
        f32132f = z10;
    }

    public a() {
        List l10;
        l10 = o.l(xe.c.f32779a.a(), new l(xe.h.f32787f.d()), new l(k.f32801a.a()), new l(xe.i.f32795a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : l10) {
            if (((m) obj).a()) {
                arrayList.add(obj);
            }
        }
        this.f32133d = arrayList;
    }

    @Override // we.j
    public ze.c c(X509TrustManager trustManager) {
        kotlin.jvm.internal.m.e(trustManager, "trustManager");
        xe.d a10 = xe.d.f32780d.a(trustManager);
        if (a10 == null) {
            return super.c(trustManager);
        }
        return a10;
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        Object obj;
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        Iterator it = this.f32133d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((m) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        m mVar = (m) obj;
        if (mVar != null) {
            mVar.d(sslSocket, str, protocols);
        }
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        Object obj;
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        Iterator it = this.f32133d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((m) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        m mVar = (m) obj;
        if (mVar == null) {
            return null;
        }
        return mVar.c(sslSocket);
    }

    @Override // we.j
    public boolean i(String hostname) {
        kotlin.jvm.internal.m.e(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }
}
