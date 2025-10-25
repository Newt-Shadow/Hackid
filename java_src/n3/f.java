package n3;

import b3.x1;
import d3.t0;
import g3.b0;
import g3.j;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.v;
import g3.w;
import g3.y;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.EOFException;
import n3.g;
import t3.a;
import y3.h;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class f implements k {

    /* renamed from: u  reason: collision with root package name */
    public static final p f26119u = new p() { // from class: n3.d
        @Override // g3.p
        public final k[] b() {
            k[] o10;
            o10 = f.o();
            return o10;
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private static final h.a f26120v = new h.a() { // from class: n3.e
        @Override // y3.h.a
        public final boolean a(int i10, int i11, int i12, int i13, int i14) {
            boolean p10;
            p10 = f.p(i10, i11, i12, i13, i14);
            return p10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f26121a;

    /* renamed from: b  reason: collision with root package name */
    private final long f26122b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f26123c;

    /* renamed from: d  reason: collision with root package name */
    private final t0.a f26124d;

    /* renamed from: e  reason: collision with root package name */
    private final v f26125e;

    /* renamed from: f  reason: collision with root package name */
    private final w f26126f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f26127g;

    /* renamed from: h  reason: collision with root package name */
    private m f26128h;

    /* renamed from: i  reason: collision with root package name */
    private b0 f26129i;

    /* renamed from: j  reason: collision with root package name */
    private b0 f26130j;

    /* renamed from: k  reason: collision with root package name */
    private int f26131k;

    /* renamed from: l  reason: collision with root package name */
    private t3.a f26132l;

    /* renamed from: m  reason: collision with root package name */
    private long f26133m;

    /* renamed from: n  reason: collision with root package name */
    private long f26134n;

    /* renamed from: o  reason: collision with root package name */
    private long f26135o;

    /* renamed from: p  reason: collision with root package name */
    private int f26136p;

    /* renamed from: q  reason: collision with root package name */
    private g f26137q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f26138r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26139s;

    /* renamed from: t  reason: collision with root package name */
    private long f26140t;

    public f() {
        this(0);
    }

    private void e() {
        y4.a.h(this.f26129i);
        q0.j(this.f26128h);
    }

    private g h(l lVar) {
        long l10;
        long j10;
        g r10 = r(lVar);
        c q10 = q(this.f26132l, lVar.c());
        if (this.f26138r) {
            return new g.a();
        }
        if ((this.f26121a & 4) != 0) {
            if (q10 != null) {
                l10 = q10.i();
                j10 = q10.d();
            } else if (r10 != null) {
                l10 = r10.i();
                j10 = r10.d();
            } else {
                l10 = l(this.f26132l);
                j10 = -1;
            }
            r10 = new b(l10, lVar.c(), j10);
        } else if (q10 != null) {
            r10 = q10;
        } else if (r10 == null) {
            r10 = null;
        }
        boolean z10 = true;
        if (r10 == null || (!r10.e() && (this.f26121a & 1) != 0)) {
            if ((this.f26121a & 2) == 0) {
                z10 = false;
            }
            return k(lVar, z10);
        }
        return r10;
    }

    private long i(long j10) {
        return this.f26133m + ((j10 * 1000000) / this.f26124d.f14602d);
    }

    private g k(l lVar, boolean z10) {
        lVar.p(this.f26123c.e(), 0, 4);
        this.f26123c.T(0);
        this.f26124d.a(this.f26123c.p());
        return new a(lVar.b(), lVar.c(), this.f26124d, z10);
    }

    private static long l(t3.a aVar) {
        if (aVar != null) {
            int e10 = aVar.e();
            for (int i10 = 0; i10 < e10; i10++) {
                a.b d10 = aVar.d(i10);
                if (d10 instanceof y3.m) {
                    y3.m mVar = (y3.m) d10;
                    if (mVar.f32844a.equals("TLEN")) {
                        return q0.A0(Long.parseLong((String) mVar.f32857d.get(0)));
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static int m(e0 e0Var, int i10) {
        if (e0Var.g() >= i10 + 4) {
            e0Var.T(i10);
            int p10 = e0Var.p();
            if (p10 == 1483304551 || p10 == 1231971951) {
                return p10;
            }
        }
        if (e0Var.g() >= 40) {
            e0Var.T(36);
            if (e0Var.p() == 1447187017) {
                return 1447187017;
            }
            return 0;
        }
        return 0;
    }

    private static boolean n(int i10, long j10) {
        return ((long) (i10 & (-128000))) == (j10 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] o() {
        return new k[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean p(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    private static c q(t3.a aVar, long j10) {
        if (aVar != null) {
            int e10 = aVar.e();
            for (int i10 = 0; i10 < e10; i10++) {
                a.b d10 = aVar.d(i10);
                if (d10 instanceof y3.k) {
                    return c.b(j10, (y3.k) d10, l(aVar));
                }
            }
            return null;
        }
        return null;
    }

    private g r(l lVar) {
        e0 e0Var = new e0(this.f26124d.f14601c);
        lVar.p(e0Var.e(), 0, this.f26124d.f14601c);
        t0.a aVar = this.f26124d;
        int i10 = 21;
        if ((aVar.f14599a & 1) != 0) {
            if (aVar.f14603e != 1) {
                i10 = 36;
            }
        } else if (aVar.f14603e == 1) {
            i10 = 13;
        }
        int i11 = i10;
        int m10 = m(e0Var, i11);
        if (m10 != 1483304551 && m10 != 1231971951) {
            if (m10 == 1447187017) {
                h b10 = h.b(lVar.b(), lVar.c(), this.f26124d, e0Var);
                lVar.m(this.f26124d.f14601c);
                return b10;
            }
            lVar.l();
            return null;
        }
        i b11 = i.b(lVar.b(), lVar.c(), this.f26124d, e0Var);
        if (b11 != null && !this.f26125e.a()) {
            lVar.l();
            lVar.h(i11 + 141);
            lVar.p(this.f26123c.e(), 0, 3);
            this.f26123c.T(0);
            this.f26125e.d(this.f26123c.J());
        }
        lVar.m(this.f26124d.f14601c);
        if (b11 != null && !b11.e() && m10 == 1231971951) {
            return k(lVar, false);
        }
        return b11;
    }

    private boolean s(l lVar) {
        g gVar = this.f26137q;
        if (gVar != null) {
            long d10 = gVar.d();
            if (d10 != -1 && lVar.g() > d10 - 4) {
                return true;
            }
        }
        try {
            return !lVar.f(this.f26123c.e(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int t(l lVar) {
        t3.a aVar;
        if (this.f26131k == 0) {
            try {
                v(lVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f26137q == null) {
            g h10 = h(lVar);
            this.f26137q = h10;
            this.f26128h.l(h10);
            b0 b0Var = this.f26130j;
            x1.b Q = new x1.b().g0(this.f26124d.f14600b).Y(Base64Utils.IO_BUFFER_SIZE).J(this.f26124d.f14603e).h0(this.f26124d.f14602d).P(this.f26125e.f16244a).Q(this.f26125e.f16245b);
            if ((this.f26121a & 8) != 0) {
                aVar = null;
            } else {
                aVar = this.f26132l;
            }
            b0Var.c(Q.Z(aVar).G());
            this.f26135o = lVar.c();
        } else if (this.f26135o != 0) {
            long c10 = lVar.c();
            long j10 = this.f26135o;
            if (c10 < j10) {
                lVar.m((int) (j10 - c10));
            }
        }
        return u(lVar);
    }

    private int u(l lVar) {
        t0.a aVar;
        if (this.f26136p == 0) {
            lVar.l();
            if (s(lVar)) {
                return -1;
            }
            this.f26123c.T(0);
            int p10 = this.f26123c.p();
            if (n(p10, this.f26131k) && t0.j(p10) != -1) {
                this.f26124d.a(p10);
                if (this.f26133m == -9223372036854775807L) {
                    this.f26133m = this.f26137q.a(lVar.c());
                    if (this.f26122b != -9223372036854775807L) {
                        this.f26133m += this.f26122b - this.f26137q.a(0L);
                    }
                }
                this.f26136p = this.f26124d.f14601c;
                g gVar = this.f26137q;
                if (gVar instanceof b) {
                    b bVar = (b) gVar;
                    bVar.c(i(this.f26134n + aVar.f14605g), lVar.c() + this.f26124d.f14601c);
                    if (this.f26139s && bVar.b(this.f26140t)) {
                        this.f26139s = false;
                        this.f26130j = this.f26129i;
                    }
                }
            } else {
                lVar.m(1);
                this.f26131k = 0;
                return 0;
            }
        }
        int e10 = this.f26130j.e(lVar, this.f26136p, true);
        if (e10 == -1) {
            return -1;
        }
        int i10 = this.f26136p - e10;
        this.f26136p = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f26130j.f(i(this.f26134n), 1, this.f26124d.f14601c, 0, null);
        this.f26134n += this.f26124d.f14605g;
        this.f26136p = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
        if (r13 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
        r12.m(r1 + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a5, code lost:
        r12.l();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a8, code lost:
        r11.f26131k = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00aa, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean v(g3.l r12, boolean r13) {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.l()
            long r1 = r12.c()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 != 0) goto L42
            int r1 = r11.f26121a
            r1 = r1 & 8
            if (r1 != 0) goto L20
            r1 = r3
            goto L21
        L20:
            r1 = r4
        L21:
            if (r1 == 0) goto L25
            r1 = r2
            goto L27
        L25:
            y3.h$a r1 = n3.f.f26120v
        L27:
            g3.w r5 = r11.f26126f
            t3.a r1 = r5.a(r12, r1)
            r11.f26132l = r1
            if (r1 == 0) goto L36
            g3.v r5 = r11.f26125e
            r5.c(r1)
        L36:
            long r5 = r12.g()
            int r1 = (int) r5
            if (r13 != 0) goto L40
            r12.m(r1)
        L40:
            r5 = r4
            goto L44
        L42:
            r1 = r4
            r5 = r1
        L44:
            r6 = r5
            r7 = r6
        L46:
            boolean r8 = r11.s(r12)
            if (r8 == 0) goto L55
            if (r6 <= 0) goto L4f
            goto L9e
        L4f:
            java.io.EOFException r12 = new java.io.EOFException
            r12.<init>()
            throw r12
        L55:
            y4.e0 r8 = r11.f26123c
            r8.T(r4)
            y4.e0 r8 = r11.f26123c
            int r8 = r8.p()
            if (r5 == 0) goto L69
            long r9 = (long) r5
            boolean r9 = n(r8, r9)
            if (r9 == 0) goto L70
        L69:
            int r9 = d3.t0.j(r8)
            r10 = -1
            if (r9 != r10) goto L90
        L70:
            int r5 = r7 + 1
            if (r7 != r0) goto L7e
            if (r13 == 0) goto L77
            return r4
        L77:
            java.lang.String r12 = "Searched too many bytes."
            b3.e3 r12 = b3.e3.a(r12, r2)
            throw r12
        L7e:
            if (r13 == 0) goto L89
            r12.l()
            int r6 = r1 + r5
            r12.h(r6)
            goto L8c
        L89:
            r12.m(r3)
        L8c:
            r6 = r4
            r7 = r5
            r5 = r6
            goto L46
        L90:
            int r6 = r6 + 1
            if (r6 != r3) goto L9b
            d3.t0$a r5 = r11.f26124d
            r5.a(r8)
            r5 = r8
            goto Lab
        L9b:
            r8 = 4
            if (r6 != r8) goto Lab
        L9e:
            if (r13 == 0) goto La5
            int r1 = r1 + r7
            r12.m(r1)
            goto La8
        La5:
            r12.l()
        La8:
            r11.f26131k = r5
            return r3
        Lab:
            int r9 = r9 + (-4)
            r12.h(r9)
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: n3.f.v(g3.l, boolean):boolean");
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.f26131k = 0;
        this.f26133m = -9223372036854775807L;
        this.f26134n = 0L;
        this.f26136p = 0;
        this.f26140t = j11;
        g gVar = this.f26137q;
        if ((gVar instanceof b) && !((b) gVar).b(j11)) {
            this.f26139s = true;
            this.f26130j = this.f26127g;
        }
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f26128h = mVar;
        b0 a10 = mVar.a(0, 1);
        this.f26129i = a10;
        this.f26130j = a10;
        this.f26128h.n();
    }

    @Override // g3.k
    public boolean f(l lVar) {
        return v(lVar, true);
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        e();
        int t10 = t(lVar);
        if (t10 == -1 && (this.f26137q instanceof b)) {
            long i10 = i(this.f26134n);
            if (this.f26137q.i() != i10) {
                ((b) this.f26137q).f(i10);
                this.f26128h.l(this.f26137q);
            }
        }
        return t10;
    }

    public void j() {
        this.f26138r = true;
    }

    @Override // g3.k
    public void release() {
    }

    public f(int i10) {
        this(i10, -9223372036854775807L);
    }

    public f(int i10, long j10) {
        this.f26121a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f26122b = j10;
        this.f26123c = new e0(10);
        this.f26124d = new t0.a();
        this.f26125e = new v();
        this.f26133m = -9223372036854775807L;
        this.f26126f = new w();
        j jVar = new j();
        this.f26127g = jVar;
        this.f26130j = jVar;
    }
}
