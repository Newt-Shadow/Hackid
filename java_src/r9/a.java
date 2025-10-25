package r9;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public final class a extends k {

    /* renamed from: d  reason: collision with root package name */
    static final char[] f28992d = "0123456789-$:/.+ABCD".toCharArray();

    /* renamed from: e  reason: collision with root package name */
    static final int[] f28993e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: f  reason: collision with root package name */
    private static final char[] f28994f = {'A', 'B', 'C', 'D'};

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f28995a = new StringBuilder(20);

    /* renamed from: b  reason: collision with root package name */
    private int[] f28996b = new int[80];

    /* renamed from: c  reason: collision with root package name */
    private int f28997c = 0;

    static boolean i(char[] cArr, char c10) {
        if (cArr != null) {
            for (char c11 : cArr) {
                if (c11 == c10) {
                    return true;
                }
            }
        }
        return false;
    }

    private void j(int i10) {
        int[] iArr = this.f28996b;
        int i11 = this.f28997c;
        iArr[i11] = i10;
        int i12 = i11 + 1;
        this.f28997c = i12;
        if (i12 >= iArr.length) {
            int[] iArr2 = new int[i12 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i12);
            this.f28996b = iArr2;
        }
    }

    private int k() {
        for (int i10 = 1; i10 < this.f28997c; i10 += 2) {
            int m10 = m(i10);
            if (m10 != -1 && i(f28994f, f28992d[m10])) {
                int i11 = 0;
                for (int i12 = i10; i12 < i10 + 7; i12++) {
                    i11 += this.f28996b[i12];
                }
                if (i10 == 1 || this.f28996b[i10 - 1] >= i11 / 2) {
                    return i10;
                }
            }
        }
        throw d9.j.a();
    }

    private void l(j9.a aVar) {
        int i10 = 0;
        this.f28997c = 0;
        int f10 = aVar.f(0);
        int i11 = aVar.i();
        if (f10 < i11) {
            boolean z10 = true;
            while (f10 < i11) {
                if (aVar.c(f10) != z10) {
                    i10++;
                } else {
                    j(i10);
                    z10 = !z10;
                    i10 = 1;
                }
                f10++;
            }
            j(i10);
            return;
        }
        throw d9.j.a();
    }

    private int m(int i10) {
        int i11;
        int i12 = i10 + 7;
        if (i12 >= this.f28997c) {
            return -1;
        }
        int[] iArr = this.f28996b;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        int i15 = Integer.MAX_VALUE;
        int i16 = 0;
        for (int i17 = i10; i17 < i12; i17 += 2) {
            int i18 = iArr[i17];
            if (i18 < i15) {
                i15 = i18;
            }
            if (i18 > i16) {
                i16 = i18;
            }
        }
        int i19 = (i15 + i16) / 2;
        int i20 = 0;
        for (int i21 = i10 + 1; i21 < i12; i21 += 2) {
            int i22 = iArr[i21];
            if (i22 < i13) {
                i13 = i22;
            }
            if (i22 > i20) {
                i20 = i22;
            }
        }
        int i23 = (i13 + i20) / 2;
        int i24 = 128;
        int i25 = 0;
        for (int i26 = 0; i26 < 7; i26++) {
            if ((i26 & 1) == 0) {
                i11 = i19;
            } else {
                i11 = i23;
            }
            i24 >>= 1;
            if (iArr[i10 + i26] > i11) {
                i25 |= i24;
            }
        }
        while (true) {
            int[] iArr2 = f28993e;
            if (i14 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i14] == i25) {
                return i14;
            }
            i14++;
        }
    }

    private void n(int i10) {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.f28995a.length() - 1;
        int i11 = i10;
        int i12 = 0;
        while (true) {
            if (i12 > length) {
                break;
            }
            int i13 = f28993e[this.f28995a.charAt(i12)];
            for (int i14 = 6; i14 >= 0; i14--) {
                int i15 = (i14 & 1) + ((i13 & 1) * 2);
                iArr[i15] = iArr[i15] + this.f28996b[i11 + i14];
                iArr2[i15] = iArr2[i15] + 1;
                i13 >>= 1;
            }
            i11 += 8;
            i12++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i16 = 0; i16 < 2; i16++) {
            fArr2[i16] = 0.0f;
            int i17 = i16 + 2;
            int i18 = iArr[i17];
            int i19 = iArr2[i17];
            float f10 = ((iArr[i16] / iArr2[i16]) + (i18 / i19)) / 2.0f;
            fArr2[i17] = f10;
            fArr[i16] = f10;
            fArr[i17] = ((i18 * 2.0f) + 1.5f) / i19;
        }
        int i20 = i10;
        for (int i21 = 0; i21 <= length; i21++) {
            int i22 = f28993e[this.f28995a.charAt(i21)];
            for (int i23 = 6; i23 >= 0; i23--) {
                int i24 = (i23 & 1) + ((i22 & 1) * 2);
                float f11 = this.f28996b[i20 + i23];
                if (f11 >= fArr2[i24] && f11 <= fArr[i24]) {
                    i22 >>= 1;
                } else {
                    throw d9.j.a();
                }
            }
            i20 += 8;
        }
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        Arrays.fill(this.f28996b, 0);
        l(aVar);
        int k10 = k();
        this.f28995a.setLength(0);
        int i11 = k10;
        do {
            int m10 = m(i11);
            if (m10 != -1) {
                this.f28995a.append((char) m10);
                i11 += 8;
                if (this.f28995a.length() > 1 && i(f28994f, f28992d[m10])) {
                    break;
                }
            } else {
                throw d9.j.a();
            }
        } while (i11 < this.f28997c);
        int i12 = i11 - 1;
        int i13 = this.f28996b[i12];
        int i14 = 0;
        for (int i15 = -8; i15 < -1; i15++) {
            i14 += this.f28996b[i11 + i15];
        }
        if (i11 < this.f28997c && i13 < i14 / 2) {
            throw d9.j.a();
        }
        n(k10);
        for (int i16 = 0; i16 < this.f28995a.length(); i16++) {
            StringBuilder sb2 = this.f28995a;
            sb2.setCharAt(i16, f28992d[sb2.charAt(i16)]);
        }
        char charAt = this.f28995a.charAt(0);
        char[] cArr = f28994f;
        if (i(cArr, charAt)) {
            StringBuilder sb3 = this.f28995a;
            if (i(cArr, sb3.charAt(sb3.length() - 1))) {
                if (this.f28995a.length() > 3) {
                    if (map == null || !map.containsKey(d9.e.RETURN_CODABAR_START_END)) {
                        StringBuilder sb4 = this.f28995a;
                        sb4.deleteCharAt(sb4.length() - 1);
                        this.f28995a.deleteCharAt(0);
                    }
                    int i17 = 0;
                    for (int i18 = 0; i18 < k10; i18++) {
                        i17 += this.f28996b[i18];
                    }
                    float f10 = i17;
                    while (k10 < i12) {
                        i17 += this.f28996b[k10];
                        k10++;
                    }
                    float f11 = i10;
                    d9.n nVar = new d9.n(this.f28995a.toString(), null, new d9.p[]{new d9.p(f10, f11), new d9.p(i17, f11)}, d9.a.CODABAR);
                    nVar.h(d9.o.SYMBOLOGY_IDENTIFIER, "]F0");
                    return nVar;
                }
                throw d9.j.a();
            }
            throw d9.j.a();
        }
        throw d9.j.a();
    }
}
