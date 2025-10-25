package ze;

import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: c  reason: collision with root package name */
    public static final C0387a f33631c = new C0387a(null);

    /* renamed from: b  reason: collision with root package name */
    private final e f33632b;

    /* renamed from: ze.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0387a {
        private C0387a() {
        }

        public /* synthetic */ C0387a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(e trustRootIndex) {
        m.e(trustRootIndex, "trustRootIndex");
        this.f33632b = trustRootIndex;
    }

    private final boolean b(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!m.a(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // ze.c
    public List a(List chain, String hostname) {
        m.e(chain, "chain");
        m.e(hostname, "hostname");
        ArrayDeque arrayDeque = new ArrayDeque(chain);
        ArrayList arrayList = new ArrayList();
        Object removeFirst = arrayDeque.removeFirst();
        m.d(removeFirst, "queue.removeFirst()");
        arrayList.add(removeFirst);
        int i10 = 0;
        boolean z10 = false;
        while (i10 < 9) {
            i10++;
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate a10 = this.f33632b.a(x509Certificate);
            if (a10 != null) {
                if (arrayList.size() > 1 || !m.a(x509Certificate, a10)) {
                    arrayList.add(a10);
                }
                if (b(a10, a10)) {
                    return arrayList;
                }
                z10 = true;
            } else {
                Iterator it = arrayDeque.iterator();
                m.d(it, "queue.iterator()");
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next != null) {
                        X509Certificate x509Certificate2 = (X509Certificate) next;
                        if (b(x509Certificate, x509Certificate2)) {
                            it.remove();
                            arrayList.add(x509Certificate2);
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                    }
                }
                if (z10) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException(m.l("Failed to find a trusted cert that signed ", x509Certificate));
            }
        }
        throw new SSLPeerUnverifiedException(m.l("Certificate chain too long: ", arrayList));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof a) && m.a(((a) obj).f33632b, this.f33632b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f33632b.hashCode();
    }
}
