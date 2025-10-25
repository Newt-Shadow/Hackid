package ze;

import af.c1;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.m;
import rd.b0;
import rd.y;
import yc.o;
import yc.w;
/* loaded from: classes2.dex */
public final class d implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final d f33635a = new d();

    private d() {
    }

    private final String b(String str) {
        if (d(str)) {
            Locale US = Locale.US;
            m.d(US, "US");
            String lowerCase = str.toLowerCase(US);
            m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        return str;
    }

    private final List c(X509Certificate x509Certificate, int i10) {
        List h10;
        Object obj;
        List h11;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                h11 = o.h();
                return h11;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && m.a(list.get(0), Integer.valueOf(i10)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            h10 = o.h();
            return h10;
        }
    }

    private final boolean d(String str) {
        if (str.length() != ((int) c1.b(str, 0, 0, 3, null))) {
            return false;
        }
        return true;
    }

    private final boolean f(String str, String str2) {
        boolean z10;
        boolean H;
        boolean w10;
        boolean z11;
        boolean H2;
        boolean w11;
        boolean w12;
        boolean w13;
        boolean N;
        boolean H3;
        int Y;
        boolean w14;
        int e02;
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            H = y.H(str, ".", false, 2, null);
            if (!H) {
                w10 = y.w(str, "..", false, 2, null);
                if (!w10) {
                    if (str2 != null && str2.length() != 0) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (!z11) {
                        H2 = y.H(str2, ".", false, 2, null);
                        if (!H2) {
                            w11 = y.w(str2, "..", false, 2, null);
                            if (!w11) {
                                w12 = y.w(str, ".", false, 2, null);
                                if (!w12) {
                                    str = m.l(str, ".");
                                }
                                String str3 = str;
                                w13 = y.w(str2, ".", false, 2, null);
                                if (!w13) {
                                    str2 = m.l(str2, ".");
                                }
                                String b10 = b(str2);
                                N = b0.N(b10, "*", false, 2, null);
                                if (N) {
                                    H3 = y.H(b10, "*.", false, 2, null);
                                    if (H3) {
                                        Y = b0.Y(b10, '*', 1, false, 4, null);
                                        if (Y != -1 || str3.length() < b10.length() || m.a("*.", b10)) {
                                            return false;
                                        }
                                        String substring = b10.substring(1);
                                        m.d(substring, "this as java.lang.String).substring(startIndex)");
                                        w14 = y.w(str3, substring, false, 2, null);
                                        if (!w14) {
                                            return false;
                                        }
                                        int length = str3.length() - substring.length();
                                        if (length > 0) {
                                            e02 = b0.e0(str3, '.', length - 1, false, 4, null);
                                            if (e02 != -1) {
                                                return false;
                                            }
                                        }
                                        return true;
                                    }
                                } else {
                                    return m.a(str3, b10);
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean g(String str, X509Certificate x509Certificate) {
        String b10 = b(str);
        List<String> c10 = c(x509Certificate, 2);
        if ((c10 instanceof Collection) && c10.isEmpty()) {
            return false;
        }
        for (String str2 : c10) {
            if (f33635a.f(b10, str2)) {
                return true;
            }
        }
        return false;
    }

    private final boolean h(String str, X509Certificate x509Certificate) {
        String e10 = oe.a.e(str);
        List<String> c10 = c(x509Certificate, 7);
        if ((c10 instanceof Collection) && c10.isEmpty()) {
            return false;
        }
        for (String str2 : c10) {
            if (m.a(e10, oe.a.e(str2))) {
                return true;
            }
        }
        return false;
    }

    public final List a(X509Certificate certificate) {
        List c02;
        m.e(certificate, "certificate");
        c02 = w.c0(c(certificate, 7), c(certificate, 2));
        return c02;
    }

    public final boolean e(String host, X509Certificate certificate) {
        m.e(host, "host");
        m.e(certificate, "certificate");
        if (oe.d.i(host)) {
            return h(host, certificate);
        }
        return g(host, certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String host, SSLSession session) {
        Certificate certificate;
        m.e(host, "host");
        m.e(session, "session");
        if (d(host)) {
            try {
                certificate = session.getPeerCertificates()[0];
                if (certificate == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
            } catch (SSLException unused) {
                return false;
            }
        }
        return e(host, (X509Certificate) certificate);
    }
}
