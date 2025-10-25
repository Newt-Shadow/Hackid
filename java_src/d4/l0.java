package d4;

import b3.x1;
import b3.y1;
import d4.l0;
import f3.n;
import f3.u;
import f3.v;
import g3.b0;
/* loaded from: classes.dex */
public class l0 implements g3.b0 {
    private x1 A;
    private x1 B;
    private int C;
    private boolean D;
    private boolean E;
    private long F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final j0 f14851a;

    /* renamed from: d  reason: collision with root package name */
    private final f3.v f14854d;

    /* renamed from: e  reason: collision with root package name */
    private final u.a f14855e;

    /* renamed from: f  reason: collision with root package name */
    private d f14856f;

    /* renamed from: g  reason: collision with root package name */
    private x1 f14857g;

    /* renamed from: h  reason: collision with root package name */
    private f3.n f14858h;

    /* renamed from: p  reason: collision with root package name */
    private int f14866p;

    /* renamed from: q  reason: collision with root package name */
    private int f14867q;

    /* renamed from: r  reason: collision with root package name */
    private int f14868r;

    /* renamed from: s  reason: collision with root package name */
    private int f14869s;

    /* renamed from: w  reason: collision with root package name */
    private boolean f14873w;

    /* renamed from: z  reason: collision with root package name */
    private boolean f14876z;

    /* renamed from: b  reason: collision with root package name */
    private final b f14852b = new b();

    /* renamed from: i  reason: collision with root package name */
    private int f14859i = 1000;

    /* renamed from: j  reason: collision with root package name */
    private int[] f14860j = new int[1000];

    /* renamed from: k  reason: collision with root package name */
    private long[] f14861k = new long[1000];

    /* renamed from: n  reason: collision with root package name */
    private long[] f14864n = new long[1000];

    /* renamed from: m  reason: collision with root package name */
    private int[] f14863m = new int[1000];

    /* renamed from: l  reason: collision with root package name */
    private int[] f14862l = new int[1000];

    /* renamed from: o  reason: collision with root package name */
    private b0.a[] f14865o = new b0.a[1000];

    /* renamed from: c  reason: collision with root package name */
    private final q0 f14853c = new q0(new y4.h() { // from class: d4.k0
        @Override // y4.h
        public final void accept(Object obj) {
            l0.L((l0.c) obj);
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private long f14870t = Long.MIN_VALUE;

    /* renamed from: u  reason: collision with root package name */
    private long f14871u = Long.MIN_VALUE;

    /* renamed from: v  reason: collision with root package name */
    private long f14872v = Long.MIN_VALUE;

    /* renamed from: y  reason: collision with root package name */
    private boolean f14875y = true;

    /* renamed from: x  reason: collision with root package name */
    private boolean f14874x = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f14877a;

        /* renamed from: b  reason: collision with root package name */
        public long f14878b;

        /* renamed from: c  reason: collision with root package name */
        public b0.a f14879c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final x1 f14880a;

        /* renamed from: b  reason: collision with root package name */
        public final v.b f14881b;

        private c(x1 x1Var, v.b bVar) {
            this.f14880a = x1Var;
            this.f14881b = bVar;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void j(x1 x1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l0(x4.b bVar, f3.v vVar, u.a aVar) {
        this.f14854d = vVar;
        this.f14855e = aVar;
        this.f14851a = new j0(bVar);
    }

    private long B(int i10) {
        long j10 = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int D = D(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = Math.max(j10, this.f14864n[D]);
            if ((this.f14863m[D] & 1) != 0) {
                break;
            }
            D--;
            if (D == -1) {
                D = this.f14859i - 1;
            }
        }
        return j10;
    }

    private int D(int i10) {
        int i11 = this.f14868r + i10;
        int i12 = this.f14859i;
        if (i11 >= i12) {
            return i11 - i12;
        }
        return i11;
    }

    private boolean H() {
        if (this.f14869s != this.f14866p) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L(c cVar) {
        cVar.f14881b.release();
    }

    private boolean M(int i10) {
        f3.n nVar = this.f14858h;
        if (nVar != null && nVar.getState() != 4 && ((this.f14863m[i10] & 1073741824) != 0 || !this.f14858h.c())) {
            return false;
        }
        return true;
    }

    private void O(x1 x1Var, y1 y1Var) {
        boolean z10;
        f3.m mVar;
        x1 x1Var2;
        x1 x1Var3 = this.f14857g;
        if (x1Var3 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            mVar = null;
        } else {
            mVar = x1Var3.f4517o;
        }
        this.f14857g = x1Var;
        f3.m mVar2 = x1Var.f4517o;
        f3.v vVar = this.f14854d;
        if (vVar != null) {
            x1Var2 = x1Var.c(vVar.c(x1Var));
        } else {
            x1Var2 = x1Var;
        }
        y1Var.f4575b = x1Var2;
        y1Var.f4574a = this.f14858h;
        if (this.f14854d == null) {
            return;
        }
        if (!z10 && y4.q0.c(mVar, mVar2)) {
            return;
        }
        f3.n nVar = this.f14858h;
        f3.n e10 = this.f14854d.e(this.f14855e, x1Var);
        this.f14858h = e10;
        y1Var.f4574a = e10;
        if (nVar != null) {
            nVar.f(this.f14855e);
        }
    }

    private synchronized int P(y1 y1Var, e3.g gVar, boolean z10, boolean z11, b bVar) {
        gVar.f15290d = false;
        if (!H()) {
            if (!z11 && !this.f14873w) {
                x1 x1Var = this.B;
                if (x1Var == null || (!z10 && x1Var == this.f14857g)) {
                    return -3;
                }
                O((x1) y4.a.e(x1Var), y1Var);
                return -5;
            }
            gVar.u(4);
            return -4;
        }
        x1 x1Var2 = ((c) this.f14853c.e(C())).f14880a;
        if (!z10 && x1Var2 == this.f14857g) {
            int D = D(this.f14869s);
            if (!M(D)) {
                gVar.f15290d = true;
                return -3;
            }
            gVar.u(this.f14863m[D]);
            if (this.f14869s == this.f14866p - 1 && (z11 || this.f14873w)) {
                gVar.j(536870912);
            }
            long j10 = this.f14864n[D];
            gVar.f15291e = j10;
            if (j10 < this.f14870t) {
                gVar.j(Integer.MIN_VALUE);
            }
            bVar.f14877a = this.f14862l[D];
            bVar.f14878b = this.f14861k[D];
            bVar.f14879c = this.f14865o[D];
            return -4;
        }
        O(x1Var2, y1Var);
        return -5;
    }

    private void U() {
        f3.n nVar = this.f14858h;
        if (nVar != null) {
            nVar.f(this.f14855e);
            this.f14858h = null;
            this.f14857g = null;
        }
    }

    private synchronized void X() {
        this.f14869s = 0;
        this.f14851a.o();
    }

    private synchronized boolean c0(x1 x1Var) {
        this.f14875y = false;
        if (y4.q0.c(x1Var, this.B)) {
            return false;
        }
        if (!this.f14853c.g() && ((c) this.f14853c.f()).f14880a.equals(x1Var)) {
            this.B = ((c) this.f14853c.f()).f14880a;
        } else {
            this.B = x1Var;
        }
        x1 x1Var2 = this.B;
        this.D = y4.v.a(x1Var2.f4514l, x1Var2.f4511i);
        this.E = false;
        return true;
    }

    private synchronized boolean h(long j10) {
        boolean z10 = true;
        if (this.f14866p == 0) {
            if (j10 <= this.f14871u) {
                z10 = false;
            }
            return z10;
        } else if (A() >= j10) {
            return false;
        } else {
            t(this.f14867q + j(j10));
            return true;
        }
    }

    private synchronized void i(long j10, int i10, long j11, int i11, b0.a aVar) {
        boolean z10;
        v.b bVar;
        int D;
        boolean z11;
        int i12 = this.f14866p;
        if (i12 > 0) {
            if (this.f14861k[D(i12 - 1)] + this.f14862l[D] <= j11) {
                z11 = true;
            } else {
                z11 = false;
            }
            y4.a.a(z11);
        }
        if ((536870912 & i10) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f14873w = z10;
        this.f14872v = Math.max(this.f14872v, j10);
        int D2 = D(this.f14866p);
        this.f14864n[D2] = j10;
        this.f14861k[D2] = j11;
        this.f14862l[D2] = i11;
        this.f14863m[D2] = i10;
        this.f14865o[D2] = aVar;
        this.f14860j[D2] = this.C;
        if (this.f14853c.g() || !((c) this.f14853c.f()).f14880a.equals(this.B)) {
            f3.v vVar = this.f14854d;
            if (vVar != null) {
                bVar = vVar.a(this.f14855e, this.B);
            } else {
                bVar = v.b.f15750a;
            }
            this.f14853c.a(G(), new c((x1) y4.a.e(this.B), bVar));
        }
        int i13 = this.f14866p + 1;
        this.f14866p = i13;
        int i14 = this.f14859i;
        if (i13 == i14) {
            int i15 = i14 + 1000;
            int[] iArr = new int[i15];
            long[] jArr = new long[i15];
            long[] jArr2 = new long[i15];
            int[] iArr2 = new int[i15];
            int[] iArr3 = new int[i15];
            b0.a[] aVarArr = new b0.a[i15];
            int i16 = this.f14868r;
            int i17 = i14 - i16;
            System.arraycopy(this.f14861k, i16, jArr, 0, i17);
            System.arraycopy(this.f14864n, this.f14868r, jArr2, 0, i17);
            System.arraycopy(this.f14863m, this.f14868r, iArr2, 0, i17);
            System.arraycopy(this.f14862l, this.f14868r, iArr3, 0, i17);
            System.arraycopy(this.f14865o, this.f14868r, aVarArr, 0, i17);
            System.arraycopy(this.f14860j, this.f14868r, iArr, 0, i17);
            int i18 = this.f14868r;
            System.arraycopy(this.f14861k, 0, jArr, i17, i18);
            System.arraycopy(this.f14864n, 0, jArr2, i17, i18);
            System.arraycopy(this.f14863m, 0, iArr2, i17, i18);
            System.arraycopy(this.f14862l, 0, iArr3, i17, i18);
            System.arraycopy(this.f14865o, 0, aVarArr, i17, i18);
            System.arraycopy(this.f14860j, 0, iArr, i17, i18);
            this.f14861k = jArr;
            this.f14864n = jArr2;
            this.f14863m = iArr2;
            this.f14862l = iArr3;
            this.f14865o = aVarArr;
            this.f14860j = iArr;
            this.f14868r = 0;
            this.f14859i = i15;
        }
    }

    private int j(long j10) {
        int i10 = this.f14866p;
        int D = D(i10 - 1);
        while (i10 > this.f14869s && this.f14864n[D] >= j10) {
            i10--;
            D--;
            if (D == -1) {
                D = this.f14859i - 1;
            }
        }
        return i10;
    }

    public static l0 k(x4.b bVar, f3.v vVar, u.a aVar) {
        return new l0(bVar, (f3.v) y4.a.e(vVar), (u.a) y4.a.e(aVar));
    }

    public static l0 l(x4.b bVar) {
        return new l0(bVar, null, null);
    }

    private synchronized long m(long j10, boolean z10, boolean z11) {
        int i10;
        int i11 = this.f14866p;
        if (i11 != 0) {
            long[] jArr = this.f14864n;
            int i12 = this.f14868r;
            if (j10 >= jArr[i12]) {
                if (z11 && (i10 = this.f14869s) != i11) {
                    i11 = i10 + 1;
                }
                int v10 = v(i12, i11, j10, z10);
                if (v10 == -1) {
                    return -1L;
                }
                return p(v10);
            }
        }
        return -1L;
    }

    private synchronized long n() {
        int i10 = this.f14866p;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    private long p(int i10) {
        int i11;
        this.f14871u = Math.max(this.f14871u, B(i10));
        this.f14866p -= i10;
        int i12 = this.f14867q + i10;
        this.f14867q = i12;
        int i13 = this.f14868r + i10;
        this.f14868r = i13;
        int i14 = this.f14859i;
        if (i13 >= i14) {
            this.f14868r = i13 - i14;
        }
        int i15 = this.f14869s - i10;
        this.f14869s = i15;
        if (i15 < 0) {
            this.f14869s = 0;
        }
        this.f14853c.d(i12);
        if (this.f14866p == 0) {
            int i16 = this.f14868r;
            if (i16 == 0) {
                i16 = this.f14859i;
            }
            return this.f14861k[i16 - 1] + this.f14862l[i11];
        }
        return this.f14861k[this.f14868r];
    }

    private long t(int i10) {
        boolean z10;
        int D;
        int G = G() - i10;
        boolean z11 = false;
        if (G >= 0 && G <= this.f14866p - this.f14869s) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        int i11 = this.f14866p - G;
        this.f14866p = i11;
        this.f14872v = Math.max(this.f14871u, B(i11));
        if (G == 0 && this.f14873w) {
            z11 = true;
        }
        this.f14873w = z11;
        this.f14853c.c(i10);
        int i12 = this.f14866p;
        if (i12 != 0) {
            return this.f14861k[D(i12 - 1)] + this.f14862l[D];
        }
        return 0L;
    }

    private int v(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f14864n[i10];
            if (j11 <= j10) {
                if (!z10 || (this.f14863m[i10] & 1) != 0) {
                    if (j11 == j10) {
                        return i13;
                    }
                    i12 = i13;
                }
                i10++;
                if (i10 == this.f14859i) {
                    i10 = 0;
                }
            } else {
                return i12;
            }
        }
        return i12;
    }

    public final synchronized long A() {
        return Math.max(this.f14871u, B(this.f14869s));
    }

    public final int C() {
        return this.f14867q + this.f14869s;
    }

    public final synchronized int E(long j10, boolean z10) {
        int D = D(this.f14869s);
        if (H() && j10 >= this.f14864n[D]) {
            if (j10 > this.f14872v && z10) {
                return this.f14866p - this.f14869s;
            }
            int v10 = v(D, this.f14866p - this.f14869s, j10, true);
            if (v10 == -1) {
                return 0;
            }
            return v10;
        }
        return 0;
    }

    public final synchronized x1 F() {
        x1 x1Var;
        if (this.f14875y) {
            x1Var = null;
        } else {
            x1Var = this.B;
        }
        return x1Var;
    }

    public final int G() {
        return this.f14867q + this.f14866p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void I() {
        this.f14876z = true;
    }

    public final synchronized boolean J() {
        return this.f14873w;
    }

    public synchronized boolean K(boolean z10) {
        x1 x1Var;
        boolean z11 = true;
        if (!H()) {
            if (!z10 && !this.f14873w && ((x1Var = this.B) == null || x1Var == this.f14857g)) {
                z11 = false;
            }
            return z11;
        } else if (((c) this.f14853c.e(C())).f14880a != this.f14857g) {
            return true;
        } else {
            return M(D(this.f14869s));
        }
    }

    public void N() {
        f3.n nVar = this.f14858h;
        if (nVar != null && nVar.getState() == 1) {
            throw ((n.a) y4.a.e(this.f14858h.h()));
        }
    }

    public final synchronized int Q() {
        int i10;
        int D = D(this.f14869s);
        if (H()) {
            i10 = this.f14860j[D];
        } else {
            i10 = this.C;
        }
        return i10;
    }

    public void R() {
        r();
        U();
    }

    public int S(y1 y1Var, e3.g gVar, int i10, boolean z10) {
        boolean z11;
        boolean z12 = false;
        if ((i10 & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        int P = P(y1Var, gVar, z11, z10, this.f14852b);
        if (P == -4 && !gVar.q()) {
            if ((i10 & 1) != 0) {
                z12 = true;
            }
            if ((i10 & 4) == 0) {
                if (z12) {
                    this.f14851a.f(gVar, this.f14852b);
                } else {
                    this.f14851a.m(gVar, this.f14852b);
                }
            }
            if (!z12) {
                this.f14869s++;
            }
        }
        return P;
    }

    public void T() {
        W(true);
        U();
    }

    public final void V() {
        W(false);
    }

    public void W(boolean z10) {
        this.f14851a.n();
        this.f14866p = 0;
        this.f14867q = 0;
        this.f14868r = 0;
        this.f14869s = 0;
        this.f14874x = true;
        this.f14870t = Long.MIN_VALUE;
        this.f14871u = Long.MIN_VALUE;
        this.f14872v = Long.MIN_VALUE;
        this.f14873w = false;
        this.f14853c.b();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f14875y = true;
        }
    }

    public final synchronized boolean Y(int i10) {
        X();
        int i11 = this.f14867q;
        if (i10 >= i11 && i10 <= this.f14866p + i11) {
            this.f14870t = Long.MIN_VALUE;
            this.f14869s = i10 - i11;
            return true;
        }
        return false;
    }

    public final synchronized boolean Z(long j10, boolean z10) {
        X();
        int D = D(this.f14869s);
        if (H() && j10 >= this.f14864n[D] && (j10 <= this.f14872v || z10)) {
            int v10 = v(D, this.f14866p - this.f14869s, j10, true);
            if (v10 == -1) {
                return false;
            }
            this.f14870t = j10;
            this.f14869s += v10;
            return true;
        }
        return false;
    }

    @Override // g3.b0
    public final void a(y4.e0 e0Var, int i10, int i11) {
        this.f14851a.q(e0Var, i10);
    }

    public final void a0(long j10) {
        if (this.F != j10) {
            this.F = j10;
            I();
        }
    }

    public final void b0(long j10) {
        this.f14870t = j10;
    }

    @Override // g3.b0
    public final void c(x1 x1Var) {
        x1 w10 = w(x1Var);
        this.f14876z = false;
        this.A = x1Var;
        boolean c02 = c0(w10);
        d dVar = this.f14856f;
        if (dVar != null && c02) {
            dVar.j(w10);
        }
    }

    @Override // g3.b0
    public final int d(x4.h hVar, int i10, boolean z10, int i11) {
        return this.f14851a.p(hVar, i10, z10);
    }

    public final void d0(d dVar) {
        this.f14856f = dVar;
    }

    public final synchronized void e0(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f14869s + i10 <= this.f14866p) {
                    z10 = true;
                    y4.a.a(z10);
                    this.f14869s += i10;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z10 = false;
        y4.a.a(z10);
        this.f14869s += i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0059  */
    @Override // g3.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(long r12, int r14, int r15, int r16, g3.b0.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.f14876z
            if (r0 == 0) goto L10
            b3.x1 r0 = r8.A
            java.lang.Object r0 = y4.a.h(r0)
            b3.x1 r0 = (b3.x1) r0
            r11.c(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = r2
            goto L19
        L18:
            r3 = r1
        L19:
            boolean r4 = r8.f14874x
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.f14874x = r1
        L22:
            long r4 = r8.F
            long r4 = r4 + r12
            boolean r6 = r8.D
            if (r6 == 0) goto L54
            long r6 = r8.f14870t
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L54
            boolean r0 = r8.E
            if (r0 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r0.append(r6)
            b3.x1 r6 = r8.B
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            y4.r.i(r6, r0)
            r8.E = r2
        L50:
            r0 = r14 | 1
            r6 = r0
            goto L55
        L54:
            r6 = r14
        L55:
            boolean r0 = r8.G
            if (r0 == 0) goto L66
            if (r3 == 0) goto L65
            boolean r0 = r11.h(r4)
            if (r0 != 0) goto L62
            goto L65
        L62:
            r8.G = r1
            goto L66
        L65:
            return
        L66:
            d4.j0 r0 = r8.f14851a
            long r0 = r0.e()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.i(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.l0.f(long, int, int, int, g3.b0$a):void");
    }

    public final void f0(int i10) {
        this.C = i10;
    }

    public final void g0() {
        this.G = true;
    }

    public synchronized long o() {
        int i10 = this.f14869s;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    public final void q(long j10, boolean z10, boolean z11) {
        this.f14851a.b(m(j10, z10, z11));
    }

    public final void r() {
        this.f14851a.b(n());
    }

    public final void s() {
        this.f14851a.b(o());
    }

    public final void u(int i10) {
        this.f14851a.c(t(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public x1 w(x1 x1Var) {
        if (this.F != 0 && x1Var.f4518p != Long.MAX_VALUE) {
            return x1Var.b().k0(x1Var.f4518p + this.F).G();
        }
        return x1Var;
    }

    public final int x() {
        return this.f14867q;
    }

    public final synchronized long y() {
        long j10;
        if (this.f14866p == 0) {
            j10 = Long.MIN_VALUE;
        } else {
            j10 = this.f14864n[this.f14868r];
        }
        return j10;
    }

    public final synchronized long z() {
        return this.f14872v;
    }
}
