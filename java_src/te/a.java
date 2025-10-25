package te;

import af.m0;
import af.p;
import java.util.List;
import ne.a0;
import ne.b0;
import ne.l;
import ne.m;
import ne.u;
import ne.v;
import ne.y;
import ne.z;
import org.apache.tika.metadata.HttpHeaders;
import yc.o;
/* loaded from: classes2.dex */
public final class a implements u {

    /* renamed from: a  reason: collision with root package name */
    private final m f30722a;

    public a(m cookieJar) {
        kotlin.jvm.internal.m.e(cookieJar, "cookieJar");
        this.f30722a = cookieJar;
    }

    private final String b(List list) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.q();
            }
            l lVar = (l) obj;
            if (i10 > 0) {
                sb2.append("; ");
            }
            sb2.append(lVar.i());
            sb2.append('=');
            sb2.append(lVar.n());
            i10 = i11;
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @Override // ne.u
    public a0 a(u.a chain) {
        boolean x10;
        b0 a10;
        kotlin.jvm.internal.m.e(chain, "chain");
        y b10 = chain.b();
        y.a h10 = b10.h();
        z a11 = b10.a();
        if (a11 != null) {
            v b11 = a11.b();
            if (b11 != null) {
                h10.d(HttpHeaders.CONTENT_TYPE, b11.toString());
            }
            long a12 = a11.a();
            if (a12 != -1) {
                h10.d(HttpHeaders.CONTENT_LENGTH, String.valueOf(a12));
                h10.h("Transfer-Encoding");
            } else {
                h10.d("Transfer-Encoding", "chunked");
                h10.h(HttpHeaders.CONTENT_LENGTH);
            }
        }
        boolean z10 = false;
        if (b10.d("Host") == null) {
            h10.d("Host", oe.d.Q(b10.i(), false, 1, null));
        }
        if (b10.d("Connection") == null) {
            h10.d("Connection", "Keep-Alive");
        }
        if (b10.d("Accept-Encoding") == null && b10.d("Range") == null) {
            h10.d("Accept-Encoding", "gzip");
            z10 = true;
        }
        List b12 = this.f30722a.b(b10.i());
        if (!b12.isEmpty()) {
            h10.d("Cookie", b(b12));
        }
        if (b10.d("User-Agent") == null) {
            h10.d("User-Agent", "okhttp/4.11.0");
        }
        a0 a13 = chain.a(h10.a());
        e.f(this.f30722a, b10.i(), a13.q());
        a0.a s10 = a13.w().s(b10);
        if (z10) {
            x10 = rd.y.x("gzip", a0.k(a13, HttpHeaders.CONTENT_ENCODING, null, 2, null), true);
            if (x10 && e.b(a13) && (a10 = a13.a()) != null) {
                p pVar = new p(a10.f());
                s10.l(a13.q().l().f(HttpHeaders.CONTENT_ENCODING).f(HttpHeaders.CONTENT_LENGTH).d());
                s10.b(new h(a0.k(a13, HttpHeaders.CONTENT_TYPE, null, 2, null), -1L, m0.b(pVar)));
            }
        }
        return s10.c();
    }
}
