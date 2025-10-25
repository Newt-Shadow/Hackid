package af;

import af.g;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f349a;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f350b;

    static {
        g.a aVar = g.f387d;
        f349a = aVar.c("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").l();
        f350b = aVar.c("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").l();
    }

    public static final String a(byte[] bArr, byte[] map) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        kotlin.jvm.internal.m.e(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            int i13 = i12 + 1;
            byte b11 = bArr[i12];
            int i14 = i13 + 1;
            byte b12 = bArr[i13];
            int i15 = i11 + 1;
            bArr2[i11] = map[(b10 & ForkServer.ERROR) >> 2];
            int i16 = i15 + 1;
            bArr2[i15] = map[((b10 & 3) << 4) | ((b11 & ForkServer.ERROR) >> 4)];
            int i17 = i16 + 1;
            bArr2[i16] = map[((b11 & 15) << 2) | ((b12 & ForkServer.ERROR) >> 6)];
            i11 = i17 + 1;
            bArr2[i17] = map[b12 & 63];
            i10 = i14;
        }
        int length2 = bArr.length - length;
        if (length2 != 1) {
            if (length2 == 2) {
                int i18 = i10 + 1;
                byte b13 = bArr[i10];
                byte b14 = bArr[i18];
                int i19 = i11 + 1;
                bArr2[i11] = map[(b13 & ForkServer.ERROR) >> 2];
                int i20 = i19 + 1;
                bArr2[i19] = map[((b13 & 3) << 4) | ((b14 & ForkServer.ERROR) >> 4)];
                bArr2[i20] = map[(b14 & 15) << 2];
                bArr2[i20 + 1] = 61;
            }
        } else {
            byte b15 = bArr[i10];
            int i21 = i11 + 1;
            bArr2[i11] = map[(b15 & ForkServer.ERROR) >> 2];
            int i22 = i21 + 1;
            bArr2[i21] = map[(b15 & 3) << 4];
            bArr2[i22] = 61;
            bArr2[i22 + 1] = 61;
        }
        return e1.c(bArr2);
    }

    public static /* synthetic */ String b(byte[] bArr, byte[] bArr2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bArr2 = f349a;
        }
        return a(bArr, bArr2);
    }
}
