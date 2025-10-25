package xe;

import java.util.List;
import javax.net.ssl.SSLSocket;
/* loaded from: classes2.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final a f32803a;

    /* renamed from: b  reason: collision with root package name */
    private m f32804b;

    /* loaded from: classes2.dex */
    public interface a {
        boolean b(SSLSocket sSLSocket);

        m c(SSLSocket sSLSocket);
    }

    public l(a socketAdapterFactory) {
        kotlin.jvm.internal.m.e(socketAdapterFactory, "socketAdapterFactory");
        this.f32803a = socketAdapterFactory;
    }

    private final synchronized m e(SSLSocket sSLSocket) {
        if (this.f32804b == null && this.f32803a.b(sSLSocket)) {
            this.f32804b = this.f32803a.c(sSLSocket);
        }
        return this.f32804b;
    }

    @Override // xe.m
    public boolean a() {
        return true;
    }

    @Override // xe.m
    public boolean b(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        return this.f32803a.b(sslSocket);
    }

    @Override // xe.m
    public String c(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        m e10 = e(sslSocket);
        if (e10 == null) {
            return null;
        }
        return e10.c(sslSocket);
    }

    @Override // xe.m
    public void d(SSLSocket sslSocket, String str, List protocols) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        m e10 = e(sslSocket);
        if (e10 != null) {
            e10.d(sslSocket, str, protocols);
        }
    }
}
