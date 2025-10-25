package j9;

import java.lang.reflect.Array;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class k extends i {

    /* renamed from: e  reason: collision with root package name */
    private b f24545e;

    public k(d9.h hVar) {
        super(hVar);
    }

    private static int[][] i(byte[] bArr, int i10, int i11, int i12, int i13) {
        int i14 = 8;
        int i15 = i13 - 8;
        int i16 = i12 - 8;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i11, i10);
        int i17 = 0;
        while (i17 < i11) {
            int i18 = i17 << 3;
            if (i18 > i15) {
                i18 = i15;
            }
            int i19 = 0;
            while (i19 < i10) {
                int i20 = i19 << 3;
                if (i20 > i16) {
                    i20 = i16;
                }
                int i21 = (i18 * i12) + i20;
                int i22 = 255;
                int i23 = 0;
                int i24 = 0;
                int i25 = 0;
                while (i23 < i14) {
                    int i26 = 0;
                    while (i26 < i14) {
                        int i27 = bArr[i21 + i26] & ForkServer.ERROR;
                        i24 += i27;
                        if (i27 < i22) {
                            i22 = i27;
                        }
                        if (i27 > i25) {
                            i25 = i27;
                        }
                        i26++;
                        i14 = 8;
                    }
                    if (i25 - i22 <= 24) {
                        i23++;
                        i21 += i12;
                        i14 = 8;
                    }
                    while (true) {
                        i23++;
                        i21 += i12;
                        if (i23 < 8) {
                            int i28 = 0;
                            for (int i29 = 8; i28 < i29; i29 = 8) {
                                i24 += bArr[i21 + i28] & ForkServer.ERROR;
                                i28++;
                            }
                        }
                    }
                    i23++;
                    i21 += i12;
                    i14 = 8;
                }
                int i30 = i24 >> 6;
                if (i25 - i22 <= 24) {
                    i30 = i22 / 2;
                    if (i17 > 0 && i19 > 0) {
                        int[] iArr2 = iArr[i17 - 1];
                        int i31 = i19 - 1;
                        int i32 = ((iArr2[i19] + (iArr[i17][i31] * 2)) + iArr2[i31]) / 4;
                        if (i22 < i32) {
                            i30 = i32;
                        }
                    }
                }
                iArr[i17][i19] = i30;
                i19++;
                i14 = 8;
            }
            i17++;
            i14 = 8;
        }
        return iArr;
    }

    private static void j(byte[] bArr, int i10, int i11, int i12, int i13, int[][] iArr, b bVar) {
        int i14;
        int i15;
        int i16 = i13 - 8;
        int i17 = i12 - 8;
        for (int i18 = 0; i18 < i11; i18++) {
            int i19 = i18 << 3;
            if (i19 > i16) {
                i14 = i16;
            } else {
                i14 = i19;
            }
            int k10 = k(i18, i11 - 3);
            for (int i20 = 0; i20 < i10; i20++) {
                int i21 = i20 << 3;
                if (i21 > i17) {
                    i15 = i17;
                } else {
                    i15 = i21;
                }
                int k11 = k(i20, i10 - 3);
                int i22 = 0;
                for (int i23 = -2; i23 <= 2; i23++) {
                    int[] iArr2 = iArr[k10 + i23];
                    i22 += iArr2[k11 - 2] + iArr2[k11 - 1] + iArr2[k11] + iArr2[k11 + 1] + iArr2[2 + k11];
                }
                l(bArr, i15, i14, i22 / 25, i12, bVar);
            }
        }
    }

    private static int k(int i10, int i11) {
        if (i10 < 2) {
            return 2;
        }
        return Math.min(i10, i11);
    }

    private static void l(byte[] bArr, int i10, int i11, int i12, int i13, b bVar) {
        int i14 = (i11 * i13) + i10;
        int i15 = 0;
        while (i15 < 8) {
            for (int i16 = 0; i16 < 8; i16++) {
                if ((bArr[i14 + i16] & KotlinVersion.MAX_COMPONENT_VALUE) <= i12) {
                    bVar.q(i10 + i16, i11 + i15);
                }
            }
            i15++;
            i14 += i13;
        }
    }

    @Override // d9.b
    public d9.b a(d9.h hVar) {
        return new k(hVar);
    }

    @Override // j9.i, d9.b
    public b b() {
        b bVar = this.f24545e;
        if (bVar != null) {
            return bVar;
        }
        d9.h e10 = e();
        int d10 = e10.d();
        int a10 = e10.a();
        if (d10 >= 40 && a10 >= 40) {
            byte[] b10 = e10.b();
            int i10 = d10 >> 3;
            if ((d10 & 7) != 0) {
                i10++;
            }
            int i11 = i10;
            int i12 = a10 >> 3;
            if ((a10 & 7) != 0) {
                i12++;
            }
            int i13 = i12;
            int[][] i14 = i(b10, i11, i13, d10, a10);
            b bVar2 = new b(d10, a10);
            j(b10, i11, i13, d10, a10, i14, bVar2);
            this.f24545e = bVar2;
        } else {
            this.f24545e = super.b();
        }
        return this.f24545e;
    }
}
