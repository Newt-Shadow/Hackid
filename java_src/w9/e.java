package w9;

import io.flutter.Build;
import java.math.BigInteger;
import java.util.Arrays;
/* loaded from: classes.dex */
abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f31980a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f31981b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: c  reason: collision with root package name */
    private static final BigInteger[] f31982c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31983a;

        static {
            int[] iArr = new int[b.values().length];
            f31983a = iArr;
            try {
                iArr[b.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31983a[b.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31983a[b.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31983a[b.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31983a[b.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31983a[b.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum b {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f31982c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = valueOf;
        int i10 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = f31982c;
            if (i10 < bigIntegerArr2.length) {
                bigIntegerArr2[i10] = bigIntegerArr2[i10 - 1].multiply(valueOf);
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
        if (r11 == 924) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
        if (r8 >= r12[0]) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
        if (r12[r8] >= 900) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004f, code lost:
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
        if (r13 >= 6) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0053, code lost:
        r14.a((byte) (r6 >> ((5 - r13) * 8)));
        r13 = r13 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(int r11, int[] r12, int r13, j9.h r14) {
        /*
            r0 = 0
            r1 = r0
        L2:
            r2 = r12[r0]
            if (r13 >= r2) goto L8a
            if (r1 != 0) goto L8a
        L8:
            r2 = r12[r0]
            r3 = 927(0x39f, float:1.299E-42)
            r4 = 1
            if (r13 >= r2) goto L1c
            r5 = r12[r13]
            if (r5 != r3) goto L1c
            int r13 = r13 + 1
            r2 = r12[r13]
            r14.f(r2)
            int r13 = r13 + r4
            goto L8
        L1c:
            if (r13 >= r2) goto L87
            r2 = r12[r13]
            r5 = 900(0x384, float:1.261E-42)
            if (r2 < r5) goto L26
            goto L87
        L26:
            r6 = 0
            r2 = r0
        L29:
            r8 = 900(0x384, double:4.447E-321)
            long r6 = r6 * r8
            int r8 = r13 + 1
            r13 = r12[r13]
            long r9 = (long) r13
            long r6 = r6 + r9
            int r2 = r2 + r4
            r13 = 5
            if (r2 >= r13) goto L41
            r9 = r12[r0]
            if (r8 >= r9) goto L41
            r9 = r12[r8]
            if (r9 < r5) goto L3f
            goto L41
        L3f:
            r13 = r8
            goto L29
        L41:
            if (r2 != r13) goto L61
            r13 = 924(0x39c, float:1.295E-42)
            if (r11 == r13) goto L4f
            r13 = r12[r0]
            if (r8 >= r13) goto L61
            r13 = r12[r8]
            if (r13 >= r5) goto L61
        L4f:
            r13 = r0
        L50:
            r2 = 6
            if (r13 >= r2) goto L84
            int r2 = 5 - r13
            int r2 = r2 * 8
            long r2 = r6 >> r2
            int r2 = (int) r2
            byte r2 = (byte) r2
            r14.a(r2)
            int r13 = r13 + 1
            goto L50
        L61:
            int r8 = r8 - r2
        L62:
            r13 = r12[r0]
            if (r8 >= r13) goto L84
            if (r1 != 0) goto L84
            int r13 = r8 + 1
            r2 = r12[r8]
            if (r2 >= r5) goto L74
            byte r2 = (byte) r2
            r14.a(r2)
            r8 = r13
            goto L62
        L74:
            if (r2 != r3) goto L7f
            int r2 = r13 + 1
            r13 = r12[r13]
            r14.f(r13)
            r8 = r2
            goto L62
        L7f:
            int r13 = r13 + (-1)
            r8 = r13
            r1 = r4
            goto L62
        L84:
            r13 = r8
            goto L2
        L87:
            r1 = r4
            goto L2
        L8a:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: w9.e.a(int, int[], int, j9.h):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j9.e b(int[] iArr, String str) {
        int i10;
        j9.h hVar = new j9.h(iArr.length * 2);
        int g10 = g(iArr, 1, hVar);
        v9.c cVar = new v9.c();
        while (g10 < iArr[0]) {
            int i11 = g10 + 1;
            int i12 = iArr[g10];
            if (i12 != 913) {
                switch (i12) {
                    case 900:
                        g10 = g(iArr, i11, hVar);
                        break;
                    case 901:
                        g10 = a(i12, iArr, i11, hVar);
                        break;
                    case 902:
                        g10 = f(iArr, i11, hVar);
                        break;
                    default:
                        switch (i12) {
                            case 922:
                            case 923:
                                throw d9.f.a();
                            case 924:
                                g10 = a(i12, iArr, i11, hVar);
                                break;
                            case 925:
                                i10 = i11 + 1;
                                g10 = i10;
                                break;
                            case 926:
                                i10 = i11 + 2;
                                g10 = i10;
                                break;
                            case 927:
                                g10 = i11 + 1;
                                hVar.f(iArr[i11]);
                                break;
                            case 928:
                                g10 = d(iArr, i11, cVar);
                                break;
                            default:
                                g10 = g(iArr, i11 - 1, hVar);
                                break;
                        }
                }
            } else {
                g10 = i11 + 1;
                hVar.b((char) iArr[i11]);
            }
        }
        if (hVar.h() && cVar.a() == null) {
            throw d9.f.a();
        }
        j9.e eVar = new j9.e(null, hVar.toString(), null, str);
        eVar.p(cVar);
        return eVar;
    }

    private static String c(int[] iArr, int i10) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i11 = 0; i11 < i10; i11++) {
            bigInteger = bigInteger.add(f31982c[(i10 - i11) - 1].multiply(BigInteger.valueOf(iArr[i11])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw d9.f.a();
    }

    static int d(int[] iArr, int i10, v9.c cVar) {
        int i11;
        int i12;
        if (i10 + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i13 = 0;
            while (i13 < 2) {
                iArr2[i13] = iArr[i10];
                i13++;
                i10++;
            }
            String c10 = c(iArr2, 2);
            if (c10.isEmpty()) {
                cVar.k(0);
            } else {
                try {
                    cVar.k(Integer.parseInt(c10));
                } catch (NumberFormatException unused) {
                    throw d9.f.a();
                }
            }
            StringBuilder sb2 = new StringBuilder();
            while (i10 < iArr[0] && i10 < iArr.length && (i12 = iArr[i10]) != 922 && i12 != 923) {
                sb2.append(String.format("%03d", Integer.valueOf(i12)));
                i10++;
            }
            if (sb2.length() != 0) {
                cVar.e(sb2.toString());
                if (iArr[i10] == 923) {
                    i11 = i10 + 1;
                } else {
                    i11 = -1;
                }
                while (i10 < iArr[0]) {
                    int i14 = iArr[i10];
                    if (i14 != 922) {
                        if (i14 == 923) {
                            int i15 = i10 + 1;
                            switch (iArr[i15]) {
                                case 0:
                                    j9.h hVar = new j9.h();
                                    i10 = g(iArr, i15 + 1, hVar);
                                    cVar.f(hVar.toString());
                                    continue;
                                case 1:
                                    j9.h hVar2 = new j9.h();
                                    i10 = f(iArr, i15 + 1, hVar2);
                                    try {
                                        cVar.j(Integer.parseInt(hVar2.toString()));
                                        continue;
                                    } catch (NumberFormatException unused2) {
                                        throw d9.f.a();
                                    }
                                case 2:
                                    j9.h hVar3 = new j9.h();
                                    i10 = f(iArr, i15 + 1, hVar3);
                                    try {
                                        cVar.m(Long.parseLong(hVar3.toString()));
                                        continue;
                                    } catch (NumberFormatException unused3) {
                                        throw d9.f.a();
                                    }
                                case 3:
                                    j9.h hVar4 = new j9.h();
                                    i10 = g(iArr, i15 + 1, hVar4);
                                    cVar.l(hVar4.toString());
                                    continue;
                                case 4:
                                    j9.h hVar5 = new j9.h();
                                    i10 = g(iArr, i15 + 1, hVar5);
                                    cVar.c(hVar5.toString());
                                    continue;
                                case 5:
                                    j9.h hVar6 = new j9.h();
                                    i10 = f(iArr, i15 + 1, hVar6);
                                    try {
                                        cVar.g(Long.parseLong(hVar6.toString()));
                                        continue;
                                    } catch (NumberFormatException unused4) {
                                        throw d9.f.a();
                                    }
                                case 6:
                                    j9.h hVar7 = new j9.h();
                                    i10 = f(iArr, i15 + 1, hVar7);
                                    try {
                                        cVar.d(Integer.parseInt(hVar7.toString()));
                                        continue;
                                    } catch (NumberFormatException unused5) {
                                        throw d9.f.a();
                                    }
                                default:
                                    throw d9.f.a();
                            }
                        } else {
                            throw d9.f.a();
                        }
                    } else {
                        i10++;
                        cVar.h(true);
                    }
                }
                if (i11 != -1) {
                    int i16 = i10 - i11;
                    if (cVar.b()) {
                        i16--;
                    }
                    if (i16 > 0) {
                        cVar.i(Arrays.copyOfRange(iArr, i11, i16 + i11));
                    }
                }
                return i10;
            }
            throw d9.f.a();
        }
        throw d9.f.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static b e(int[] iArr, int[] iArr2, int i10, j9.h hVar, b bVar) {
        b bVar2;
        int i11;
        char c10;
        char c11;
        b bVar3;
        b bVar4 = bVar;
        b bVar5 = bVar4;
        b bVar6 = bVar5;
        int i12 = 0;
        while (i12 < i10) {
            int i13 = iArr[i12];
            char c12 = ' ';
            switch (a.f31983a[bVar5.ordinal()]) {
                case 1:
                    if (i13 < 26) {
                        i11 = i13 + 65;
                        c10 = (char) i11;
                        b bVar7 = bVar6;
                        bVar6 = bVar5;
                        c11 = c10;
                        bVar3 = bVar7;
                        break;
                    } else {
                        if (i13 != 900) {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 27:
                                        bVar4 = b.LOWER;
                                        break;
                                    case Build.API_LEVELS.API_28 /* 28 */:
                                        bVar4 = b.MIXED;
                                        break;
                                    case 29:
                                        bVar2 = b.PUNCT_SHIFT;
                                        c12 = 0;
                                        b bVar8 = bVar2;
                                        bVar6 = bVar5;
                                        bVar5 = bVar8;
                                        break;
                                }
                                bVar3 = bVar6;
                                bVar6 = bVar5;
                                c11 = c12;
                                break;
                            } else {
                                hVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                            bVar3 = bVar6;
                            bVar6 = bVar5;
                            c11 = c12;
                        } else {
                            bVar4 = b.ALPHA;
                        }
                        c12 = 0;
                        bVar5 = bVar4;
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = c12;
                    }
                case 2:
                    if (i13 < 26) {
                        i11 = i13 + 97;
                        c10 = (char) i11;
                        b bVar72 = bVar6;
                        bVar6 = bVar5;
                        c11 = c10;
                        bVar3 = bVar72;
                        break;
                    } else {
                        if (i13 != 900) {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 27:
                                        bVar2 = b.ALPHA_SHIFT;
                                        c12 = 0;
                                        b bVar82 = bVar2;
                                        bVar6 = bVar5;
                                        bVar5 = bVar82;
                                        break;
                                    case Build.API_LEVELS.API_28 /* 28 */:
                                        bVar4 = b.MIXED;
                                        break;
                                    case 29:
                                        bVar2 = b.PUNCT_SHIFT;
                                        c12 = 0;
                                        b bVar822 = bVar2;
                                        bVar6 = bVar5;
                                        bVar5 = bVar822;
                                        break;
                                }
                                bVar3 = bVar6;
                                bVar6 = bVar5;
                                c11 = c12;
                                break;
                            } else {
                                hVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                            bVar3 = bVar6;
                            bVar6 = bVar5;
                            c11 = c12;
                        } else {
                            bVar4 = b.ALPHA;
                        }
                        c12 = 0;
                        bVar5 = bVar4;
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = c12;
                    }
                case 3:
                    if (i13 < 25) {
                        c10 = f31981b[i13];
                        b bVar722 = bVar6;
                        bVar6 = bVar5;
                        c11 = c10;
                        bVar3 = bVar722;
                        break;
                    } else {
                        if (i13 != 900) {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 25:
                                        bVar4 = b.PUNCT;
                                        c12 = 0;
                                        bVar5 = bVar4;
                                        break;
                                    case 27:
                                        bVar4 = b.LOWER;
                                        c12 = 0;
                                        bVar5 = bVar4;
                                        break;
                                    case 29:
                                        bVar2 = b.PUNCT_SHIFT;
                                        c12 = 0;
                                        b bVar8222 = bVar2;
                                        bVar6 = bVar5;
                                        bVar5 = bVar8222;
                                        break;
                                }
                                bVar3 = bVar6;
                                bVar6 = bVar5;
                                c11 = c12;
                                break;
                            } else {
                                hVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                            bVar3 = bVar6;
                            bVar6 = bVar5;
                            c11 = c12;
                        }
                        bVar4 = b.ALPHA;
                        c12 = 0;
                        bVar5 = bVar4;
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = c12;
                    }
                case 4:
                    if (i13 < 29) {
                        c10 = f31980a[i13];
                        b bVar7222 = bVar6;
                        bVar6 = bVar5;
                        c11 = c10;
                        bVar3 = bVar7222;
                        break;
                    } else {
                        if (i13 != 29 && i13 != 900) {
                            if (i13 == 913) {
                                hVar.b((char) iArr2[i12]);
                            }
                        } else {
                            bVar4 = b.ALPHA;
                            bVar5 = bVar4;
                        }
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = 0;
                        break;
                    }
                case 5:
                    if (i13 < 26) {
                        c11 = (char) (i13 + 65);
                        bVar3 = bVar6;
                        break;
                    } else {
                        if (i13 != 26) {
                            if (i13 != 900) {
                                c12 = 0;
                            } else {
                                bVar5 = b.ALPHA;
                                c12 = 0;
                                bVar3 = bVar6;
                                bVar6 = bVar5;
                                c11 = c12;
                                break;
                            }
                        }
                        bVar5 = bVar6;
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = c12;
                    }
                case 6:
                    if (i13 < 29) {
                        c11 = f31980a[i13];
                    } else if (i13 != 29 && i13 != 900) {
                        if (i13 == 913) {
                            hVar.b((char) iArr2[i12]);
                        }
                        c11 = 0;
                    } else {
                        bVar5 = b.ALPHA;
                        bVar3 = bVar6;
                        bVar6 = bVar5;
                        c11 = 0;
                        break;
                    }
                    bVar3 = bVar6;
                    break;
                default:
                    bVar3 = bVar6;
                    bVar6 = bVar5;
                    c11 = 0;
                    break;
            }
            if (c11 != 0) {
                hVar.b(c11);
            }
            i12++;
            bVar5 = bVar6;
            bVar6 = bVar3;
        }
        return bVar4;
    }

    private static int f(int[] iArr, int i10, j9.h hVar) {
        int[] iArr2 = new int[15];
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            int i12 = iArr[0];
            if (i10 < i12 && !z10) {
                int i13 = i10 + 1;
                int i14 = iArr[i10];
                if (i13 == i12) {
                    z10 = true;
                }
                if (i14 < 900) {
                    iArr2[i11] = i14;
                    i11++;
                } else {
                    if (i14 != 900 && i14 != 901 && i14 != 927 && i14 != 928) {
                        switch (i14) {
                        }
                    }
                    i13--;
                    z10 = true;
                }
                if ((i11 % 15 == 0 || i14 == 902 || z10) && i11 > 0) {
                    hVar.d(c(iArr2, i11));
                    i11 = 0;
                }
                i10 = i13;
            }
        }
        return i10;
    }

    private static int g(int[] iArr, int i10, j9.h hVar) {
        int i11 = iArr[0];
        int[] iArr2 = new int[(i11 - i10) * 2];
        int[] iArr3 = new int[(i11 - i10) * 2];
        b bVar = b.ALPHA;
        boolean z10 = false;
        int i12 = 0;
        while (i10 < iArr[0] && !z10) {
            int i13 = i10 + 1;
            int i14 = iArr[i10];
            if (i14 < 900) {
                iArr2[i12] = i14 / 30;
                iArr2[i12 + 1] = i14 % 30;
                i12 += 2;
            } else if (i14 != 913) {
                if (i14 != 927) {
                    if (i14 != 928) {
                        switch (i14) {
                            case 900:
                                iArr2[i12] = 900;
                                i12++;
                                break;
                            default:
                                switch (i14) {
                                }
                            case 901:
                            case 902:
                                i13--;
                                z10 = true;
                                break;
                        }
                    }
                    i13--;
                    z10 = true;
                } else {
                    b e10 = e(iArr2, iArr3, i12, hVar, bVar);
                    int i15 = i13 + 1;
                    hVar.f(iArr[i13]);
                    int i16 = iArr[0];
                    if (i15 <= i16) {
                        int[] iArr4 = new int[(i16 - i15) * 2];
                        i12 = 0;
                        bVar = e10;
                        i10 = i15;
                        iArr3 = new int[(i16 - i15) * 2];
                        iArr2 = iArr4;
                    } else {
                        throw d9.f.a();
                    }
                }
            } else {
                iArr2[i12] = 913;
                i10 = i13 + 1;
                iArr3[i12] = iArr[i13];
                i12++;
            }
            i10 = i13;
        }
        e(iArr2, iArr3, i12, hVar, bVar);
        return i10;
    }
}
