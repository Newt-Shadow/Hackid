package k3;

import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.y;
import g3.z;
import y4.e0;
/* loaded from: classes.dex */
public final class c implements k {

    /* renamed from: q  reason: collision with root package name */
    public static final p f24679q = new p() { // from class: k3.b
        @Override // g3.p
        public final k[] b() {
            k[] h10;
            h10 = c.h();
            return h10;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private m f24685f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24687h;

    /* renamed from: i  reason: collision with root package name */
    private long f24688i;

    /* renamed from: j  reason: collision with root package name */
    private int f24689j;

    /* renamed from: k  reason: collision with root package name */
    private int f24690k;

    /* renamed from: l  reason: collision with root package name */
    private int f24691l;

    /* renamed from: m  reason: collision with root package name */
    private long f24692m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f24693n;

    /* renamed from: o  reason: collision with root package name */
    private a f24694o;

    /* renamed from: p  reason: collision with root package name */
    private f f24695p;

    /* renamed from: a  reason: collision with root package name */
    private final e0 f24680a = new e0(4);

    /* renamed from: b  reason: collision with root package name */
    private final e0 f24681b = new e0(9);

    /* renamed from: c  reason: collision with root package name */
    private final e0 f24682c = new e0(11);

    /* renamed from: d  reason: collision with root package name */
    private final e0 f24683d = new e0();

    /* renamed from: e  reason: collision with root package name */
    private final d f24684e = new d();

    /* renamed from: g  reason: collision with root package name */
    private int f24686g = 1;

    private void d() {
        if (!this.f24693n) {
            this.f24685f.l(new z.b(-9223372036854775807L));
            this.f24693n = true;
        }
    }

    private long e() {
        if (this.f24687h) {
            return this.f24688i + this.f24692m;
        }
        if (this.f24684e.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.f24692m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] h() {
        return new k[]{new c()};
    }

    private e0 i(l lVar) {
        if (this.f24691l > this.f24683d.b()) {
            e0 e0Var = this.f24683d;
            e0Var.R(new byte[Math.max(e0Var.b() * 2, this.f24691l)], 0);
        } else {
            this.f24683d.T(0);
        }
        this.f24683d.S(this.f24691l);
        lVar.readFully(this.f24683d.e(), 0, this.f24691l);
        return this.f24683d;
    }

    private boolean j(l lVar) {
        boolean z10;
        boolean z11 = false;
        if (!lVar.e(this.f24681b.e(), 0, 9, true)) {
            return false;
        }
        this.f24681b.T(0);
        this.f24681b.U(4);
        int G = this.f24681b.G();
        if ((G & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((G & 1) != 0) {
            z11 = true;
        }
        if (z10 && this.f24694o == null) {
            this.f24694o = new a(this.f24685f.a(8, 1));
        }
        if (z11 && this.f24695p == null) {
            this.f24695p = new f(this.f24685f.a(9, 2));
        }
        this.f24685f.n();
        this.f24689j = (this.f24681b.p() - 9) + 4;
        this.f24686g = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean k(g3.l r10) {
        /*
            r9 = this;
            long r0 = r9.e()
            int r2 = r9.f24690k
            r3 = 8
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r2 != r3) goto L23
            k3.a r3 = r9.f24694o
            if (r3 == 0) goto L23
            r9.d()
            k3.a r2 = r9.f24694o
            y4.e0 r10 = r9.i(r10)
            boolean r10 = r2.a(r10, r0)
        L21:
            r0 = r6
            goto L75
        L23:
            r3 = 9
            if (r2 != r3) goto L39
            k3.f r3 = r9.f24695p
            if (r3 == 0) goto L39
            r9.d()
            k3.f r2 = r9.f24695p
            y4.e0 r10 = r9.i(r10)
            boolean r10 = r2.a(r10, r0)
            goto L21
        L39:
            r3 = 18
            if (r2 != r3) goto L6e
            boolean r2 = r9.f24693n
            if (r2 != 0) goto L6e
            k3.d r2 = r9.f24684e
            y4.e0 r10 = r9.i(r10)
            boolean r10 = r2.a(r10, r0)
            k3.d r0 = r9.f24684e
            long r0 = r0.d()
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto L21
            g3.m r2 = r9.f24685f
            g3.x r3 = new g3.x
            k3.d r7 = r9.f24684e
            long[] r7 = r7.e()
            k3.d r8 = r9.f24684e
            long[] r8 = r8.f()
            r3.<init>(r7, r8, r0)
            r2.l(r3)
            r9.f24693n = r6
            goto L21
        L6e:
            int r0 = r9.f24691l
            r10.m(r0)
            r10 = 0
            r0 = r10
        L75:
            boolean r1 = r9.f24687h
            if (r1 != 0) goto L8f
            if (r10 == 0) goto L8f
            r9.f24687h = r6
            k3.d r10 = r9.f24684e
            long r1 = r10.d()
            int r10 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            long r1 = r9.f24692m
            long r1 = -r1
            goto L8d
        L8b:
            r1 = 0
        L8d:
            r9.f24688i = r1
        L8f:
            r10 = 4
            r9.f24689j = r10
            r10 = 2
            r9.f24686g = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k3.c.k(g3.l):boolean");
    }

    private boolean l(l lVar) {
        if (!lVar.e(this.f24682c.e(), 0, 11, true)) {
            return false;
        }
        this.f24682c.T(0);
        this.f24690k = this.f24682c.G();
        this.f24691l = this.f24682c.J();
        this.f24692m = this.f24682c.J();
        this.f24692m = ((this.f24682c.G() << 24) | this.f24692m) * 1000;
        this.f24682c.U(3);
        this.f24686g = 4;
        return true;
    }

    private void m(l lVar) {
        lVar.m(this.f24689j);
        this.f24689j = 0;
        this.f24686g = 3;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        if (j10 == 0) {
            this.f24686g = 1;
            this.f24687h = false;
        } else {
            this.f24686g = 3;
        }
        this.f24689j = 0;
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f24685f = mVar;
    }

    @Override // g3.k
    public boolean f(l lVar) {
        lVar.p(this.f24680a.e(), 0, 3);
        this.f24680a.T(0);
        if (this.f24680a.J() != 4607062) {
            return false;
        }
        lVar.p(this.f24680a.e(), 0, 2);
        this.f24680a.T(0);
        if ((this.f24680a.M() & 250) != 0) {
            return false;
        }
        lVar.p(this.f24680a.e(), 0, 4);
        this.f24680a.T(0);
        int p10 = this.f24680a.p();
        lVar.l();
        lVar.h(p10);
        lVar.p(this.f24680a.e(), 0, 4);
        this.f24680a.T(0);
        if (this.f24680a.p() != 0) {
            return false;
        }
        return true;
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        y4.a.h(this.f24685f);
        while (true) {
            int i10 = this.f24686g;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (k(lVar)) {
                                return 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else if (!l(lVar)) {
                        return -1;
                    }
                } else {
                    m(lVar);
                }
            } else if (!j(lVar)) {
                return -1;
            }
        }
    }

    @Override // g3.k
    public void release() {
    }
}
