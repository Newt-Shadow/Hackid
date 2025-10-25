package d4;

import android.net.Uri;
import android.os.Handler;
import b3.e3;
import b3.x1;
import b3.x3;
import b3.y1;
import d4.a0;
import d4.l0;
import d4.m;
import d4.r;
import f3.u;
import g3.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import x4.d0;
import x4.e0;
import x4.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g0 implements r, g3.m, e0.b, e0.f, l0.d {
    private static final Map M = K();
    private static final x1 N = new x1.b().U("icy").g0("application/x-icy").G();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f14759a;

    /* renamed from: b  reason: collision with root package name */
    private final x4.j f14760b;

    /* renamed from: c  reason: collision with root package name */
    private final f3.v f14761c;

    /* renamed from: d  reason: collision with root package name */
    private final x4.d0 f14762d;

    /* renamed from: e  reason: collision with root package name */
    private final a0.a f14763e;

    /* renamed from: f  reason: collision with root package name */
    private final u.a f14764f;

    /* renamed from: g  reason: collision with root package name */
    private final b f14765g;

    /* renamed from: h  reason: collision with root package name */
    private final x4.b f14766h;

    /* renamed from: i  reason: collision with root package name */
    private final String f14767i;

    /* renamed from: j  reason: collision with root package name */
    private final long f14768j;

    /* renamed from: l  reason: collision with root package name */
    private final b0 f14770l;

    /* renamed from: q  reason: collision with root package name */
    private r.a f14775q;

    /* renamed from: r  reason: collision with root package name */
    private x3.b f14776r;

    /* renamed from: u  reason: collision with root package name */
    private boolean f14779u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f14780v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f14781w;

    /* renamed from: x  reason: collision with root package name */
    private e f14782x;

    /* renamed from: y  reason: collision with root package name */
    private g3.z f14783y;

    /* renamed from: k  reason: collision with root package name */
    private final x4.e0 f14769k = new x4.e0("ProgressiveMediaPeriod");

    /* renamed from: m  reason: collision with root package name */
    private final y4.g f14771m = new y4.g();

    /* renamed from: n  reason: collision with root package name */
    private final Runnable f14772n = new Runnable() { // from class: d4.c0
        @Override // java.lang.Runnable
        public final void run() {
            g0.this.T();
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f14773o = new Runnable() { // from class: d4.d0
        @Override // java.lang.Runnable
        public final void run() {
            g0.this.Q();
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private final Handler f14774p = y4.q0.w();

    /* renamed from: t  reason: collision with root package name */
    private d[] f14778t = new d[0];

    /* renamed from: s  reason: collision with root package name */
    private l0[] f14777s = new l0[0];
    private long H = -9223372036854775807L;

    /* renamed from: z  reason: collision with root package name */
    private long f14784z = -9223372036854775807L;
    private int B = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class a implements e0.e, m.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f14786b;

        /* renamed from: c  reason: collision with root package name */
        private final x4.l0 f14787c;

        /* renamed from: d  reason: collision with root package name */
        private final b0 f14788d;

        /* renamed from: e  reason: collision with root package name */
        private final g3.m f14789e;

        /* renamed from: f  reason: collision with root package name */
        private final y4.g f14790f;

        /* renamed from: h  reason: collision with root package name */
        private volatile boolean f14792h;

        /* renamed from: j  reason: collision with root package name */
        private long f14794j;

        /* renamed from: l  reason: collision with root package name */
        private g3.b0 f14796l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f14797m;

        /* renamed from: g  reason: collision with root package name */
        private final g3.y f14791g = new g3.y();

        /* renamed from: i  reason: collision with root package name */
        private boolean f14793i = true;

        /* renamed from: a  reason: collision with root package name */
        private final long f14785a = n.a();

        /* renamed from: k  reason: collision with root package name */
        private x4.n f14795k = i(0);

        public a(Uri uri, x4.j jVar, b0 b0Var, g3.m mVar, y4.g gVar) {
            this.f14786b = uri;
            this.f14787c = new x4.l0(jVar);
            this.f14788d = b0Var;
            this.f14789e = mVar;
            this.f14790f = gVar;
        }

        private x4.n i(long j10) {
            return new n.b().i(this.f14786b).h(j10).f(g0.this.f14767i).b(6).e(g0.M).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(long j10, long j11) {
            this.f14791g.f16251a = j10;
            this.f14794j = j11;
            this.f14793i = true;
            this.f14797m = false;
        }

        @Override // x4.e0.e
        public void a() {
            int i10 = 0;
            while (i10 == 0 && !this.f14792h) {
                try {
                    long j10 = this.f14791g.f16251a;
                    x4.n i11 = i(j10);
                    this.f14795k = i11;
                    long i12 = this.f14787c.i(i11);
                    if (i12 != -1) {
                        i12 += j10;
                        g0.this.Y();
                    }
                    long j11 = i12;
                    g0.this.f14776r = x3.b.a(this.f14787c.k());
                    x4.h hVar = this.f14787c;
                    if (g0.this.f14776r != null && g0.this.f14776r.f32264f != -1) {
                        hVar = new m(this.f14787c, g0.this.f14776r.f32264f, this);
                        g3.b0 N = g0.this.N();
                        this.f14796l = N;
                        N.c(g0.N);
                    }
                    long j12 = j10;
                    this.f14788d.d(hVar, this.f14786b, this.f14787c.k(), j10, j11, this.f14789e);
                    if (g0.this.f14776r != null) {
                        this.f14788d.e();
                    }
                    if (this.f14793i) {
                        this.f14788d.b(j12, this.f14794j);
                        this.f14793i = false;
                    }
                    while (true) {
                        long j13 = j12;
                        while (i10 == 0 && !this.f14792h) {
                            try {
                                this.f14790f.a();
                                i10 = this.f14788d.f(this.f14791g);
                                j12 = this.f14788d.c();
                                if (j12 > g0.this.f14768j + j13) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f14790f.c();
                        g0.this.f14774p.post(g0.this.f14773o);
                    }
                    if (i10 == 1) {
                        i10 = 0;
                    } else if (this.f14788d.c() != -1) {
                        this.f14791g.f16251a = this.f14788d.c();
                    }
                    x4.m.a(this.f14787c);
                } catch (Throwable th) {
                    if (i10 != 1 && this.f14788d.c() != -1) {
                        this.f14791g.f16251a = this.f14788d.c();
                    }
                    x4.m.a(this.f14787c);
                    throw th;
                }
            }
        }

        @Override // d4.m.a
        public void b(y4.e0 e0Var) {
            long max;
            if (!this.f14797m) {
                max = this.f14794j;
            } else {
                max = Math.max(g0.this.M(true), this.f14794j);
            }
            int a10 = e0Var.a();
            g3.b0 b0Var = (g3.b0) y4.a.e(this.f14796l);
            b0Var.b(e0Var, a10);
            b0Var.f(max, 1, a10, 0, null);
            this.f14797m = true;
        }

        @Override // x4.e0.e
        public void c() {
            this.f14792h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void f(long j10, boolean z10, boolean z11);
    }

    /* loaded from: classes.dex */
    private final class c implements m0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f14799a;

        public c(int i10) {
            this.f14799a = i10;
        }

        @Override // d4.m0
        public void a() {
            g0.this.X(this.f14799a);
        }

        @Override // d4.m0
        public boolean isReady() {
            return g0.this.P(this.f14799a);
        }

        @Override // d4.m0
        public int j(long j10) {
            return g0.this.h0(this.f14799a, j10);
        }

        @Override // d4.m0
        public int l(y1 y1Var, e3.g gVar, int i10) {
            return g0.this.d0(this.f14799a, y1Var, gVar, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f14801a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14802b;

        public d(int i10, boolean z10) {
            this.f14801a = i10;
            this.f14802b = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f14801a == dVar.f14801a && this.f14802b == dVar.f14802b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f14801a * 31) + (this.f14802b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final u0 f14803a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f14804b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f14805c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f14806d;

        public e(u0 u0Var, boolean[] zArr) {
            this.f14803a = u0Var;
            this.f14804b = zArr;
            int i10 = u0Var.f14962a;
            this.f14805c = new boolean[i10];
            this.f14806d = new boolean[i10];
        }
    }

    public g0(Uri uri, x4.j jVar, b0 b0Var, f3.v vVar, u.a aVar, x4.d0 d0Var, a0.a aVar2, b bVar, x4.b bVar2, String str, int i10) {
        this.f14759a = uri;
        this.f14760b = jVar;
        this.f14761c = vVar;
        this.f14764f = aVar;
        this.f14762d = d0Var;
        this.f14763e = aVar2;
        this.f14765g = bVar;
        this.f14766h = bVar2;
        this.f14767i = str;
        this.f14768j = i10;
        this.f14770l = b0Var;
    }

    private void I() {
        y4.a.f(this.f14780v);
        y4.a.e(this.f14782x);
        y4.a.e(this.f14783y);
    }

    private boolean J(a aVar, int i10) {
        g3.z zVar;
        if (!this.F && ((zVar = this.f14783y) == null || zVar.i() == -9223372036854775807L)) {
            if (this.f14780v && !j0()) {
                this.I = true;
                return false;
            }
            this.D = this.f14780v;
            this.G = 0L;
            this.J = 0;
            for (l0 l0Var : this.f14777s) {
                l0Var.V();
            }
            aVar.j(0L, 0L);
            return true;
        }
        this.J = i10;
        return true;
    }

    private static Map K() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int L() {
        int i10 = 0;
        for (l0 l0Var : this.f14777s) {
            i10 += l0Var.G();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long M(boolean z10) {
        long j10 = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f14777s.length; i10++) {
            if (z10 || ((e) y4.a.e(this.f14782x)).f14805c[i10]) {
                j10 = Math.max(j10, this.f14777s[i10].z());
            }
        }
        return j10;
    }

    private boolean O() {
        if (this.H != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        if (!this.L) {
            ((r.a) y4.a.e(this.f14775q)).h(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        this.F = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        boolean z10;
        t3.a a10;
        if (!this.L && !this.f14780v && this.f14779u && this.f14783y != null) {
            for (l0 l0Var : this.f14777s) {
                if (l0Var.F() == null) {
                    return;
                }
            }
            this.f14771m.c();
            int length = this.f14777s.length;
            s0[] s0VarArr = new s0[length];
            boolean[] zArr = new boolean[length];
            for (int i10 = 0; i10 < length; i10++) {
                x1 x1Var = (x1) y4.a.e(this.f14777s[i10].F());
                String str = x1Var.f4514l;
                boolean o10 = y4.v.o(str);
                if (!o10 && !y4.v.s(str)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                zArr[i10] = z10;
                this.f14781w = z10 | this.f14781w;
                x3.b bVar = this.f14776r;
                if (bVar != null) {
                    if (o10 || this.f14778t[i10].f14802b) {
                        t3.a aVar = x1Var.f4512j;
                        if (aVar == null) {
                            a10 = new t3.a(bVar);
                        } else {
                            a10 = aVar.a(bVar);
                        }
                        x1Var = x1Var.b().Z(a10).G();
                    }
                    if (o10 && x1Var.f4508f == -1 && x1Var.f4509g == -1 && bVar.f32259a != -1) {
                        x1Var = x1Var.b().I(bVar.f32259a).G();
                    }
                }
                s0VarArr[i10] = new s0(Integer.toString(i10), x1Var.c(this.f14761c.c(x1Var)));
            }
            this.f14782x = new e(new u0(s0VarArr), zArr);
            this.f14780v = true;
            ((r.a) y4.a.e(this.f14775q)).g(this);
        }
    }

    private void U(int i10) {
        I();
        e eVar = this.f14782x;
        boolean[] zArr = eVar.f14806d;
        if (!zArr[i10]) {
            x1 b10 = eVar.f14803a.b(i10).b(0);
            this.f14763e.i(y4.v.k(b10.f4514l), b10, 0, null, this.G);
            zArr[i10] = true;
        }
    }

    private void V(int i10) {
        I();
        boolean[] zArr = this.f14782x.f14804b;
        if (this.I && zArr[i10]) {
            if (!this.f14777s[i10].K(false)) {
                this.H = 0L;
                this.I = false;
                this.D = true;
                this.G = 0L;
                this.J = 0;
                for (l0 l0Var : this.f14777s) {
                    l0Var.V();
                }
                ((r.a) y4.a.e(this.f14775q)).h(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        this.f14774p.post(new Runnable() { // from class: d4.e0
            @Override // java.lang.Runnable
            public final void run() {
                g0.this.R();
            }
        });
    }

    private g3.b0 c0(d dVar) {
        int length = this.f14777s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (dVar.equals(this.f14778t[i10])) {
                return this.f14777s[i10];
            }
        }
        l0 k10 = l0.k(this.f14766h, this.f14761c, this.f14764f);
        k10.d0(this);
        int i11 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f14778t, i11);
        dVarArr[length] = dVar;
        this.f14778t = (d[]) y4.q0.k(dVarArr);
        l0[] l0VarArr = (l0[]) Arrays.copyOf(this.f14777s, i11);
        l0VarArr[length] = k10;
        this.f14777s = (l0[]) y4.q0.k(l0VarArr);
        return k10;
    }

    private boolean f0(boolean[] zArr, long j10) {
        int length = this.f14777s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.f14777s[i10].Z(j10, false) && (zArr[i10] || !this.f14781w)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public void S(g3.z zVar) {
        g3.z bVar;
        boolean z10;
        if (this.f14776r == null) {
            bVar = zVar;
        } else {
            bVar = new z.b(-9223372036854775807L);
        }
        this.f14783y = bVar;
        this.f14784z = zVar.i();
        int i10 = 1;
        if (!this.F && zVar.i() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.A = z10;
        if (z10) {
            i10 = 7;
        }
        this.B = i10;
        this.f14765g.f(this.f14784z, zVar.e(), this.A);
        if (!this.f14780v) {
            T();
        }
    }

    private void i0() {
        a aVar = new a(this.f14759a, this.f14760b, this.f14770l, this, this.f14771m);
        if (this.f14780v) {
            y4.a.f(O());
            long j10 = this.f14784z;
            if (j10 == -9223372036854775807L || this.H <= j10) {
                aVar.j(((g3.z) y4.a.e(this.f14783y)).h(this.H).f16252a.f16144b, this.H);
                for (l0 l0Var : this.f14777s) {
                    l0Var.b0(this.H);
                }
                this.H = -9223372036854775807L;
            } else {
                this.K = true;
                this.H = -9223372036854775807L;
                return;
            }
        }
        this.J = L();
        this.f14763e.A(new n(aVar.f14785a, aVar.f14795k, this.f14769k.n(aVar, this, this.f14762d.d(this.B))), 1, -1, null, 0, null, aVar.f14794j, this.f14784z);
    }

    private boolean j0() {
        if (!this.D && !O()) {
            return false;
        }
        return true;
    }

    g3.b0 N() {
        return c0(new d(0, true));
    }

    boolean P(int i10) {
        if (!j0() && this.f14777s[i10].K(this.K)) {
            return true;
        }
        return false;
    }

    void W() {
        this.f14769k.k(this.f14762d.d(this.B));
    }

    void X(int i10) {
        this.f14777s[i10].N();
        W();
    }

    @Override // x4.e0.b
    /* renamed from: Z */
    public void s(a aVar, long j10, long j11, boolean z10) {
        x4.l0 l0Var = aVar.f14787c;
        n nVar = new n(aVar.f14785a, aVar.f14795k, l0Var.r(), l0Var.s(), j10, j11, l0Var.q());
        this.f14762d.c(aVar.f14785a);
        this.f14763e.r(nVar, 1, -1, null, 0, null, aVar.f14794j, this.f14784z);
        if (!z10) {
            for (l0 l0Var2 : this.f14777s) {
                l0Var2.V();
            }
            if (this.E > 0) {
                ((r.a) y4.a.e(this.f14775q)).h(this);
            }
        }
    }

    @Override // g3.m
    public g3.b0 a(int i10, int i11) {
        return c0(new d(i10, false));
    }

    @Override // x4.e0.b
    /* renamed from: a0 */
    public void o(a aVar, long j10, long j11) {
        g3.z zVar;
        long j12;
        if (this.f14784z == -9223372036854775807L && (zVar = this.f14783y) != null) {
            boolean e10 = zVar.e();
            long M2 = M(true);
            if (M2 == Long.MIN_VALUE) {
                j12 = 0;
            } else {
                j12 = M2 + 10000;
            }
            this.f14784z = j12;
            this.f14765g.f(j12, e10, this.A);
        }
        x4.l0 l0Var = aVar.f14787c;
        n nVar = new n(aVar.f14785a, aVar.f14795k, l0Var.r(), l0Var.s(), j10, j11, l0Var.q());
        this.f14762d.c(aVar.f14785a);
        this.f14763e.u(nVar, 1, -1, null, 0, null, aVar.f14794j, this.f14784z);
        this.K = true;
        ((r.a) y4.a.e(this.f14775q)).h(this);
    }

    @Override // d4.r, d4.n0
    public long b() {
        return d();
    }

    @Override // x4.e0.b
    /* renamed from: b0 */
    public e0.c h(a aVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        a aVar2;
        e0.c cVar;
        x4.l0 l0Var = aVar.f14787c;
        n nVar = new n(aVar.f14785a, aVar.f14795k, l0Var.r(), l0Var.s(), j10, j11, l0Var.q());
        long a10 = this.f14762d.a(new d0.c(nVar, new q(1, -1, null, 0, null, y4.q0.X0(aVar.f14794j), y4.q0.X0(this.f14784z)), iOException, i10));
        if (a10 == -9223372036854775807L) {
            cVar = x4.e0.f32304g;
        } else {
            int L = L();
            if (L > this.J) {
                aVar2 = aVar;
                z10 = true;
            } else {
                z10 = false;
                aVar2 = aVar;
            }
            if (J(aVar2, L)) {
                cVar = x4.e0.h(z10, a10);
            } else {
                cVar = x4.e0.f32303f;
            }
        }
        boolean z11 = !cVar.c();
        this.f14763e.w(nVar, 1, -1, null, 0, null, aVar.f14794j, this.f14784z, iOException, z11);
        if (z11) {
            this.f14762d.c(aVar.f14785a);
        }
        return cVar;
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        if (!this.K && !this.f14769k.i() && !this.I) {
            if (!this.f14780v || this.E != 0) {
                boolean e10 = this.f14771m.e();
                if (!this.f14769k.j()) {
                    i0();
                    return true;
                }
                return e10;
            }
            return false;
        }
        return false;
    }

    @Override // d4.r, d4.n0
    public long d() {
        long j10;
        I();
        if (this.K || this.E == 0) {
            return Long.MIN_VALUE;
        }
        if (O()) {
            return this.H;
        }
        if (this.f14781w) {
            int length = this.f14777s.length;
            j10 = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                e eVar = this.f14782x;
                if (eVar.f14804b[i10] && eVar.f14805c[i10] && !this.f14777s[i10].J()) {
                    j10 = Math.min(j10, this.f14777s[i10].z());
                }
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        if (j10 == Long.MAX_VALUE) {
            j10 = M(false);
        }
        if (j10 == Long.MIN_VALUE) {
            return this.G;
        }
        return j10;
    }

    int d0(int i10, y1 y1Var, e3.g gVar, int i11) {
        if (j0()) {
            return -3;
        }
        U(i10);
        int S = this.f14777s[i10].S(y1Var, gVar, i11, this.K);
        if (S == -3) {
            V(i10);
        }
        return S;
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        I();
        if (!this.f14783y.e()) {
            return 0L;
        }
        z.a h10 = this.f14783y.h(j10);
        return x3Var.a(j10, h10.f16252a.f16143a, h10.f16253b.f16143a);
    }

    public void e0() {
        if (this.f14780v) {
            for (l0 l0Var : this.f14777s) {
                l0Var.R();
            }
        }
        this.f14769k.m(this);
        this.f14774p.removeCallbacksAndMessages(null);
        this.f14775q = null;
        this.L = true;
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
    }

    @Override // x4.e0.f
    public void g() {
        for (l0 l0Var : this.f14777s) {
            l0Var.T();
        }
        this.f14770l.release();
    }

    int h0(int i10, long j10) {
        if (j0()) {
            return 0;
        }
        U(i10);
        l0 l0Var = this.f14777s[i10];
        int E = l0Var.E(j10, this.K);
        l0Var.e0(E);
        if (E == 0) {
            V(i10);
        }
        return E;
    }

    @Override // d4.r
    public void i() {
        W();
        if (this.K && !this.f14780v) {
            throw e3.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        if (this.f14769k.j() && this.f14771m.d()) {
            return true;
        }
        return false;
    }

    @Override // d4.l0.d
    public void j(x1 x1Var) {
        this.f14774p.post(this.f14772n);
    }

    @Override // d4.r
    public long k(long j10) {
        I();
        boolean[] zArr = this.f14782x.f14804b;
        if (!this.f14783y.e()) {
            j10 = 0;
        }
        int i10 = 0;
        this.D = false;
        this.G = j10;
        if (O()) {
            this.H = j10;
            return j10;
        } else if (this.B != 7 && f0(zArr, j10)) {
            return j10;
        } else {
            this.I = false;
            this.H = j10;
            this.K = false;
            if (this.f14769k.j()) {
                l0[] l0VarArr = this.f14777s;
                int length = l0VarArr.length;
                while (i10 < length) {
                    l0VarArr[i10].r();
                    i10++;
                }
                this.f14769k.f();
            } else {
                this.f14769k.g();
                l0[] l0VarArr2 = this.f14777s;
                int length2 = l0VarArr2.length;
                while (i10 < length2) {
                    l0VarArr2[i10].V();
                    i10++;
                }
            }
            return j10;
        }
    }

    @Override // g3.m
    public void l(final g3.z zVar) {
        this.f14774p.post(new Runnable() { // from class: d4.f0
            @Override // java.lang.Runnable
            public final void run() {
                g0.this.S(zVar);
            }
        });
    }

    @Override // d4.r
    public long m(w4.y[] yVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        boolean z10;
        w4.y yVar;
        boolean z11;
        boolean z12;
        I();
        e eVar = this.f14782x;
        u0 u0Var = eVar.f14803a;
        boolean[] zArr3 = eVar.f14805c;
        int i10 = this.E;
        int i11 = 0;
        for (int i12 = 0; i12 < yVarArr.length; i12++) {
            m0 m0Var = m0VarArr[i12];
            if (m0Var != null && (yVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((c) m0Var).f14799a;
                y4.a.f(zArr3[i13]);
                this.E--;
                zArr3[i13] = false;
                m0VarArr[i12] = null;
            }
        }
        if (!this.C ? j10 != 0 : i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i14 = 0; i14 < yVarArr.length; i14++) {
            if (m0VarArr[i14] == null && (yVar = yVarArr[i14]) != null) {
                if (yVar.length() == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                y4.a.f(z11);
                if (yVar.j(0) == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                y4.a.f(z12);
                int c10 = u0Var.c(yVar.a());
                y4.a.f(!zArr3[c10]);
                this.E++;
                zArr3[c10] = true;
                m0VarArr[i14] = new c(c10);
                zArr2[i14] = true;
                if (!z10) {
                    l0 l0Var = this.f14777s[c10];
                    if (!l0Var.Z(j10, true) && l0Var.C() != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f14769k.j()) {
                l0[] l0VarArr = this.f14777s;
                int length = l0VarArr.length;
                while (i11 < length) {
                    l0VarArr[i11].r();
                    i11++;
                }
                this.f14769k.f();
            } else {
                l0[] l0VarArr2 = this.f14777s;
                int length2 = l0VarArr2.length;
                while (i11 < length2) {
                    l0VarArr2[i11].V();
                    i11++;
                }
            }
        } else if (z10) {
            j10 = k(j10);
            while (i11 < m0VarArr.length) {
                if (m0VarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.C = true;
        return j10;
    }

    @Override // g3.m
    public void n() {
        this.f14779u = true;
        this.f14774p.post(this.f14772n);
    }

    @Override // d4.r
    public long p() {
        if (this.D) {
            if (this.K || L() > this.J) {
                this.D = false;
                return this.G;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // d4.r
    public u0 q() {
        I();
        return this.f14782x.f14803a;
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        I();
        if (O()) {
            return;
        }
        boolean[] zArr = this.f14782x.f14805c;
        int length = this.f14777s.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f14777s[i10].q(j10, z10, zArr[i10]);
        }
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f14775q = aVar;
        this.f14771m.e();
        i0();
    }
}
