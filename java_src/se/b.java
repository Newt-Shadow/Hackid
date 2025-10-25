package se;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.m;
import ne.k;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List f29599a;

    /* renamed from: b  reason: collision with root package name */
    private int f29600b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29601c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29602d;

    public b(List connectionSpecs) {
        m.e(connectionSpecs, "connectionSpecs");
        this.f29599a = connectionSpecs;
    }

    private final boolean c(SSLSocket sSLSocket) {
        int i10 = this.f29600b;
        int size = this.f29599a.size();
        while (i10 < size) {
            int i11 = i10 + 1;
            if (((k) this.f29599a.get(i10)).e(sSLSocket)) {
                return true;
            }
            i10 = i11;
        }
        return false;
    }

    public final k a(SSLSocket sslSocket) {
        k kVar;
        m.e(sslSocket, "sslSocket");
        int i10 = this.f29600b;
        int size = this.f29599a.size();
        while (true) {
            if (i10 < size) {
                int i11 = i10 + 1;
                kVar = (k) this.f29599a.get(i10);
                if (kVar.e(sslSocket)) {
                    this.f29600b = i11;
                    break;
                }
                i10 = i11;
            } else {
                kVar = null;
                break;
            }
        }
        if (kVar != null) {
            this.f29601c = c(sslSocket);
            kVar.c(sslSocket, this.f29602d);
            return kVar;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unable to find acceptable protocols. isFallback=");
        sb2.append(this.f29602d);
        sb2.append(", modes=");
        sb2.append(this.f29599a);
        sb2.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        m.b(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        m.d(arrays, "toString(this)");
        sb2.append(arrays);
        throw new UnknownServiceException(sb2.toString());
    }

    public final boolean b(IOException e10) {
        m.e(e10, "e");
        this.f29602d = true;
        if (this.f29601c && !(e10 instanceof ProtocolException) && !(e10 instanceof InterruptedIOException) && ((!(e10 instanceof SSLHandshakeException) || !(e10.getCause() instanceof CertificateException)) && !(e10 instanceof SSLPeerUnverifiedException) && (e10 instanceof SSLException))) {
            return true;
        }
        return false;
    }
}
