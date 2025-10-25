package f3;

import android.net.Uri;
import android.text.TextUtils;
import f3.b0;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.mime.MimeTypes;
import x4.j;
import x4.n;
import y4.q0;
/* loaded from: classes.dex */
public final class k0 implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final j.a f15705a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15706b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15707c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f15708d;

    public k0(String str, boolean z10, j.a aVar) {
        boolean z11;
        if (z10 && TextUtils.isEmpty(str)) {
            z11 = false;
        } else {
            z11 = true;
        }
        y4.a.a(z11);
        this.f15705a = aVar;
        this.f15706b = str;
        this.f15707c = z10;
        this.f15708d = new HashMap();
    }

    private static byte[] c(j.a aVar, String str, byte[] bArr, Map map) {
        x4.l0 l0Var = new x4.l0(aVar.a());
        x4.n a10 = new n.b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        x4.n nVar = a10;
        while (true) {
            try {
                x4.l lVar = new x4.l(l0Var, nVar);
                try {
                    byte[] T0 = q0.T0(lVar);
                    q0.n(lVar);
                    return T0;
                } catch (x4.a0 e10) {
                    String d10 = d(e10, i10);
                    if (d10 != null) {
                        i10++;
                        nVar = nVar.a().j(d10).a();
                        q0.n(lVar);
                    } else {
                        throw e10;
                    }
                }
            } catch (Exception e11) {
                throw new n0(a10, (Uri) y4.a.e(l0Var.r()), l0Var.k(), l0Var.q(), e11);
            }
        }
    }

    private static String d(x4.a0 a0Var, int i10) {
        boolean z10;
        Map map;
        List list;
        int i11 = a0Var.f32270d;
        if ((i11 == 307 || i11 == 308) && i10 < 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 || (map = a0Var.f32272f) == null || (list = (List) map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    @Override // f3.m0
    public byte[] a(UUID uuid, b0.a aVar) {
        String str;
        String b10 = aVar.b();
        if (this.f15707c || TextUtils.isEmpty(b10)) {
            b10 = this.f15706b;
        }
        if (!TextUtils.isEmpty(b10)) {
            HashMap hashMap = new HashMap();
            UUID uuid2 = b3.s.f4355e;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else if (b3.s.f4353c.equals(uuid)) {
                str = "application/json";
            } else {
                str = MimeTypes.OCTET_STREAM;
            }
            hashMap.put(HttpHeaders.CONTENT_TYPE, str);
            if (uuid2.equals(uuid)) {
                hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.f15708d) {
                hashMap.putAll(this.f15708d);
            }
            return c(this.f15705a, b10, aVar.a(), hashMap);
        }
        throw new n0(new n.b().i(Uri.EMPTY).a(), Uri.EMPTY, o6.r.k(), 0L, new IllegalStateException("No license URL"));
    }

    @Override // f3.m0
    public byte[] b(UUID uuid, b0.d dVar) {
        return c(this.f15705a, dVar.b() + "&signedRequest=" + q0.D(dVar.a()), null, Collections.emptyMap());
    }

    public void e(String str, String str2) {
        y4.a.e(str);
        y4.a.e(str2);
        synchronized (this.f15708d) {
            this.f15708d.put(str, str2);
        }
    }
}
