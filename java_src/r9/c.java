package r9;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public final class c extends k {

    /* renamed from: e  reason: collision with root package name */
    static final int[] f28999e = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 168, 162, 138, 42};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f29000a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29001b;

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f29002c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f29003d;

    public c() {
        this(false);
    }

    private static String i(CharSequence charSequence) {
        int i10;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i11 = 0;
        while (i11 < length) {
            char charAt = charSequence.charAt(i11);
            if (charAt != '+' && charAt != '$' && charAt != '%' && charAt != '/') {
                sb2.append(charAt);
            } else {
                i11++;
                char charAt2 = charSequence.charAt(i11);
                if (charAt != '$') {
                    if (charAt != '%') {
                        if (charAt != '+') {
                            if (charAt == '/') {
                                if (charAt2 >= 'A' && charAt2 <= 'O') {
                                    i10 = charAt2 - ' ';
                                } else if (charAt2 == 'Z') {
                                    c10 = ':';
                                    sb2.append(c10);
                                } else {
                                    throw d9.f.a();
                                }
                            }
                            c10 = 0;
                            sb2.append(c10);
                        } else if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i10 = charAt2 + ' ';
                        } else {
                            throw d9.f.a();
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'E') {
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
                            } else if (charAt2 == 'W') {
                                c10 = '`';
                            } else if (charAt2 != 'X' && charAt2 != 'Y' && charAt2 != 'Z') {
                                throw d9.f.a();
                            } else {
                                c10 = 127;
                            }
                            sb2.append(c10);
                        }
                        c10 = 0;
                        sb2.append(c10);
                    }
                } else if (charAt2 >= 'A' && charAt2 <= 'Z') {
                    i10 = charAt2 - '@';
                } else {
                    throw d9.f.a();
                }
                c10 = (char) i10;
                sb2.append(c10);
            }
            i11++;
        }
        return sb2.toString();
    }

    private static int[] j(j9.a aVar, int[] iArr) {
        int i10 = aVar.i();
        int e10 = aVar.e(0);
        int length = iArr.length;
        boolean z10 = false;
        int i11 = 0;
        int i12 = e10;
        while (e10 < i10) {
            if (aVar.c(e10) != z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 == length - 1) {
                    if (l(iArr) == 148 && aVar.j(Math.max(0, i12 - ((e10 - i12) / 2)), i12, false)) {
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

    private static char k(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = f28999e;
            if (i11 < iArr.length) {
                if (iArr[i11] == i10) {
                    return "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i11);
                }
                i11++;
            } else if (i10 == 148) {
                return '*';
            } else {
                throw d9.j.a();
            }
        }
    }

    private static int l(int[] iArr) {
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            int i11 = Integer.MAX_VALUE;
            for (int i12 : iArr) {
                if (i12 < i11 && i12 > i10) {
                    i11 = i12;
                }
            }
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < length; i16++) {
                int i17 = iArr[i16];
                if (i17 > i11) {
                    i14 |= 1 << ((length - 1) - i16);
                    i13++;
                    i15 += i17;
                }
            }
            if (i13 == 3) {
                for (int i18 = 0; i18 < length && i13 > 0; i18++) {
                    int i19 = iArr[i18];
                    if (i19 > i11) {
                        i13--;
                        if (i19 * 2 >= i15) {
                            return -1;
                        }
                    }
                }
                return i14;
            } else if (i13 <= 3) {
                return -1;
            } else {
                i10 = i11;
            }
        }
    }

    @Override // r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        int[] j10;
        String sb2;
        int[] iArr = this.f29003d;
        Arrays.fill(iArr, 0);
        StringBuilder sb3 = this.f29002c;
        sb3.setLength(0);
        int e10 = aVar.e(j(aVar, iArr)[1]);
        int i11 = aVar.i();
        while (true) {
            k.g(aVar, e10, iArr);
            int l10 = l(iArr);
            if (l10 >= 0) {
                char k10 = k(l10);
                sb3.append(k10);
                int i12 = e10;
                for (int i13 : iArr) {
                    i12 += i13;
                }
                int e11 = aVar.e(i12);
                if (k10 == '*') {
                    sb3.setLength(sb3.length() - 1);
                    int i14 = 0;
                    for (int i15 : iArr) {
                        i14 += i15;
                    }
                    int i16 = (e11 - e10) - i14;
                    if (e11 != i11 && i16 * 2 < i14) {
                        throw d9.j.a();
                    }
                    if (this.f29000a) {
                        int length = sb3.length() - 1;
                        int i17 = 0;
                        for (int i18 = 0; i18 < length; i18++) {
                            i17 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(this.f29002c.charAt(i18));
                        }
                        if (sb3.charAt(length) == "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i17 % 43)) {
                            sb3.setLength(length);
                        } else {
                            throw d9.d.a();
                        }
                    }
                    if (sb3.length() != 0) {
                        if (this.f29001b) {
                            sb2 = i(sb3);
                        } else {
                            sb2 = sb3.toString();
                        }
                        float f10 = i10;
                        d9.n nVar = new d9.n(sb2, null, new d9.p[]{new d9.p((j10[1] + j10[0]) / 2.0f, f10), new d9.p(e10 + (i14 / 2.0f), f10)}, d9.a.CODE_39);
                        nVar.h(d9.o.SYMBOLOGY_IDENTIFIER, "]A0");
                        return nVar;
                    }
                    throw d9.j.a();
                }
                e10 = e11;
            } else {
                throw d9.j.a();
            }
        }
    }

    public c(boolean z10) {
        this(z10, false);
    }

    public c(boolean z10, boolean z11) {
        this.f29000a = z10;
        this.f29001b = z11;
        this.f29002c = new StringBuilder(20);
        this.f29003d = new int[9];
    }
}
