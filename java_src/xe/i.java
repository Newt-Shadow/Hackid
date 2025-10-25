package xe;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import xe.l;
/* loaded from: classes2.dex */
public final class i implements m {

    /* renamed from: a  reason: collision with root package name */
    public static final b f32795a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    private static final l.a f32796b = new a();

    /* loaded from: classes2.dex */
    public static final class a implements l.a {
        a() {
        }

        @Override // xe.l.a
        public boolean b(SSLSocket sslSocket) {
            kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
            if (we.c.f32140e.b() && (sslSocket instanceof BCSSLSocket)) {
                return true;
            }
            return false;
        }

        @Override // xe.l.a
        public m c(SSLSocket sslSocket) {
            kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
            return new i();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l.a a() {
            return i.f32796b;
        }
    }

    @Override // xe.m
    public boolean a() {
        return we.c.f32140e.b();
    }

    @Override // xe.m
    public boolean b(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        return sslSocket instanceof BCSSLSocket;
    }

    @Override // xe.m
    public String c(SSLSocket sslSocket) {
        boolean a10;
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        String applicationProtocol = ((BCSSLSocket) sslSocket).getApplicationProtocol();
        if (applicationProtocol == null) {
            a10 = true;
        } else {
            a10 = kotlin.jvm.internal.m.a(applicationProtocol, "");
        }
        if (a10) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // xe.m
    public void d(SSLSocket sslSocket, String str, List protocols) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        if (b(sslSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sslSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            Object[] array = we.j.f32161a.b(protocols).toArray(new String[0]);
            if (array != null) {
                parameters.setApplicationProtocols((String[]) array);
                bCSSLSocket.setParameters(parameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
    }
}
