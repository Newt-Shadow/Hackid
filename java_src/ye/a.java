package ye;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import yc.n;
/* loaded from: classes2.dex */
public final class a extends ProxySelector {

    /* renamed from: a  reason: collision with root package name */
    public static final a f33311a = new a();

    private a() {
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public List select(URI uri) {
        List b10;
        if (uri != null) {
            b10 = n.b(Proxy.NO_PROXY);
            return b10;
        }
        throw new IllegalArgumentException("uri must not be null".toString());
    }
}
