package we;

import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public class h extends j {

    /* renamed from: d  reason: collision with root package name */
    public static final a f32156d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f32157e;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            if (b()) {
                return new h();
            }
            return null;
        }

        public final boolean b() {
            return h.f32157e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r1.intValue() >= 9) goto L9;
     */
    static {
        /*
            we.h$a r0 = new we.h$a
            r1 = 0
            r0.<init>(r1)
            we.h.f32156d = r0
            java.lang.String r0 = "java.specification.version"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            if (r0 != 0) goto L11
            goto L15
        L11:
            java.lang.Integer r1 = rd.n.m(r0)
        L15:
            r0 = 1
            r2 = 0
            if (r1 == 0) goto L24
            int r1 = r1.intValue()
            r3 = 9
            if (r1 < r3) goto L22
            goto L2d
        L22:
            r0 = r2
            goto L2d
        L24:
            java.lang.Class<javax.net.ssl.SSLSocket> r1 = javax.net.ssl.SSLSocket.class
            java.lang.String r3 = "getApplicationProtocol"
            java.lang.Class[] r4 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L22
            r1.getMethod(r3, r4)     // Catch: java.lang.NoSuchMethodException -> L22
        L2d:
            we.h.f32157e = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: we.h.<clinit>():void");
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        SSLParameters sSLParameters = sslSocket.getSSLParameters();
        Object[] array = j.f32161a.b(protocols).toArray(new String[0]);
        if (array != null) {
            sSLParameters.setApplicationProtocols((String[]) array);
            sslSocket.setSSLParameters(sSLParameters);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        String applicationProtocol;
        boolean a10;
        m.e(sslSocket, "sslSocket");
        try {
            applicationProtocol = sslSocket.getApplicationProtocol();
            if (applicationProtocol == null) {
                a10 = true;
            } else {
                a10 = m.a(applicationProtocol, "");
            }
            if (a10) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
