package o3;

import android.util.Pair;
import b3.e3;
import b3.x1;
import g3.b0;
import g3.c0;
import g3.v;
import g3.y;
import g3.z;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import o3.a;
import y4.e0;
import y4.q0;
import y4.w;
/* loaded from: classes.dex */
public final class k implements g3.k, z {

    /* renamed from: y  reason: collision with root package name */
    public static final g3.p f27235y = new g3.p() { // from class: o3.i
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] s10;
            s10 = k.s();
            return s10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f27236a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f27237b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f27238c;

    /* renamed from: d  reason: collision with root package name */
    private final e0 f27239d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f27240e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque f27241f;

    /* renamed from: g  reason: collision with root package name */
    private final m f27242g;

    /* renamed from: h  reason: collision with root package name */
    private final List f27243h;

    /* renamed from: i  reason: collision with root package name */
    private int f27244i;

    /* renamed from: j  reason: collision with root package name */
    private int f27245j;

    /* renamed from: k  reason: collision with root package name */
    private long f27246k;

    /* renamed from: l  reason: collision with root package name */
    private int f27247l;

    /* renamed from: m  reason: collision with root package name */
    private e0 f27248m;

    /* renamed from: n  reason: collision with root package name */
    private int f27249n;

    /* renamed from: o  reason: collision with root package name */
    private int f27250o;

    /* renamed from: p  reason: collision with root package name */
    private int f27251p;

    /* renamed from: q  reason: collision with root package name */
    private int f27252q;

    /* renamed from: r  reason: collision with root package name */
    private g3.m f27253r;

    /* renamed from: s  reason: collision with root package name */
    private a[] f27254s;

    /* renamed from: t  reason: collision with root package name */
    private long[][] f27255t;

    /* renamed from: u  reason: collision with root package name */
    private int f27256u;

    /* renamed from: v  reason: collision with root package name */
    private long f27257v;

    /* renamed from: w  reason: collision with root package name */
    private int f27258w;

    /* renamed from: x  reason: collision with root package name */
    private z3.b f27259x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final o f27260a;

        /* renamed from: b  reason: collision with root package name */
        public final r f27261b;

        /* renamed from: c  reason: collision with root package name */
        public final b0 f27262c;

        /* renamed from: d  reason: collision with root package name */
        public final c0 f27263d;

        /* renamed from: e  reason: collision with root package name */
        public int f27264e;

        public a(o oVar, r rVar, b0 b0Var) {
            c0 c0Var;
            this.f27260a = oVar;
            this.f27261b = rVar;
            this.f27262c = b0Var;
            if ("audio/true-hd".equals(oVar.f27282f.f4514l)) {
                c0Var = new c0();
            } else {
                c0Var = null;
            }
            this.f27263d = c0Var;
        }
    }

    public k() {
        this(0);
    }

    private boolean A(g3.l lVar) {
        a.C0269a c0269a;
        boolean z10;
        boolean z11;
        if (this.f27247l == 0) {
            if (!lVar.e(this.f27240e.e(), 0, 8, true)) {
                w();
                return false;
            }
            this.f27247l = 8;
            this.f27240e.T(0);
            this.f27246k = this.f27240e.I();
            this.f27245j = this.f27240e.p();
        }
        long j10 = this.f27246k;
        if (j10 == 1) {
            lVar.readFully(this.f27240e.e(), 8, 8);
            this.f27247l += 8;
            this.f27246k = this.f27240e.L();
        } else if (j10 == 0) {
            long b10 = lVar.b();
            if (b10 == -1 && (c0269a = (a.C0269a) this.f27241f.peek()) != null) {
                b10 = c0269a.f27149b;
            }
            if (b10 != -1) {
                this.f27246k = (b10 - lVar.c()) + this.f27247l;
            }
        }
        if (this.f27246k >= this.f27247l) {
            if (E(this.f27245j)) {
                long c10 = lVar.c();
                long j11 = this.f27246k;
                int i10 = this.f27247l;
                long j12 = (c10 + j11) - i10;
                if (j11 != i10 && this.f27245j == 1835365473) {
                    u(lVar);
                }
                this.f27241f.push(new a.C0269a(this.f27245j, j12));
                if (this.f27246k == this.f27247l) {
                    v(j12);
                } else {
                    n();
                }
            } else if (F(this.f27245j)) {
                if (this.f27247l == 8) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y4.a.f(z10);
                if (this.f27246k <= 2147483647L) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                y4.a.f(z11);
                e0 e0Var = new e0((int) this.f27246k);
                System.arraycopy(this.f27240e.e(), 0, e0Var.e(), 0, 8);
                this.f27248m = e0Var;
                this.f27244i = 1;
            } else {
                z(lVar.c() - this.f27247l);
                this.f27248m = null;
                this.f27244i = 1;
            }
            return true;
        }
        throw e3.d("Atom size less than header length (unsupported).");
    }

    private boolean B(g3.l lVar, y yVar) {
        boolean z10;
        long j10 = this.f27246k - this.f27247l;
        long c10 = lVar.c() + j10;
        e0 e0Var = this.f27248m;
        if (e0Var != null) {
            lVar.readFully(e0Var.e(), this.f27247l, (int) j10);
            if (this.f27245j == 1718909296) {
                this.f27258w = x(e0Var);
            } else if (!this.f27241f.isEmpty()) {
                ((a.C0269a) this.f27241f.peek()).e(new a.b(this.f27245j, e0Var));
            }
        } else if (j10 < 262144) {
            lVar.m((int) j10);
        } else {
            yVar.f16251a = lVar.c() + j10;
            z10 = true;
            v(c10);
            if (!z10 && this.f27244i != 2) {
                return true;
            }
            return false;
        }
        z10 = false;
        v(c10);
        if (!z10) {
        }
        return false;
    }

    private int C(g3.l lVar, y yVar) {
        int i10;
        y yVar2;
        long c10 = lVar.c();
        if (this.f27249n == -1) {
            int q10 = q(c10);
            this.f27249n = q10;
            if (q10 == -1) {
                return -1;
            }
        }
        a aVar = this.f27254s[this.f27249n];
        b0 b0Var = aVar.f27262c;
        int i11 = aVar.f27264e;
        r rVar = aVar.f27261b;
        long j10 = rVar.f27313c[i11];
        int i12 = rVar.f27314d[i11];
        c0 c0Var = aVar.f27263d;
        long j11 = (j10 - c10) + this.f27250o;
        if (j11 >= 0) {
            if (j11 >= 262144) {
                yVar2 = yVar;
                i10 = 1;
            } else {
                if (aVar.f27260a.f27283g == 1) {
                    j11 += 8;
                    i12 -= 8;
                }
                lVar.m((int) j11);
                o oVar = aVar.f27260a;
                if (oVar.f27286j != 0) {
                    byte[] e10 = this.f27238c.e();
                    e10[0] = 0;
                    e10[1] = 0;
                    e10[2] = 0;
                    int i13 = aVar.f27260a.f27286j;
                    int i14 = 4 - i13;
                    while (this.f27251p < i12) {
                        int i15 = this.f27252q;
                        if (i15 == 0) {
                            lVar.readFully(e10, i14, i13);
                            this.f27250o += i13;
                            this.f27238c.T(0);
                            int p10 = this.f27238c.p();
                            if (p10 >= 0) {
                                this.f27252q = p10;
                                this.f27237b.T(0);
                                b0Var.b(this.f27237b, 4);
                                this.f27251p += 4;
                                i12 += i14;
                            } else {
                                throw e3.a("Invalid NAL length", null);
                            }
                        } else {
                            int e11 = b0Var.e(lVar, i15, false);
                            this.f27250o += e11;
                            this.f27251p += e11;
                            this.f27252q -= e11;
                        }
                    }
                } else {
                    if ("audio/ac4".equals(oVar.f27282f.f4514l)) {
                        if (this.f27251p == 0) {
                            d3.c.a(i12, this.f27239d);
                            b0Var.b(this.f27239d, 7);
                            this.f27251p += 7;
                        }
                        i12 += 7;
                    } else if (c0Var != null) {
                        c0Var.d(lVar);
                    }
                    while (true) {
                        int i16 = this.f27251p;
                        if (i16 >= i12) {
                            break;
                        }
                        int e12 = b0Var.e(lVar, i12 - i16, false);
                        this.f27250o += e12;
                        this.f27251p += e12;
                        this.f27252q -= e12;
                    }
                }
                int i17 = i12;
                r rVar2 = aVar.f27261b;
                long j12 = rVar2.f27316f[i11];
                int i18 = rVar2.f27317g[i11];
                if (c0Var != null) {
                    c0Var.c(b0Var, j12, i18, i17, 0, null);
                    if (i11 + 1 == aVar.f27261b.f27312b) {
                        c0Var.a(b0Var, null);
                    }
                } else {
                    b0Var.f(j12, i18, i17, 0, null);
                }
                aVar.f27264e++;
                this.f27249n = -1;
                this.f27250o = 0;
                this.f27251p = 0;
                this.f27252q = 0;
                return 0;
            }
        } else {
            i10 = 1;
            yVar2 = yVar;
        }
        yVar2.f16251a = j10;
        return i10;
    }

    private int D(g3.l lVar, y yVar) {
        int c10 = this.f27242g.c(lVar, yVar, this.f27243h);
        if (c10 == 1 && yVar.f16251a == 0) {
            n();
        }
        return c10;
    }

    private static boolean E(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473;
    }

    private static boolean F(int i10) {
        return i10 == 1835296868 || i10 == 1836476516 || i10 == 1751411826 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1937011571 || i10 == 1668576371 || i10 == 1701606260 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1953196132 || i10 == 1718909296 || i10 == 1969517665 || i10 == 1801812339 || i10 == 1768715124;
    }

    private void G(a aVar, long j10) {
        r rVar = aVar.f27261b;
        int a10 = rVar.a(j10);
        if (a10 == -1) {
            a10 = rVar.b(j10);
        }
        aVar.f27264e = a10;
    }

    private static int l(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] m(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].f27261b.f27312b];
            jArr2[i10] = aVarArr[i10].f27261b.f27316f[0];
        }
        long j10 = 0;
        int i11 = 0;
        while (i11 < aVarArr.length) {
            long j11 = Long.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < aVarArr.length; i13++) {
                if (!zArr[i13]) {
                    long j12 = jArr2[i13];
                    if (j12 <= j11) {
                        i12 = i13;
                        j11 = j12;
                    }
                }
            }
            int i14 = iArr[i12];
            long[] jArr3 = jArr[i12];
            jArr3[i14] = j10;
            r rVar = aVarArr[i12].f27261b;
            j10 += rVar.f27314d[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = rVar.f27316f[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private void n() {
        this.f27244i = 0;
        this.f27247l = 0;
    }

    private static int p(r rVar, long j10) {
        int a10 = rVar.a(j10);
        if (a10 == -1) {
            return rVar.b(j10);
        }
        return a10;
    }

    private int q(long j10) {
        boolean z10;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z11 = true;
        long j12 = Long.MAX_VALUE;
        boolean z12 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.f27254s;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.f27264e;
            r rVar = aVar.f27261b;
            if (i13 != rVar.f27312b) {
                long j14 = rVar.f27313c[i13];
                long j15 = ((long[][]) q0.j(this.f27255t))[i12][i13];
                long j16 = j14 - j10;
                if (j16 >= 0 && j16 < 262144) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if ((!z10 && z12) || (z10 == z12 && j16 < j13)) {
                    z12 = z10;
                    j13 = j16;
                    i11 = i12;
                    j12 = j15;
                }
                if (j15 < j11) {
                    z11 = z10;
                    i10 = i12;
                    j11 = j15;
                }
            }
            i12++;
        }
        if (j11 == Long.MAX_VALUE || !z11 || j12 < j11 + 10485760) {
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o r(o oVar) {
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] s() {
        return new g3.k[]{new k()};
    }

    private static long t(r rVar, long j10, long j11) {
        int p10 = p(rVar, j10);
        if (p10 == -1) {
            return j11;
        }
        return Math.min(rVar.f27313c[p10], j11);
    }

    private void u(g3.l lVar) {
        this.f27239d.P(8);
        lVar.p(this.f27239d.e(), 0, 8);
        b.e(this.f27239d);
        lVar.m(this.f27239d.f());
        lVar.l();
    }

    private void v(long j10) {
        while (!this.f27241f.isEmpty() && ((a.C0269a) this.f27241f.peek()).f27149b == j10) {
            a.C0269a c0269a = (a.C0269a) this.f27241f.pop();
            if (c0269a.f27148a == 1836019574) {
                y(c0269a);
                this.f27241f.clear();
                this.f27244i = 2;
            } else if (!this.f27241f.isEmpty()) {
                ((a.C0269a) this.f27241f.peek()).d(c0269a);
            }
        }
        if (this.f27244i != 2) {
            n();
        }
    }

    private void w() {
        t3.a aVar;
        if (this.f27258w == 2 && (this.f27236a & 2) != 0) {
            b0 a10 = this.f27253r.a(0, 4);
            if (this.f27259x == null) {
                aVar = null;
            } else {
                aVar = new t3.a(this.f27259x);
            }
            a10.c(new x1.b().Z(aVar).G());
            this.f27253r.n();
            this.f27253r.l(new z.b(-9223372036854775807L));
        }
    }

    private static int x(e0 e0Var) {
        e0Var.T(8);
        int l10 = l(e0Var.p());
        if (l10 != 0) {
            return l10;
        }
        e0Var.U(4);
        while (e0Var.a() > 0) {
            int l11 = l(e0Var.p());
            if (l11 != 0) {
                return l11;
            }
        }
        return 0;
    }

    private void y(a.C0269a c0269a) {
        boolean z10;
        t3.a aVar;
        t3.a aVar2;
        t3.a aVar3;
        boolean z11;
        List list;
        int i10;
        int i11;
        t3.a aVar4;
        int i12;
        ArrayList arrayList = new ArrayList();
        if (this.f27258w == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        v vVar = new v();
        a.b g10 = c0269a.g(1969517665);
        if (g10 != null) {
            Pair B = b.B(g10);
            t3.a aVar5 = (t3.a) B.first;
            t3.a aVar6 = (t3.a) B.second;
            if (aVar5 != null) {
                vVar.c(aVar5);
            }
            aVar = aVar6;
            aVar2 = aVar5;
        } else {
            aVar = null;
            aVar2 = null;
        }
        a.C0269a f10 = c0269a.f(1835365473);
        if (f10 != null) {
            aVar3 = b.n(f10);
        } else {
            aVar3 = null;
        }
        if ((this.f27236a & 1) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        t3.a aVar7 = aVar3;
        List A = b.A(c0269a, vVar, -9223372036854775807L, null, z11, z10, new n6.g() { // from class: o3.j
            @Override // n6.g
            public final Object apply(Object obj) {
                o r10;
                r10 = k.r((o) obj);
                return r10;
            }
        });
        int size = A.size();
        long j10 = -9223372036854775807L;
        long j11 = -9223372036854775807L;
        int i13 = 0;
        int i14 = -1;
        while (i13 < size) {
            r rVar = (r) A.get(i13);
            if (rVar.f27312b == 0) {
                list = A;
                i10 = size;
            } else {
                o oVar = rVar.f27311a;
                list = A;
                i10 = size;
                long j12 = oVar.f27281e;
                if (j12 == j10) {
                    j12 = rVar.f27318h;
                }
                long max = Math.max(j11, j12);
                a aVar8 = new a(oVar, rVar, this.f27253r.a(i13, oVar.f27278b));
                if ("audio/true-hd".equals(oVar.f27282f.f4514l)) {
                    i11 = rVar.f27315e * 16;
                } else {
                    i11 = rVar.f27315e + 30;
                }
                x1.b b10 = oVar.f27282f.b();
                b10.Y(i11);
                if (oVar.f27278b == 2 && j12 > 0 && (i12 = rVar.f27312b) > 1) {
                    b10.R(i12 / (((float) j12) / 1000000.0f));
                }
                h.k(oVar.f27278b, vVar, b10);
                int i15 = oVar.f27278b;
                t3.a[] aVarArr = new t3.a[2];
                aVarArr[0] = aVar;
                if (this.f27243h.isEmpty()) {
                    aVar4 = null;
                } else {
                    aVar4 = new t3.a(this.f27243h);
                }
                aVarArr[1] = aVar4;
                h.l(i15, aVar2, aVar7, b10, aVarArr);
                aVar8.f27262c.c(b10.G());
                if (oVar.f27278b == 2 && i14 == -1) {
                    i14 = arrayList.size();
                }
                arrayList.add(aVar8);
                j11 = max;
            }
            i13++;
            A = list;
            size = i10;
            j10 = -9223372036854775807L;
        }
        this.f27256u = i14;
        this.f27257v = j11;
        a[] aVarArr2 = (a[]) arrayList.toArray(new a[0]);
        this.f27254s = aVarArr2;
        this.f27255t = m(aVarArr2);
        this.f27253r.n();
        this.f27253r.l(this);
    }

    private void z(long j10) {
        if (this.f27245j == 1836086884) {
            int i10 = this.f27247l;
            this.f27259x = new z3.b(0L, j10, -9223372036854775807L, j10 + i10, this.f27246k - i10);
        }
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        a[] aVarArr;
        this.f27241f.clear();
        this.f27247l = 0;
        this.f27249n = -1;
        this.f27250o = 0;
        this.f27251p = 0;
        this.f27252q = 0;
        if (j10 == 0) {
            if (this.f27244i != 3) {
                n();
                return;
            }
            this.f27242g.g();
            this.f27243h.clear();
            return;
        }
        for (a aVar : this.f27254s) {
            G(aVar, j11);
            c0 c0Var = aVar.f27263d;
            if (c0Var != null) {
                c0Var.b();
            }
        }
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f27253r = mVar;
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        boolean z10;
        if ((this.f27236a & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return n.d(lVar, z10);
    }

    @Override // g3.k
    public int g(g3.l lVar, y yVar) {
        while (true) {
            int i10 = this.f27244i;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            return D(lVar, yVar);
                        }
                        throw new IllegalStateException();
                    }
                    return C(lVar, yVar);
                } else if (B(lVar, yVar)) {
                    return 1;
                }
            } else if (!A(lVar)) {
                return -1;
            }
        }
    }

    @Override // g3.z
    public z.a h(long j10) {
        return o(j10, -1);
    }

    @Override // g3.z
    public long i() {
        return this.f27257v;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g3.z.a o(long r17, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r19
            o3.k$a[] r4 = r0.f27254s
            int r5 = r4.length
            if (r5 != 0) goto L13
            g3.z$a r1 = new g3.z$a
            g3.a0 r2 = g3.a0.f16142c
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            if (r3 == r5) goto L18
            r6 = r3
            goto L1a
        L18:
            int r6 = r0.f27256u
        L1a:
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9 = -1
            if (r6 == r5) goto L58
            r4 = r4[r6]
            o3.r r4 = r4.f27261b
            int r6 = p(r4, r1)
            if (r6 != r5) goto L35
            g3.z$a r1 = new g3.z$a
            g3.a0 r2 = g3.a0.f16142c
            r1.<init>(r2)
            return r1
        L35:
            long[] r11 = r4.f27316f
            r12 = r11[r6]
            long[] r11 = r4.f27313c
            r14 = r11[r6]
            int r11 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r11 >= 0) goto L5e
            int r11 = r4.f27312b
            int r11 = r11 + (-1)
            if (r6 >= r11) goto L5e
            int r1 = r4.b(r1)
            if (r1 == r5) goto L5e
            if (r1 == r6) goto L5e
            long[] r2 = r4.f27316f
            r9 = r2[r1]
            long[] r2 = r4.f27313c
            r1 = r2[r1]
            goto L60
        L58:
            r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r1
        L5e:
            r1 = r9
            r9 = r7
        L60:
            if (r3 != r5) goto L7f
            r3 = 0
        L63:
            o3.k$a[] r4 = r0.f27254s
            int r5 = r4.length
            if (r3 >= r5) goto L7f
            int r5 = r0.f27256u
            if (r3 == r5) goto L7c
            r4 = r4[r3]
            o3.r r4 = r4.f27261b
            long r14 = t(r4, r12, r14)
            int r5 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r5 == 0) goto L7c
            long r1 = t(r4, r9, r1)
        L7c:
            int r3 = r3 + 1
            goto L63
        L7f:
            g3.a0 r3 = new g3.a0
            r3.<init>(r12, r14)
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L8e
            g3.z$a r1 = new g3.z$a
            r1.<init>(r3)
            return r1
        L8e:
            g3.a0 r4 = new g3.a0
            r4.<init>(r9, r1)
            g3.z$a r1 = new g3.z$a
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.k.o(long, int):g3.z$a");
    }

    @Override // g3.k
    public void release() {
    }

    public k(int i10) {
        this.f27236a = i10;
        this.f27244i = (i10 & 4) != 0 ? 3 : 0;
        this.f27242g = new m();
        this.f27243h = new ArrayList();
        this.f27240e = new e0(16);
        this.f27241f = new ArrayDeque();
        this.f27237b = new e0(w.f32972a);
        this.f27238c = new e0(4);
        this.f27239d = new e0();
        this.f27249n = -1;
        this.f27253r = g3.m.f16222r0;
        this.f27254s = new a[0];
    }
}
