package d3;

import b3.x1;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.plugin.platform.PlatformPlugin;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f14574a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f14575b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14576c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, PlatformPlugin.DEFAULT_SYSTEM_UI, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, Base64Utils.IO_BUFFER_SIZE, 6144, 7680};

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 6
            r4 = 7
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4a
            r2 = -1
            if (r1 == r2) goto L32
            r2 = 31
            if (r1 == r2) goto L21
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L58
        L21:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
            goto L42
        L32:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
        L42:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = r5
            goto L5d
        L4a:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L58:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
        L5d:
            if (r0 == 0) goto L63
            int r7 = r7 * 16
            int r7 = r7 / 14
        L63:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: d3.q0.a(byte[]):int");
    }

    private static y4.d0 b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new y4.d0(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(copyOf)) {
            for (int i10 = 0; i10 < copyOf.length - 1; i10 += 2) {
                byte b10 = copyOf[i10];
                int i11 = i10 + 1;
                copyOf[i10] = copyOf[i11];
                copyOf[i11] = b10;
            }
        }
        y4.d0 d0Var = new y4.d0(copyOf);
        if (copyOf[0] == 31) {
            y4.d0 d0Var2 = new y4.d0(copyOf);
            while (d0Var2.b() >= 16) {
                d0Var2.r(2);
                d0Var.f(d0Var2.h(14), 14);
            }
        }
        d0Var.n(copyOf);
        return d0Var;
    }

    private static boolean c(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 != -2 && b10 != -1) {
            return false;
        }
        return true;
    }

    public static boolean d(int i10) {
        return i10 == 2147385345 || i10 == -25230976 || i10 == 536864768 || i10 == -14745368;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        int position = byteBuffer.position();
        byte b12 = byteBuffer.get(position);
        if (b12 != -2) {
            if (b12 != -1) {
                if (b12 != 31) {
                    i10 = (byteBuffer.get(position + 4) & 1) << 6;
                    b10 = byteBuffer.get(position + 5);
                } else {
                    i10 = (byteBuffer.get(position + 5) & 7) << 4;
                    b11 = byteBuffer.get(position + 6);
                }
            } else {
                i10 = (byteBuffer.get(position + 4) & 7) << 4;
                b11 = byteBuffer.get(position + 7);
            }
            i11 = b11 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (byteBuffer.get(position + 5) & 1) << 6;
        b10 = byteBuffer.get(position + 4);
        i11 = b10 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static int f(byte[] bArr) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 != -1) {
                if (b12 != 31) {
                    i10 = (bArr[4] & 1) << 6;
                    b10 = bArr[5];
                } else {
                    i10 = (bArr[5] & 7) << 4;
                    b11 = bArr[6];
                }
            } else {
                i10 = (bArr[4] & 7) << 4;
                b11 = bArr[7];
            }
            i11 = b11 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (bArr[5] & 1) << 6;
        b10 = bArr[4];
        i11 = b10 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static x1 g(byte[] bArr, String str, String str2, f3.m mVar) {
        int i10;
        int i11;
        y4.d0 b10 = b(bArr);
        b10.r(60);
        int i12 = f14574a[b10.h(6)];
        int i13 = f14575b[b10.h(4)];
        int h10 = b10.h(5);
        int[] iArr = f14576c;
        if (h10 >= iArr.length) {
            i10 = -1;
        } else {
            i10 = (iArr[h10] * 1000) / 2;
        }
        b10.r(10);
        if (b10.h(2) > 0) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        return new x1.b().U(str).g0("audio/vnd.dts").I(i10).J(i12 + i11).h0(i13).O(mVar).X(str2).G();
    }
}
