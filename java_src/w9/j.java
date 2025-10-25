package w9;

import d9.p;
import java.lang.reflect.Array;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private static final x9.a f31999a = new x9.a();

    private static c a(h hVar) {
        int[] j10;
        if (hVar == null || (j10 = hVar.j()) == null) {
            return null;
        }
        int p10 = p(j10);
        int i10 = 0;
        int i11 = 0;
        for (int i12 : j10) {
            i11 += p10 - i12;
            if (i12 > 0) {
                break;
            }
        }
        d[] d10 = hVar.d();
        for (int i13 = 0; i11 > 0 && d10[i13] == null; i13++) {
            i11--;
        }
        for (int length = j10.length - 1; length >= 0; length--) {
            int i14 = j10[length];
            i10 += p10 - i14;
            if (i14 > 0) {
                break;
            }
        }
        for (int length2 = d10.length - 1; i10 > 0 && d10[length2] == null; length2--) {
            i10--;
        }
        return hVar.a().a(i11, i10, hVar.k());
    }

    private static void b(f fVar, b[][] bVarArr) {
        b bVar = bVarArr[0][1];
        int[] a10 = bVar.a();
        int j10 = (fVar.j() * fVar.l()) - r(fVar.k());
        if (a10.length == 0) {
            if (j10 >= 1 && j10 <= 928) {
                bVar.b(j10);
                return;
            }
            throw d9.j.a();
        } else if (a10[0] != j10 && j10 >= 1 && j10 <= 928) {
            bVar.b(j10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int c(j9.b r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.e(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: w9.j.c(j9.b, int, int, boolean, int, int):int");
    }

    private static boolean d(int i10, int i11, int i12) {
        return i11 + (-2) <= i10 && i10 <= i12 + 2;
    }

    private static int e(int[] iArr, int[] iArr2, int i10) {
        if ((iArr2 == null || iArr2.length <= (i10 / 2) + 3) && i10 >= 0 && i10 <= 512) {
            return f31999a.a(iArr, i10, iArr2);
        }
        throw d9.d.a();
    }

    private static b[][] f(f fVar) {
        g[] o10;
        d[] d10;
        int c10;
        b[][] bVarArr = (b[][]) Array.newInstance(b.class, fVar.l(), fVar.j() + 2);
        for (b[] bVarArr2 : bVarArr) {
            int i10 = 0;
            while (true) {
                if (i10 < bVarArr2.length) {
                    bVarArr2[i10] = new b();
                    i10++;
                }
            }
        }
        int i11 = 0;
        for (g gVar : fVar.o()) {
            if (gVar != null) {
                for (d dVar : gVar.d()) {
                    if (dVar != null && (c10 = dVar.c()) >= 0 && c10 < bVarArr.length) {
                        bVarArr[c10][i11].b(dVar.e());
                    }
                }
            }
            i11++;
        }
        return bVarArr;
    }

    private static j9.e g(f fVar) {
        b[][] f10 = f(fVar);
        b(fVar, f10);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[fVar.l() * fVar.j()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i10 = 0; i10 < fVar.l(); i10++) {
            int i11 = 0;
            while (i11 < fVar.j()) {
                int i12 = i11 + 1;
                int[] a10 = f10[i10][i12].a();
                int j10 = (fVar.j() * i10) + i11;
                if (a10.length == 0) {
                    arrayList.add(Integer.valueOf(j10));
                } else if (a10.length == 1) {
                    iArr[j10] = a10[0];
                } else {
                    arrayList3.add(Integer.valueOf(j10));
                    arrayList2.add(a10);
                }
                i11 = i12;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size];
        for (int i13 = 0; i13 < size; i13++) {
            iArr2[i13] = (int[]) arrayList2.get(i13);
        }
        return h(fVar.k(), iArr, v9.a.b(arrayList), v9.a.b(arrayList3), iArr2);
    }

    private static j9.e h(int i10, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i11 = 100;
        while (true) {
            int i12 = i11 - 1;
            if (i11 > 0) {
                for (int i13 = 0; i13 < length; i13++) {
                    iArr[iArr3[i13]] = iArr4[i13][iArr5[i13]];
                }
                try {
                    return j(iArr, i10, iArr2);
                } catch (d9.d unused) {
                    if (length != 0) {
                        int i14 = 0;
                        while (true) {
                            if (i14 >= length) {
                                break;
                            }
                            int i15 = iArr5[i14];
                            if (i15 < iArr4[i14].length - 1) {
                                iArr5[i14] = i15 + 1;
                                break;
                            }
                            iArr5[i14] = 0;
                            if (i14 != length - 1) {
                                i14++;
                            } else {
                                throw d9.d.a();
                            }
                        }
                        i11 = i12;
                    } else {
                        throw d9.d.a();
                    }
                }
            } else {
                throw d9.d.a();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
        if (r0 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        r2 = r26;
        r6 = r27;
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
        if (r7 > r5) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
        if (r0 == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
        r8 = r5 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
        if (r3.n(r8) == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
        if (r8 == 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
        if (r8 != r5) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
        r10 = new w9.g(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008c, code lost:
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
        if (r8 != 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0092, code lost:
        r11 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0095, code lost:
        r10 = new w9.h(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0099, code lost:
        r3.q(r8, r15);
        r14 = -1;
        r13 = r9.g();
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a7, code lost:
        if (r13 > r9.e()) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a9, code lost:
        r10 = t(r3, r8, r13, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ad, code lost:
        if (r10 < 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b3, code lost:
        if (r10 <= r9.d()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b6, code lost:
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b9, code lost:
        if (r12 != r14) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
        r19 = r12;
        r11 = r13;
        r20 = r14;
        r1 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c2, code lost:
        r18 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c4, code lost:
        r19 = r12;
        r22 = r13;
        r20 = r14;
        r1 = r15;
        r10 = k(r21, r9.f(), r9.d(), r0, r18, r22, r2, r6);
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
        if (r10 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e8, code lost:
        r1.f(r11, r10);
        r2 = java.lang.Math.min(r2, r10.f());
        r6 = java.lang.Math.max(r6, r10.f());
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fe, code lost:
        r12 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0100, code lost:
        r13 = r11 + 1;
        r15 = r1;
        r14 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0107, code lost:
        r7 = r7 + 1;
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0110, code lost:
        return g(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j9.e i(j9.b r21, d9.p r22, d9.p r23, d9.p r24, d9.p r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w9.j.i(j9.b, d9.p, d9.p, d9.p, d9.p, int, int):j9.e");
    }

    private static j9.e j(int[] iArr, int i10, int[] iArr2) {
        if (iArr.length != 0) {
            int i11 = 1 << (i10 + 1);
            int e10 = e(iArr, iArr2, i11);
            w(iArr, i11);
            j9.e b10 = e.b(iArr, String.valueOf(i10));
            b10.n(Integer.valueOf(e10));
            b10.m(Integer.valueOf(iArr2.length));
            return b10;
        }
        throw d9.f.a();
    }

    private static d k(j9.b bVar, int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
        int i16;
        int d10;
        int a10;
        int c10 = c(bVar, i10, i11, z10, i12, i13);
        int[] q10 = q(bVar, i10, i11, z10, c10, i13);
        if (q10 == null) {
            return null;
        }
        int d11 = k9.a.d(q10);
        if (z10) {
            i16 = c10 + d11;
        } else {
            for (int i17 = 0; i17 < q10.length / 2; i17++) {
                int i18 = q10[i17];
                q10[i17] = q10[(q10.length - 1) - i17];
                q10[(q10.length - 1) - i17] = i18;
            }
            c10 -= d11;
            i16 = c10;
        }
        if (!d(d11, i14, i15) || (a10 = v9.a.a((d10 = i.d(q10)))) == -1) {
            return null;
        }
        return new d(c10, i16, n(d10), a10);
    }

    private static a l(h hVar, h hVar2) {
        a i10;
        a i11;
        if (hVar != null && (i10 = hVar.i()) != null) {
            if (hVar2 != null && (i11 = hVar2.i()) != null && i10.a() != i11.a() && i10.b() != i11.b() && i10.c() != i11.c()) {
                return null;
            }
            return i10;
        } else if (hVar2 == null) {
            return null;
        } else {
            return hVar2.i();
        }
    }

    private static int[] m(int i10) {
        int[] iArr = new int[8];
        int i11 = 0;
        int i12 = 7;
        while (true) {
            int i13 = i10 & 1;
            if (i13 != i11) {
                i12--;
                if (i12 < 0) {
                    return iArr;
                }
                i11 = i13;
            }
            iArr[i12] = iArr[i12] + 1;
            i10 >>= 1;
        }
    }

    private static int n(int i10) {
        return o(m(i10));
    }

    private static int o(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    private static int p(int[] iArr) {
        int i10 = -1;
        for (int i11 : iArr) {
            i10 = Math.max(i10, i11);
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0027 A[EDGE_INSN: B:27:0x0027->B:16:0x0027 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] q(j9.b r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r10 == 0) goto L9
            r3 = r2
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r5 = r10
        Lc:
            if (r10 == 0) goto L11
            if (r11 >= r9) goto L27
            goto L13
        L11:
            if (r11 < r8) goto L27
        L13:
            if (r4 >= r0) goto L27
            boolean r6 = r7.e(r11, r12)
            if (r6 != r5) goto L22
            r6 = r1[r4]
            int r6 = r6 + r2
            r1[r4] = r6
            int r11 = r11 + r3
            goto Lc
        L22:
            int r4 = r4 + 1
            r5 = r5 ^ 1
            goto Lc
        L27:
            if (r4 == r0) goto L34
            if (r10 == 0) goto L2c
            r8 = r9
        L2c:
            if (r11 != r8) goto L32
            r7 = 7
            if (r4 != r7) goto L32
            goto L34
        L32:
            r7 = 0
            return r7
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: w9.j.q(j9.b, int, int, boolean, int, int):int[]");
    }

    private static int r(int i10) {
        return 2 << i10;
    }

    private static h s(j9.b bVar, c cVar, p pVar, boolean z10, int i10, int i11) {
        int i12;
        int b10;
        h hVar = new h(cVar, z10);
        for (int i13 = 0; i13 < 2; i13++) {
            if (i13 == 0) {
                i12 = 1;
            } else {
                i12 = -1;
            }
            int i14 = i12;
            int c10 = (int) pVar.c();
            for (int d10 = (int) pVar.d(); d10 <= cVar.e() && d10 >= cVar.g(); d10 += i14) {
                d k10 = k(bVar, 0, bVar.m(), z10, c10, d10, i10, i11);
                if (k10 != null) {
                    hVar.f(d10, k10);
                    if (z10) {
                        b10 = k10.d();
                    } else {
                        b10 = k10.b();
                    }
                    c10 = b10;
                }
            }
        }
        return hVar;
    }

    private static int t(f fVar, int i10, int i11, boolean z10) {
        int i12;
        d dVar;
        d[] d10;
        int d11;
        if (z10) {
            i12 = 1;
        } else {
            i12 = -1;
        }
        int i13 = i10 - i12;
        if (u(fVar, i13)) {
            dVar = fVar.n(i13).b(i11);
        } else {
            dVar = null;
        }
        if (dVar != null) {
            if (z10) {
                return dVar.b();
            }
            return dVar.d();
        }
        d c10 = fVar.n(i10).c(i11);
        if (c10 != null) {
            if (z10) {
                return c10.d();
            }
            return c10.b();
        }
        if (u(fVar, i13)) {
            c10 = fVar.n(i13).c(i11);
        }
        if (c10 != null) {
            if (z10) {
                return c10.b();
            }
            return c10.d();
        }
        int i14 = 0;
        while (true) {
            i10 -= i12;
            if (u(fVar, i10)) {
                for (d dVar2 : fVar.n(i10).d()) {
                    if (dVar2 != null) {
                        if (z10) {
                            d11 = dVar2.b();
                        } else {
                            d11 = dVar2.d();
                        }
                        return d11 + (i12 * i14 * (dVar2.b() - dVar2.d()));
                    }
                }
                i14++;
            } else {
                c m10 = fVar.m();
                if (z10) {
                    return m10.f();
                }
                return m10.d();
            }
        }
    }

    private static boolean u(f fVar, int i10) {
        if (i10 >= 0 && i10 <= fVar.j() + 1) {
            return true;
        }
        return false;
    }

    private static f v(h hVar, h hVar2) {
        a l10;
        if ((hVar == null && hVar2 == null) || (l10 = l(hVar, hVar2)) == null) {
            return null;
        }
        return new f(l10, c.j(a(hVar), a(hVar2)));
    }

    private static void w(int[] iArr, int i10) {
        if (iArr.length >= 4) {
            int i11 = iArr[0];
            if (i11 <= iArr.length) {
                if (i11 == 0) {
                    if (i10 < iArr.length) {
                        iArr[0] = iArr.length - i10;
                        return;
                    }
                    throw d9.f.a();
                }
                return;
            }
            throw d9.f.a();
        }
        throw d9.f.a();
    }
}
