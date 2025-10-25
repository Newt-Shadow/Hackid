package ne;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: e  reason: collision with root package name */
    public static final a f26770e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final d0 f26771a;

    /* renamed from: b  reason: collision with root package name */
    private final h f26772b;

    /* renamed from: c  reason: collision with root package name */
    private final List f26773c;

    /* renamed from: d  reason: collision with root package name */
    private final xc.d f26774d;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: ne.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static final class C0264a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ List f26775e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0264a(List list) {
                super(0);
                this.f26775e = list;
            }

            @Override // id.a
            /* renamed from: b */
            public final List invoke() {
                return this.f26775e;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List b(Certificate[] certificateArr) {
            List h10;
            if (certificateArr == null) {
                h10 = yc.o.h();
                return h10;
            }
            return oe.d.v(Arrays.copyOf(certificateArr, certificateArr.length));
        }

        public final r a(SSLSession sSLSession) {
            boolean a10;
            List h10;
            kotlin.jvm.internal.m.e(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite != null) {
                if (kotlin.jvm.internal.m.a(cipherSuite, "TLS_NULL_WITH_NULL_NULL")) {
                    a10 = true;
                } else {
                    a10 = kotlin.jvm.internal.m.a(cipherSuite, "SSL_NULL_WITH_NULL_NULL");
                }
                if (!a10) {
                    h b10 = h.f26655b.b(cipherSuite);
                    String protocol = sSLSession.getProtocol();
                    if (protocol != null) {
                        if (!kotlin.jvm.internal.m.a("NONE", protocol)) {
                            d0 a11 = d0.f26635b.a(protocol);
                            try {
                                h10 = b(sSLSession.getPeerCertificates());
                            } catch (SSLPeerUnverifiedException unused) {
                                h10 = yc.o.h();
                            }
                            return new r(a11, b10, b(sSLSession.getLocalCertificates()), new C0264a(h10));
                        }
                        throw new IOException("tlsVersion == NONE");
                    }
                    throw new IllegalStateException("tlsVersion == null".toString());
                }
                throw new IOException(kotlin.jvm.internal.m.l("cipherSuite == ", cipherSuite));
            }
            throw new IllegalStateException("cipherSuite == null".toString());
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ id.a f26776e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(id.a aVar) {
            super(0);
            this.f26776e = aVar;
        }

        @Override // id.a
        /* renamed from: b */
        public final List invoke() {
            List h10;
            try {
                return (List) this.f26776e.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                h10 = yc.o.h();
                return h10;
            }
        }
    }

    public r(d0 tlsVersion, h cipherSuite, List localCertificates, id.a peerCertificatesFn) {
        xc.d a10;
        kotlin.jvm.internal.m.e(tlsVersion, "tlsVersion");
        kotlin.jvm.internal.m.e(cipherSuite, "cipherSuite");
        kotlin.jvm.internal.m.e(localCertificates, "localCertificates");
        kotlin.jvm.internal.m.e(peerCertificatesFn, "peerCertificatesFn");
        this.f26771a = tlsVersion;
        this.f26772b = cipherSuite;
        this.f26773c = localCertificates;
        a10 = xc.f.a(new b(peerCertificatesFn));
        this.f26774d = a10;
    }

    private final String b(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        kotlin.jvm.internal.m.d(type, "type");
        return type;
    }

    public final h a() {
        return this.f26772b;
    }

    public final List c() {
        return this.f26773c;
    }

    public final List d() {
        return (List) this.f26774d.getValue();
    }

    public final d0 e() {
        return this.f26771a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (rVar.f26771a == this.f26771a && kotlin.jvm.internal.m.a(rVar.f26772b, this.f26772b) && kotlin.jvm.internal.m.a(rVar.d(), d()) && kotlin.jvm.internal.m.a(rVar.f26773c, this.f26773c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.f26771a.hashCode()) * 31) + this.f26772b.hashCode()) * 31) + d().hashCode()) * 31) + this.f26773c.hashCode();
    }

    public String toString() {
        int r10;
        int r11;
        List<Certificate> d10 = d();
        r10 = yc.p.r(d10, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (Certificate certificate : d10) {
            arrayList.add(b(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Handshake{tlsVersion=");
        sb2.append(this.f26771a);
        sb2.append(" cipherSuite=");
        sb2.append(this.f26772b);
        sb2.append(" peerCertificates=");
        sb2.append(obj);
        sb2.append(" localCertificates=");
        List<Certificate> list = this.f26773c;
        r11 = yc.p.r(list, 10);
        ArrayList arrayList2 = new ArrayList(r11);
        for (Certificate certificate2 : list) {
            arrayList2.add(b(certificate2));
        }
        sb2.append(arrayList2);
        sb2.append('}');
        return sb2.toString();
    }
}
