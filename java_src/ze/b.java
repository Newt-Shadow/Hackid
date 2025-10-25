package ze;

import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Map f33633a;

    public b(X509Certificate... caCerts) {
        m.e(caCerts, "caCerts");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = caCerts.length;
        int i10 = 0;
        while (i10 < length) {
            X509Certificate x509Certificate = caCerts[i10];
            i10++;
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            m.d(subjectX500Principal, "caCert.subjectX500Principal");
            Object obj = linkedHashMap.get(subjectX500Principal);
            if (obj == null) {
                obj = new LinkedHashSet();
                linkedHashMap.put(subjectX500Principal, obj);
            }
            ((Set) obj).add(x509Certificate);
        }
        this.f33633a = linkedHashMap;
    }

    @Override // ze.e
    public X509Certificate a(X509Certificate cert) {
        boolean z10;
        m.e(cert, "cert");
        Set set = (Set) this.f33633a.get(cert.getIssuerX500Principal());
        Object obj = null;
        if (set == null) {
            return null;
        }
        Iterator it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            try {
                cert.verify(((X509Certificate) next).getPublicKey());
                z10 = true;
                continue;
            } catch (Exception unused) {
                z10 = false;
                continue;
            }
            if (z10) {
                obj = next;
                break;
            }
        }
        return (X509Certificate) obj;
    }

    public boolean equals(Object obj) {
        if (obj != this && (!(obj instanceof b) || !m.a(((b) obj).f33633a, this.f33633a))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f33633a.hashCode();
    }
}
