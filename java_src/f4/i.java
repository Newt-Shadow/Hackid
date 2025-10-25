package f4;

import b3.x1;
import b3.x3;
import b3.y1;
import d4.a0;
import d4.l0;
import d4.m0;
import d4.n0;
import f3.u;
import f3.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x4.d0;
import x4.e0;
import y4.q0;
/* loaded from: classes.dex */
public class i implements m0, n0, e0.b, e0.f {

    /* renamed from: a  reason: collision with root package name */
    public final int f15789a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f15790b;

    /* renamed from: c  reason: collision with root package name */
    private final x1[] f15791c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f15792d;

    /* renamed from: e  reason: collision with root package name */
    private final j f15793e;

    /* renamed from: f  reason: collision with root package name */
    private final n0.a f15794f;

    /* renamed from: g  reason: collision with root package name */
    private final a0.a f15795g;

    /* renamed from: h  reason: collision with root package name */
    private final d0 f15796h;

    /* renamed from: i  reason: collision with root package name */
    private final e0 f15797i;

    /* renamed from: j  reason: collision with root package name */
    private final h f15798j;

    /* renamed from: k  reason: collision with root package name */
    private final ArrayList f15799k;

    /* renamed from: l  reason: collision with root package name */
    private final List f15800l;

    /* renamed from: m  reason: collision with root package name */
    private final l0 f15801m;

    /* renamed from: n  reason: collision with root package name */
    private final l0[] f15802n;

    /* renamed from: o  reason: collision with root package name */
    private final c f15803o;

    /* renamed from: p  reason: collision with root package name */
    private f f15804p;

    /* renamed from: q  reason: collision with root package name */
    private x1 f15805q;

    /* renamed from: r  reason: collision with root package name */
    private b f15806r;

    /* renamed from: s  reason: collision with root package name */
    private long f15807s;

    /* renamed from: t  reason: collision with root package name */
    private long f15808t;

    /* renamed from: u  reason: collision with root package name */
    private int f15809u;

    /* renamed from: v  reason: collision with root package name */
    private f4.a f15810v;

    /* renamed from: w  reason: collision with root package name */
    boolean f15811w;

    /* loaded from: classes.dex */
    public final class a implements m0 {

        /* renamed from: a  reason: collision with root package name */
        public final i f15812a;

        /* renamed from: b  reason: collision with root package name */
        private final l0 f15813b;

        /* renamed from: c  reason: collision with root package name */
        private final int f15814c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f15815d;

        public a(i iVar, l0 l0Var, int i10) {
            this.f15812a = iVar;
            this.f15813b = l0Var;
            this.f15814c = i10;
        }

        private void b() {
            if (!this.f15815d) {
                i.this.f15795g.i(i.this.f15790b[this.f15814c], i.this.f15791c[this.f15814c], 0, null, i.this.f15808t);
                this.f15815d = true;
            }
        }

        @Override // d4.m0
        public void a() {
        }

        public void c() {
            y4.a.f(i.this.f15792d[this.f15814c]);
            i.this.f15792d[this.f15814c] = false;
        }

        @Override // d4.m0
        public boolean isReady() {
            if (!i.this.G() && this.f15813b.K(i.this.f15811w)) {
                return true;
            }
            return false;
        }

        @Override // d4.m0
        public int j(long j10) {
            if (i.this.G()) {
                return 0;
            }
            int E = this.f15813b.E(j10, i.this.f15811w);
            if (i.this.f15810v != null) {
                E = Math.min(E, i.this.f15810v.i(this.f15814c + 1) - this.f15813b.C());
            }
            this.f15813b.e0(E);
            if (E > 0) {
                b();
            }
            return E;
        }

        @Override // d4.m0
        public int l(y1 y1Var, e3.g gVar, int i10) {
            if (i.this.G()) {
                return -3;
            }
            if (i.this.f15810v != null && i.this.f15810v.i(this.f15814c + 1) <= this.f15813b.C()) {
                return -3;
            }
            b();
            return this.f15813b.S(y1Var, gVar, i10, i.this.f15811w);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void l(i iVar);
    }

    public i(int i10, int[] iArr, x1[] x1VarArr, j jVar, n0.a aVar, x4.b bVar, long j10, v vVar, u.a aVar2, d0 d0Var, a0.a aVar3) {
        this.f15789a = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f15790b = iArr;
        this.f15791c = x1VarArr == null ? new x1[0] : x1VarArr;
        this.f15793e = jVar;
        this.f15794f = aVar;
        this.f15795g = aVar3;
        this.f15796h = d0Var;
        this.f15797i = new e0("ChunkSampleStream");
        this.f15798j = new h();
        ArrayList arrayList = new ArrayList();
        this.f15799k = arrayList;
        this.f15800l = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f15802n = new l0[length];
        this.f15792d = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        l0[] l0VarArr = new l0[i12];
        l0 k10 = l0.k(bVar, vVar, aVar2);
        this.f15801m = k10;
        iArr2[0] = i10;
        l0VarArr[0] = k10;
        while (i11 < length) {
            l0 l10 = l0.l(bVar);
            this.f15802n[i11] = l10;
            int i13 = i11 + 1;
            l0VarArr[i13] = l10;
            iArr2[i13] = this.f15790b[i11];
            i11 = i13;
        }
        this.f15803o = new c(iArr2, l0VarArr);
        this.f15807s = j10;
        this.f15808t = j10;
    }

    private void A(int i10) {
        y4.a.f(!this.f15797i.j());
        int size = this.f15799k.size();
        while (true) {
            if (i10 < size) {
                if (!E(i10)) {
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
        long j10 = D().f15785h;
        f4.a B = B(i10);
        if (this.f15799k.isEmpty()) {
            this.f15807s = this.f15808t;
        }
        this.f15811w = false;
        this.f15795g.D(this.f15789a, B.f15784g, j10);
    }

    private f4.a B(int i10) {
        f4.a aVar = (f4.a) this.f15799k.get(i10);
        ArrayList arrayList = this.f15799k;
        q0.L0(arrayList, i10, arrayList.size());
        this.f15809u = Math.max(this.f15809u, this.f15799k.size());
        int i11 = 0;
        this.f15801m.u(aVar.i(0));
        while (true) {
            l0[] l0VarArr = this.f15802n;
            if (i11 < l0VarArr.length) {
                l0 l0Var = l0VarArr[i11];
                i11++;
                l0Var.u(aVar.i(i11));
            } else {
                return aVar;
            }
        }
    }

    private f4.a D() {
        ArrayList arrayList = this.f15799k;
        return (f4.a) arrayList.get(arrayList.size() - 1);
    }

    private boolean E(int i10) {
        int C;
        f4.a aVar = (f4.a) this.f15799k.get(i10);
        if (this.f15801m.C() > aVar.i(0)) {
            return true;
        }
        int i11 = 0;
        do {
            l0[] l0VarArr = this.f15802n;
            if (i11 >= l0VarArr.length) {
                return false;
            }
            C = l0VarArr[i11].C();
            i11++;
        } while (C <= aVar.i(i11));
        return true;
    }

    private boolean F(f fVar) {
        return fVar instanceof f4.a;
    }

    private void H() {
        int M = M(this.f15801m.C(), this.f15809u - 1);
        while (true) {
            int i10 = this.f15809u;
            if (i10 <= M) {
                this.f15809u = i10 + 1;
                I(i10);
            } else {
                return;
            }
        }
    }

    private void I(int i10) {
        f4.a aVar = (f4.a) this.f15799k.get(i10);
        x1 x1Var = aVar.f15781d;
        if (!x1Var.equals(this.f15805q)) {
            this.f15795g.i(this.f15789a, x1Var, aVar.f15782e, aVar.f15783f, aVar.f15784g);
        }
        this.f15805q = x1Var;
    }

    private int M(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.f15799k.size()) {
                return this.f15799k.size() - 1;
            }
        } while (((f4.a) this.f15799k.get(i11)).i(0) <= i10);
        return i11 - 1;
    }

    private void P() {
        this.f15801m.V();
        for (l0 l0Var : this.f15802n) {
            l0Var.V();
        }
    }

    private void z(int i10) {
        int min = Math.min(M(i10, 0), this.f15809u);
        if (min > 0) {
            q0.L0(this.f15799k, 0, min);
            this.f15809u -= min;
        }
    }

    public j C() {
        return this.f15793e;
    }

    boolean G() {
        if (this.f15807s != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    @Override // x4.e0.b
    /* renamed from: J */
    public void s(f fVar, long j10, long j11, boolean z10) {
        this.f15804p = null;
        this.f15810v = null;
        d4.n nVar = new d4.n(fVar.f15778a, fVar.f15779b, fVar.f(), fVar.e(), j10, j11, fVar.b());
        this.f15796h.c(fVar.f15778a);
        this.f15795g.r(nVar, fVar.f15780c, this.f15789a, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h);
        if (!z10) {
            if (G()) {
                P();
            } else if (F(fVar)) {
                B(this.f15799k.size() - 1);
                if (this.f15799k.isEmpty()) {
                    this.f15807s = this.f15808t;
                }
            }
            this.f15794f.h(this);
        }
    }

    @Override // x4.e0.b
    /* renamed from: K */
    public void o(f fVar, long j10, long j11) {
        this.f15804p = null;
        this.f15793e.f(fVar);
        d4.n nVar = new d4.n(fVar.f15778a, fVar.f15779b, fVar.f(), fVar.e(), j10, j11, fVar.b());
        this.f15796h.c(fVar.f15778a);
        this.f15795g.u(nVar, fVar.f15780c, this.f15789a, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h);
        this.f15794f.h(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    @Override // x4.e0.b
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x4.e0.c h(f4.f r31, long r32, long r34, java.io.IOException r36, int r37) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f4.i.h(f4.f, long, long, java.io.IOException, int):x4.e0$c");
    }

    public void N() {
        O(null);
    }

    public void O(b bVar) {
        this.f15806r = bVar;
        this.f15801m.R();
        for (l0 l0Var : this.f15802n) {
            l0Var.R();
        }
        this.f15797i.m(this);
    }

    public void Q(long j10) {
        f4.a aVar;
        boolean z10;
        boolean Z;
        this.f15808t = j10;
        if (G()) {
            this.f15807s = j10;
            return;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f15799k.size(); i11++) {
            aVar = (f4.a) this.f15799k.get(i11);
            int i12 = (aVar.f15784g > j10 ? 1 : (aVar.f15784g == j10 ? 0 : -1));
            if (i12 == 0 && aVar.f15751k == -9223372036854775807L) {
                break;
            } else if (i12 > 0) {
                break;
            }
        }
        aVar = null;
        if (aVar != null) {
            Z = this.f15801m.Y(aVar.i(0));
        } else {
            l0 l0Var = this.f15801m;
            if (j10 < b()) {
                z10 = true;
            } else {
                z10 = false;
            }
            Z = l0Var.Z(j10, z10);
        }
        if (Z) {
            this.f15809u = M(this.f15801m.C(), 0);
            l0[] l0VarArr = this.f15802n;
            int length = l0VarArr.length;
            while (i10 < length) {
                l0VarArr[i10].Z(j10, true);
                i10++;
            }
            return;
        }
        this.f15807s = j10;
        this.f15811w = false;
        this.f15799k.clear();
        this.f15809u = 0;
        if (this.f15797i.j()) {
            this.f15801m.r();
            l0[] l0VarArr2 = this.f15802n;
            int length2 = l0VarArr2.length;
            while (i10 < length2) {
                l0VarArr2[i10].r();
                i10++;
            }
            this.f15797i.f();
            return;
        }
        this.f15797i.g();
        P();
    }

    public a R(long j10, int i10) {
        for (int i11 = 0; i11 < this.f15802n.length; i11++) {
            if (this.f15790b[i11] == i10) {
                y4.a.f(!this.f15792d[i11]);
                this.f15792d[i11] = true;
                this.f15802n[i11].Z(j10, true);
                return new a(this, this.f15802n[i11], i11);
            }
        }
        throw new IllegalStateException();
    }

    @Override // d4.m0
    public void a() {
        this.f15797i.a();
        this.f15801m.N();
        if (!this.f15797i.j()) {
            this.f15793e.a();
        }
    }

    @Override // d4.n0
    public long b() {
        if (G()) {
            return this.f15807s;
        }
        if (this.f15811w) {
            return Long.MIN_VALUE;
        }
        return D().f15785h;
    }

    @Override // d4.n0
    public boolean c(long j10) {
        List list;
        long j11;
        if (this.f15811w || this.f15797i.j() || this.f15797i.i()) {
            return false;
        }
        boolean G = G();
        if (G) {
            list = Collections.emptyList();
            j11 = this.f15807s;
        } else {
            list = this.f15800l;
            j11 = D().f15785h;
        }
        this.f15793e.j(j10, j11, list, this.f15798j);
        h hVar = this.f15798j;
        boolean z10 = hVar.f15788b;
        f fVar = hVar.f15787a;
        hVar.a();
        if (z10) {
            this.f15807s = -9223372036854775807L;
            this.f15811w = true;
            return true;
        } else if (fVar == null) {
            return false;
        } else {
            this.f15804p = fVar;
            if (F(fVar)) {
                f4.a aVar = (f4.a) fVar;
                if (G) {
                    long j12 = aVar.f15784g;
                    long j13 = this.f15807s;
                    if (j12 != j13) {
                        this.f15801m.b0(j13);
                        for (l0 l0Var : this.f15802n) {
                            l0Var.b0(this.f15807s);
                        }
                    }
                    this.f15807s = -9223372036854775807L;
                }
                aVar.k(this.f15803o);
                this.f15799k.add(aVar);
            } else if (fVar instanceof m) {
                ((m) fVar).g(this.f15803o);
            }
            this.f15795g.A(new d4.n(fVar.f15778a, fVar.f15779b, this.f15797i.n(fVar, this, this.f15796h.d(fVar.f15780c))), fVar.f15780c, this.f15789a, fVar.f15781d, fVar.f15782e, fVar.f15783f, fVar.f15784g, fVar.f15785h);
            return true;
        }
    }

    @Override // d4.n0
    public long d() {
        if (this.f15811w) {
            return Long.MIN_VALUE;
        }
        if (G()) {
            return this.f15807s;
        }
        long j10 = this.f15808t;
        f4.a D = D();
        if (!D.h()) {
            if (this.f15799k.size() > 1) {
                ArrayList arrayList = this.f15799k;
                D = (f4.a) arrayList.get(arrayList.size() - 2);
            } else {
                D = null;
            }
        }
        if (D != null) {
            j10 = Math.max(j10, D.f15785h);
        }
        return Math.max(j10, this.f15801m.z());
    }

    public long e(long j10, x3 x3Var) {
        return this.f15793e.e(j10, x3Var);
    }

    @Override // d4.n0
    public void f(long j10) {
        if (!this.f15797i.i() && !G()) {
            if (this.f15797i.j()) {
                f fVar = (f) y4.a.e(this.f15804p);
                if ((!F(fVar) || !E(this.f15799k.size() - 1)) && this.f15793e.d(j10, fVar, this.f15800l)) {
                    this.f15797i.f();
                    if (F(fVar)) {
                        this.f15810v = (f4.a) fVar;
                        return;
                    }
                    return;
                }
                return;
            }
            int i10 = this.f15793e.i(j10, this.f15800l);
            if (i10 < this.f15799k.size()) {
                A(i10);
            }
        }
    }

    @Override // x4.e0.f
    public void g() {
        this.f15801m.T();
        for (l0 l0Var : this.f15802n) {
            l0Var.T();
        }
        this.f15793e.release();
        b bVar = this.f15806r;
        if (bVar != null) {
            bVar.l(this);
        }
    }

    @Override // d4.n0
    public boolean isLoading() {
        return this.f15797i.j();
    }

    @Override // d4.m0
    public boolean isReady() {
        if (!G() && this.f15801m.K(this.f15811w)) {
            return true;
        }
        return false;
    }

    @Override // d4.m0
    public int j(long j10) {
        if (G()) {
            return 0;
        }
        int E = this.f15801m.E(j10, this.f15811w);
        f4.a aVar = this.f15810v;
        if (aVar != null) {
            E = Math.min(E, aVar.i(0) - this.f15801m.C());
        }
        this.f15801m.e0(E);
        H();
        return E;
    }

    @Override // d4.m0
    public int l(y1 y1Var, e3.g gVar, int i10) {
        if (G()) {
            return -3;
        }
        f4.a aVar = this.f15810v;
        if (aVar != null && aVar.i(0) <= this.f15801m.C()) {
            return -3;
        }
        H();
        return this.f15801m.S(y1Var, gVar, i10, this.f15811w);
    }

    public void r(long j10, boolean z10) {
        if (G()) {
            return;
        }
        int x10 = this.f15801m.x();
        this.f15801m.q(j10, z10, true);
        int x11 = this.f15801m.x();
        if (x11 > x10) {
            long y10 = this.f15801m.y();
            int i10 = 0;
            while (true) {
                l0[] l0VarArr = this.f15802n;
                if (i10 >= l0VarArr.length) {
                    break;
                }
                l0VarArr[i10].q(y10, z10, this.f15792d[i10]);
                i10++;
            }
        }
        z(x11);
    }
}
