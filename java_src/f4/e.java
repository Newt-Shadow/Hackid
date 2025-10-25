package f4;

import android.util.SparseArray;
import b3.x1;
import c3.t3;
import f4.g;
import g3.b0;
import g3.y;
import g3.z;
import java.util.List;
import y4.e0;
import y4.q0;
import y4.v;
/* loaded from: classes.dex */
public final class e implements g3.m, g {

    /* renamed from: j  reason: collision with root package name */
    public static final g.a f15760j = new g.a() { // from class: f4.d
        @Override // f4.g.a
        public final g a(int i10, x1 x1Var, boolean z10, List list, b0 b0Var, t3 t3Var) {
            g g10;
            g10 = e.g(i10, x1Var, z10, list, b0Var, t3Var);
            return g10;
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private static final y f15761k = new y();

    /* renamed from: a  reason: collision with root package name */
    private final g3.k f15762a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15763b;

    /* renamed from: c  reason: collision with root package name */
    private final x1 f15764c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray f15765d = new SparseArray();

    /* renamed from: e  reason: collision with root package name */
    private boolean f15766e;

    /* renamed from: f  reason: collision with root package name */
    private g.b f15767f;

    /* renamed from: g  reason: collision with root package name */
    private long f15768g;

    /* renamed from: h  reason: collision with root package name */
    private z f15769h;

    /* renamed from: i  reason: collision with root package name */
    private x1[] f15770i;

    /* loaded from: classes.dex */
    private static final class a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f15771a;

        /* renamed from: b  reason: collision with root package name */
        private final int f15772b;

        /* renamed from: c  reason: collision with root package name */
        private final x1 f15773c;

        /* renamed from: d  reason: collision with root package name */
        private final g3.j f15774d = new g3.j();

        /* renamed from: e  reason: collision with root package name */
        public x1 f15775e;

        /* renamed from: f  reason: collision with root package name */
        private b0 f15776f;

        /* renamed from: g  reason: collision with root package name */
        private long f15777g;

        public a(int i10, int i11, x1 x1Var) {
            this.f15771a = i10;
            this.f15772b = i11;
            this.f15773c = x1Var;
        }

        @Override // g3.b0
        public void a(e0 e0Var, int i10, int i11) {
            ((b0) q0.j(this.f15776f)).b(e0Var, i10);
        }

        @Override // g3.b0
        public void c(x1 x1Var) {
            x1 x1Var2 = this.f15773c;
            if (x1Var2 != null) {
                x1Var = x1Var.j(x1Var2);
            }
            this.f15775e = x1Var;
            ((b0) q0.j(this.f15776f)).c(this.f15775e);
        }

        @Override // g3.b0
        public int d(x4.h hVar, int i10, boolean z10, int i11) {
            return ((b0) q0.j(this.f15776f)).e(hVar, i10, z10);
        }

        @Override // g3.b0
        public void f(long j10, int i10, int i11, int i12, b0.a aVar) {
            long j11 = this.f15777g;
            if (j11 != -9223372036854775807L && j10 >= j11) {
                this.f15776f = this.f15774d;
            }
            ((b0) q0.j(this.f15776f)).f(j10, i10, i11, i12, aVar);
        }

        public void g(g.b bVar, long j10) {
            if (bVar == null) {
                this.f15776f = this.f15774d;
                return;
            }
            this.f15777g = j10;
            b0 a10 = bVar.a(this.f15771a, this.f15772b);
            this.f15776f = a10;
            x1 x1Var = this.f15775e;
            if (x1Var != null) {
                a10.c(x1Var);
            }
        }
    }

    public e(g3.k kVar, int i10, x1 x1Var) {
        this.f15762a = kVar;
        this.f15763b = i10;
        this.f15764c = x1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g g(int i10, x1 x1Var, boolean z10, List list, b0 b0Var, t3 t3Var) {
        int i11;
        g3.k gVar;
        String str = x1Var.f4513k;
        if (v.r(str)) {
            return null;
        }
        if (v.q(str)) {
            gVar = new m3.e(1);
        } else {
            if (z10) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            gVar = new o3.g(i11, null, null, list, b0Var);
        }
        return new e(gVar, i10, x1Var);
    }

    @Override // g3.m
    public b0 a(int i10, int i11) {
        boolean z10;
        x1 x1Var;
        a aVar = (a) this.f15765d.get(i10);
        if (aVar == null) {
            if (this.f15770i == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            if (i11 == this.f15763b) {
                x1Var = this.f15764c;
            } else {
                x1Var = null;
            }
            aVar = new a(i10, i11, x1Var);
            aVar.g(this.f15767f, this.f15768g);
            this.f15765d.put(i10, aVar);
        }
        return aVar;
    }

    @Override // f4.g
    public boolean b(g3.l lVar) {
        boolean z10;
        int g10 = this.f15762a.g(lVar, f15761k);
        if (g10 != 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (g10 != 0) {
            return false;
        }
        return true;
    }

    @Override // f4.g
    public x1[] c() {
        return this.f15770i;
    }

    @Override // f4.g
    public void d(g.b bVar, long j10, long j11) {
        this.f15767f = bVar;
        this.f15768g = j11;
        if (!this.f15766e) {
            this.f15762a.c(this);
            if (j10 != -9223372036854775807L) {
                this.f15762a.b(0L, j10);
            }
            this.f15766e = true;
            return;
        }
        g3.k kVar = this.f15762a;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        kVar.b(0L, j10);
        for (int i10 = 0; i10 < this.f15765d.size(); i10++) {
            ((a) this.f15765d.valueAt(i10)).g(bVar, j11);
        }
    }

    @Override // f4.g
    public g3.c e() {
        z zVar = this.f15769h;
        if (zVar instanceof g3.c) {
            return (g3.c) zVar;
        }
        return null;
    }

    @Override // g3.m
    public void l(z zVar) {
        this.f15769h = zVar;
    }

    @Override // g3.m
    public void n() {
        x1[] x1VarArr = new x1[this.f15765d.size()];
        for (int i10 = 0; i10 < this.f15765d.size(); i10++) {
            x1VarArr[i10] = (x1) y4.a.h(((a) this.f15765d.valueAt(i10)).f15775e);
        }
        this.f15770i = x1VarArr;
    }

    @Override // f4.g
    public void release() {
        this.f15762a.release();
    }
}
