package aa;

import java.util.Map;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final l9.c f237a = new l9.c(l9.a.f25381l);

    private int a(byte[] bArr, int i10) {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = bArr[i11] & ForkServer.ERROR;
        }
        try {
            int a10 = this.f237a.a(iArr, bArr.length - i10);
            for (int i12 = 0; i12 < i10; i12++) {
                bArr[i12] = (byte) iArr[i12];
            }
            return a10;
        } catch (l9.d unused) {
            throw d9.d.a();
        }
    }

    private j9.e b(a aVar, Map map) {
        j e10 = aVar.e();
        f d10 = aVar.d().d();
        b[] b10 = b.b(aVar.c(), e10, d10);
        int i10 = 0;
        for (b bVar : b10) {
            i10 += bVar.c();
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        for (b bVar2 : b10) {
            byte[] a10 = bVar2.a();
            int c10 = bVar2.c();
            i11 += a(a10, c10);
            int i13 = 0;
            while (i13 < c10) {
                bArr[i12] = a10[i13];
                i13++;
                i12++;
            }
        }
        j9.e a11 = d.a(bArr, e10, d10, map);
        a11.n(Integer.valueOf(i11));
        return a11;
    }

    public j9.e c(j9.b bVar, Map map) {
        d9.d e10;
        a aVar = new a(bVar);
        d9.f fVar = null;
        try {
            return b(aVar, map);
        } catch (d9.d e11) {
            e10 = e11;
            try {
                aVar.f();
                aVar.g(true);
                aVar.e();
                aVar.d();
                aVar.b();
                j9.e b10 = b(aVar, map);
                b10.p(new i(true));
                return b10;
            } catch (d9.d | d9.f unused) {
                if (fVar != null) {
                    throw fVar;
                }
                throw e10;
            }
        } catch (d9.f e12) {
            e10 = null;
            fVar = e12;
            aVar.f();
            aVar.g(true);
            aVar.e();
            aVar.d();
            aVar.b();
            j9.e b102 = b(aVar, map);
            b102.p(new i(true));
            return b102;
        }
    }
}
