package l3;

import b3.x1;
import g3.k;
import g3.l;
import g3.m;
import g3.y;
import g3.z;
import t3.a;
import y4.e0;
/* loaded from: classes.dex */
public final class a implements k {

    /* renamed from: b  reason: collision with root package name */
    private m f25174b;

    /* renamed from: c  reason: collision with root package name */
    private int f25175c;

    /* renamed from: d  reason: collision with root package name */
    private int f25176d;

    /* renamed from: e  reason: collision with root package name */
    private int f25177e;

    /* renamed from: g  reason: collision with root package name */
    private z3.b f25179g;

    /* renamed from: h  reason: collision with root package name */
    private l f25180h;

    /* renamed from: i  reason: collision with root package name */
    private c f25181i;

    /* renamed from: j  reason: collision with root package name */
    private o3.k f25182j;

    /* renamed from: a  reason: collision with root package name */
    private final e0 f25173a = new e0(6);

    /* renamed from: f  reason: collision with root package name */
    private long f25178f = -1;

    private void a(l lVar) {
        this.f25173a.P(2);
        lVar.p(this.f25173a.e(), 0, 2);
        lVar.h(this.f25173a.M() - 2);
    }

    private void d() {
        h(new a.b[0]);
        ((m) y4.a.e(this.f25174b)).n();
        this.f25174b.l(new z.b(-9223372036854775807L));
        this.f25175c = 6;
    }

    private static z3.b e(String str, long j10) {
        b a10;
        if (j10 == -1 || (a10 = e.a(str)) == null) {
            return null;
        }
        return a10.a(j10);
    }

    private void h(a.b... bVarArr) {
        ((m) y4.a.e(this.f25174b)).a(1024, 4).c(new x1.b().M("image/jpeg").Z(new t3.a(bVarArr)).G());
    }

    private int i(l lVar) {
        this.f25173a.P(2);
        lVar.p(this.f25173a.e(), 0, 2);
        return this.f25173a.M();
    }

    private void j(l lVar) {
        this.f25173a.P(2);
        lVar.readFully(this.f25173a.e(), 0, 2);
        int M = this.f25173a.M();
        this.f25176d = M;
        if (M == 65498) {
            if (this.f25178f != -1) {
                this.f25175c = 4;
            } else {
                d();
            }
        } else if ((M < 65488 || M > 65497) && M != 65281) {
            this.f25175c = 1;
        }
    }

    private void k(l lVar) {
        String A;
        if (this.f25176d == 65505) {
            e0 e0Var = new e0(this.f25177e);
            lVar.readFully(e0Var.e(), 0, this.f25177e);
            if (this.f25179g == null && "http://ns.adobe.com/xap/1.0/".equals(e0Var.A()) && (A = e0Var.A()) != null) {
                z3.b e10 = e(A, lVar.b());
                this.f25179g = e10;
                if (e10 != null) {
                    this.f25178f = e10.f33383d;
                }
            }
        } else {
            lVar.m(this.f25177e);
        }
        this.f25175c = 0;
    }

    private void l(l lVar) {
        this.f25173a.P(2);
        lVar.readFully(this.f25173a.e(), 0, 2);
        this.f25177e = this.f25173a.M() - 2;
        this.f25175c = 2;
    }

    private void m(l lVar) {
        if (!lVar.f(this.f25173a.e(), 0, 1, true)) {
            d();
            return;
        }
        lVar.l();
        if (this.f25182j == null) {
            this.f25182j = new o3.k();
        }
        c cVar = new c(lVar, this.f25178f);
        this.f25181i = cVar;
        if (this.f25182j.f(cVar)) {
            this.f25182j.c(new d(this.f25178f, (m) y4.a.e(this.f25174b)));
            n();
            return;
        }
        d();
    }

    private void n() {
        h((a.b) y4.a.e(this.f25179g));
        this.f25175c = 5;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        if (j10 == 0) {
            this.f25175c = 0;
            this.f25182j = null;
        } else if (this.f25175c == 5) {
            ((o3.k) y4.a.e(this.f25182j)).b(j10, j11);
        }
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f25174b = mVar;
    }

    @Override // g3.k
    public boolean f(l lVar) {
        if (i(lVar) != 65496) {
            return false;
        }
        int i10 = i(lVar);
        this.f25176d = i10;
        if (i10 == 65504) {
            a(lVar);
            this.f25176d = i(lVar);
        }
        if (this.f25176d != 65505) {
            return false;
        }
        lVar.h(2);
        this.f25173a.P(6);
        lVar.p(this.f25173a.e(), 0, 6);
        if (this.f25173a.I() != 1165519206 || this.f25173a.M() != 0) {
            return false;
        }
        return true;
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        int i10 = this.f25175c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 == 6) {
                                return -1;
                            }
                            throw new IllegalStateException();
                        }
                        if (this.f25181i == null || lVar != this.f25180h) {
                            this.f25180h = lVar;
                            this.f25181i = new c(lVar, this.f25178f);
                        }
                        int g10 = ((o3.k) y4.a.e(this.f25182j)).g(this.f25181i, yVar);
                        if (g10 == 1) {
                            yVar.f16251a += this.f25178f;
                        }
                        return g10;
                    }
                    long c10 = lVar.c();
                    long j10 = this.f25178f;
                    if (c10 != j10) {
                        yVar.f16251a = j10;
                        return 1;
                    }
                    m(lVar);
                    return 0;
                }
                k(lVar);
                return 0;
            }
            l(lVar);
            return 0;
        }
        j(lVar);
        return 0;
    }

    @Override // g3.k
    public void release() {
        o3.k kVar = this.f25182j;
        if (kVar != null) {
            kVar.release();
        }
    }
}
