package j3;

import g3.b0;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.q;
import g3.r;
import g3.s;
import g3.t;
import g3.y;
import g3.z;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class d implements k {

    /* renamed from: o  reason: collision with root package name */
    public static final p f24309o = new p() { // from class: j3.c
        @Override // g3.p
        public final k[] b() {
            k[] j10;
            j10 = d.j();
            return j10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f24310a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f24311b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f24312c;

    /* renamed from: d  reason: collision with root package name */
    private final q.a f24313d;

    /* renamed from: e  reason: collision with root package name */
    private m f24314e;

    /* renamed from: f  reason: collision with root package name */
    private b0 f24315f;

    /* renamed from: g  reason: collision with root package name */
    private int f24316g;

    /* renamed from: h  reason: collision with root package name */
    private t3.a f24317h;

    /* renamed from: i  reason: collision with root package name */
    private t f24318i;

    /* renamed from: j  reason: collision with root package name */
    private int f24319j;

    /* renamed from: k  reason: collision with root package name */
    private int f24320k;

    /* renamed from: l  reason: collision with root package name */
    private b f24321l;

    /* renamed from: m  reason: collision with root package name */
    private int f24322m;

    /* renamed from: n  reason: collision with root package name */
    private long f24323n;

    public d() {
        this(0);
    }

    private long d(e0 e0Var, boolean z10) {
        boolean z11;
        y4.a.e(this.f24318i);
        int f10 = e0Var.f();
        while (f10 <= e0Var.g() - 16) {
            e0Var.T(f10);
            if (q.d(e0Var, this.f24318i, this.f24320k, this.f24313d)) {
                e0Var.T(f10);
                return this.f24313d.f16224a;
            }
            f10++;
        }
        if (z10) {
            while (f10 <= e0Var.g() - this.f24319j) {
                e0Var.T(f10);
                boolean z12 = false;
                try {
                    z11 = q.d(e0Var, this.f24318i, this.f24320k, this.f24313d);
                } catch (IndexOutOfBoundsException unused) {
                    z11 = false;
                }
                if (e0Var.f() <= e0Var.g()) {
                    z12 = z11;
                }
                if (z12) {
                    e0Var.T(f10);
                    return this.f24313d.f16224a;
                }
                f10++;
            }
            e0Var.T(e0Var.g());
            return -1L;
        }
        e0Var.T(f10);
        return -1L;
    }

    private void e(l lVar) {
        this.f24320k = r.b(lVar);
        ((m) q0.j(this.f24314e)).l(h(lVar.c(), lVar.b()));
        this.f24316g = 5;
    }

    private z h(long j10, long j11) {
        y4.a.e(this.f24318i);
        t tVar = this.f24318i;
        if (tVar.f16238k != null) {
            return new s(tVar, j10);
        }
        if (j11 != -1 && tVar.f16237j > 0) {
            b bVar = new b(tVar, this.f24320k, j10, j11);
            this.f24321l = bVar;
            return bVar.b();
        }
        return new z.b(tVar.f());
    }

    private void i(l lVar) {
        byte[] bArr = this.f24310a;
        lVar.p(bArr, 0, bArr.length);
        lVar.l();
        this.f24316g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] j() {
        return new k[]{new d()};
    }

    private void k() {
        ((b0) q0.j(this.f24315f)).f((this.f24323n * 1000000) / ((t) q0.j(this.f24318i)).f16232e, 1, this.f24322m, 0, null);
    }

    private int l(l lVar, y yVar) {
        boolean z10;
        y4.a.e(this.f24315f);
        y4.a.e(this.f24318i);
        b bVar = this.f24321l;
        if (bVar != null && bVar.d()) {
            return this.f24321l.c(lVar, yVar);
        }
        if (this.f24323n == -1) {
            this.f24323n = q.i(lVar, this.f24318i);
            return 0;
        }
        int g10 = this.f24311b.g();
        if (g10 < 32768) {
            int read = lVar.read(this.f24311b.e(), g10, 32768 - g10);
            if (read == -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                this.f24311b.S(g10 + read);
            } else if (this.f24311b.a() == 0) {
                k();
                return -1;
            }
        } else {
            z10 = false;
        }
        int f10 = this.f24311b.f();
        int i10 = this.f24322m;
        int i11 = this.f24319j;
        if (i10 < i11) {
            e0 e0Var = this.f24311b;
            e0Var.U(Math.min(i11 - i10, e0Var.a()));
        }
        long d10 = d(this.f24311b, z10);
        int f11 = this.f24311b.f() - f10;
        this.f24311b.T(f10);
        this.f24315f.b(this.f24311b, f11);
        this.f24322m += f11;
        if (d10 != -1) {
            k();
            this.f24322m = 0;
            this.f24323n = d10;
        }
        if (this.f24311b.a() < 16) {
            int a10 = this.f24311b.a();
            System.arraycopy(this.f24311b.e(), this.f24311b.f(), this.f24311b.e(), 0, a10);
            this.f24311b.T(0);
            this.f24311b.S(a10);
        }
        return 0;
    }

    private void m(l lVar) {
        this.f24317h = r.d(lVar, !this.f24312c);
        this.f24316g = 1;
    }

    private void n(l lVar) {
        r.a aVar = new r.a(this.f24318i);
        boolean z10 = false;
        while (!z10) {
            z10 = r.e(lVar, aVar);
            this.f24318i = (t) q0.j(aVar.f16225a);
        }
        y4.a.e(this.f24318i);
        this.f24319j = Math.max(this.f24318i.f16230c, 6);
        ((b0) q0.j(this.f24315f)).c(this.f24318i.g(this.f24310a, this.f24317h));
        this.f24316g = 4;
    }

    private void o(l lVar) {
        r.i(lVar);
        this.f24316g = 3;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        long j12 = 0;
        if (j10 == 0) {
            this.f24316g = 0;
        } else {
            b bVar = this.f24321l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        if (j11 != 0) {
            j12 = -1;
        }
        this.f24323n = j12;
        this.f24322m = 0;
        this.f24311b.P(0);
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f24314e = mVar;
        this.f24315f = mVar.a(0, 1);
        mVar.n();
    }

    @Override // g3.k
    public boolean f(l lVar) {
        r.c(lVar, false);
        return r.a(lVar);
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        int i10 = this.f24316g;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return l(lVar, yVar);
                            }
                            throw new IllegalStateException();
                        }
                        e(lVar);
                        return 0;
                    }
                    n(lVar);
                    return 0;
                }
                o(lVar);
                return 0;
            }
            i(lVar);
            return 0;
        }
        m(lVar);
        return 0;
    }

    @Override // g3.k
    public void release() {
    }

    public d(int i10) {
        this.f24310a = new byte[42];
        this.f24311b = new e0(new byte[32768], 0);
        this.f24312c = (i10 & 1) != 0;
        this.f24313d = new q.a();
        this.f24316g = 0;
    }
}
