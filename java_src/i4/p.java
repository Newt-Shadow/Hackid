package i4;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import b3.e3;
import b3.x1;
import b3.x3;
import b3.y1;
import d4.a0;
import d4.l0;
import d4.m0;
import d4.n0;
import d4.s0;
import d4.u0;
import f3.u;
import f3.v;
import g3.b0;
import g3.z;
import i4.f;
import i4.p;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import o6.q;
import t3.a;
import w4.g0;
import x4.d0;
import x4.e0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p implements e0.b, e0.f, n0, g3.m, l0.d {
    private static final Set Y = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private x1 F;
    private x1 G;
    private boolean H;
    private u0 I;
    private Set J;
    private int[] K;
    private int L;
    private boolean M;
    private boolean[] N;
    private boolean[] O;
    private long P;
    private long Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    private f3.m W;
    private i X;

    /* renamed from: a  reason: collision with root package name */
    private final String f17204a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17205b;

    /* renamed from: c  reason: collision with root package name */
    private final b f17206c;

    /* renamed from: d  reason: collision with root package name */
    private final f f17207d;

    /* renamed from: e  reason: collision with root package name */
    private final x4.b f17208e;

    /* renamed from: f  reason: collision with root package name */
    private final x1 f17209f;

    /* renamed from: g  reason: collision with root package name */
    private final v f17210g;

    /* renamed from: h  reason: collision with root package name */
    private final u.a f17211h;

    /* renamed from: i  reason: collision with root package name */
    private final d0 f17212i;

    /* renamed from: k  reason: collision with root package name */
    private final a0.a f17214k;

    /* renamed from: l  reason: collision with root package name */
    private final int f17215l;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList f17217n;

    /* renamed from: o  reason: collision with root package name */
    private final List f17218o;

    /* renamed from: p  reason: collision with root package name */
    private final Runnable f17219p;

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f17220q;

    /* renamed from: r  reason: collision with root package name */
    private final Handler f17221r;

    /* renamed from: s  reason: collision with root package name */
    private final ArrayList f17222s;

    /* renamed from: t  reason: collision with root package name */
    private final Map f17223t;

    /* renamed from: u  reason: collision with root package name */
    private f4.f f17224u;

    /* renamed from: v  reason: collision with root package name */
    private d[] f17225v;

    /* renamed from: x  reason: collision with root package name */
    private Set f17227x;

    /* renamed from: y  reason: collision with root package name */
    private SparseIntArray f17228y;

    /* renamed from: z  reason: collision with root package name */
    private b0 f17229z;

    /* renamed from: j  reason: collision with root package name */
    private final e0 f17213j = new e0("Loader:HlsSampleStreamWrapper");

    /* renamed from: m  reason: collision with root package name */
    private final f.b f17216m = new f.b();

    /* renamed from: w  reason: collision with root package name */
    private int[] f17226w = new int[0];

    /* loaded from: classes.dex */
    public interface b extends n0.a {
        void a();

        void j(Uri uri);
    }

    /* loaded from: classes.dex */
    private static class c implements b0 {

        /* renamed from: g  reason: collision with root package name */
        private static final x1 f17230g = new x1.b().g0("application/id3").G();

        /* renamed from: h  reason: collision with root package name */
        private static final x1 f17231h = new x1.b().g0("application/x-emsg").G();

        /* renamed from: a  reason: collision with root package name */
        private final v3.b f17232a = new v3.b();

        /* renamed from: b  reason: collision with root package name */
        private final b0 f17233b;

        /* renamed from: c  reason: collision with root package name */
        private final x1 f17234c;

        /* renamed from: d  reason: collision with root package name */
        private x1 f17235d;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f17236e;

        /* renamed from: f  reason: collision with root package name */
        private int f17237f;

        public c(b0 b0Var, int i10) {
            this.f17233b = b0Var;
            if (i10 != 1) {
                if (i10 == 3) {
                    this.f17234c = f17231h;
                } else {
                    throw new IllegalArgumentException("Unknown metadataType: " + i10);
                }
            } else {
                this.f17234c = f17230g;
            }
            this.f17236e = new byte[0];
            this.f17237f = 0;
        }

        private boolean g(v3.a aVar) {
            x1 y10 = aVar.y();
            if (y10 != null && q0.c(this.f17234c.f4514l, y10.f4514l)) {
                return true;
            }
            return false;
        }

        private void h(int i10) {
            byte[] bArr = this.f17236e;
            if (bArr.length < i10) {
                this.f17236e = Arrays.copyOf(bArr, i10 + (i10 / 2));
            }
        }

        private y4.e0 i(int i10, int i11) {
            int i12 = this.f17237f - i11;
            y4.e0 e0Var = new y4.e0(Arrays.copyOfRange(this.f17236e, i12 - i10, i12));
            byte[] bArr = this.f17236e;
            System.arraycopy(bArr, i12, bArr, 0, i11);
            this.f17237f = i11;
            return e0Var;
        }

        @Override // g3.b0
        public void a(y4.e0 e0Var, int i10, int i11) {
            h(this.f17237f + i10);
            e0Var.l(this.f17236e, this.f17237f, i10);
            this.f17237f += i10;
        }

        @Override // g3.b0
        public void c(x1 x1Var) {
            this.f17235d = x1Var;
            this.f17233b.c(this.f17234c);
        }

        @Override // g3.b0
        public int d(x4.h hVar, int i10, boolean z10, int i11) {
            h(this.f17237f + i10);
            int read = hVar.read(this.f17236e, this.f17237f, i10);
            if (read == -1) {
                if (z10) {
                    return -1;
                }
                throw new EOFException();
            }
            this.f17237f += read;
            return read;
        }

        @Override // g3.b0
        public void f(long j10, int i10, int i11, int i12, b0.a aVar) {
            y4.a.e(this.f17235d);
            y4.e0 i13 = i(i11, i12);
            if (!q0.c(this.f17235d.f4514l, this.f17234c.f4514l)) {
                if ("application/x-emsg".equals(this.f17235d.f4514l)) {
                    v3.a c10 = this.f17232a.c(i13);
                    if (!g(c10)) {
                        y4.r.i("HlsSampleStreamWrapper", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f17234c.f4514l, c10.y()));
                        return;
                    }
                    i13 = new y4.e0((byte[]) y4.a.e(c10.A()));
                } else {
                    y4.r.i("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f17235d.f4514l);
                    return;
                }
            }
            int a10 = i13.a();
            this.f17233b.b(i13, a10);
            this.f17233b.f(j10, i10, a10, i12, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d extends l0 {
        private final Map H;
        private f3.m I;

        private t3.a h0(t3.a aVar) {
            if (aVar == null) {
                return null;
            }
            int e10 = aVar.e();
            int i10 = 0;
            while (true) {
                if (i10 < e10) {
                    a.b d10 = aVar.d(i10);
                    if ((d10 instanceof y3.l) && "com.apple.streaming.transportStreamTimestamp".equals(((y3.l) d10).f32853b)) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1) {
                return aVar;
            }
            if (e10 == 1) {
                return null;
            }
            a.b[] bVarArr = new a.b[e10 - 1];
            for (int i11 = 0; i11 < e10; i11++) {
                if (i11 != i10) {
                    bVarArr[i11 < i10 ? i11 : i11 - 1] = aVar.d(i11);
                }
            }
            return new t3.a(bVarArr);
        }

        @Override // d4.l0, g3.b0
        public void f(long j10, int i10, int i11, int i12, b0.a aVar) {
            super.f(j10, i10, i11, i12, aVar);
        }

        public void i0(f3.m mVar) {
            this.I = mVar;
            I();
        }

        public void j0(i iVar) {
            f0(iVar.f17156k);
        }

        @Override // d4.l0
        public x1 w(x1 x1Var) {
            f3.m mVar;
            f3.m mVar2 = this.I;
            if (mVar2 == null) {
                mVar2 = x1Var.f4517o;
            }
            if (mVar2 != null && (mVar = (f3.m) this.H.get(mVar2.f15716c)) != null) {
                mVar2 = mVar;
            }
            t3.a h02 = h0(x1Var.f4512j);
            if (mVar2 != x1Var.f4517o || h02 != x1Var.f4512j) {
                x1Var = x1Var.b().O(mVar2).Z(h02).G();
            }
            return super.w(x1Var);
        }

        private d(x4.b bVar, v vVar, u.a aVar, Map map) {
            super(bVar, vVar, aVar);
            this.H = map;
        }
    }

    public p(String str, int i10, b bVar, f fVar, Map map, x4.b bVar2, long j10, x1 x1Var, v vVar, u.a aVar, d0 d0Var, a0.a aVar2, int i11) {
        this.f17204a = str;
        this.f17205b = i10;
        this.f17206c = bVar;
        this.f17207d = fVar;
        this.f17223t = map;
        this.f17208e = bVar2;
        this.f17209f = x1Var;
        this.f17210g = vVar;
        this.f17211h = aVar;
        this.f17212i = d0Var;
        this.f17214k = aVar2;
        this.f17215l = i11;
        Set set = Y;
        this.f17227x = new HashSet(set.size());
        this.f17228y = new SparseIntArray(set.size());
        this.f17225v = new d[0];
        this.O = new boolean[0];
        this.N = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f17217n = arrayList;
        this.f17218o = Collections.unmodifiableList(arrayList);
        this.f17222s = new ArrayList();
        this.f17219p = new Runnable() { // from class: i4.n
            @Override // java.lang.Runnable
            public final void run() {
                p.this.S();
            }
        };
        this.f17220q = new Runnable() { // from class: i4.o
            @Override // java.lang.Runnable
            public final void run() {
                p.this.b0();
            }
        };
        this.f17221r = q0.w();
        this.P = j10;
        this.Q = j10;
    }

    private static g3.j B(int i10, int i11) {
        y4.r.i("HlsSampleStreamWrapper", "Unmapped track with id " + i10 + " of type " + i11);
        return new g3.j();
    }

    private l0 C(int i10, int i11) {
        int length = this.f17225v.length;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        d dVar = new d(this.f17208e, this.f17210g, this.f17211h, this.f17223t);
        dVar.b0(this.P);
        if (z10) {
            dVar.i0(this.W);
        }
        dVar.a0(this.V);
        i iVar = this.X;
        if (iVar != null) {
            dVar.j0(iVar);
        }
        dVar.d0(this);
        int i12 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f17226w, i12);
        this.f17226w = copyOf;
        copyOf[length] = i10;
        this.f17225v = (d[]) q0.D0(this.f17225v, dVar);
        boolean[] copyOf2 = Arrays.copyOf(this.O, i12);
        this.O = copyOf2;
        copyOf2[length] = z10;
        this.M |= z10;
        this.f17227x.add(Integer.valueOf(i11));
        this.f17228y.append(i11, length);
        if (L(i11) > L(this.A)) {
            this.B = length;
            this.A = i11;
        }
        this.N = Arrays.copyOf(this.N, i12);
        return dVar;
    }

    private u0 D(s0[] s0VarArr) {
        for (int i10 = 0; i10 < s0VarArr.length; i10++) {
            s0 s0Var = s0VarArr[i10];
            x1[] x1VarArr = new x1[s0Var.f14950a];
            for (int i11 = 0; i11 < s0Var.f14950a; i11++) {
                x1 b10 = s0Var.b(i11);
                x1VarArr[i11] = b10.c(this.f17210g.c(b10));
            }
            s0VarArr[i10] = new s0(s0Var.f14951b, x1VarArr);
        }
        return new u0(s0VarArr);
    }

    private static x1 E(x1 x1Var, x1 x1Var2, boolean z10) {
        String d10;
        String str;
        int i10;
        int i11;
        if (x1Var == null) {
            return x1Var2;
        }
        int k10 = y4.v.k(x1Var2.f4514l);
        if (q0.K(x1Var.f4511i, k10) == 1) {
            d10 = q0.L(x1Var.f4511i, k10);
            str = y4.v.g(d10);
        } else {
            d10 = y4.v.d(x1Var.f4511i, x1Var2.f4514l);
            str = x1Var2.f4514l;
        }
        x1.b e02 = x1Var2.b().U(x1Var.f4503a).W(x1Var.f4504b).X(x1Var.f4505c).i0(x1Var.f4506d).e0(x1Var.f4507e);
        if (z10) {
            i10 = x1Var.f4508f;
        } else {
            i10 = -1;
        }
        x1.b I = e02.I(i10);
        if (z10) {
            i11 = x1Var.f4509g;
        } else {
            i11 = -1;
        }
        x1.b K = I.b0(i11).K(d10);
        if (k10 == 2) {
            K.n0(x1Var.f4519q).S(x1Var.f4520r).R(x1Var.f4521s);
        }
        if (str != null) {
            K.g0(str);
        }
        int i12 = x1Var.f4527y;
        if (i12 != -1 && k10 == 1) {
            K.J(i12);
        }
        t3.a aVar = x1Var.f4512j;
        if (aVar != null) {
            t3.a aVar2 = x1Var2.f4512j;
            if (aVar2 != null) {
                aVar = aVar2.b(aVar);
            }
            K.Z(aVar);
        }
        return K.G();
    }

    private void F(int i10) {
        y4.a.f(!this.f17213j.j());
        while (true) {
            if (i10 < this.f17217n.size()) {
                if (z(i10)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j10 = J().f15785h;
        i G = G(i10);
        if (this.f17217n.isEmpty()) {
            this.Q = this.P;
        } else {
            ((i) o6.t.c(this.f17217n)).o();
        }
        this.T = false;
        this.f17214k.D(this.A, G.f15784g, j10);
    }

    private i G(int i10) {
        i iVar = (i) this.f17217n.get(i10);
        ArrayList arrayList = this.f17217n;
        q0.L0(arrayList, i10, arrayList.size());
        for (int i11 = 0; i11 < this.f17225v.length; i11++) {
            this.f17225v[i11].u(iVar.m(i11));
        }
        return iVar;
    }

    private boolean H(i iVar) {
        int i10 = iVar.f17156k;
        int length = this.f17225v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.N[i11] && this.f17225v[i11].Q() == i10) {
                return false;
            }
        }
        return true;
    }

    private static boolean I(x1 x1Var, x1 x1Var2) {
        String str = x1Var.f4514l;
        String str2 = x1Var2.f4514l;
        int k10 = y4.v.k(str);
        if (k10 != 3) {
            if (k10 == y4.v.k(str2)) {
                return true;
            }
            return false;
        } else if (!q0.c(str, str2)) {
            return false;
        } else {
            if ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || x1Var.D == x1Var2.D) {
                return true;
            }
            return false;
        }
    }

    private i J() {
        ArrayList arrayList = this.f17217n;
        return (i) arrayList.get(arrayList.size() - 1);
    }

    private b0 K(int i10, int i11) {
        y4.a.a(Y.contains(Integer.valueOf(i11)));
        int i12 = this.f17228y.get(i11, -1);
        if (i12 == -1) {
            return null;
        }
        if (this.f17227x.add(Integer.valueOf(i11))) {
            this.f17226w[i12] = i10;
        }
        if (this.f17226w[i12] == i10) {
            return this.f17225v[i12];
        }
        return B(i10, i11);
    }

    private static int L(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return i10 != 3 ? 0 : 1;
            }
            return 3;
        }
        return 2;
    }

    private void M(i iVar) {
        d[] dVarArr;
        this.X = iVar;
        this.F = iVar.f15781d;
        this.Q = -9223372036854775807L;
        this.f17217n.add(iVar);
        q.a r10 = o6.q.r();
        for (d dVar : this.f17225v) {
            r10.a(Integer.valueOf(dVar.G()));
        }
        iVar.n(this, r10.k());
        for (d dVar2 : this.f17225v) {
            dVar2.j0(iVar);
            if (iVar.f17159n) {
                dVar2.g0();
            }
        }
    }

    private static boolean N(f4.f fVar) {
        return fVar instanceof i;
    }

    private boolean O() {
        if (this.Q != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    private void R() {
        int i10 = this.I.f14962a;
        int[] iArr = new int[i10];
        this.K = iArr;
        Arrays.fill(iArr, -1);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f17225v;
                if (i12 >= dVarArr.length) {
                    break;
                } else if (I((x1) y4.a.h(dVarArr[i12].F()), this.I.b(i11).b(0))) {
                    this.K[i11] = i12;
                    break;
                } else {
                    i12++;
                }
            }
        }
        Iterator it = this.f17222s.iterator();
        while (it.hasNext()) {
            ((l) it.next()).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        if (!this.H && this.K == null && this.C) {
            for (d dVar : this.f17225v) {
                if (dVar.F() == null) {
                    return;
                }
            }
            if (this.I != null) {
                R();
                return;
            }
            y();
            k0();
            this.f17206c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        this.C = true;
        S();
    }

    private void f0() {
        for (d dVar : this.f17225v) {
            dVar.W(this.R);
        }
        this.R = false;
    }

    private boolean g0(long j10) {
        int length = this.f17225v.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.f17225v[i10].Z(j10, false) && (this.O[i10] || !this.M)) {
                return false;
            }
        }
        return true;
    }

    private void k0() {
        this.D = true;
    }

    private void p0(m0[] m0VarArr) {
        this.f17222s.clear();
        for (m0 m0Var : m0VarArr) {
            if (m0Var != null) {
                this.f17222s.add((l) m0Var);
            }
        }
    }

    private void w() {
        y4.a.f(this.D);
        y4.a.e(this.I);
        y4.a.e(this.J);
    }

    private void y() {
        x1 x1Var;
        x1 E;
        x1 x1Var2;
        int length = this.f17225v.length;
        boolean z10 = false;
        int i10 = -2;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int i13 = 2;
            if (i12 >= length) {
                break;
            }
            String str = ((x1) y4.a.h(this.f17225v[i12].F())).f4514l;
            if (!y4.v.s(str)) {
                if (y4.v.o(str)) {
                    i13 = 1;
                } else if (y4.v.r(str)) {
                    i13 = 3;
                } else {
                    i13 = -2;
                }
            }
            if (L(i13) > L(i10)) {
                i11 = i12;
                i10 = i13;
            } else if (i13 == i10 && i11 != -1) {
                i11 = -1;
            }
            i12++;
        }
        s0 j10 = this.f17207d.j();
        int i14 = j10.f14950a;
        this.L = -1;
        this.K = new int[length];
        for (int i15 = 0; i15 < length; i15++) {
            this.K[i15] = i15;
        }
        s0[] s0VarArr = new s0[length];
        for (int i16 = 0; i16 < length; i16++) {
            x1 x1Var3 = (x1) y4.a.h(this.f17225v[i16].F());
            if (i16 == i11) {
                x1[] x1VarArr = new x1[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    x1 b10 = j10.b(i17);
                    if (i10 == 1 && (x1Var2 = this.f17209f) != null) {
                        b10 = b10.j(x1Var2);
                    }
                    if (i14 == 1) {
                        E = x1Var3.j(b10);
                    } else {
                        E = E(b10, x1Var3, true);
                    }
                    x1VarArr[i17] = E;
                }
                s0VarArr[i16] = new s0(this.f17204a, x1VarArr);
                this.L = i16;
            } else {
                if (i10 == 2 && y4.v.o(x1Var3.f4514l)) {
                    x1Var = this.f17209f;
                } else {
                    x1Var = null;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f17204a);
                sb2.append(":muxed:");
                sb2.append(i16 < i11 ? i16 : i16 - 1);
                s0VarArr[i16] = new s0(sb2.toString(), E(x1Var, x1Var3, false));
            }
        }
        this.I = D(s0VarArr);
        if (this.J == null) {
            z10 = true;
        }
        y4.a.f(z10);
        this.J = Collections.emptySet();
    }

    private boolean z(int i10) {
        for (int i11 = i10; i11 < this.f17217n.size(); i11++) {
            if (((i) this.f17217n.get(i11)).f17159n) {
                return false;
            }
        }
        i iVar = (i) this.f17217n.get(i10);
        for (int i12 = 0; i12 < this.f17225v.length; i12++) {
            if (this.f17225v[i12].C() > iVar.m(i12)) {
                return false;
            }
        }
        return true;
    }

    public void A() {
        if (!this.D) {
            c(this.P);
        }
    }

    public boolean P(int i10) {
        if (!O() && this.f17225v[i10].K(this.T)) {
            return true;
        }
        return false;
    }

    public boolean Q() {
        if (this.A == 2) {
            return true;
        }
        return false;
    }

    public void T() {
        this.f17213j.a();
        this.f17207d.n();
    }

    public void U(int i10) {
        T();
        this.f17225v[i10].N();
    }

    @Override // x4.e0.b
    /* renamed from: V */
    public void s(f4.f fVar, long j10, long j11, boolean z10) {
        this.f17224u = null;
        d4.n nVar = new d4.n(fVar.f15778a, fVar.f15779b, fVar.f(), fVar.e(), j10, j11, fVar.b());
        this.f17212i.c(fVar.f15778a);
        this.f17214k.r(nVar, fVar.f15780c, this.f17205b, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h);
        if (!z10) {
            if (O() || this.E == 0) {
                f0();
            }
            if (this.E > 0) {
                this.f17206c.h(this);
            }
        }
    }

    @Override // x4.e0.b
    /* renamed from: W */
    public void o(f4.f fVar, long j10, long j11) {
        this.f17224u = null;
        this.f17207d.p(fVar);
        d4.n nVar = new d4.n(fVar.f15778a, fVar.f15779b, fVar.f(), fVar.e(), j10, j11, fVar.b());
        this.f17212i.c(fVar.f15778a);
        this.f17214k.u(nVar, fVar.f15780c, this.f17205b, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h);
        if (!this.D) {
            c(this.P);
        } else {
            this.f17206c.h(this);
        }
    }

    @Override // x4.e0.b
    /* renamed from: X */
    public e0.c h(f4.f fVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        e0.c cVar;
        int i11;
        boolean N = N(fVar);
        if (N && !((i) fVar).q() && (iOException instanceof x4.a0) && ((i11 = ((x4.a0) iOException).f32270d) == 410 || i11 == 404)) {
            return e0.f32301d;
        }
        long b10 = fVar.b();
        d4.n nVar = new d4.n(fVar.f15778a, fVar.f15779b, fVar.f(), fVar.e(), j10, j11, b10);
        d0.c cVar2 = new d0.c(nVar, new d4.q(fVar.f15780c, this.f17205b, fVar.f15781d, fVar.f15782e, fVar.f15783f, q0.X0(fVar.f15784g), q0.X0(fVar.f15785h)), iOException, i10);
        d0.b b11 = this.f17212i.b(g0.c(this.f17207d.k()), cVar2);
        boolean z11 = false;
        if (b11 != null && b11.f32291a == 2) {
            z10 = this.f17207d.m(fVar, b11.f32292b);
        } else {
            z10 = false;
        }
        if (z10) {
            if (N && b10 == 0) {
                ArrayList arrayList = this.f17217n;
                if (((i) arrayList.remove(arrayList.size() - 1)) == fVar) {
                    z11 = true;
                }
                y4.a.f(z11);
                if (this.f17217n.isEmpty()) {
                    this.Q = this.P;
                } else {
                    ((i) o6.t.c(this.f17217n)).o();
                }
            }
            cVar = e0.f32303f;
        } else {
            long a10 = this.f17212i.a(cVar2);
            if (a10 != -9223372036854775807L) {
                cVar = e0.h(false, a10);
            } else {
                cVar = e0.f32304g;
            }
        }
        e0.c cVar3 = cVar;
        boolean z12 = !cVar3.c();
        this.f17214k.w(nVar, fVar.f15780c, this.f17205b, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h, iOException, z12);
        if (z12) {
            this.f17224u = null;
            this.f17212i.c(fVar.f15778a);
        }
        if (z10) {
            if (!this.D) {
                c(this.P);
            } else {
                this.f17206c.h(this);
            }
        }
        return cVar3;
    }

    public void Y() {
        this.f17227x.clear();
    }

    public boolean Z(Uri uri, d0.c cVar, boolean z10) {
        long j10;
        d0.b b10;
        if (!this.f17207d.o(uri)) {
            return true;
        }
        if (!z10 && (b10 = this.f17212i.b(g0.c(this.f17207d.k()), cVar)) != null && b10.f32291a == 2) {
            j10 = b10.f32292b;
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f17207d.q(uri, j10) && j10 != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    @Override // g3.m
    public b0 a(int i10, int i11) {
        b0 b0Var;
        if (Y.contains(Integer.valueOf(i11))) {
            b0Var = K(i10, i11);
        } else {
            int i12 = 0;
            while (true) {
                b0[] b0VarArr = this.f17225v;
                if (i12 < b0VarArr.length) {
                    if (this.f17226w[i12] == i10) {
                        b0Var = b0VarArr[i12];
                        break;
                    }
                    i12++;
                } else {
                    b0Var = null;
                    break;
                }
            }
        }
        if (b0Var == null) {
            if (this.U) {
                return B(i10, i11);
            }
            b0Var = C(i10, i11);
        }
        if (i11 == 5) {
            if (this.f17229z == null) {
                this.f17229z = new c(b0Var, this.f17215l);
            }
            return this.f17229z;
        }
        return b0Var;
    }

    public void a0() {
        if (this.f17217n.isEmpty()) {
            return;
        }
        i iVar = (i) o6.t.c(this.f17217n);
        int c10 = this.f17207d.c(iVar);
        if (c10 == 1) {
            iVar.v();
        } else if (c10 == 2 && !this.T && this.f17213j.j()) {
            this.f17213j.f();
        }
    }

    @Override // d4.n0
    public long b() {
        if (O()) {
            return this.Q;
        }
        if (this.T) {
            return Long.MIN_VALUE;
        }
        return J().f15785h;
    }

    @Override // d4.n0
    public boolean c(long j10) {
        List list;
        long max;
        boolean z10;
        if (this.T || this.f17213j.j() || this.f17213j.i()) {
            return false;
        }
        if (O()) {
            list = Collections.emptyList();
            max = this.Q;
            for (d dVar : this.f17225v) {
                dVar.b0(this.Q);
            }
        } else {
            list = this.f17218o;
            i J = J();
            if (J.h()) {
                max = J.f15785h;
            } else {
                max = Math.max(this.P, J.f15784g);
            }
        }
        List list2 = list;
        long j11 = max;
        this.f17216m.a();
        f fVar = this.f17207d;
        if (!this.D && list2.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        fVar.e(j10, j11, list2, z10, this.f17216m);
        f.b bVar = this.f17216m;
        boolean z11 = bVar.f17145b;
        f4.f fVar2 = bVar.f17144a;
        Uri uri = bVar.f17146c;
        if (z11) {
            this.Q = -9223372036854775807L;
            this.T = true;
            return true;
        } else if (fVar2 == null) {
            if (uri != null) {
                this.f17206c.j(uri);
            }
            return false;
        } else {
            if (N(fVar2)) {
                M((i) fVar2);
            }
            this.f17224u = fVar2;
            this.f17214k.A(new d4.n(fVar2.f15778a, fVar2.f15779b, this.f17213j.n(fVar2, this, this.f17212i.d(fVar2.f15780c))), fVar2.f15780c, this.f17205b, fVar2.f15781d, fVar2.f15782e, fVar2.f15783f, fVar2.f15784g, fVar2.f15785h);
            return true;
        }
    }

    public void c0(s0[] s0VarArr, int i10, int... iArr) {
        this.I = D(s0VarArr);
        this.J = new HashSet();
        for (int i11 : iArr) {
            this.J.add(this.I.b(i11));
        }
        this.L = i10;
        Handler handler = this.f17221r;
        final b bVar = this.f17206c;
        Objects.requireNonNull(bVar);
        handler.post(new Runnable() { // from class: i4.m
            @Override // java.lang.Runnable
            public final void run() {
                p.b.this.a();
            }
        });
        k0();
    }

    @Override // d4.n0
    public long d() {
        ArrayList arrayList;
        if (this.T) {
            return Long.MIN_VALUE;
        }
        if (O()) {
            return this.Q;
        }
        long j10 = this.P;
        i J = J();
        if (!J.h()) {
            if (this.f17217n.size() > 1) {
                J = (i) this.f17217n.get(arrayList.size() - 2);
            } else {
                J = null;
            }
        }
        if (J != null) {
            j10 = Math.max(j10, J.f15785h);
        }
        if (this.C) {
            for (d dVar : this.f17225v) {
                j10 = Math.max(j10, dVar.z());
            }
        }
        return j10;
    }

    public int d0(int i10, y1 y1Var, e3.g gVar, int i11) {
        x1 x1Var;
        if (O()) {
            return -3;
        }
        int i12 = 0;
        if (!this.f17217n.isEmpty()) {
            int i13 = 0;
            while (i13 < this.f17217n.size() - 1 && H((i) this.f17217n.get(i13))) {
                i13++;
            }
            q0.L0(this.f17217n, 0, i13);
            i iVar = (i) this.f17217n.get(0);
            x1 x1Var2 = iVar.f15781d;
            if (!x1Var2.equals(this.G)) {
                this.f17214k.i(this.f17205b, x1Var2, iVar.f15782e, iVar.f15783f, iVar.f15784g);
            }
            this.G = x1Var2;
        }
        if (!this.f17217n.isEmpty() && !((i) this.f17217n.get(0)).q()) {
            return -3;
        }
        int S = this.f17225v[i10].S(y1Var, gVar, i11, this.T);
        if (S == -5) {
            x1 x1Var3 = (x1) y4.a.e(y1Var.f4575b);
            if (i10 == this.B) {
                int Q = this.f17225v[i10].Q();
                while (i12 < this.f17217n.size() && ((i) this.f17217n.get(i12)).f17156k != Q) {
                    i12++;
                }
                if (i12 < this.f17217n.size()) {
                    x1Var = ((i) this.f17217n.get(i12)).f15781d;
                } else {
                    x1Var = (x1) y4.a.e(this.F);
                }
                x1Var3 = x1Var3.j(x1Var);
            }
            y1Var.f4575b = x1Var3;
        }
        return S;
    }

    public long e(long j10, x3 x3Var) {
        return this.f17207d.b(j10, x3Var);
    }

    public void e0() {
        if (this.D) {
            for (d dVar : this.f17225v) {
                dVar.R();
            }
        }
        this.f17213j.m(this);
        this.f17221r.removeCallbacksAndMessages(null);
        this.H = true;
        this.f17222s.clear();
    }

    @Override // d4.n0
    public void f(long j10) {
        if (!this.f17213j.i() && !O()) {
            if (this.f17213j.j()) {
                y4.a.e(this.f17224u);
                if (this.f17207d.v(j10, this.f17224u, this.f17218o)) {
                    this.f17213j.f();
                    return;
                }
                return;
            }
            int size = this.f17218o.size();
            while (size > 0 && this.f17207d.c((i) this.f17218o.get(size - 1)) == 2) {
                size--;
            }
            if (size < this.f17218o.size()) {
                F(size);
            }
            int h10 = this.f17207d.h(j10, this.f17218o);
            if (h10 < this.f17217n.size()) {
                F(h10);
            }
        }
    }

    @Override // x4.e0.f
    public void g() {
        for (d dVar : this.f17225v) {
            dVar.T();
        }
    }

    public boolean h0(long j10, boolean z10) {
        this.P = j10;
        if (O()) {
            this.Q = j10;
            return true;
        }
        if (this.C && !z10 && g0(j10)) {
            return false;
        }
        this.Q = j10;
        this.T = false;
        this.f17217n.clear();
        if (this.f17213j.j()) {
            if (this.C) {
                for (d dVar : this.f17225v) {
                    dVar.r();
                }
            }
            this.f17213j.f();
        } else {
            this.f17213j.g();
            f0();
        }
        return true;
    }

    public void i() {
        T();
        if (this.T && !this.D) {
            throw e3.a("Loading finished before preparation is complete.", null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i0(w4.y[] r20, boolean[] r21, d4.m0[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i4.p.i0(w4.y[], boolean[], d4.m0[], boolean[], long, boolean):boolean");
    }

    @Override // d4.n0
    public boolean isLoading() {
        return this.f17213j.j();
    }

    @Override // d4.l0.d
    public void j(x1 x1Var) {
        this.f17221r.post(this.f17219p);
    }

    public void j0(f3.m mVar) {
        if (!q0.c(this.W, mVar)) {
            this.W = mVar;
            int i10 = 0;
            while (true) {
                d[] dVarArr = this.f17225v;
                if (i10 < dVarArr.length) {
                    if (this.O[i10]) {
                        dVarArr[i10].i0(mVar);
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // g3.m
    public void l(z zVar) {
    }

    public void l0(boolean z10) {
        this.f17207d.t(z10);
    }

    public void m0(long j10) {
        if (this.V != j10) {
            this.V = j10;
            for (d dVar : this.f17225v) {
                dVar.a0(j10);
            }
        }
    }

    @Override // g3.m
    public void n() {
        this.U = true;
        this.f17221r.post(this.f17220q);
    }

    public int n0(int i10, long j10) {
        if (O()) {
            return 0;
        }
        d dVar = this.f17225v[i10];
        int E = dVar.E(j10, this.T);
        i iVar = (i) o6.t.d(this.f17217n, null);
        if (iVar != null && !iVar.q()) {
            E = Math.min(E, iVar.m(i10) - dVar.C());
        }
        dVar.e0(E);
        return E;
    }

    public void o0(int i10) {
        w();
        y4.a.e(this.K);
        int i11 = this.K[i10];
        y4.a.f(this.N[i11]);
        this.N[i11] = false;
    }

    public u0 q() {
        w();
        return this.I;
    }

    public void r(long j10, boolean z10) {
        if (this.C && !O()) {
            int length = this.f17225v.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.f17225v[i10].q(j10, z10, this.N[i10]);
            }
        }
    }

    public int x(int i10) {
        w();
        y4.a.e(this.K);
        int i11 = this.K[i10];
        if (i11 == -1) {
            if (!this.J.contains(this.I.b(i10))) {
                return -2;
            }
            return -3;
        }
        boolean[] zArr = this.N;
        if (zArr[i11]) {
            return -2;
        }
        zArr[i11] = true;
        return i11;
    }
}
