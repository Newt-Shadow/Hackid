package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import b3.f2;
import b3.u1;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.a;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import d4.a0;
import d4.h;
import d4.i;
import d4.n;
import d4.p0;
import d4.q;
import d4.r;
import d4.t;
import f3.l;
import f3.v;
import f3.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import l4.a;
import x4.d0;
import x4.e0;
import x4.f0;
import x4.g0;
import x4.j;
import x4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class SsMediaSource extends d4.a implements e0.b {
    private Handler A;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f5728h;

    /* renamed from: i  reason: collision with root package name */
    private final Uri f5729i;

    /* renamed from: j  reason: collision with root package name */
    private final f2.h f5730j;

    /* renamed from: k  reason: collision with root package name */
    private final f2 f5731k;

    /* renamed from: l  reason: collision with root package name */
    private final j.a f5732l;

    /* renamed from: m  reason: collision with root package name */
    private final b.a f5733m;

    /* renamed from: n  reason: collision with root package name */
    private final h f5734n;

    /* renamed from: o  reason: collision with root package name */
    private final v f5735o;

    /* renamed from: p  reason: collision with root package name */
    private final d0 f5736p;

    /* renamed from: q  reason: collision with root package name */
    private final long f5737q;

    /* renamed from: r  reason: collision with root package name */
    private final a0.a f5738r;

    /* renamed from: s  reason: collision with root package name */
    private final g0.a f5739s;

    /* renamed from: t  reason: collision with root package name */
    private final ArrayList f5740t;

    /* renamed from: u  reason: collision with root package name */
    private j f5741u;

    /* renamed from: v  reason: collision with root package name */
    private e0 f5742v;

    /* renamed from: w  reason: collision with root package name */
    private f0 f5743w;

    /* renamed from: x  reason: collision with root package name */
    private m0 f5744x;

    /* renamed from: y  reason: collision with root package name */
    private long f5745y;

    /* renamed from: z  reason: collision with root package name */
    private l4.a f5746z;

    /* loaded from: classes.dex */
    public static final class Factory implements t.a {

        /* renamed from: a  reason: collision with root package name */
        private final b.a f5747a;

        /* renamed from: b  reason: collision with root package name */
        private final j.a f5748b;

        /* renamed from: c  reason: collision with root package name */
        private h f5749c;

        /* renamed from: d  reason: collision with root package name */
        private x f5750d;

        /* renamed from: e  reason: collision with root package name */
        private d0 f5751e;

        /* renamed from: f  reason: collision with root package name */
        private long f5752f;

        /* renamed from: g  reason: collision with root package name */
        private g0.a f5753g;

        public Factory(j.a aVar) {
            this(new a.C0096a(aVar), aVar);
        }

        public SsMediaSource a(f2 f2Var) {
            c4.b bVar;
            y4.a.e(f2Var.f3880b);
            g0.a aVar = this.f5753g;
            if (aVar == null) {
                aVar = new l4.b();
            }
            List list = f2Var.f3880b.f3956d;
            if (!list.isEmpty()) {
                bVar = new c4.b(aVar, list);
            } else {
                bVar = aVar;
            }
            return new SsMediaSource(f2Var, null, this.f5748b, bVar, this.f5747a, this.f5749c, this.f5750d.a(f2Var), this.f5751e, this.f5752f);
        }

        public Factory(b.a aVar, j.a aVar2) {
            this.f5747a = (b.a) y4.a.e(aVar);
            this.f5748b = aVar2;
            this.f5750d = new l();
            this.f5751e = new x4.v();
            this.f5752f = 30000L;
            this.f5749c = new i();
        }
    }

    static {
        u1.a("goog.exo.smoothstreaming");
    }

    private void J() {
        a.b[] bVarArr;
        long j10;
        p0 p0Var;
        long j11;
        for (int i10 = 0; i10 < this.f5740t.size(); i10++) {
            ((c) this.f5740t.get(i10)).v(this.f5746z);
        }
        long j12 = Long.MIN_VALUE;
        long j13 = Long.MAX_VALUE;
        for (a.b bVar : this.f5746z.f25202f) {
            if (bVar.f25218k > 0) {
                j13 = Math.min(j13, bVar.e(0));
                j12 = Math.max(j12, bVar.e(bVar.f25218k - 1) + bVar.c(bVar.f25218k - 1));
            }
        }
        if (j13 == Long.MAX_VALUE) {
            if (this.f5746z.f25200d) {
                j11 = -9223372036854775807L;
            } else {
                j11 = 0;
            }
            l4.a aVar = this.f5746z;
            boolean z10 = aVar.f25200d;
            p0Var = new p0(j11, 0L, 0L, 0L, true, z10, z10, aVar, this.f5731k);
        } else {
            l4.a aVar2 = this.f5746z;
            if (aVar2.f25200d) {
                long j14 = aVar2.f25204h;
                if (j14 != -9223372036854775807L && j14 > 0) {
                    j13 = Math.max(j13, j12 - j14);
                }
                long j15 = j13;
                long j16 = j12 - j15;
                long A0 = j16 - q0.A0(this.f5737q);
                if (A0 < 5000000) {
                    A0 = Math.min(5000000L, j16 / 2);
                }
                p0Var = new p0(-9223372036854775807L, j16, j15, A0, true, true, true, this.f5746z, this.f5731k);
            } else {
                long j17 = aVar2.f25203g;
                if (j17 != -9223372036854775807L) {
                    j10 = j17;
                } else {
                    j10 = j12 - j13;
                }
                p0Var = new p0(j13 + j10, j10, j13, 0L, true, false, false, this.f5746z, this.f5731k);
            }
        }
        D(p0Var);
    }

    private void K() {
        if (!this.f5746z.f25200d) {
            return;
        }
        this.A.postDelayed(new Runnable() { // from class: k4.a
            @Override // java.lang.Runnable
            public final void run() {
                SsMediaSource.this.L();
            }
        }, Math.max(0L, (this.f5745y + 5000) - SystemClock.elapsedRealtime()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        if (this.f5742v.i()) {
            return;
        }
        g0 g0Var = new g0(this.f5741u, this.f5729i, 4, this.f5739s);
        this.f5738r.z(new n(g0Var.f32331a, g0Var.f32332b, this.f5742v.n(g0Var, this, this.f5736p.d(g0Var.f32333c))), g0Var.f32333c);
    }

    @Override // d4.a
    protected void C(m0 m0Var) {
        this.f5744x = m0Var;
        this.f5735o.d(Looper.myLooper(), A());
        this.f5735o.b();
        if (this.f5728h) {
            this.f5743w = new f0.a();
            J();
            return;
        }
        this.f5741u = this.f5732l.a();
        e0 e0Var = new e0("SsMediaSource");
        this.f5742v = e0Var;
        this.f5743w = e0Var;
        this.A = q0.w();
        L();
    }

    @Override // d4.a
    protected void E() {
        l4.a aVar;
        if (this.f5728h) {
            aVar = this.f5746z;
        } else {
            aVar = null;
        }
        this.f5746z = aVar;
        this.f5741u = null;
        this.f5745y = 0L;
        e0 e0Var = this.f5742v;
        if (e0Var != null) {
            e0Var.l();
            this.f5742v = null;
        }
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.f5735o.release();
    }

    @Override // x4.e0.b
    /* renamed from: G */
    public void s(g0 g0Var, long j10, long j11, boolean z10) {
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        this.f5736p.c(g0Var.f32331a);
        this.f5738r.q(nVar, g0Var.f32333c);
    }

    @Override // x4.e0.b
    /* renamed from: H */
    public void o(g0 g0Var, long j10, long j11) {
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        this.f5736p.c(g0Var.f32331a);
        this.f5738r.t(nVar, g0Var.f32333c);
        this.f5746z = (l4.a) g0Var.e();
        this.f5745y = j10 - j11;
        J();
        K();
    }

    @Override // x4.e0.b
    /* renamed from: I */
    public e0.c h(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
        e0.c h10;
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        long a10 = this.f5736p.a(new d0.c(nVar, new q(g0Var.f32333c), iOException, i10));
        if (a10 == -9223372036854775807L) {
            h10 = e0.f32304g;
        } else {
            h10 = e0.h(false, a10);
        }
        boolean z10 = !h10.c();
        this.f5738r.x(nVar, g0Var.f32333c, iOException, z10);
        if (z10) {
            this.f5736p.c(g0Var.f32331a);
        }
        return h10;
    }

    @Override // d4.t
    public r d(t.b bVar, x4.b bVar2, long j10) {
        a0.a w10 = w(bVar);
        c cVar = new c(this.f5746z, this.f5733m, this.f5744x, this.f5734n, this.f5735o, u(bVar), this.f5736p, w10, this.f5743w, bVar2);
        this.f5740t.add(cVar);
        return cVar;
    }

    @Override // d4.t
    public void g(r rVar) {
        ((c) rVar).u();
        this.f5740t.remove(rVar);
    }

    @Override // d4.t
    public f2 j() {
        return this.f5731k;
    }

    @Override // d4.t
    public void k() {
        this.f5743w.a();
    }

    private SsMediaSource(f2 f2Var, l4.a aVar, j.a aVar2, g0.a aVar3, b.a aVar4, h hVar, v vVar, d0 d0Var, long j10) {
        y4.a.f(aVar == null || !aVar.f25200d);
        this.f5731k = f2Var;
        f2.h hVar2 = (f2.h) y4.a.e(f2Var.f3880b);
        this.f5730j = hVar2;
        this.f5746z = aVar;
        this.f5729i = hVar2.f3953a.equals(Uri.EMPTY) ? null : q0.B(hVar2.f3953a);
        this.f5732l = aVar2;
        this.f5739s = aVar3;
        this.f5733m = aVar4;
        this.f5734n = hVar;
        this.f5735o = vVar;
        this.f5736p = d0Var;
        this.f5737q = j10;
        this.f5738r = w(null);
        this.f5728h = aVar != null;
        this.f5740t = new ArrayList();
    }
}
