package com.google.android.exoplayer2.source.hls;

import android.os.Looper;
import b3.f2;
import b3.u1;
import d4.a0;
import d4.i;
import d4.p0;
import d4.r;
import d4.t;
import f3.v;
import f3.x;
import i4.c;
import i4.g;
import i4.h;
import j4.e;
import j4.g;
import j4.k;
import j4.l;
import java.util.List;
import x4.b;
import x4.d0;
import x4.j;
import x4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class HlsMediaSource extends d4.a implements l.e {

    /* renamed from: h  reason: collision with root package name */
    private final h f5700h;

    /* renamed from: i  reason: collision with root package name */
    private final f2.h f5701i;

    /* renamed from: j  reason: collision with root package name */
    private final g f5702j;

    /* renamed from: k  reason: collision with root package name */
    private final d4.h f5703k;

    /* renamed from: l  reason: collision with root package name */
    private final v f5704l;

    /* renamed from: m  reason: collision with root package name */
    private final d0 f5705m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f5706n;

    /* renamed from: o  reason: collision with root package name */
    private final int f5707o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f5708p;

    /* renamed from: q  reason: collision with root package name */
    private final l f5709q;

    /* renamed from: r  reason: collision with root package name */
    private final long f5710r;

    /* renamed from: s  reason: collision with root package name */
    private final f2 f5711s;

    /* renamed from: t  reason: collision with root package name */
    private f2.g f5712t;

    /* renamed from: u  reason: collision with root package name */
    private m0 f5713u;

    /* loaded from: classes.dex */
    public static final class Factory implements t.a {

        /* renamed from: a  reason: collision with root package name */
        private final g f5714a;

        /* renamed from: b  reason: collision with root package name */
        private h f5715b;

        /* renamed from: c  reason: collision with root package name */
        private k f5716c;

        /* renamed from: d  reason: collision with root package name */
        private l.a f5717d;

        /* renamed from: e  reason: collision with root package name */
        private d4.h f5718e;

        /* renamed from: f  reason: collision with root package name */
        private x f5719f;

        /* renamed from: g  reason: collision with root package name */
        private d0 f5720g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f5721h;

        /* renamed from: i  reason: collision with root package name */
        private int f5722i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f5723j;

        /* renamed from: k  reason: collision with root package name */
        private long f5724k;

        public Factory(j.a aVar) {
            this(new c(aVar));
        }

        public HlsMediaSource a(f2 f2Var) {
            y4.a.e(f2Var.f3880b);
            k kVar = this.f5716c;
            List list = f2Var.f3880b.f3956d;
            if (!list.isEmpty()) {
                kVar = new e(kVar, list);
            }
            g gVar = this.f5714a;
            h hVar = this.f5715b;
            d4.h hVar2 = this.f5718e;
            v a10 = this.f5719f.a(f2Var);
            d0 d0Var = this.f5720g;
            return new HlsMediaSource(f2Var, gVar, hVar, hVar2, a10, d0Var, this.f5717d.a(this.f5714a, d0Var, kVar), this.f5724k, this.f5721h, this.f5722i, this.f5723j);
        }

        public Factory(g gVar) {
            this.f5714a = (g) y4.a.e(gVar);
            this.f5719f = new f3.l();
            this.f5716c = new j4.a();
            this.f5717d = j4.c.f24324p;
            this.f5715b = h.f17155a;
            this.f5720g = new x4.v();
            this.f5718e = new i();
            this.f5722i = 1;
            this.f5724k = -9223372036854775807L;
            this.f5721h = true;
        }
    }

    static {
        u1.a("goog.exo.hls");
    }

    private p0 F(j4.g gVar, long j10, long j11, com.google.android.exoplayer2.source.hls.a aVar) {
        long j12;
        long L;
        boolean z10;
        long e10 = gVar.f24360h - this.f5709q.e();
        if (gVar.f24367o) {
            j12 = e10 + gVar.f24373u;
        } else {
            j12 = -9223372036854775807L;
        }
        long J = J(gVar);
        long j13 = this.f5712t.f3943a;
        if (j13 != -9223372036854775807L) {
            L = q0.A0(j13);
        } else {
            L = L(gVar, J);
        }
        M(gVar, q0.r(L, J, gVar.f24373u + J));
        long K = K(gVar, J);
        if (gVar.f24356d == 2 && gVar.f24358f) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new p0(j10, j11, -9223372036854775807L, j12, gVar.f24373u, e10, K, true, !gVar.f24367o, z10, aVar, this.f5711s, this.f5712t);
    }

    private p0 G(j4.g gVar, long j10, long j11, com.google.android.exoplayer2.source.hls.a aVar) {
        long j12;
        if (gVar.f24357e != -9223372036854775807L && !gVar.f24370r.isEmpty()) {
            if (!gVar.f24359g) {
                long j13 = gVar.f24357e;
                if (j13 != gVar.f24373u) {
                    j12 = I(gVar.f24370r, j13).f24386e;
                }
            }
            j12 = gVar.f24357e;
        } else {
            j12 = 0;
        }
        long j14 = gVar.f24373u;
        return new p0(j10, j11, -9223372036854775807L, j14, j14, 0L, j12, true, false, true, aVar, this.f5711s, null);
    }

    private static g.b H(List list, long j10) {
        g.b bVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            g.b bVar2 = (g.b) list.get(i10);
            long j11 = bVar2.f24386e;
            if (j11 <= j10 && bVar2.f24375l) {
                bVar = bVar2;
            } else if (j11 > j10) {
                break;
            }
        }
        return bVar;
    }

    private static g.d I(List list, long j10) {
        return (g.d) list.get(q0.f(list, Long.valueOf(j10), true, true));
    }

    private long J(j4.g gVar) {
        if (gVar.f24368p) {
            return q0.A0(q0.a0(this.f5710r)) - gVar.e();
        }
        return 0L;
    }

    private long K(j4.g gVar, long j10) {
        long j11 = gVar.f24357e;
        if (j11 == -9223372036854775807L) {
            j11 = (gVar.f24373u + j10) - q0.A0(this.f5712t.f3943a);
        }
        if (gVar.f24359g) {
            return j11;
        }
        g.b H = H(gVar.f24371s, j11);
        if (H != null) {
            return H.f24386e;
        }
        if (gVar.f24370r.isEmpty()) {
            return 0L;
        }
        g.d I = I(gVar.f24370r, j11);
        g.b H2 = H(I.f24381m, j11);
        if (H2 != null) {
            return H2.f24386e;
        }
        return I.f24386e;
    }

    private static long L(j4.g gVar, long j10) {
        long j11;
        g.f fVar = gVar.f24374v;
        long j12 = gVar.f24357e;
        if (j12 != -9223372036854775807L) {
            j11 = gVar.f24373u - j12;
        } else {
            long j13 = fVar.f24396d;
            if (j13 != -9223372036854775807L && gVar.f24366n != -9223372036854775807L) {
                j11 = j13;
            } else {
                long j14 = fVar.f24395c;
                if (j14 != -9223372036854775807L) {
                    j11 = j14;
                } else {
                    j11 = gVar.f24365m * 3;
                }
            }
        }
        return j11 + j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void M(j4.g r5, long r6) {
        /*
            r4 = this;
            b3.f2 r0 = r4.f5711s
            b3.f2$g r0 = r0.f3882d
            float r1 = r0.f3946d
            r2 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 != 0) goto L28
            float r0 = r0.f3947e
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L28
            j4.g$f r5 = r5.f24374v
            long r0 = r5.f24395c
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L28
            long r0 = r5.f24396d
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 != 0) goto L28
            r5 = 1
            goto L29
        L28:
            r5 = 0
        L29:
            b3.f2$g$a r0 = new b3.f2$g$a
            r0.<init>()
            long r6 = y4.q0.X0(r6)
            b3.f2$g$a r6 = r0.k(r6)
            r7 = 1065353216(0x3f800000, float:1.0)
            if (r5 == 0) goto L3c
            r0 = r7
            goto L40
        L3c:
            b3.f2$g r0 = r4.f5712t
            float r0 = r0.f3946d
        L40:
            b3.f2$g$a r6 = r6.j(r0)
            if (r5 == 0) goto L47
            goto L4b
        L47:
            b3.f2$g r5 = r4.f5712t
            float r7 = r5.f3947e
        L4b:
            b3.f2$g$a r5 = r6.h(r7)
            b3.f2$g r5 = r5.f()
            r4.f5712t = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaSource.M(j4.g, long):void");
    }

    @Override // d4.a
    protected void C(m0 m0Var) {
        this.f5713u = m0Var;
        this.f5704l.d((Looper) y4.a.e(Looper.myLooper()), A());
        this.f5704l.b();
        this.f5709q.a(this.f5701i.f3953a, w(null), this);
    }

    @Override // d4.a
    protected void E() {
        this.f5709q.stop();
        this.f5704l.release();
    }

    @Override // d4.t
    public r d(t.b bVar, b bVar2, long j10) {
        a0.a w10 = w(bVar);
        return new i4.k(this.f5700h, this.f5709q, this.f5702j, this.f5713u, this.f5704l, u(bVar), this.f5705m, w10, bVar2, this.f5703k, this.f5706n, this.f5707o, this.f5708p, A());
    }

    @Override // d4.t
    public void g(r rVar) {
        ((i4.k) rVar).A();
    }

    @Override // d4.t
    public f2 j() {
        return this.f5711s;
    }

    @Override // d4.t
    public void k() {
        this.f5709q.k();
    }

    @Override // j4.l.e
    public void m(j4.g gVar) {
        long j10;
        long j11;
        p0 G;
        if (gVar.f24368p) {
            j10 = q0.X0(gVar.f24360h);
        } else {
            j10 = -9223372036854775807L;
        }
        int i10 = gVar.f24356d;
        if (i10 != 2 && i10 != 1) {
            j11 = -9223372036854775807L;
        } else {
            j11 = j10;
        }
        com.google.android.exoplayer2.source.hls.a aVar = new com.google.android.exoplayer2.source.hls.a((j4.h) y4.a.e(this.f5709q.g()), gVar);
        if (this.f5709q.f()) {
            G = F(gVar, j11, j10, aVar);
        } else {
            G = G(gVar, j11, j10, aVar);
        }
        D(G);
    }

    private HlsMediaSource(f2 f2Var, i4.g gVar, h hVar, d4.h hVar2, v vVar, d0 d0Var, l lVar, long j10, boolean z10, int i10, boolean z11) {
        this.f5701i = (f2.h) y4.a.e(f2Var.f3880b);
        this.f5711s = f2Var;
        this.f5712t = f2Var.f3882d;
        this.f5702j = gVar;
        this.f5700h = hVar;
        this.f5703k = hVar2;
        this.f5704l = vVar;
        this.f5705m = d0Var;
        this.f5709q = lVar;
        this.f5710r = j10;
        this.f5706n = z10;
        this.f5707o = i10;
        this.f5708p = z11;
    }
}
