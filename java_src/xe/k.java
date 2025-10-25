package xe;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.conscrypt.Conscrypt;
import xe.l;
/* loaded from: classes2.dex */
public final class k implements m {

    /* renamed from: a  reason: collision with root package name */
    public static final b f32801a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    private static final l.a f32802b = new a();

    /* loaded from: classes2.dex */
    public static final class a implements l.a {
        a() {
        }

        @Override // xe.l.a
        public boolean b(SSLSocket sslSocket) {
            kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
            if (we.d.f32143e.c() && Conscrypt.isConscrypt(sslSocket)) {
                return true;
            }
            return false;
        }

        @Override // xe.l.a
        public m c(SSLSocket sslSocket) {
            kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
            return new k();
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
            return k.f32802b;
        }
    }

    @Override // xe.m
    public boolean a() {
        return we.d.f32143e.c();
    }

    @Override // xe.m
    public boolean b(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        return Conscrypt.isConscrypt(sslSocket);
    }

    @Override // xe.m
    public String c(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        if (b(sslSocket)) {
            return Conscrypt.getApplicationProtocol(sslSocket);
        }
        return null;
    }

    @Override // xe.m
    public void d(SSLSocket sslSocket, String str, List protocols) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        if (b(sslSocket)) {
            Conscrypt.setUseSessionTickets(sslSocket, true);
            Object[] array = we.j.f32161a.b(protocols).toArray(new String[0]);
            if (array != null) {
                Conscrypt.setApplicationProtocols(sslSocket, (String[]) array);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
    }
}
