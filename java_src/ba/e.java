package ba;

import d9.p;
import d9.q;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    private static final b f4614f = new b();

    /* renamed from: a  reason: collision with root package name */
    private final j9.b f4615a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4617c;

    /* renamed from: e  reason: collision with root package name */
    private final q f4619e;

    /* renamed from: b  reason: collision with root package name */
    private final List f4616b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final int[] f4618d = new int[5];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements Comparator, Serializable {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d dVar, d dVar2) {
            return Float.compare(dVar.i(), dVar2.i());
        }
    }

    public e(j9.b bVar, q qVar) {
        this.f4615a = bVar;
        this.f4619e = qVar;
    }

    private static float a(int[] iArr, int i10) {
        return ((i10 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private boolean b(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int[] k10 = k();
        int i15 = 0;
        while (i10 >= i15 && i11 >= i15 && this.f4615a.e(i11 - i15, i10 - i15)) {
            k10[2] = k10[2] + 1;
            i15++;
        }
        if (k10[2] == 0) {
            return false;
        }
        while (i10 >= i15 && i11 >= i15 && !this.f4615a.e(i11 - i15, i10 - i15)) {
            k10[1] = k10[1] + 1;
            i15++;
        }
        if (k10[1] == 0) {
            return false;
        }
        while (i10 >= i15 && i11 >= i15 && this.f4615a.e(i11 - i15, i10 - i15)) {
            k10[0] = k10[0] + 1;
            i15++;
        }
        if (k10[0] == 0) {
            return false;
        }
        int j10 = this.f4615a.j();
        int m10 = this.f4615a.m();
        int i16 = 1;
        while (true) {
            int i17 = i10 + i16;
            if (i17 >= j10 || (i14 = i11 + i16) >= m10 || !this.f4615a.e(i14, i17)) {
                break;
            }
            k10[2] = k10[2] + 1;
            i16++;
        }
        while (true) {
            int i18 = i10 + i16;
            if (i18 >= j10 || (i13 = i11 + i16) >= m10 || this.f4615a.e(i13, i18)) {
                break;
            }
            k10[3] = k10[3] + 1;
            i16++;
        }
        if (k10[3] == 0) {
            return false;
        }
        while (true) {
            int i19 = i10 + i16;
            if (i19 >= j10 || (i12 = i11 + i16) >= m10 || !this.f4615a.e(i12, i19)) {
                break;
            }
            k10[4] = k10[4] + 1;
            i16++;
        }
        if (k10[4] == 0) {
            return false;
        }
        return j(k10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0082, code lost:
        if (r2[3] < r13) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
        if (r11 >= r1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008c, code lost:
        if (r0.e(r11, r12) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008e, code lost:
        r9 = r2[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0090, code lost:
        if (r9 >= r13) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0092, code lost:
        r2[4] = r9 + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0099, code lost:
        r12 = r2[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009b, code lost:
        if (r12 < r13) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009d, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b1, code lost:
        if ((java.lang.Math.abs(((((r2[0] + r2[1]) + r2[2]) + r2[3]) + r12) - r14) * 5) < r14) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b3, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b8, code lost:
        if (i(r2) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00be, code lost:
        return a(r2, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:?, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float c(int r11, int r12, int r13, int r14) {
        /*
            r10 = this;
            j9.b r0 = r10.f4615a
            int r1 = r0.m()
            int[] r2 = r10.k()
            r3 = r11
        Lb:
            r4 = 2
            r5 = 1
            if (r3 < 0) goto L1d
            boolean r6 = r0.e(r3, r12)
            if (r6 == 0) goto L1d
            r6 = r2[r4]
            int r6 = r6 + r5
            r2[r4] = r6
            int r3 = r3 + (-1)
            goto Lb
        L1d:
            r6 = 2143289344(0x7fc00000, float:NaN)
            if (r3 >= 0) goto L22
            return r6
        L22:
            if (r3 < 0) goto L35
            boolean r7 = r0.e(r3, r12)
            if (r7 != 0) goto L35
            r7 = r2[r5]
            if (r7 > r13) goto L35
            int r7 = r7 + 1
            r2[r5] = r7
            int r3 = r3 + (-1)
            goto L22
        L35:
            if (r3 < 0) goto Lbe
            r7 = r2[r5]
            if (r7 <= r13) goto L3d
            goto Lbe
        L3d:
            r7 = 0
            if (r3 < 0) goto L51
            boolean r8 = r0.e(r3, r12)
            if (r8 == 0) goto L51
            r8 = r2[r7]
            if (r8 > r13) goto L51
            int r8 = r8 + 1
            r2[r7] = r8
            int r3 = r3 + (-1)
            goto L3d
        L51:
            r3 = r2[r7]
            if (r3 <= r13) goto L56
            return r6
        L56:
            int r11 = r11 + r5
        L57:
            if (r11 >= r1) goto L67
            boolean r3 = r0.e(r11, r12)
            if (r3 == 0) goto L67
            r3 = r2[r4]
            int r3 = r3 + r5
            r2[r4] = r3
            int r11 = r11 + 1
            goto L57
        L67:
            if (r11 != r1) goto L6a
            return r6
        L6a:
            r3 = 3
            if (r11 >= r1) goto L7e
            boolean r8 = r0.e(r11, r12)
            if (r8 != 0) goto L7e
            r8 = r2[r3]
            if (r8 >= r13) goto L7e
            int r8 = r8 + 1
            r2[r3] = r8
            int r11 = r11 + 1
            goto L6a
        L7e:
            if (r11 == r1) goto Lbe
            r8 = r2[r3]
            if (r8 < r13) goto L85
            goto Lbe
        L85:
            r8 = 4
            if (r11 >= r1) goto L99
            boolean r9 = r0.e(r11, r12)
            if (r9 == 0) goto L99
            r9 = r2[r8]
            if (r9 >= r13) goto L99
            int r9 = r9 + 1
            r2[r8] = r9
            int r11 = r11 + 1
            goto L85
        L99:
            r12 = r2[r8]
            if (r12 < r13) goto L9e
            return r6
        L9e:
            r13 = r2[r7]
            r0 = r2[r5]
            int r13 = r13 + r0
            r0 = r2[r4]
            int r13 = r13 + r0
            r0 = r2[r3]
            int r13 = r13 + r0
            int r13 = r13 + r12
            int r13 = r13 - r14
            int r12 = java.lang.Math.abs(r13)
            int r12 = r12 * 5
            if (r12 < r14) goto Lb4
            return r6
        Lb4:
            boolean r12 = i(r2)
            if (r12 == 0) goto Lbe
            float r6 = a(r2, r11)
        Lbe:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.e.c(int, int, int, int):float");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0082, code lost:
        if (r2[3] < r13) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
        if (r11 >= r1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008c, code lost:
        if (r0.e(r12, r11) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008e, code lost:
        r9 = r2[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0090, code lost:
        if (r9 >= r13) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0092, code lost:
        r2[4] = r9 + 1;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0099, code lost:
        r12 = r2[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009b, code lost:
        if (r12 < r13) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009d, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b2, code lost:
        if ((java.lang.Math.abs(((((r2[0] + r2[1]) + r2[2]) + r2[3]) + r12) - r14) * 5) < (r14 * 2)) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b4, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b9, code lost:
        if (i(r2) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bf, code lost:
        return a(r2, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:?, code lost:
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float d(int r11, int r12, int r13, int r14) {
        /*
            r10 = this;
            j9.b r0 = r10.f4615a
            int r1 = r0.j()
            int[] r2 = r10.k()
            r3 = r11
        Lb:
            r4 = 2
            r5 = 1
            if (r3 < 0) goto L1d
            boolean r6 = r0.e(r12, r3)
            if (r6 == 0) goto L1d
            r6 = r2[r4]
            int r6 = r6 + r5
            r2[r4] = r6
            int r3 = r3 + (-1)
            goto Lb
        L1d:
            r6 = 2143289344(0x7fc00000, float:NaN)
            if (r3 >= 0) goto L22
            return r6
        L22:
            if (r3 < 0) goto L35
            boolean r7 = r0.e(r12, r3)
            if (r7 != 0) goto L35
            r7 = r2[r5]
            if (r7 > r13) goto L35
            int r7 = r7 + 1
            r2[r5] = r7
            int r3 = r3 + (-1)
            goto L22
        L35:
            if (r3 < 0) goto Lbf
            r7 = r2[r5]
            if (r7 <= r13) goto L3d
            goto Lbf
        L3d:
            r7 = 0
            if (r3 < 0) goto L51
            boolean r8 = r0.e(r12, r3)
            if (r8 == 0) goto L51
            r8 = r2[r7]
            if (r8 > r13) goto L51
            int r8 = r8 + 1
            r2[r7] = r8
            int r3 = r3 + (-1)
            goto L3d
        L51:
            r3 = r2[r7]
            if (r3 <= r13) goto L56
            return r6
        L56:
            int r11 = r11 + r5
        L57:
            if (r11 >= r1) goto L67
            boolean r3 = r0.e(r12, r11)
            if (r3 == 0) goto L67
            r3 = r2[r4]
            int r3 = r3 + r5
            r2[r4] = r3
            int r11 = r11 + 1
            goto L57
        L67:
            if (r11 != r1) goto L6a
            return r6
        L6a:
            r3 = 3
            if (r11 >= r1) goto L7e
            boolean r8 = r0.e(r12, r11)
            if (r8 != 0) goto L7e
            r8 = r2[r3]
            if (r8 >= r13) goto L7e
            int r8 = r8 + 1
            r2[r3] = r8
            int r11 = r11 + 1
            goto L6a
        L7e:
            if (r11 == r1) goto Lbf
            r8 = r2[r3]
            if (r8 < r13) goto L85
            goto Lbf
        L85:
            r8 = 4
            if (r11 >= r1) goto L99
            boolean r9 = r0.e(r12, r11)
            if (r9 == 0) goto L99
            r9 = r2[r8]
            if (r9 >= r13) goto L99
            int r9 = r9 + 1
            r2[r8] = r9
            int r11 = r11 + 1
            goto L85
        L99:
            r12 = r2[r8]
            if (r12 < r13) goto L9e
            return r6
        L9e:
            r13 = r2[r7]
            r0 = r2[r5]
            int r13 = r13 + r0
            r0 = r2[r4]
            int r13 = r13 + r0
            r0 = r2[r3]
            int r13 = r13 + r0
            int r13 = r13 + r12
            int r13 = r13 - r14
            int r12 = java.lang.Math.abs(r13)
            int r12 = r12 * 5
            int r14 = r14 * r4
            if (r12 < r14) goto Lb5
            return r6
        Lb5:
            boolean r12 = i(r2)
            if (r12 == 0) goto Lbf
            float r6 = a(r2, r11)
        Lbf:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.e.d(int, int, int, int):float");
    }

    protected static void e(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    protected static void f(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private int h() {
        if (this.f4616b.size() <= 1) {
            return 0;
        }
        d dVar = null;
        for (d dVar2 : this.f4616b) {
            if (dVar2.h() >= 2) {
                if (dVar == null) {
                    dVar = dVar2;
                } else {
                    this.f4617c = true;
                    return ((int) (Math.abs(dVar.c() - dVar2.c()) - Math.abs(dVar.d() - dVar2.d()))) / 2;
                }
            }
        }
        return 0;
    }

    protected static boolean i(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            i10 += i12;
        }
        if (i10 < 7) {
            return false;
        }
        float f10 = i10 / 7.0f;
        float f11 = f10 / 2.0f;
        if (Math.abs(f10 - iArr[0]) >= f11 || Math.abs(f10 - iArr[1]) >= f11 || Math.abs((f10 * 3.0f) - iArr[2]) >= 3.0f * f11 || Math.abs(f10 - iArr[3]) >= f11 || Math.abs(f10 - iArr[4]) >= f11) {
            return false;
        }
        return true;
    }

    protected static boolean j(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            i10 += i12;
        }
        if (i10 < 7) {
            return false;
        }
        float f10 = i10 / 7.0f;
        float f11 = f10 / 1.333f;
        if (Math.abs(f10 - iArr[0]) >= f11 || Math.abs(f10 - iArr[1]) >= f11 || Math.abs((f10 * 3.0f) - iArr[2]) >= 3.0f * f11 || Math.abs(f10 - iArr[3]) >= f11 || Math.abs(f10 - iArr[4]) >= f11) {
            return false;
        }
        return true;
    }

    private int[] k() {
        e(this.f4618d);
        return this.f4618d;
    }

    private boolean m() {
        int size = this.f4616b.size();
        float f10 = 0.0f;
        int i10 = 0;
        float f11 = 0.0f;
        for (d dVar : this.f4616b) {
            if (dVar.h() >= 2) {
                i10++;
                f11 += dVar.i();
            }
        }
        if (i10 < 3) {
            return false;
        }
        float f12 = f11 / size;
        for (d dVar2 : this.f4616b) {
            f10 += Math.abs(dVar2.i() - f12);
        }
        if (f10 > f11 * 0.05f) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ba.d[] n() {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.e.n():ba.d[]");
    }

    private static double o(d dVar, d dVar2) {
        double c10 = dVar.c() - dVar2.c();
        double d10 = dVar.d() - dVar2.d();
        return (c10 * c10) + (d10 * d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f g(Map map) {
        boolean z10;
        if (map != null && map.containsKey(d9.e.TRY_HARDER)) {
            z10 = true;
        } else {
            z10 = false;
        }
        int j10 = this.f4615a.j();
        int m10 = this.f4615a.m();
        int i10 = (j10 * 3) / 388;
        if (i10 < 3 || z10) {
            i10 = 3;
        }
        int[] iArr = new int[5];
        int i11 = i10 - 1;
        boolean z11 = false;
        while (i11 < j10 && !z11) {
            e(iArr);
            int i12 = 0;
            int i13 = 0;
            while (i12 < m10) {
                if (this.f4615a.e(i12, i11)) {
                    if ((i13 & 1) == 1) {
                        i13++;
                    }
                    iArr[i13] = iArr[i13] + 1;
                } else if ((i13 & 1) == 0) {
                    if (i13 == 4) {
                        if (i(iArr)) {
                            if (l(iArr, i11, i12)) {
                                if (this.f4617c) {
                                    z11 = m();
                                } else {
                                    int h10 = h();
                                    int i14 = iArr[2];
                                    if (h10 > i14) {
                                        i11 += (h10 - i14) - 2;
                                        i12 = m10 - 1;
                                    }
                                }
                                e(iArr);
                                i10 = 2;
                                i13 = 0;
                            } else {
                                f(iArr);
                            }
                        } else {
                            f(iArr);
                        }
                        i13 = 3;
                    } else {
                        i13++;
                        iArr[i13] = iArr[i13] + 1;
                    }
                } else {
                    iArr[i13] = iArr[i13] + 1;
                }
                i12++;
            }
            if (i(iArr) && l(iArr, i11, m10)) {
                i10 = iArr[0];
                if (this.f4617c) {
                    z11 = m();
                }
            }
            i11 += i10;
        }
        d[] n10 = n();
        p.e(n10);
        return new f(n10);
    }

    protected final boolean l(int[] iArr, int i10, int i11) {
        boolean z10 = false;
        int i12 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int a10 = (int) a(iArr, i11);
        float d10 = d(i10, a10, iArr[2], i12);
        if (!Float.isNaN(d10)) {
            int i13 = (int) d10;
            float c10 = c(a10, i13, iArr[2], i12);
            if (!Float.isNaN(c10) && b(i13, (int) c10)) {
                float f10 = i12 / 7.0f;
                int i14 = 0;
                while (true) {
                    if (i14 >= this.f4616b.size()) {
                        break;
                    }
                    d dVar = (d) this.f4616b.get(i14);
                    if (dVar.f(f10, d10, c10)) {
                        this.f4616b.set(i14, dVar.g(d10, c10, f10));
                        z10 = true;
                        break;
                    }
                    i14++;
                }
                if (!z10) {
                    d dVar2 = new d(c10, d10, f10);
                    this.f4616b.add(dVar2);
                    q qVar = this.f4619e;
                    if (qVar != null) {
                        qVar.a(dVar2);
                    }
                }
                return true;
            }
        }
        return false;
    }
}
