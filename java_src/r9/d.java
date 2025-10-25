package r9;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public final class d extends k {

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f29004c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    /* renamed from: d  reason: collision with root package name */
    static final int[] f29005d;

    /* renamed from: e  reason: collision with root package name */
    static final int f29006e;

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f29007a = new StringBuilder(20);

    /* renamed from: b  reason: collision with root package name */
    private final int[] f29008b = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, 404, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f29005d = iArr;
        f29006e = iArr[47];
    }

    private static void i(CharSequence charSequence) {
        int length = charSequence.length();
        j(charSequence, length - 2, 20);
        j(charSequence, length - 1, 15);
    }

    private static void j(CharSequence charSequence, int i10, int i11) {
        int i12 = 0;
        int i13 = 1;
        for (int i14 = i10 - 1; i14 >= 0; i14--) {
            i12 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i14)) * i13;
            i13++;
            if (i13 > i11) {
                i13 = 1;
            }
        }
        if (charSequence.charAt(i10) == f29004c[i12 % 47]) {
            return;
        }
        throw d9.d.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String k(CharSequence charSequence) {
        int i10;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i11 = 0;
        while (i11 < length) {
            char charAt = charSequence.charAt(i11);
            if (charAt >= 'a' && charAt <= 'd') {
                if (i11 < length - 1) {
                    i11++;
                    char charAt2 = charSequence.charAt(i11);
                    switch (charAt) {
                        case 'a':
                            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                                i10 = charAt2 - '@';
                                c10 = (char) i10;
                                break;
                            } else {
                                throw d9.f.a();
                            }
                            break;
                        case 'b':
                            if (charAt2 >= 'A' && charAt2 <= 'E') {
                                i10 = charAt2 - '&';
                            } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                                i10 = charAt2 - 11;
                            } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                                i10 = charAt2 + 16;
                            } else if (charAt2 >= 'P' && charAt2 <= 'T') {
                                i10 = charAt2 + '+';
                            } else {
                                if (charAt2 != 'U') {
                                    if (charAt2 == 'V') {
                                        c10 = '@';
                                        break;
                                    } else if (charAt2 == 'W') {
                                        c10 = '`';
                                        break;
                                    } else if (charAt2 >= 'X' && charAt2 <= 'Z') {
                                        c10 = 127;
                                        break;
                                    } else {
                                        throw d9.f.a();
                                    }
                                }
                                c10 = 0;
                                break;
                            }
                            c10 = (char) i10;
                            break;
                        case 'c':
                            if (charAt2 >= 'A' && charAt2 <= 'O') {
                                i10 = charAt2 - ' ';
                                c10 = (char) i10;
                                break;
                            } else if (charAt2 == 'Z') {
                                c10 = ':';
                                break;
                            } else {
                                throw d9.f.a();
                            }
                        case 'd':
                            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                                i10 = charAt2 + ' ';
                                c10 = (char) i10;
                                break;
                            } else {
                                throw d9.f.a();
                            }
                        default:
                            c10 = 0;
                            break;
                    }
                    sb2.append(c10);
                } else {
                    throw d9.f.a();
                }
            } else {
                sb2.append(charAt);
            }
            i11++;
        }
        return sb2.toString();
    }

    private int[] l(j9.a aVar) {
        int i10 = aVar.i();
        int e10 = aVar.e(0);
        Arrays.fill(this.f29008b, 0);
        int[] iArr = this.f29008b;
        int length = iArr.length;
        boolean z10 = false;
        int i11 = 0;
        int i12 = e10;
        while (e10 < i10) {
            if (aVar.c(e10) != z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 == length - 1) {
                    if (n(iArr) == f29006e) {
                        return new int[]{i12, e10};
                    }
                    i12 += iArr[0] + iArr[1];
                    int i13 = i11 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i13);
                    iArr[i13] = 0;
                    iArr[i11] = 0;
                    i11--;
                } else {
                    i11++;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            e10++;
        }
        throw d9.j.a();
    }

    private static char m(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = f29005d;
            if (i11 < iArr.length) {
                if (iArr[i11] == i10) {
                    return f29004c[i11];
                }
                i11++;
            } else {
                throw d9.j.a();
            }
        }
    }

    private static int n(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        int length = iArr.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int round = Math.round((iArr[i13] * 9.0f) / i10);
            if (round >= 1 && round <= 4) {
                if ((i13 & 1) == 0) {
                    for (int i14 = 0; i14 < round; i14++) {
                        i12 = (i12 << 1) | 1;
                    }
                } else {
                    i12 <<= round;
                }
            } else {
                return -1;
            }
        }
        return i12;
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        int[] l10;
        int e10 = aVar.e(l(aVar)[1]);
        int i11 = aVar.i();
        int[] iArr = this.f29008b;
        Arrays.fill(iArr, 0);
        StringBuilder sb2 = this.f29007a;
        sb2.setLength(0);
        while (true) {
            k.g(aVar, e10, iArr);
            int n10 = n(iArr);
            if (n10 >= 0) {
                char m10 = m(n10);
                sb2.append(m10);
                int i12 = e10;
                for (int i13 : iArr) {
                    i12 += i13;
                }
                int e11 = aVar.e(i12);
                if (m10 == '*') {
                    sb2.deleteCharAt(sb2.length() - 1);
                    int i14 = 0;
                    for (int i15 : iArr) {
                        i14 += i15;
                    }
                    if (e11 != i11 && aVar.c(e11)) {
                        if (sb2.length() >= 2) {
                            i(sb2);
                            sb2.setLength(sb2.length() - 2);
                            float f10 = i10;
                            d9.n nVar = new d9.n(k(sb2), null, new d9.p[]{new d9.p((l10[1] + l10[0]) / 2.0f, f10), new d9.p(e10 + (i14 / 2.0f), f10)}, d9.a.CODE_93);
                            nVar.h(d9.o.SYMBOLOGY_IDENTIFIER, "]G0");
                            return nVar;
                        }
                        throw d9.j.a();
                    }
                    throw d9.j.a();
                }
                e10 = e11;
            } else {
                throw d9.j.a();
            }
        }
    }
}
