package q9;

import d9.f;
import j9.e;
import java.util.Map;
import l9.d;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final l9.c f28637a = new l9.c(l9.a.f25384o);

    private int a(byte[] bArr, int i10, int i11, int i12, int i13) {
        int i14;
        int i15 = i11 + i12;
        if (i13 == 0) {
            i14 = 1;
        } else {
            i14 = 2;
        }
        int[] iArr = new int[i15 / i14];
        for (int i16 = 0; i16 < i15; i16++) {
            if (i13 == 0 || i16 % 2 == i13 - 1) {
                iArr[i16 / i14] = bArr[i16 + i10] & ForkServer.ERROR;
            }
        }
        try {
            int a10 = this.f28637a.a(iArr, i12 / i14);
            for (int i17 = 0; i17 < i11; i17++) {
                if (i13 == 0 || i17 % 2 == i13 - 1) {
                    bArr[i17 + i10] = (byte) iArr[i17 / i14];
                }
            }
            return a10;
        } catch (d unused) {
            throw d9.d.a();
        }
    }

    public e b(j9.b bVar, Map map) {
        int a10;
        byte[] bArr;
        byte[] a11 = new a(bVar).a();
        int a12 = a(a11, 0, 10, 10, 0);
        int i10 = a11[0] & 15;
        if (i10 != 2 && i10 != 3 && i10 != 4) {
            if (i10 == 5) {
                a10 = a12 + a(a11, 20, 68, 56, 1) + a(a11, 20, 68, 56, 2);
                bArr = new byte[78];
            } else {
                throw f.a();
            }
        } else {
            a10 = a12 + a(a11, 20, 84, 40, 1) + a(a11, 20, 84, 40, 2);
            bArr = new byte[94];
        }
        System.arraycopy(a11, 0, bArr, 0, 10);
        System.arraycopy(a11, 20, bArr, 10, bArr.length - 10);
        e a13 = b.a(bArr, i10);
        a13.n(Integer.valueOf(a10));
        return a13;
    }
}
