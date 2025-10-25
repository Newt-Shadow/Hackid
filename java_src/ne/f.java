package ne;

import af.g;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    public static final b f26643c = new b(null);

    /* renamed from: d  reason: collision with root package name */
    public static final f f26644d = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final Set f26645a;

    /* renamed from: b  reason: collision with root package name */
    private final ze.c f26646b;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f26647a = new ArrayList();

        public final f a() {
            Set o02;
            o02 = yc.w.o0(this.f26647a);
            return new f(o02, null, 2, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Certificate certificate) {
            kotlin.jvm.internal.m.e(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                return kotlin.jvm.internal.m.l("sha256/", b((X509Certificate) certificate).a());
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
        }

        public final af.g b(X509Certificate x509Certificate) {
            kotlin.jvm.internal.m.e(x509Certificate, "<this>");
            g.a aVar = af.g.f387d;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            kotlin.jvm.internal.m.d(encoded, "publicKey.encoded");
            return g.a.e(aVar, encoded, 0, 0, 3, null).C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ List f26649f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f26650g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List list, String str) {
            super(0);
            this.f26649f = list;
            this.f26650g = str;
        }

        @Override // id.a
        /* renamed from: b */
        public final List invoke() {
            List a10;
            int r10;
            ze.c d10 = f.this.d();
            if (d10 == null) {
                a10 = null;
            } else {
                a10 = d10.a(this.f26649f, this.f26650g);
            }
            if (a10 == null) {
                a10 = this.f26649f;
            }
            List<Certificate> list = a10;
            r10 = yc.p.r(list, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (Certificate certificate : list) {
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public f(Set pins, ze.c cVar) {
        kotlin.jvm.internal.m.e(pins, "pins");
        this.f26645a = pins;
        this.f26646b = cVar;
    }

    public final void a(String hostname, List peerCertificates) {
        kotlin.jvm.internal.m.e(hostname, "hostname");
        kotlin.jvm.internal.m.e(peerCertificates, "peerCertificates");
        b(hostname, new c(peerCertificates, hostname));
    }

    public final void b(String hostname, id.a cleanedPeerCertificatesFn) {
        kotlin.jvm.internal.m.e(hostname, "hostname");
        kotlin.jvm.internal.m.e(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Object> c10 = c(hostname);
        if (c10.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : list) {
            Iterator it = c10.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : list) {
            sb2.append("\n    ");
            sb2.append(f26643c.a(x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(hostname);
        sb2.append(":");
        for (Object obj : c10) {
            android.support.v4.media.session.b.a(obj);
            sb2.append("\n    ");
            sb2.append((Object) null);
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb3);
    }

    public final List c(String hostname) {
        List h10;
        kotlin.jvm.internal.m.e(hostname, "hostname");
        Set set = this.f26645a;
        h10 = yc.o.h();
        Iterator it = set.iterator();
        if (!it.hasNext()) {
            return h10;
        }
        android.support.v4.media.session.b.a(it.next());
        throw null;
    }

    public final ze.c d() {
        return this.f26646b;
    }

    public final f e(ze.c certificateChainCleaner) {
        kotlin.jvm.internal.m.e(certificateChainCleaner, "certificateChainCleaner");
        if (kotlin.jvm.internal.m.a(this.f26646b, certificateChainCleaner)) {
            return this;
        }
        return new f(this.f26645a, certificateChainCleaner);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (kotlin.jvm.internal.m.a(fVar.f26645a, this.f26645a) && kotlin.jvm.internal.m.a(fVar.f26646b, this.f26646b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (1517 + this.f26645a.hashCode()) * 41;
        ze.c cVar = this.f26646b;
        if (cVar != null) {
            i10 = cVar.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public /* synthetic */ f(Set set, ze.c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i10 & 2) != 0 ? null : cVar);
    }
}
