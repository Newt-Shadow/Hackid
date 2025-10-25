package o3;

import android.util.Pair;
import android.util.SparseArray;
import b3.e3;
import b3.x1;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import f3.m;
import g3.b0;
import g3.v;
import g3.y;
import g3.z;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import kotlin.KotlinVersion;
import o3.a;
import org.apache.tika.fork.ForkServer;
import y4.e0;
import y4.m0;
import y4.q0;
import y4.w;
/* loaded from: classes.dex */
public class g implements g3.k {
    public static final g3.p I = new g3.p() { // from class: o3.f
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] m10;
            m10 = g.m();
            return m10;
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final x1 K = new x1.b().g0("application/x-emsg").G();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private g3.m E;
    private b0[] F;
    private b0[] G;
    private boolean H;

    /* renamed from: a  reason: collision with root package name */
    private final int f27193a;

    /* renamed from: b  reason: collision with root package name */
    private final o f27194b;

    /* renamed from: c  reason: collision with root package name */
    private final List f27195c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray f27196d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f27197e;

    /* renamed from: f  reason: collision with root package name */
    private final e0 f27198f;

    /* renamed from: g  reason: collision with root package name */
    private final e0 f27199g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f27200h;

    /* renamed from: i  reason: collision with root package name */
    private final e0 f27201i;

    /* renamed from: j  reason: collision with root package name */
    private final m0 f27202j;

    /* renamed from: k  reason: collision with root package name */
    private final v3.c f27203k;

    /* renamed from: l  reason: collision with root package name */
    private final e0 f27204l;

    /* renamed from: m  reason: collision with root package name */
    private final ArrayDeque f27205m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque f27206n;

    /* renamed from: o  reason: collision with root package name */
    private final b0 f27207o;

    /* renamed from: p  reason: collision with root package name */
    private int f27208p;

    /* renamed from: q  reason: collision with root package name */
    private int f27209q;

    /* renamed from: r  reason: collision with root package name */
    private long f27210r;

    /* renamed from: s  reason: collision with root package name */
    private int f27211s;

    /* renamed from: t  reason: collision with root package name */
    private e0 f27212t;

    /* renamed from: u  reason: collision with root package name */
    private long f27213u;

    /* renamed from: v  reason: collision with root package name */
    private int f27214v;

    /* renamed from: w  reason: collision with root package name */
    private long f27215w;

    /* renamed from: x  reason: collision with root package name */
    private long f27216x;

    /* renamed from: y  reason: collision with root package name */
    private long f27217y;

    /* renamed from: z  reason: collision with root package name */
    private b f27218z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f27219a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f27220b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27221c;

        public a(long j10, boolean z10, int i10) {
            this.f27219a = j10;
            this.f27220b = z10;
            this.f27221c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final b0 f27222a;

        /* renamed from: d  reason: collision with root package name */
        public r f27225d;

        /* renamed from: e  reason: collision with root package name */
        public c f27226e;

        /* renamed from: f  reason: collision with root package name */
        public int f27227f;

        /* renamed from: g  reason: collision with root package name */
        public int f27228g;

        /* renamed from: h  reason: collision with root package name */
        public int f27229h;

        /* renamed from: i  reason: collision with root package name */
        public int f27230i;

        /* renamed from: l  reason: collision with root package name */
        private boolean f27233l;

        /* renamed from: b  reason: collision with root package name */
        public final q f27223b = new q();

        /* renamed from: c  reason: collision with root package name */
        public final e0 f27224c = new e0();

        /* renamed from: j  reason: collision with root package name */
        private final e0 f27231j = new e0(1);

        /* renamed from: k  reason: collision with root package name */
        private final e0 f27232k = new e0();

        public b(b0 b0Var, r rVar, c cVar) {
            this.f27222a = b0Var;
            this.f27225d = rVar;
            this.f27226e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i10;
            if (!this.f27233l) {
                i10 = this.f27225d.f27317g[this.f27227f];
            } else if (this.f27223b.f27303k[this.f27227f]) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (g() != null) {
                return i10 | 1073741824;
            }
            return i10;
        }

        public long d() {
            if (!this.f27233l) {
                return this.f27225d.f27313c[this.f27227f];
            }
            return this.f27223b.f27299g[this.f27229h];
        }

        public long e() {
            if (!this.f27233l) {
                return this.f27225d.f27316f[this.f27227f];
            }
            return this.f27223b.c(this.f27227f);
        }

        public int f() {
            if (!this.f27233l) {
                return this.f27225d.f27314d[this.f27227f];
            }
            return this.f27223b.f27301i[this.f27227f];
        }

        public p g() {
            if (!this.f27233l) {
                return null;
            }
            int i10 = ((c) q0.j(this.f27223b.f27293a)).f27182a;
            p pVar = this.f27223b.f27306n;
            if (pVar == null) {
                pVar = this.f27225d.f27311a.a(i10);
            }
            if (pVar == null || !pVar.f27288a) {
                return null;
            }
            return pVar;
        }

        public boolean h() {
            this.f27227f++;
            if (!this.f27233l) {
                return false;
            }
            int i10 = this.f27228g + 1;
            this.f27228g = i10;
            int[] iArr = this.f27223b.f27300h;
            int i11 = this.f27229h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f27229h = i11 + 1;
            this.f27228g = 0;
            return false;
        }

        public int i(int i10, int i11) {
            e0 e0Var;
            boolean z10;
            int i12;
            p g10 = g();
            if (g10 == null) {
                return 0;
            }
            int i13 = g10.f27291d;
            if (i13 != 0) {
                e0Var = this.f27223b.f27307o;
            } else {
                byte[] bArr = (byte[]) q0.j(g10.f27292e);
                this.f27232k.R(bArr, bArr.length);
                e0 e0Var2 = this.f27232k;
                i13 = bArr.length;
                e0Var = e0Var2;
            }
            boolean g11 = this.f27223b.g(this.f27227f);
            if (!g11 && i11 == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            byte[] e10 = this.f27231j.e();
            if (z10) {
                i12 = 128;
            } else {
                i12 = 0;
            }
            e10[0] = (byte) (i12 | i13);
            this.f27231j.T(0);
            this.f27222a.a(this.f27231j, 1, 1);
            this.f27222a.a(e0Var, i13, 1);
            if (!z10) {
                return i13 + 1;
            }
            if (!g11) {
                this.f27224c.P(8);
                byte[] e11 = this.f27224c.e();
                e11[0] = 0;
                e11[1] = 1;
                e11[2] = (byte) ((i11 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                e11[3] = (byte) (i11 & KotlinVersion.MAX_COMPONENT_VALUE);
                e11[4] = (byte) ((i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                e11[5] = (byte) ((i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                e11[6] = (byte) ((i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                e11[7] = (byte) (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f27222a.a(this.f27224c, 8, 1);
                return i13 + 1 + 8;
            }
            e0 e0Var3 = this.f27223b.f27307o;
            int M = e0Var3.M();
            e0Var3.U(-2);
            int i14 = (M * 6) + 2;
            if (i11 != 0) {
                this.f27224c.P(i14);
                byte[] e12 = this.f27224c.e();
                e0Var3.l(e12, 0, i14);
                int i15 = (((e12[2] & ForkServer.ERROR) << 8) | (e12[3] & ForkServer.ERROR)) + i11;
                e12[2] = (byte) ((i15 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                e12[3] = (byte) (i15 & KotlinVersion.MAX_COMPONENT_VALUE);
                e0Var3 = this.f27224c;
            }
            this.f27222a.a(e0Var3, i14, 1);
            return i13 + 1 + i14;
        }

        public void j(r rVar, c cVar) {
            this.f27225d = rVar;
            this.f27226e = cVar;
            this.f27222a.c(rVar.f27311a.f27282f);
            k();
        }

        public void k() {
            this.f27223b.f();
            this.f27227f = 0;
            this.f27229h = 0;
            this.f27228g = 0;
            this.f27230i = 0;
            this.f27233l = false;
        }

        public void l(long j10) {
            int i10 = this.f27227f;
            while (true) {
                q qVar = this.f27223b;
                if (i10 < qVar.f27298f && qVar.c(i10) <= j10) {
                    if (this.f27223b.f27303k[i10]) {
                        this.f27230i = i10;
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }

        public void m() {
            p g10 = g();
            if (g10 == null) {
                return;
            }
            e0 e0Var = this.f27223b.f27307o;
            int i10 = g10.f27291d;
            if (i10 != 0) {
                e0Var.U(i10);
            }
            if (this.f27223b.g(this.f27227f)) {
                e0Var.U(e0Var.M() * 6);
            }
        }

        public void n(f3.m mVar) {
            String str;
            p a10 = this.f27225d.f27311a.a(((c) q0.j(this.f27223b.f27293a)).f27182a);
            if (a10 != null) {
                str = a10.f27289b;
            } else {
                str = null;
            }
            this.f27222a.c(this.f27225d.f27311a.f27282f.b().O(mVar.c(str)).G());
        }
    }

    public g() {
        this(0);
    }

    private static void A(e0 e0Var, q qVar) {
        z(e0Var, 0, qVar);
    }

    private static Pair B(e0 e0Var, long j10) {
        long L;
        long L2;
        int[] iArr;
        e0Var.T(8);
        int c10 = o3.a.c(e0Var.p());
        e0Var.U(4);
        long I2 = e0Var.I();
        if (c10 == 0) {
            L = e0Var.I();
            L2 = e0Var.I();
        } else {
            L = e0Var.L();
            L2 = e0Var.L();
        }
        long j11 = L;
        long j12 = j10 + L2;
        long M0 = q0.M0(j11, 1000000L, I2);
        e0Var.U(2);
        int M = e0Var.M();
        int[] iArr2 = new int[M];
        long[] jArr = new long[M];
        long[] jArr2 = new long[M];
        long[] jArr3 = new long[M];
        long j13 = M0;
        int i10 = 0;
        long j14 = j11;
        while (i10 < M) {
            int p10 = e0Var.p();
            if ((p10 & Integer.MIN_VALUE) == 0) {
                long I3 = e0Var.I();
                iArr2[i10] = p10 & Integer.MAX_VALUE;
                jArr[i10] = j12;
                jArr3[i10] = j13;
                long j15 = j14 + I3;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i11 = M;
                long M02 = q0.M0(j15, 1000000L, I2);
                jArr4[i10] = M02 - jArr5[i10];
                e0Var.U(4);
                j12 += iArr[i10];
                i10++;
                iArr2 = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                M = i11;
                j14 = j15;
                j13 = M02;
            } else {
                throw e3.a("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(M0), new g3.c(iArr2, jArr, jArr2, jArr3));
    }

    private static long C(e0 e0Var) {
        e0Var.T(8);
        if (o3.a.c(e0Var.p()) == 1) {
            return e0Var.L();
        }
        return e0Var.I();
    }

    private static b D(e0 e0Var, SparseArray sparseArray, boolean z10) {
        Object obj;
        int i10;
        int i11;
        int i12;
        int i13;
        e0Var.T(8);
        int b10 = o3.a.b(e0Var.p());
        int p10 = e0Var.p();
        if (z10) {
            obj = sparseArray.valueAt(0);
        } else {
            obj = sparseArray.get(p10);
        }
        b bVar = (b) obj;
        if (bVar == null) {
            return null;
        }
        if ((b10 & 1) != 0) {
            long L = e0Var.L();
            q qVar = bVar.f27223b;
            qVar.f27295c = L;
            qVar.f27296d = L;
        }
        c cVar = bVar.f27226e;
        if ((b10 & 2) != 0) {
            i10 = e0Var.p() - 1;
        } else {
            i10 = cVar.f27182a;
        }
        if ((b10 & 8) != 0) {
            i11 = e0Var.p();
        } else {
            i11 = cVar.f27183b;
        }
        if ((b10 & 16) != 0) {
            i12 = e0Var.p();
        } else {
            i12 = cVar.f27184c;
        }
        if ((b10 & 32) != 0) {
            i13 = e0Var.p();
        } else {
            i13 = cVar.f27185d;
        }
        bVar.f27223b.f27293a = new c(i10, i11, i12, i13);
        return bVar;
    }

    private static void E(a.C0269a c0269a, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) {
        String str;
        b D = D(((a.b) y4.a.e(c0269a.g(1952868452))).f27152b, sparseArray, z10);
        if (D == null) {
            return;
        }
        q qVar = D.f27223b;
        long j10 = qVar.f27309q;
        boolean z11 = qVar.f27310r;
        D.k();
        D.f27233l = true;
        a.b g10 = c0269a.g(1952867444);
        if (g10 != null && (i10 & 2) == 0) {
            qVar.f27309q = C(g10.f27152b);
            qVar.f27310r = true;
        } else {
            qVar.f27309q = j10;
            qVar.f27310r = z11;
        }
        H(c0269a, D, i10);
        p a10 = D.f27225d.f27311a.a(((c) y4.a.e(qVar.f27293a)).f27182a);
        a.b g11 = c0269a.g(1935763834);
        if (g11 != null) {
            x((p) y4.a.e(a10), g11.f27152b, qVar);
        }
        a.b g12 = c0269a.g(1935763823);
        if (g12 != null) {
            w(g12.f27152b, qVar);
        }
        a.b g13 = c0269a.g(1936027235);
        if (g13 != null) {
            A(g13.f27152b, qVar);
        }
        if (a10 != null) {
            str = a10.f27289b;
        } else {
            str = null;
        }
        y(c0269a, str, qVar);
        int size = c0269a.f27150c.size();
        for (int i11 = 0; i11 < size; i11++) {
            a.b bVar = (a.b) c0269a.f27150c.get(i11);
            if (bVar.f27148a == 1970628964) {
                I(bVar.f27152b, qVar, bArr);
            }
        }
    }

    private static Pair F(e0 e0Var) {
        e0Var.T(12);
        return Pair.create(Integer.valueOf(e0Var.p()), new c(e0Var.p() - 1, e0Var.p(), e0Var.p(), e0Var.p()));
    }

    private static int G(b bVar, int i10, int i11, e0 e0Var, int i12) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        long j10;
        boolean z15;
        int i13;
        boolean z16;
        int i14;
        boolean z17;
        int i15;
        boolean z18;
        boolean z19;
        boolean z20;
        int i16;
        boolean z21;
        b bVar2 = bVar;
        e0Var.T(8);
        int b10 = o3.a.b(e0Var.p());
        o oVar = bVar2.f27225d.f27311a;
        q qVar = bVar2.f27223b;
        c cVar = (c) q0.j(qVar.f27293a);
        qVar.f27300h[i10] = e0Var.K();
        long[] jArr = qVar.f27299g;
        long j11 = qVar.f27295c;
        jArr[i10] = j11;
        if ((b10 & 1) != 0) {
            jArr[i10] = j11 + e0Var.p();
        }
        if ((b10 & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i17 = cVar.f27185d;
        if (z10) {
            i17 = e0Var.p();
        }
        if ((b10 & 256) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((b10 & 512) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if ((b10 & 1024) != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        if ((b10 & 2048) != 0) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (l(oVar)) {
            j10 = ((long[]) q0.j(oVar.f27285i))[0];
        } else {
            j10 = 0;
        }
        int[] iArr = qVar.f27301i;
        long[] jArr2 = qVar.f27302j;
        boolean[] zArr = qVar.f27303k;
        int i18 = i17;
        if (oVar.f27278b == 2 && (i11 & 1) != 0) {
            z15 = true;
        } else {
            z15 = false;
        }
        int i19 = i12 + qVar.f27300h[i10];
        boolean z22 = z15;
        long j12 = oVar.f27279c;
        long j13 = qVar.f27309q;
        int i20 = i12;
        while (i20 < i19) {
            if (z11) {
                i13 = e0Var.p();
            } else {
                i13 = cVar.f27183b;
            }
            int d10 = d(i13);
            if (z12) {
                i14 = e0Var.p();
                z16 = z11;
            } else {
                z16 = z11;
                i14 = cVar.f27184c;
            }
            int d11 = d(i14);
            if (z13) {
                z17 = z10;
                i15 = e0Var.p();
            } else if (i20 == 0 && z10) {
                z17 = z10;
                i15 = i18;
            } else {
                z17 = z10;
                i15 = cVar.f27185d;
            }
            if (z14) {
                z18 = z14;
                z19 = z12;
                z20 = z13;
                i16 = e0Var.p();
            } else {
                z18 = z14;
                z19 = z12;
                z20 = z13;
                i16 = 0;
            }
            long M0 = q0.M0((i16 + j13) - j10, 1000000L, j12);
            jArr2[i20] = M0;
            if (!qVar.f27310r) {
                jArr2[i20] = M0 + bVar2.f27225d.f27318h;
            }
            iArr[i20] = d11;
            if (((i15 >> 16) & 1) == 0 && (!z22 || i20 == 0)) {
                z21 = true;
            } else {
                z21 = false;
            }
            zArr[i20] = z21;
            j13 += d10;
            i20++;
            bVar2 = bVar;
            z11 = z16;
            z10 = z17;
            z14 = z18;
            z12 = z19;
            z13 = z20;
        }
        qVar.f27309q = j13;
        return i19;
    }

    private static void H(a.C0269a c0269a, b bVar, int i10) {
        List list = c0269a.f27150c;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            a.b bVar2 = (a.b) list.get(i13);
            if (bVar2.f27148a == 1953658222) {
                e0 e0Var = bVar2.f27152b;
                e0Var.T(12);
                int K2 = e0Var.K();
                if (K2 > 0) {
                    i12 += K2;
                    i11++;
                }
            }
        }
        bVar.f27229h = 0;
        bVar.f27228g = 0;
        bVar.f27227f = 0;
        bVar.f27223b.e(i11, i12);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            a.b bVar3 = (a.b) list.get(i16);
            if (bVar3.f27148a == 1953658222) {
                i15 = G(bVar, i14, i10, bVar3.f27152b, i15);
                i14++;
            }
        }
    }

    private static void I(e0 e0Var, q qVar, byte[] bArr) {
        e0Var.T(8);
        e0Var.l(bArr, 0, 16);
        if (!Arrays.equals(bArr, J)) {
            return;
        }
        z(e0Var, 16, qVar);
    }

    private void J(long j10) {
        while (!this.f27205m.isEmpty() && ((a.C0269a) this.f27205m.peek()).f27149b == j10) {
            o((a.C0269a) this.f27205m.pop());
        }
        e();
    }

    private boolean K(g3.l lVar) {
        if (this.f27211s == 0) {
            if (!lVar.e(this.f27204l.e(), 0, 8, true)) {
                return false;
            }
            this.f27211s = 8;
            this.f27204l.T(0);
            this.f27210r = this.f27204l.I();
            this.f27209q = this.f27204l.p();
        }
        long j10 = this.f27210r;
        if (j10 == 1) {
            lVar.readFully(this.f27204l.e(), 8, 8);
            this.f27211s += 8;
            this.f27210r = this.f27204l.L();
        } else if (j10 == 0) {
            long b10 = lVar.b();
            if (b10 == -1 && !this.f27205m.isEmpty()) {
                b10 = ((a.C0269a) this.f27205m.peek()).f27149b;
            }
            if (b10 != -1) {
                this.f27210r = (b10 - lVar.c()) + this.f27211s;
            }
        }
        if (this.f27210r >= this.f27211s) {
            long c10 = lVar.c() - this.f27211s;
            int i10 = this.f27209q;
            if ((i10 == 1836019558 || i10 == 1835295092) && !this.H) {
                this.E.l(new z.b(this.f27216x, c10));
                this.H = true;
            }
            if (this.f27209q == 1836019558) {
                int size = this.f27196d.size();
                for (int i11 = 0; i11 < size; i11++) {
                    q qVar = ((b) this.f27196d.valueAt(i11)).f27223b;
                    qVar.f27294b = c10;
                    qVar.f27296d = c10;
                    qVar.f27295c = c10;
                }
            }
            int i12 = this.f27209q;
            if (i12 == 1835295092) {
                this.f27218z = null;
                this.f27213u = c10 + this.f27210r;
                this.f27208p = 2;
                return true;
            }
            if (O(i12)) {
                long c11 = (lVar.c() + this.f27210r) - 8;
                this.f27205m.push(new a.C0269a(this.f27209q, c11));
                if (this.f27210r == this.f27211s) {
                    J(c11);
                } else {
                    e();
                }
            } else if (P(this.f27209q)) {
                if (this.f27211s == 8) {
                    if (this.f27210r <= 2147483647L) {
                        e0 e0Var = new e0((int) this.f27210r);
                        System.arraycopy(this.f27204l.e(), 0, e0Var.e(), 0, 8);
                        this.f27212t = e0Var;
                        this.f27208p = 1;
                    } else {
                        throw e3.d("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw e3.d("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.f27210r <= 2147483647L) {
                this.f27212t = null;
                this.f27208p = 1;
            } else {
                throw e3.d("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw e3.d("Atom size less than header length (unsupported).");
    }

    private void L(g3.l lVar) {
        int i10 = ((int) this.f27210r) - this.f27211s;
        e0 e0Var = this.f27212t;
        if (e0Var != null) {
            lVar.readFully(e0Var.e(), 8, i10);
            q(new a.b(this.f27209q, e0Var), lVar.c());
        } else {
            lVar.m(i10);
        }
        J(lVar.c());
    }

    private void M(g3.l lVar) {
        int size = this.f27196d.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = ((b) this.f27196d.valueAt(i10)).f27223b;
            if (qVar.f27308p) {
                long j11 = qVar.f27296d;
                if (j11 < j10) {
                    bVar = (b) this.f27196d.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f27208p = 3;
            return;
        }
        int c10 = (int) (j10 - lVar.c());
        if (c10 >= 0) {
            lVar.m(c10);
            bVar.f27223b.a(lVar);
            return;
        }
        throw e3.a("Offset to encryption data was negative.", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean N(g3.l lVar) {
        b0.a aVar;
        boolean z10;
        int e10;
        b bVar = this.f27218z;
        Throwable th = null;
        if (bVar == null) {
            bVar = j(this.f27196d);
            if (bVar == null) {
                int c10 = (int) (this.f27213u - lVar.c());
                if (c10 >= 0) {
                    lVar.m(c10);
                    e();
                    return false;
                }
                throw e3.a("Offset to end of mdat was negative.", null);
            }
            int d10 = (int) (bVar.d() - lVar.c());
            if (d10 < 0) {
                y4.r.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                d10 = 0;
            }
            lVar.m(d10);
            this.f27218z = bVar;
        }
        int i10 = 4;
        int i11 = 1;
        if (this.f27208p == 3) {
            int f10 = bVar.f();
            this.A = f10;
            if (bVar.f27227f < bVar.f27230i) {
                lVar.m(f10);
                bVar.m();
                if (!bVar.h()) {
                    this.f27218z = null;
                }
                this.f27208p = 3;
                return true;
            }
            if (bVar.f27225d.f27311a.f27283g == 1) {
                this.A = f10 - 8;
                lVar.m(8);
            }
            if ("audio/ac4".equals(bVar.f27225d.f27311a.f27282f.f4514l)) {
                this.B = bVar.i(this.A, 7);
                d3.c.a(this.A, this.f27201i);
                bVar.f27222a.b(this.f27201i, 7);
                this.B += 7;
            } else {
                this.B = bVar.i(this.A, 0);
            }
            this.A += this.B;
            this.f27208p = 4;
            this.C = 0;
        }
        o oVar = bVar.f27225d.f27311a;
        b0 b0Var = bVar.f27222a;
        long e11 = bVar.e();
        m0 m0Var = this.f27202j;
        if (m0Var != null) {
            e11 = m0Var.a(e11);
        }
        long j10 = e11;
        if (oVar.f27286j == 0) {
            while (true) {
                int i12 = this.B;
                int i13 = this.A;
                if (i12 >= i13) {
                    break;
                }
                this.B += b0Var.e(lVar, i13 - i12, false);
            }
        } else {
            byte[] e12 = this.f27198f.e();
            e12[0] = 0;
            e12[1] = 0;
            e12[2] = 0;
            int i14 = oVar.f27286j;
            int i15 = i14 + 1;
            int i16 = 4 - i14;
            while (this.B < this.A) {
                int i17 = this.C;
                if (i17 == 0) {
                    lVar.readFully(e12, i16, i15);
                    this.f27198f.T(0);
                    int p10 = this.f27198f.p();
                    if (p10 >= i11) {
                        this.C = p10 - 1;
                        this.f27197e.T(0);
                        b0Var.b(this.f27197e, i10);
                        b0Var.b(this.f27198f, i11);
                        if (this.G.length > 0 && w.g(oVar.f27282f.f4514l, e12[i10])) {
                            z10 = i11;
                        } else {
                            z10 = 0;
                        }
                        this.D = z10;
                        this.B += 5;
                        this.A += i16;
                    } else {
                        throw e3.a("Invalid NAL length", th);
                    }
                } else {
                    if (this.D) {
                        this.f27199g.P(i17);
                        lVar.readFully(this.f27199g.e(), 0, this.C);
                        b0Var.b(this.f27199g, this.C);
                        e10 = this.C;
                        int q10 = w.q(this.f27199g.e(), this.f27199g.g());
                        this.f27199g.T("video/hevc".equals(oVar.f27282f.f4514l) ? 1 : 0);
                        this.f27199g.S(q10);
                        g3.b.a(j10, this.f27199g, this.G);
                    } else {
                        e10 = b0Var.e(lVar, i17, false);
                    }
                    this.B += e10;
                    this.C -= e10;
                    th = null;
                    i10 = 4;
                    i11 = 1;
                }
            }
        }
        int c11 = bVar.c();
        p g10 = bVar.g();
        if (g10 != null) {
            aVar = g10.f27290c;
        } else {
            aVar = null;
        }
        b0Var.f(j10, c11, this.A, 0, aVar);
        t(j10);
        if (!bVar.h()) {
            this.f27218z = null;
        }
        this.f27208p = 3;
        return true;
    }

    private static boolean O(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    private static boolean P(int i10) {
        return i10 == 1751411826 || i10 == 1835296868 || i10 == 1836476516 || i10 == 1936286840 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1668576371 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1937011571 || i10 == 1952867444 || i10 == 1952868452 || i10 == 1953196132 || i10 == 1953654136 || i10 == 1953658222 || i10 == 1886614376 || i10 == 1935763834 || i10 == 1935763823 || i10 == 1936027235 || i10 == 1970628964 || i10 == 1935828848 || i10 == 1936158820 || i10 == 1701606260 || i10 == 1835362404 || i10 == 1701671783;
    }

    private static int d(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw e3.a("Unexpected negative value: " + i10, null);
    }

    private void e() {
        this.f27208p = 0;
        this.f27211s = 0;
    }

    private c h(SparseArray sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return (c) sparseArray.valueAt(0);
        }
        return (c) y4.a.e((c) sparseArray.get(i10));
    }

    private static f3.m i(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            a.b bVar = (a.b) list.get(i10);
            if (bVar.f27148a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] e10 = bVar.f27152b.e();
                UUID f10 = l.f(e10);
                if (f10 == null) {
                    y4.r.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new m.b(f10, "video/mp4", e10));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new f3.m(arrayList);
    }

    private static b j(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar2 = (b) sparseArray.valueAt(i10);
            if ((bVar2.f27233l || bVar2.f27227f != bVar2.f27225d.f27312b) && (!bVar2.f27233l || bVar2.f27229h != bVar2.f27223b.f27297e)) {
                long d10 = bVar2.d();
                if (d10 < j10) {
                    bVar = bVar2;
                    j10 = d10;
                }
            }
        }
        return bVar;
    }

    private void k() {
        int i10;
        b0[] b0VarArr = new b0[2];
        this.F = b0VarArr;
        b0 b0Var = this.f27207o;
        int i11 = 0;
        if (b0Var != null) {
            b0VarArr[0] = b0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.f27193a & 4) != 0) {
            b0VarArr[i10] = this.E.a(100, 5);
            i12 = ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE;
            i10++;
        }
        b0[] b0VarArr2 = (b0[]) q0.F0(this.F, i10);
        this.F = b0VarArr2;
        for (b0 b0Var2 : b0VarArr2) {
            b0Var2.c(K);
        }
        this.G = new b0[this.f27195c.size()];
        while (i11 < this.G.length) {
            b0 a10 = this.E.a(i12, 3);
            a10.c((x1) this.f27195c.get(i11));
            this.G[i11] = a10;
            i11++;
            i12++;
        }
    }

    private static boolean l(o oVar) {
        long[] jArr;
        long[] jArr2 = oVar.f27284h;
        if (jArr2 == null || jArr2.length != 1 || (jArr = oVar.f27285i) == null) {
            return false;
        }
        long j10 = jArr2[0];
        if (j10 != 0 && q0.M0(j10 + jArr[0], 1000000L, oVar.f27280d) < oVar.f27281e) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] m() {
        return new g3.k[]{new g()};
    }

    private void o(a.C0269a c0269a) {
        int i10 = c0269a.f27148a;
        if (i10 == 1836019574) {
            s(c0269a);
        } else if (i10 == 1836019558) {
            r(c0269a);
        } else if (!this.f27205m.isEmpty()) {
            ((a.C0269a) this.f27205m.peek()).d(c0269a);
        }
    }

    private void p(e0 e0Var) {
        long M0;
        long j10;
        String str;
        long M02;
        String str2;
        long I2;
        long j11;
        b0[] b0VarArr;
        if (this.F.length == 0) {
            return;
        }
        e0Var.T(8);
        int c10 = o3.a.c(e0Var.p());
        if (c10 != 0) {
            if (c10 != 1) {
                y4.r.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + c10);
                return;
            }
            long I3 = e0Var.I();
            j11 = q0.M0(e0Var.L(), 1000000L, I3);
            long M03 = q0.M0(e0Var.I(), 1000L, I3);
            long I4 = e0Var.I();
            str = (String) y4.a.e(e0Var.A());
            M02 = M03;
            I2 = I4;
            str2 = (String) y4.a.e(e0Var.A());
            M0 = -9223372036854775807L;
        } else {
            String str3 = (String) y4.a.e(e0Var.A());
            String str4 = (String) y4.a.e(e0Var.A());
            long I5 = e0Var.I();
            M0 = q0.M0(e0Var.I(), 1000000L, I5);
            long j12 = this.f27217y;
            if (j12 != -9223372036854775807L) {
                j10 = j12 + M0;
            } else {
                j10 = -9223372036854775807L;
            }
            str = str3;
            M02 = q0.M0(e0Var.I(), 1000L, I5);
            str2 = str4;
            I2 = e0Var.I();
            j11 = j10;
        }
        byte[] bArr = new byte[e0Var.a()];
        e0Var.l(bArr, 0, e0Var.a());
        e0 e0Var2 = new e0(this.f27203k.a(new v3.a(str, str2, M02, I2, bArr)));
        int a10 = e0Var2.a();
        for (b0 b0Var : this.F) {
            e0Var2.T(0);
            b0Var.b(e0Var2, a10);
        }
        if (j11 == -9223372036854775807L) {
            this.f27206n.addLast(new a(M0, true, a10));
            this.f27214v += a10;
        } else if (!this.f27206n.isEmpty()) {
            this.f27206n.addLast(new a(j11, false, a10));
            this.f27214v += a10;
        } else {
            m0 m0Var = this.f27202j;
            if (m0Var != null) {
                j11 = m0Var.a(j11);
            }
            for (b0 b0Var2 : this.F) {
                b0Var2.f(j11, 1, a10, 0, null);
            }
        }
    }

    private void q(a.b bVar, long j10) {
        if (!this.f27205m.isEmpty()) {
            ((a.C0269a) this.f27205m.peek()).e(bVar);
            return;
        }
        int i10 = bVar.f27148a;
        if (i10 == 1936286840) {
            Pair B = B(bVar.f27152b, j10);
            this.f27217y = ((Long) B.first).longValue();
            this.E.l((z) B.second);
            this.H = true;
        } else if (i10 == 1701671783) {
            p(bVar.f27152b);
        }
    }

    private void r(a.C0269a c0269a) {
        boolean z10;
        SparseArray sparseArray = this.f27196d;
        if (this.f27194b != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        v(c0269a, sparseArray, z10, this.f27193a, this.f27200h);
        f3.m i10 = i(c0269a.f27150c);
        if (i10 != null) {
            int size = this.f27196d.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((b) this.f27196d.valueAt(i11)).n(i10);
            }
        }
        if (this.f27215w != -9223372036854775807L) {
            int size2 = this.f27196d.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((b) this.f27196d.valueAt(i12)).l(this.f27215w);
            }
            this.f27215w = -9223372036854775807L;
        }
    }

    private void s(a.C0269a c0269a) {
        boolean z10;
        boolean z11;
        boolean z12 = true;
        int i10 = 0;
        if (this.f27194b == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.g(z10, "Unexpected moov box.");
        f3.m i11 = i(c0269a.f27150c);
        a.C0269a c0269a2 = (a.C0269a) y4.a.e(c0269a.f(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = c0269a2.f27150c.size();
        long j10 = -9223372036854775807L;
        for (int i12 = 0; i12 < size; i12++) {
            a.b bVar = (a.b) c0269a2.f27150c.get(i12);
            int i13 = bVar.f27148a;
            if (i13 == 1953654136) {
                Pair F = F(bVar.f27152b);
                sparseArray.put(((Integer) F.first).intValue(), (c) F.second);
            } else if (i13 == 1835362404) {
                j10 = u(bVar.f27152b);
            }
        }
        v vVar = new v();
        if ((this.f27193a & 16) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        List A = o3.b.A(c0269a, vVar, j10, i11, z11, false, new n6.g() { // from class: o3.e
            @Override // n6.g
            public final Object apply(Object obj) {
                return g.this.n((o) obj);
            }
        });
        int size2 = A.size();
        if (this.f27196d.size() == 0) {
            while (i10 < size2) {
                r rVar = (r) A.get(i10);
                o oVar = rVar.f27311a;
                this.f27196d.put(oVar.f27277a, new b(this.E.a(i10, oVar.f27278b), rVar, h(sparseArray, oVar.f27277a)));
                this.f27216x = Math.max(this.f27216x, oVar.f27281e);
                i10++;
            }
            this.E.n();
            return;
        }
        if (this.f27196d.size() != size2) {
            z12 = false;
        }
        y4.a.f(z12);
        while (i10 < size2) {
            r rVar2 = (r) A.get(i10);
            o oVar2 = rVar2.f27311a;
            ((b) this.f27196d.get(oVar2.f27277a)).j(rVar2, h(sparseArray, oVar2.f27277a));
            i10++;
        }
    }

    private void t(long j10) {
        while (!this.f27206n.isEmpty()) {
            a aVar = (a) this.f27206n.removeFirst();
            this.f27214v -= aVar.f27221c;
            long j11 = aVar.f27219a;
            if (aVar.f27220b) {
                j11 += j10;
            }
            m0 m0Var = this.f27202j;
            if (m0Var != null) {
                j11 = m0Var.a(j11);
            }
            for (b0 b0Var : this.F) {
                b0Var.f(j11, 1, aVar.f27221c, this.f27214v, null);
            }
        }
    }

    private static long u(e0 e0Var) {
        e0Var.T(8);
        if (o3.a.c(e0Var.p()) == 0) {
            return e0Var.I();
        }
        return e0Var.L();
    }

    private static void v(a.C0269a c0269a, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) {
        int size = c0269a.f27151d.size();
        for (int i11 = 0; i11 < size; i11++) {
            a.C0269a c0269a2 = (a.C0269a) c0269a.f27151d.get(i11);
            if (c0269a2.f27148a == 1953653094) {
                E(c0269a2, sparseArray, z10, i10, bArr);
            }
        }
    }

    private static void w(e0 e0Var, q qVar) {
        long L;
        e0Var.T(8);
        int p10 = e0Var.p();
        if ((o3.a.b(p10) & 1) == 1) {
            e0Var.U(8);
        }
        int K2 = e0Var.K();
        if (K2 == 1) {
            int c10 = o3.a.c(p10);
            long j10 = qVar.f27296d;
            if (c10 == 0) {
                L = e0Var.I();
            } else {
                L = e0Var.L();
            }
            qVar.f27296d = j10 + L;
            return;
        }
        throw e3.a("Unexpected saio entry count: " + K2, null);
    }

    private static void x(p pVar, e0 e0Var, q qVar) {
        int i10;
        boolean z10;
        int i11 = pVar.f27291d;
        e0Var.T(8);
        boolean z11 = true;
        if ((o3.a.b(e0Var.p()) & 1) == 1) {
            e0Var.U(8);
        }
        int G = e0Var.G();
        int K2 = e0Var.K();
        if (K2 <= qVar.f27298f) {
            if (G == 0) {
                boolean[] zArr = qVar.f27305m;
                i10 = 0;
                for (int i12 = 0; i12 < K2; i12++) {
                    int G2 = e0Var.G();
                    i10 += G2;
                    if (G2 > i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zArr[i12] = z10;
                }
            } else {
                if (G <= i11) {
                    z11 = false;
                }
                i10 = (G * K2) + 0;
                Arrays.fill(qVar.f27305m, 0, K2, z11);
            }
            Arrays.fill(qVar.f27305m, K2, qVar.f27298f, false);
            if (i10 > 0) {
                qVar.d(i10);
                return;
            }
            return;
        }
        throw e3.a("Saiz sample count " + K2 + " is greater than fragment sample count" + qVar.f27298f, null);
    }

    private static void y(a.C0269a c0269a, String str, q qVar) {
        boolean z10;
        byte[] bArr = null;
        e0 e0Var = null;
        e0 e0Var2 = null;
        for (int i10 = 0; i10 < c0269a.f27150c.size(); i10++) {
            a.b bVar = (a.b) c0269a.f27150c.get(i10);
            e0 e0Var3 = bVar.f27152b;
            int i11 = bVar.f27148a;
            if (i11 == 1935828848) {
                e0Var3.T(12);
                if (e0Var3.p() == 1936025959) {
                    e0Var = e0Var3;
                }
            } else if (i11 == 1936158820) {
                e0Var3.T(12);
                if (e0Var3.p() == 1936025959) {
                    e0Var2 = e0Var3;
                }
            }
        }
        if (e0Var != null && e0Var2 != null) {
            e0Var.T(8);
            int c10 = o3.a.c(e0Var.p());
            e0Var.U(4);
            if (c10 == 1) {
                e0Var.U(4);
            }
            if (e0Var.p() == 1) {
                e0Var2.T(8);
                int c11 = o3.a.c(e0Var2.p());
                e0Var2.U(4);
                if (c11 == 1) {
                    if (e0Var2.I() == 0) {
                        throw e3.d("Variable length description in sgpd found (unsupported)");
                    }
                } else if (c11 >= 2) {
                    e0Var2.U(4);
                }
                if (e0Var2.I() == 1) {
                    e0Var2.U(1);
                    int G = e0Var2.G();
                    int i12 = (G & 240) >> 4;
                    int i13 = G & 15;
                    if (e0Var2.G() == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        return;
                    }
                    int G2 = e0Var2.G();
                    byte[] bArr2 = new byte[16];
                    e0Var2.l(bArr2, 0, 16);
                    if (G2 == 0) {
                        int G3 = e0Var2.G();
                        bArr = new byte[G3];
                        e0Var2.l(bArr, 0, G3);
                    }
                    qVar.f27304l = true;
                    qVar.f27306n = new p(z10, str, G2, bArr2, i12, i13, bArr);
                    return;
                }
                throw e3.d("Entry count in sgpd != 1 (unsupported).");
            }
            throw e3.d("Entry count in sbgp != 1 (unsupported).");
        }
    }

    private static void z(e0 e0Var, int i10, q qVar) {
        boolean z10;
        e0Var.T(i10 + 8);
        int b10 = o3.a.b(e0Var.p());
        if ((b10 & 1) == 0) {
            if ((b10 & 2) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int K2 = e0Var.K();
            if (K2 == 0) {
                Arrays.fill(qVar.f27305m, 0, qVar.f27298f, false);
                return;
            } else if (K2 == qVar.f27298f) {
                Arrays.fill(qVar.f27305m, 0, K2, z10);
                qVar.d(e0Var.a());
                qVar.b(e0Var);
                return;
            } else {
                throw e3.a("Senc sample count " + K2 + " is different from fragment sample count" + qVar.f27298f, null);
            }
        }
        throw e3.d("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        int size = this.f27196d.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((b) this.f27196d.valueAt(i10)).k();
        }
        this.f27206n.clear();
        this.f27214v = 0;
        this.f27215w = j11;
        this.f27205m.clear();
        e();
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.E = mVar;
        e();
        k();
        o oVar = this.f27194b;
        if (oVar != null) {
            this.f27196d.put(0, new b(mVar.a(0, oVar.f27278b), new r(this.f27194b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.n();
        }
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        return n.b(lVar);
    }

    @Override // g3.k
    public int g(g3.l lVar, y yVar) {
        while (true) {
            int i10 = this.f27208p;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (N(lVar)) {
                            return 0;
                        }
                    } else {
                        M(lVar);
                    }
                } else {
                    L(lVar);
                }
            } else if (!K(lVar)) {
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o n(o oVar) {
        return oVar;
    }

    @Override // g3.k
    public void release() {
    }

    public g(int i10) {
        this(i10, null);
    }

    public g(int i10, m0 m0Var) {
        this(i10, m0Var, null, Collections.emptyList());
    }

    public g(int i10, m0 m0Var, o oVar) {
        this(i10, m0Var, oVar, Collections.emptyList());
    }

    public g(int i10, m0 m0Var, o oVar, List list) {
        this(i10, m0Var, oVar, list, null);
    }

    public g(int i10, m0 m0Var, o oVar, List list, b0 b0Var) {
        this.f27193a = i10;
        this.f27202j = m0Var;
        this.f27194b = oVar;
        this.f27195c = Collections.unmodifiableList(list);
        this.f27207o = b0Var;
        this.f27203k = new v3.c();
        this.f27204l = new e0(16);
        this.f27197e = new e0(w.f32972a);
        this.f27198f = new e0(5);
        this.f27199g = new e0();
        byte[] bArr = new byte[16];
        this.f27200h = bArr;
        this.f27201i = new e0(bArr);
        this.f27205m = new ArrayDeque();
        this.f27206n = new ArrayDeque();
        this.f27196d = new SparseArray();
        this.f27216x = -9223372036854775807L;
        this.f27215w = -9223372036854775807L;
        this.f27217y = -9223372036854775807L;
        this.E = g3.m.f16222r0;
        this.F = new b0[0];
        this.G = new b0[0];
    }
}
