package xe;

import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32779a = new a(null);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            if (b()) {
                return new c();
            }
            return null;
        }

        public final boolean b() {
            if (we.j.f32161a.h() && Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            return false;
        }
    }

    @Override // xe.m
    public boolean a() {
        return f32779a.b();
    }

    @Override // xe.m
    public boolean b(SSLSocket sslSocket) {
        boolean isSupportedSocket;
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        isSupportedSocket = SSLSockets.isSupportedSocket(sslSocket);
        return isSupportedSocket;
    }

    @Override // xe.m
    public String c(SSLSocket sslSocket) {
        String applicationProtocol;
        boolean a10;
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        applicationProtocol = sslSocket.getApplicationProtocol();
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
        try {
            SSLSockets.setUseSessionTickets(sslSocket, true);
            SSLParameters sSLParameters = sslSocket.getSSLParameters();
            Object[] array = we.j.f32161a.b(protocols).toArray(new String[0]);
            if (array != null) {
                sSLParameters.setApplicationProtocols((String[]) array);
                sslSocket.setSSLParameters(sSLParameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        } catch (IllegalArgumentException e10) {
            throw new IOException("Android internal error", e10);
        }
    }
}
