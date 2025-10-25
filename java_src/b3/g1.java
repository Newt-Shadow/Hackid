package b3;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import b3.b;
import b3.b0;
import b3.b4;
import b3.d3;
import b3.g1;
import b3.g4;
import b3.m;
import b3.m3;
import b3.p3;
import b3.t1;
import d4.o0;
import d4.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import y4.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g1 extends n implements b0 {
    private final m A;
    private final b4 B;
    private final m4 C;
    private final n4 D;
    private final long E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private x3 L;
    private d4.o0 M;
    private boolean N;
    private m3.b O;
    private k2 P;
    private k2 Q;
    private x1 R;
    private x1 S;
    private AudioTrack T;
    private Object U;
    private Surface V;
    private SurfaceHolder W;
    private boolean X;
    private TextureView Y;
    private int Z;

    /* renamed from: a0  reason: collision with root package name */
    private int f3987a0;

    /* renamed from: b  reason: collision with root package name */
    final w4.i0 f3988b;

    /* renamed from: b0  reason: collision with root package name */
    private y4.g0 f3989b0;

    /* renamed from: c  reason: collision with root package name */
    final m3.b f3990c;

    /* renamed from: c0  reason: collision with root package name */
    private e3.e f3991c0;

    /* renamed from: d  reason: collision with root package name */
    private final y4.g f3992d;

    /* renamed from: d0  reason: collision with root package name */
    private e3.e f3993d0;

    /* renamed from: e  reason: collision with root package name */
    private final Context f3994e;

    /* renamed from: e0  reason: collision with root package name */
    private int f3995e0;

    /* renamed from: f  reason: collision with root package name */
    private final m3 f3996f;

    /* renamed from: f0  reason: collision with root package name */
    private d3.e f3997f0;

    /* renamed from: g  reason: collision with root package name */
    private final t3[] f3998g;

    /* renamed from: g0  reason: collision with root package name */
    private float f3999g0;

    /* renamed from: h  reason: collision with root package name */
    private final w4.h0 f4000h;

    /* renamed from: h0  reason: collision with root package name */
    private boolean f4001h0;

    /* renamed from: i  reason: collision with root package name */
    private final y4.n f4002i;

    /* renamed from: i0  reason: collision with root package name */
    private m4.e f4003i0;

    /* renamed from: j  reason: collision with root package name */
    private final t1.f f4004j;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f4005j0;

    /* renamed from: k  reason: collision with root package name */
    private final t1 f4006k;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f4007k0;

    /* renamed from: l  reason: collision with root package name */
    private final y4.q f4008l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f4009l0;

    /* renamed from: m  reason: collision with root package name */
    private final CopyOnWriteArraySet f4010m;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f4011m0;

    /* renamed from: n  reason: collision with root package name */
    private final g4.b f4012n;

    /* renamed from: n0  reason: collision with root package name */
    private y f4013n0;

    /* renamed from: o  reason: collision with root package name */
    private final List f4014o;

    /* renamed from: o0  reason: collision with root package name */
    private z4.a0 f4015o0;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f4016p;

    /* renamed from: p0  reason: collision with root package name */
    private k2 f4017p0;

    /* renamed from: q  reason: collision with root package name */
    private final t.a f4018q;

    /* renamed from: q0  reason: collision with root package name */
    private j3 f4019q0;

    /* renamed from: r  reason: collision with root package name */
    private final c3.a f4020r;

    /* renamed from: r0  reason: collision with root package name */
    private int f4021r0;

    /* renamed from: s  reason: collision with root package name */
    private final Looper f4022s;

    /* renamed from: s0  reason: collision with root package name */
    private int f4023s0;

    /* renamed from: t  reason: collision with root package name */
    private final x4.e f4024t;

    /* renamed from: t0  reason: collision with root package name */
    private long f4025t0;

    /* renamed from: u  reason: collision with root package name */
    private final long f4026u;

    /* renamed from: v  reason: collision with root package name */
    private final long f4027v;

    /* renamed from: w  reason: collision with root package name */
    private final y4.d f4028w;

    /* renamed from: x  reason: collision with root package name */
    private final c f4029x;

    /* renamed from: y  reason: collision with root package name */
    private final d f4030y;

    /* renamed from: z  reason: collision with root package name */
    private final b3.b f4031z;

    /* loaded from: classes.dex */
    private static final class b {
        public static c3.t3 a(Context context, g1 g1Var, boolean z10) {
            LogSessionId logSessionId;
            c3.r3 A0 = c3.r3.A0(context);
            if (A0 == null) {
                y4.r.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
                return new c3.t3(logSessionId);
            }
            if (z10) {
                g1Var.O0(A0);
            }
            return new c3.t3(A0.H0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c implements z4.y, d3.v, m4.n, t3.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, m.b, b.InterfaceC0071b, b4.b, b0.a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void L(m3.d dVar) {
            dVar.onMediaMetadataChanged(g1.this.P);
        }

        @Override // d3.v
        public void a(Exception exc) {
            g1.this.f4020r.a(exc);
        }

        @Override // z4.y
        public void b(String str) {
            g1.this.f4020r.b(str);
        }

        @Override // z4.y
        public void c(String str, long j10, long j11) {
            g1.this.f4020r.c(str, j10, j11);
        }

        @Override // d3.v
        public void d(String str) {
            g1.this.f4020r.d(str);
        }

        @Override // d3.v
        public void e(String str, long j10, long j11) {
            g1.this.f4020r.e(str, j10, j11);
        }

        @Override // d3.v
        public void f(x1 x1Var, e3.i iVar) {
            g1.this.S = x1Var;
            g1.this.f4020r.f(x1Var, iVar);
        }

        @Override // z4.y
        public void g(int i10, long j10) {
            g1.this.f4020r.g(i10, j10);
        }

        @Override // z4.y
        public void h(x1 x1Var, e3.i iVar) {
            g1.this.R = x1Var;
            g1.this.f4020r.h(x1Var, iVar);
        }

        @Override // z4.y
        public void i(e3.e eVar) {
            g1.this.f3991c0 = eVar;
            g1.this.f4020r.i(eVar);
        }

        @Override // z4.y
        public void j(Object obj, long j10) {
            g1.this.f4020r.j(obj, j10);
            if (g1.this.U == obj) {
                g1.this.f4008l.k(26, new q.a() { // from class: b3.o1
                    @Override // y4.q.a
                    public final void invoke(Object obj2) {
                        ((m3.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // d3.v
        public void k(e3.e eVar) {
            g1.this.f4020r.k(eVar);
            g1.this.S = null;
            g1.this.f3993d0 = null;
        }

        @Override // d3.v
        public void l(e3.e eVar) {
            g1.this.f3993d0 = eVar;
            g1.this.f4020r.l(eVar);
        }

        @Override // d3.v
        public void m(long j10) {
            g1.this.f4020r.m(j10);
        }

        @Override // d3.v
        public void n(Exception exc) {
            g1.this.f4020r.n(exc);
        }

        @Override // z4.y
        public void o(Exception exc) {
            g1.this.f4020r.o(exc);
        }

        @Override // m4.n
        public void onCues(final List list) {
            g1.this.f4008l.k(27, new q.a() { // from class: b3.k1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onCues(list);
                }
            });
        }

        @Override // t3.e
        public void onMetadata(final t3.a aVar) {
            g1 g1Var = g1.this;
            g1Var.f4017p0 = g1Var.f4017p0.b().L(aVar).H();
            k2 R0 = g1.this.R0();
            if (!R0.equals(g1.this.P)) {
                g1.this.P = R0;
                g1.this.f4008l.i(14, new q.a() { // from class: b3.i1
                    @Override // y4.q.a
                    public final void invoke(Object obj) {
                        g1.c.this.L((m3.d) obj);
                    }
                });
            }
            g1.this.f4008l.i(28, new q.a() { // from class: b3.j1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onMetadata(t3.a.this);
                }
            });
            g1.this.f4008l.f();
        }

        @Override // d3.v
        public void onSkipSilenceEnabledChanged(final boolean z10) {
            if (g1.this.f4001h0 != z10) {
                g1.this.f4001h0 = z10;
                g1.this.f4008l.k(23, new q.a() { // from class: b3.q1
                    @Override // y4.q.a
                    public final void invoke(Object obj) {
                        ((m3.d) obj).onSkipSilenceEnabledChanged(z10);
                    }
                });
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            g1.this.T1(surfaceTexture);
            g1.this.J1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            g1.this.U1(null);
            g1.this.J1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            g1.this.J1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // z4.y
        public void onVideoSizeChanged(final z4.a0 a0Var) {
            g1.this.f4015o0 = a0Var;
            g1.this.f4008l.k(25, new q.a() { // from class: b3.p1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onVideoSizeChanged(z4.a0.this);
                }
            });
        }

        @Override // z4.y
        public void p(e3.e eVar) {
            g1.this.f4020r.p(eVar);
            g1.this.R = null;
            g1.this.f3991c0 = null;
        }

        @Override // d3.v
        public void q(int i10, long j10, long j11) {
            g1.this.f4020r.q(i10, j10, j11);
        }

        @Override // z4.y
        public void r(long j10, int i10) {
            g1.this.f4020r.r(j10, i10);
        }

        @Override // b3.b4.b
        public void s(int i10) {
            final y S0 = g1.S0(g1.this.B);
            if (!S0.equals(g1.this.f4013n0)) {
                g1.this.f4013n0 = S0;
                g1.this.f4008l.k(29, new q.a() { // from class: b3.l1
                    @Override // y4.q.a
                    public final void invoke(Object obj) {
                        ((m3.d) obj).onDeviceInfoChanged(y.this);
                    }
                });
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            g1.this.J1(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (g1.this.X) {
                g1.this.U1(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (g1.this.X) {
                g1.this.U1(null);
            }
            g1.this.J1(0, 0);
        }

        @Override // b3.b.InterfaceC0071b
        public void u() {
            g1.this.Y1(false, -1, 3);
        }

        @Override // b3.b0.a
        public void v(boolean z10) {
            g1.this.b2();
        }

        @Override // b3.m.b
        public void w(float f10) {
            g1.this.P1();
        }

        @Override // b3.m.b
        public void x(int i10) {
            boolean j10 = g1.this.j();
            g1.this.Y1(j10, i10, g1.c1(j10, i10));
        }

        @Override // b3.b4.b
        public void z(final int i10, final boolean z10) {
            g1.this.f4008l.k(30, new q.a() { // from class: b3.m1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onDeviceVolumeChanged(i10, z10);
                }
            });
        }

        @Override // m4.n
        public void onCues(final m4.e eVar) {
            g1.this.f4003i0 = eVar;
            g1.this.f4008l.k(27, new q.a() { // from class: b3.n1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onCues(m4.e.this);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements z4.k, a5.a, p3.b {

        /* renamed from: a  reason: collision with root package name */
        private z4.k f4033a;

        /* renamed from: b  reason: collision with root package name */
        private a5.a f4034b;

        /* renamed from: c  reason: collision with root package name */
        private z4.k f4035c;

        /* renamed from: d  reason: collision with root package name */
        private a5.a f4036d;

        private d() {
        }

        @Override // a5.a
        public void b(long j10, float[] fArr) {
            a5.a aVar = this.f4036d;
            if (aVar != null) {
                aVar.b(j10, fArr);
            }
            a5.a aVar2 = this.f4034b;
            if (aVar2 != null) {
                aVar2.b(j10, fArr);
            }
        }

        @Override // a5.a
        public void c() {
            a5.a aVar = this.f4036d;
            if (aVar != null) {
                aVar.c();
            }
            a5.a aVar2 = this.f4034b;
            if (aVar2 != null) {
                aVar2.c();
            }
        }

        @Override // z4.k
        public void g(long j10, long j11, x1 x1Var, MediaFormat mediaFormat) {
            z4.k kVar = this.f4035c;
            if (kVar != null) {
                kVar.g(j10, j11, x1Var, mediaFormat);
            }
            z4.k kVar2 = this.f4033a;
            if (kVar2 != null) {
                kVar2.g(j10, j11, x1Var, mediaFormat);
            }
        }

        @Override // b3.p3.b
        public void y(int i10, Object obj) {
            if (i10 != 7) {
                if (i10 != 8) {
                    if (i10 == 10000) {
                        android.support.v4.media.session.b.a(obj);
                        this.f4035c = null;
                        this.f4036d = null;
                        return;
                    }
                    return;
                }
                this.f4034b = (a5.a) obj;
                return;
            }
            this.f4033a = (z4.k) obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e implements p2 {

        /* renamed from: a  reason: collision with root package name */
        private final Object f4037a;

        /* renamed from: b  reason: collision with root package name */
        private g4 f4038b;

        public e(Object obj, g4 g4Var) {
            this.f4037a = obj;
            this.f4038b = g4Var;
        }

        @Override // b3.p2
        public Object a() {
            return this.f4037a;
        }

        @Override // b3.p2
        public g4 b() {
            return this.f4038b;
        }
    }

    static {
        u1.a("goog.exo.exoplayer");
    }

    public g1(b0.b bVar, m3 m3Var) {
        boolean z10;
        g1 g1Var;
        c3.t3 a10;
        d3.e eVar;
        boolean z11;
        boolean z12;
        y4.g gVar = new y4.g();
        this.f3992d = gVar;
        try {
            y4.r.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.7] [" + y4.q0.f32950e + "]");
            Context applicationContext = bVar.f3788a.getApplicationContext();
            this.f3994e = applicationContext;
            c3.a aVar = (c3.a) bVar.f3796i.apply(bVar.f3789b);
            this.f4020r = aVar;
            this.f3997f0 = bVar.f3798k;
            this.Z = bVar.f3803p;
            this.f3987a0 = bVar.f3804q;
            this.f4001h0 = bVar.f3802o;
            this.E = bVar.f3811x;
            c cVar = new c();
            this.f4029x = cVar;
            d dVar = new d();
            this.f4030y = dVar;
            Handler handler = new Handler(bVar.f3797j);
            t3[] a11 = ((w3) bVar.f3791d.get()).a(handler, cVar, cVar, cVar, cVar);
            this.f3998g = a11;
            if (a11.length > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            w4.h0 h0Var = (w4.h0) bVar.f3793f.get();
            this.f4000h = h0Var;
            this.f4018q = (t.a) bVar.f3792e.get();
            x4.e eVar2 = (x4.e) bVar.f3795h.get();
            this.f4024t = eVar2;
            this.f4016p = bVar.f3805r;
            this.L = bVar.f3806s;
            this.f4026u = bVar.f3807t;
            this.f4027v = bVar.f3808u;
            this.N = bVar.f3812y;
            Looper looper = bVar.f3797j;
            this.f4022s = looper;
            y4.d dVar2 = bVar.f3789b;
            this.f4028w = dVar2;
            if (m3Var == null) {
                g1Var = this;
            } else {
                g1Var = m3Var;
            }
            this.f3996f = g1Var;
            this.f4008l = new y4.q(looper, dVar2, new q.b() { // from class: b3.t0
                @Override // y4.q.b
                public final void a(Object obj, y4.l lVar) {
                    g1.this.l1((m3.d) obj, lVar);
                }
            });
            this.f4010m = new CopyOnWriteArraySet();
            this.f4014o = new ArrayList();
            this.M = new o0.a(0);
            w4.i0 i0Var = new w4.i0(new v3[a11.length], new w4.y[a11.length], l4.f4212b, null);
            this.f3988b = i0Var;
            this.f4012n = new g4.b();
            m3.b e10 = new m3.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, h0Var.d()).e();
            this.f3990c = e10;
            this.O = new m3.b.a().b(e10).a(4).a(10).e();
            this.f4002i = dVar2.a(looper, null);
            t1.f fVar = new t1.f() { // from class: b3.y0
                @Override // b3.t1.f
                public final void a(t1.e eVar3) {
                    g1.this.n1(eVar3);
                }
            };
            this.f4004j = fVar;
            this.f4019q0 = j3.j(i0Var);
            aVar.I(g1Var, looper);
            int i10 = y4.q0.f32946a;
            if (i10 < 31) {
                a10 = new c3.t3();
            } else {
                a10 = b.a(applicationContext, this, bVar.f3813z);
            }
            t1 t1Var = new t1(a11, h0Var, i0Var, (d2) bVar.f3794g.get(), eVar2, this.F, this.G, aVar, this.L, bVar.f3809v, bVar.f3810w, this.N, looper, dVar2, fVar, a10, bVar.A);
            this.f4006k = t1Var;
            this.f3999g0 = 1.0f;
            this.F = 0;
            k2 k2Var = k2.I;
            this.P = k2Var;
            this.Q = k2Var;
            this.f4017p0 = k2Var;
            this.f4021r0 = -1;
            if (i10 < 21) {
                this.f3995e0 = i1(0);
            } else {
                this.f3995e0 = y4.q0.F(applicationContext);
            }
            this.f4003i0 = m4.e.f25719c;
            this.f4005j0 = true;
            x(aVar);
            eVar2.b(new Handler(looper), aVar);
            P0(cVar);
            long j10 = bVar.f3790c;
            if (j10 > 0) {
                t1Var.u(j10);
            }
            b3.b bVar2 = new b3.b(bVar.f3788a, handler, cVar);
            this.f4031z = bVar2;
            bVar2.b(bVar.f3801n);
            m mVar = new m(bVar.f3788a, handler, cVar);
            this.A = mVar;
            if (bVar.f3799l) {
                eVar = this.f3997f0;
            } else {
                eVar = null;
            }
            mVar.m(eVar);
            b4 b4Var = new b4(bVar.f3788a, handler, cVar);
            this.B = b4Var;
            b4Var.h(y4.q0.f0(this.f3997f0.f14456c));
            m4 m4Var = new m4(bVar.f3788a);
            this.C = m4Var;
            if (bVar.f3800m != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            m4Var.a(z11);
            n4 n4Var = new n4(bVar.f3788a);
            this.D = n4Var;
            if (bVar.f3800m == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            n4Var.a(z12);
            this.f4013n0 = S0(b4Var);
            this.f4015o0 = z4.a0.f33398e;
            this.f3989b0 = y4.g0.f32884c;
            h0Var.h(this.f3997f0);
            O1(1, 10, Integer.valueOf(this.f3995e0));
            O1(2, 10, Integer.valueOf(this.f3995e0));
            O1(1, 3, this.f3997f0);
            O1(2, 4, Integer.valueOf(this.Z));
            O1(2, 5, Integer.valueOf(this.f3987a0));
            O1(1, 9, Boolean.valueOf(this.f4001h0));
            O1(2, 7, dVar);
            O1(6, 8, dVar);
            gVar.e();
        } catch (Throwable th) {
            this.f3992d.e();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A1(j3 j3Var, m3.d dVar) {
        dVar.onLoadingChanged(j3Var.f4110g);
        dVar.onIsLoadingChanged(j3Var.f4110g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B1(j3 j3Var, m3.d dVar) {
        dVar.onPlayerStateChanged(j3Var.f4115l, j3Var.f4108e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(j3 j3Var, m3.d dVar) {
        dVar.onPlaybackStateChanged(j3Var.f4108e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(j3 j3Var, int i10, m3.d dVar) {
        dVar.onPlayWhenReadyChanged(j3Var.f4115l, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E1(j3 j3Var, m3.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(j3Var.f4116m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(j3 j3Var, m3.d dVar) {
        dVar.onIsPlayingChanged(j1(j3Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G1(j3 j3Var, m3.d dVar) {
        dVar.onPlaybackParametersChanged(j3Var.f4117n);
    }

    private j3 H1(j3 j3Var, g4 g4Var, Pair pair) {
        boolean z10;
        t.b bVar;
        d4.u0 u0Var;
        w4.i0 i0Var;
        List list;
        int i10;
        long j10;
        if (!g4Var.u() && pair == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.a(z10);
        g4 g4Var2 = j3Var.f4104a;
        j3 i11 = j3Var.i(g4Var);
        if (g4Var.u()) {
            t.b k10 = j3.k();
            long A0 = y4.q0.A0(this.f4025t0);
            j3 b10 = i11.c(k10, A0, A0, A0, 0L, d4.u0.f14959d, this.f3988b, o6.q.D()).b(k10);
            b10.f4119p = b10.f4121r;
            return b10;
        }
        Object obj = i11.f4105b.f14942a;
        boolean z11 = !obj.equals(((Pair) y4.q0.j(pair)).first);
        if (z11) {
            bVar = new t.b(pair.first);
        } else {
            bVar = i11.f4105b;
        }
        t.b bVar2 = bVar;
        long longValue = ((Long) pair.second).longValue();
        long A02 = y4.q0.A0(r());
        if (!g4Var2.u()) {
            A02 -= g4Var2.l(obj, this.f4012n).q();
        }
        if (!z11 && longValue >= A02) {
            if (i10 == 0) {
                int f10 = g4Var.f(i11.f4114k.f14942a);
                if (f10 == -1 || g4Var.j(f10, this.f4012n).f4055c != g4Var.l(bVar2.f14942a, this.f4012n).f4055c) {
                    g4Var.l(bVar2.f14942a, this.f4012n);
                    if (bVar2.b()) {
                        j10 = this.f4012n.e(bVar2.f14943b, bVar2.f14944c);
                    } else {
                        j10 = this.f4012n.f4056d;
                    }
                    i11 = i11.c(bVar2, i11.f4121r, i11.f4121r, i11.f4107d, j10 - i11.f4121r, i11.f4111h, i11.f4112i, i11.f4113j).b(bVar2);
                    i11.f4119p = j10;
                }
            } else {
                y4.a.f(!bVar2.b());
                long max = Math.max(0L, i11.f4120q - (longValue - A02));
                long j11 = i11.f4119p;
                if (i11.f4114k.equals(i11.f4105b)) {
                    j11 = longValue + max;
                }
                i11 = i11.c(bVar2, longValue, longValue, longValue, max, i11.f4111h, i11.f4112i, i11.f4113j);
                i11.f4119p = j11;
            }
            return i11;
        }
        y4.a.f(!bVar2.b());
        if (z11) {
            u0Var = d4.u0.f14959d;
        } else {
            u0Var = i11.f4111h;
        }
        d4.u0 u0Var2 = u0Var;
        if (z11) {
            i0Var = this.f3988b;
        } else {
            i0Var = i11.f4112i;
        }
        w4.i0 i0Var2 = i0Var;
        if (z11) {
            list = o6.q.D();
        } else {
            list = i11.f4113j;
        }
        j3 b11 = i11.c(bVar2, longValue, longValue, longValue, 0L, u0Var2, i0Var2, list).b(bVar2);
        b11.f4119p = longValue;
        return b11;
    }

    private Pair I1(g4 g4Var, int i10, long j10) {
        if (g4Var.u()) {
            this.f4021r0 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f4025t0 = j10;
            this.f4023s0 = 0;
            return null;
        }
        if (i10 == -1 || i10 >= g4Var.t()) {
            i10 = g4Var.e(this.G);
            j10 = g4Var.r(i10, this.f4280a).d();
        }
        return g4Var.n(this.f4280a, this.f4012n, i10, y4.q0.A0(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J1(final int i10, final int i11) {
        if (i10 != this.f3989b0.b() || i11 != this.f3989b0.a()) {
            this.f3989b0 = new y4.g0(i10, i11);
            this.f4008l.k(24, new q.a() { // from class: b3.i0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onSurfaceSizeChanged(i10, i11);
                }
            });
        }
    }

    private long K1(g4 g4Var, t.b bVar, long j10) {
        g4Var.l(bVar.f14942a, this.f4012n);
        return j10 + this.f4012n.q();
    }

    private j3 L1(int i10, int i11) {
        int z10 = z();
        g4 F = F();
        int size = this.f4014o.size();
        boolean z11 = true;
        this.H++;
        M1(i10, i11);
        g4 T0 = T0();
        j3 H1 = H1(this.f4019q0, T0, b1(F, T0));
        int i12 = H1.f4108e;
        if ((i12 == 1 || i12 == 4 || i10 >= i11 || i11 != size || z10 < H1.f4104a.t()) ? false : false) {
            H1 = H1.g(4);
        }
        this.f4006k.n0(i10, i11, this.M);
        return H1;
    }

    private void M1(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.f4014o.remove(i12);
        }
        this.M = this.M.c(i10, i11);
    }

    private void N1() {
        TextureView textureView = this.Y;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f4029x) {
                y4.r.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Y.setSurfaceTextureListener(null);
            }
            this.Y = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f4029x);
            this.W = null;
        }
    }

    private void O1(int i10, int i11, Object obj) {
        t3[] t3VarArr;
        for (t3 t3Var : this.f3998g) {
            if (t3Var.h() == i10) {
                U0(t3Var).n(i11).m(obj).l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P1() {
        O1(1, 2, Float.valueOf(this.f3999g0 * this.A.g()));
    }

    private List Q0(int i10, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            d3.c cVar = new d3.c((d4.t) list.get(i11), this.f4016p);
            arrayList.add(cVar);
            this.f4014o.add(i11 + i10, new e(cVar.f3857b, cVar.f3856a.Z()));
        }
        this.M = this.M.g(i10, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k2 R0() {
        g4 F = F();
        if (F.u()) {
            return this.f4017p0;
        }
        return this.f4017p0.b().J(F.r(z(), this.f4280a).f4075c.f3883e).H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y S0(b4 b4Var) {
        return new y(0, b4Var.d(), b4Var.c());
    }

    private void S1(List list, int i10, long j10, boolean z10) {
        int i11;
        long j11;
        int a12 = a1();
        long f10 = f();
        boolean z11 = true;
        this.H++;
        if (!this.f4014o.isEmpty()) {
            M1(0, this.f4014o.size());
        }
        List Q0 = Q0(0, list);
        g4 T0 = T0();
        if (!T0.u() && i10 >= T0.t()) {
            throw new b2(T0, i10, j10);
        }
        if (z10) {
            j11 = -9223372036854775807L;
            i11 = T0.e(this.G);
        } else if (i10 == -1) {
            i11 = a12;
            j11 = f10;
        } else {
            i11 = i10;
            j11 = j10;
        }
        j3 H1 = H1(this.f4019q0, T0, I1(T0, i11, j11));
        int i12 = H1.f4108e;
        if (i11 != -1 && i12 != 1) {
            i12 = (T0.u() || i11 >= T0.t()) ? 4 : 2;
        }
        j3 g10 = H1.g(i12);
        this.f4006k.N0(Q0, i11, y4.q0.A0(j11), this.M);
        if (this.f4019q0.f4105b.f14942a.equals(g10.f4105b.f14942a) || this.f4019q0.f4104a.u()) {
            z11 = false;
        }
        Z1(g10, 0, 1, false, z11, 4, Z0(g10), -1, false);
    }

    private g4 T0() {
        return new q3(this.f4014o, this.M);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        U1(surface);
        this.V = surface;
    }

    private p3 U0(p3.b bVar) {
        int a12 = a1();
        t1 t1Var = this.f4006k;
        g4 g4Var = this.f4019q0.f4104a;
        if (a12 == -1) {
            a12 = 0;
        }
        return new p3(t1Var, bVar, g4Var, a12, this.f4028w, t1Var.B());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U1(Object obj) {
        boolean z10;
        ArrayList<p3> arrayList = new ArrayList();
        t3[] t3VarArr = this.f3998g;
        int length = t3VarArr.length;
        int i10 = 0;
        while (true) {
            z10 = true;
            if (i10 >= length) {
                break;
            }
            t3 t3Var = t3VarArr[i10];
            if (t3Var.h() == 2) {
                arrayList.add(U0(t3Var).n(1).m(obj).l());
            }
            i10++;
        }
        Object obj2 = this.U;
        if (obj2 != null && obj2 != obj) {
            try {
                for (p3 p3Var : arrayList) {
                    p3Var.a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        } else {
            z10 = false;
        }
        this.U = obj;
        if (z10) {
            W1(false, a0.i(new v1(3), 1003));
        }
    }

    private Pair V0(j3 j3Var, j3 j3Var2, boolean z10, int i10, boolean z11, boolean z12) {
        g4 g4Var = j3Var2.f4104a;
        g4 g4Var2 = j3Var.f4104a;
        if (g4Var2.u() && g4Var.u()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (g4Var2.u() != g4Var.u()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (!g4Var.r(g4Var.l(j3Var2.f4105b.f14942a, this.f4012n).f4055c, this.f4280a).f4073a.equals(g4Var2.r(g4Var2.l(j3Var.f4105b.f14942a, this.f4012n).f4055c, this.f4280a).f4073a)) {
            if (z10 && i10 == 0) {
                i11 = 1;
            } else if (z10 && i10 == 1) {
                i11 = 2;
            } else if (!z11) {
                throw new IllegalStateException();
            }
            return new Pair(Boolean.TRUE, Integer.valueOf(i11));
        } else if (z10 && i10 == 0 && j3Var2.f4105b.f14945d < j3Var.f4105b.f14945d) {
            return new Pair(Boolean.TRUE, 0);
        } else {
            if (z10 && i10 == 1 && z12) {
                return new Pair(Boolean.TRUE, 2);
            }
            return new Pair(Boolean.FALSE, -1);
        }
    }

    private void W1(boolean z10, a0 a0Var) {
        j3 b10;
        boolean z11;
        if (z10) {
            b10 = L1(0, this.f4014o.size()).e(null);
        } else {
            j3 j3Var = this.f4019q0;
            b10 = j3Var.b(j3Var.f4105b);
            b10.f4119p = b10.f4121r;
            b10.f4120q = 0L;
        }
        j3 g10 = b10.g(1);
        if (a0Var != null) {
            g10 = g10.e(a0Var);
        }
        j3 j3Var2 = g10;
        this.H++;
        this.f4006k.g1();
        if (j3Var2.f4104a.u() && !this.f4019q0.f4104a.u()) {
            z11 = true;
        } else {
            z11 = false;
        }
        Z1(j3Var2, 0, 1, false, z11, 4, Z0(j3Var2), -1, false);
    }

    private void X1() {
        m3.b bVar = this.O;
        m3.b H = y4.q0.H(this.f3996f, this.f3990c);
        this.O = H;
        if (!H.equals(bVar)) {
            this.f4008l.i(13, new q.a() { // from class: b3.x0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.this.s1((m3.d) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(boolean z10, int i10, int i11) {
        boolean z11;
        int i12 = 0;
        if (z10 && i10 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 && i10 != 1) {
            i12 = 1;
        }
        j3 j3Var = this.f4019q0;
        if (j3Var.f4115l == z11 && j3Var.f4116m == i12) {
            return;
        }
        this.H++;
        j3 d10 = j3Var.d(z11, i12);
        this.f4006k.Q0(z11, i12);
        Z1(d10, 0, i11, false, false, 5, -9223372036854775807L, -1, false);
    }

    private long Z0(j3 j3Var) {
        if (j3Var.f4104a.u()) {
            return y4.q0.A0(this.f4025t0);
        }
        if (j3Var.f4105b.b()) {
            return j3Var.f4121r;
        }
        return K1(j3Var.f4104a, j3Var.f4105b, j3Var.f4121r);
    }

    private void Z1(final j3 j3Var, final int i10, final int i11, boolean z10, boolean z11, final int i12, long j10, int i13, boolean z12) {
        boolean z13;
        boolean z14;
        boolean z15;
        j3 j3Var2 = this.f4019q0;
        this.f4019q0 = j3Var;
        boolean z16 = !j3Var2.f4104a.equals(j3Var.f4104a);
        Pair V0 = V0(j3Var, j3Var2, z11, i12, z16, z12);
        boolean booleanValue = ((Boolean) V0.first).booleanValue();
        final int intValue = ((Integer) V0.second).intValue();
        k2 k2Var = this.P;
        final f2 f2Var = null;
        if (booleanValue) {
            if (!j3Var.f4104a.u()) {
                f2Var = j3Var.f4104a.r(j3Var.f4104a.l(j3Var.f4105b.f14942a, this.f4012n).f4055c, this.f4280a).f4075c;
            }
            this.f4017p0 = k2.I;
        }
        if (booleanValue || !j3Var2.f4113j.equals(j3Var.f4113j)) {
            this.f4017p0 = this.f4017p0.b().K(j3Var.f4113j).H();
            k2Var = R0();
        }
        boolean z17 = !k2Var.equals(this.P);
        this.P = k2Var;
        if (j3Var2.f4115l != j3Var.f4115l) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (j3Var2.f4108e != j3Var.f4108e) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (z14 || z13) {
            b2();
        }
        boolean z18 = j3Var2.f4110g;
        boolean z19 = j3Var.f4110g;
        if (z18 != z19) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z15) {
            a2(z19);
        }
        if (z16) {
            this.f4008l.i(0, new q.a() { // from class: b3.d1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.t1(j3.this, i10, (m3.d) obj);
                }
            });
        }
        if (z11) {
            final m3.e f12 = f1(i12, j3Var2, i13);
            final m3.e e12 = e1(j10);
            this.f4008l.i(11, new q.a() { // from class: b3.m0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.u1(i12, f12, e12, (m3.d) obj);
                }
            });
        }
        if (booleanValue) {
            this.f4008l.i(1, new q.a() { // from class: b3.n0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onMediaItemTransition(f2.this, intValue);
                }
            });
        }
        if (j3Var2.f4109f != j3Var.f4109f) {
            this.f4008l.i(10, new q.a() { // from class: b3.o0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.w1(j3.this, (m3.d) obj);
                }
            });
            if (j3Var.f4109f != null) {
                this.f4008l.i(10, new q.a() { // from class: b3.p0
                    @Override // y4.q.a
                    public final void invoke(Object obj) {
                        g1.x1(j3.this, (m3.d) obj);
                    }
                });
            }
        }
        w4.i0 i0Var = j3Var2.f4112i;
        w4.i0 i0Var2 = j3Var.f4112i;
        if (i0Var != i0Var2) {
            this.f4000h.e(i0Var2.f31845e);
            this.f4008l.i(2, new q.a() { // from class: b3.q0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.y1(j3.this, (m3.d) obj);
                }
            });
        }
        if (z17) {
            final k2 k2Var2 = this.P;
            this.f4008l.i(14, new q.a() { // from class: b3.r0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onMediaMetadataChanged(k2.this);
                }
            });
        }
        if (z15) {
            this.f4008l.i(3, new q.a() { // from class: b3.s0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.A1(j3.this, (m3.d) obj);
                }
            });
        }
        if (z14 || z13) {
            this.f4008l.i(-1, new q.a() { // from class: b3.u0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.B1(j3.this, (m3.d) obj);
                }
            });
        }
        if (z14) {
            this.f4008l.i(4, new q.a() { // from class: b3.v0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.C1(j3.this, (m3.d) obj);
                }
            });
        }
        if (z13) {
            this.f4008l.i(5, new q.a() { // from class: b3.e1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.D1(j3.this, i11, (m3.d) obj);
                }
            });
        }
        if (j3Var2.f4116m != j3Var.f4116m) {
            this.f4008l.i(6, new q.a() { // from class: b3.f1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.E1(j3.this, (m3.d) obj);
                }
            });
        }
        if (j1(j3Var2) != j1(j3Var)) {
            this.f4008l.i(7, new q.a() { // from class: b3.j0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.F1(j3.this, (m3.d) obj);
                }
            });
        }
        if (!j3Var2.f4117n.equals(j3Var.f4117n)) {
            this.f4008l.i(12, new q.a() { // from class: b3.k0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.G1(j3.this, (m3.d) obj);
                }
            });
        }
        if (z10) {
            this.f4008l.i(-1, new q.a() { // from class: b3.l0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onSeekProcessed();
                }
            });
        }
        X1();
        this.f4008l.f();
        if (j3Var2.f4118o != j3Var.f4118o) {
            Iterator it = this.f4010m.iterator();
            while (it.hasNext()) {
                ((b0.a) it.next()).v(j3Var.f4118o);
            }
        }
    }

    private int a1() {
        if (this.f4019q0.f4104a.u()) {
            return this.f4021r0;
        }
        j3 j3Var = this.f4019q0;
        return j3Var.f4104a.l(j3Var.f4105b.f14942a, this.f4012n).f4055c;
    }

    private void a2(boolean z10) {
    }

    private Pair b1(g4 g4Var, g4 g4Var2) {
        boolean z10;
        long r10 = r();
        int i10 = -1;
        if (!g4Var.u() && !g4Var2.u()) {
            Pair n10 = g4Var.n(this.f4280a, this.f4012n, z(), y4.q0.A0(r10));
            Object obj = ((Pair) y4.q0.j(n10)).first;
            if (g4Var2.f(obj) != -1) {
                return n10;
            }
            Object y02 = t1.y0(this.f4280a, this.f4012n, this.F, this.G, obj, g4Var, g4Var2);
            if (y02 != null) {
                g4Var2.l(y02, this.f4012n);
                int i11 = this.f4012n.f4055c;
                return I1(g4Var2, i11, g4Var2.r(i11, this.f4280a).d());
            }
            return I1(g4Var2, -1, -9223372036854775807L);
        }
        if (!g4Var.u() && g4Var2.u()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            i10 = a1();
        }
        if (z10) {
            r10 = -9223372036854775807L;
        }
        return I1(g4Var2, i10, r10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2() {
        int u10 = u();
        boolean z10 = true;
        if (u10 != 1) {
            if (u10 != 2 && u10 != 3) {
                if (u10 != 4) {
                    throw new IllegalStateException();
                }
            } else {
                boolean W0 = W0();
                m4 m4Var = this.C;
                if (!j() || W0) {
                    z10 = false;
                }
                m4Var.b(z10);
                this.D.b(j());
                return;
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c1(boolean z10, int i10) {
        return (!z10 || i10 == 1) ? 1 : 2;
    }

    private void c2() {
        IllegalStateException illegalStateException;
        this.f3992d.b();
        if (Thread.currentThread() != X0().getThread()) {
            String C = y4.q0.C("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), X0().getThread().getName());
            if (!this.f4005j0) {
                if (this.f4007k0) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                y4.r.j("ExoPlayerImpl", C, illegalStateException);
                this.f4007k0 = true;
                return;
            }
            throw new IllegalStateException(C);
        }
    }

    private m3.e e1(long j10) {
        f2 f2Var;
        Object obj;
        int i10;
        Object obj2;
        long j11;
        int z10 = z();
        if (!this.f4019q0.f4104a.u()) {
            j3 j3Var = this.f4019q0;
            Object obj3 = j3Var.f4105b.f14942a;
            j3Var.f4104a.l(obj3, this.f4012n);
            int f10 = this.f4019q0.f4104a.f(obj3);
            i10 = f10;
            obj = obj3;
            obj2 = this.f4019q0.f4104a.r(z10, this.f4280a).f4073a;
            f2Var = this.f4280a.f4075c;
        } else {
            f2Var = null;
            obj = null;
            i10 = -1;
            obj2 = null;
        }
        long X0 = y4.q0.X0(j10);
        if (this.f4019q0.f4105b.b()) {
            j11 = y4.q0.X0(g1(this.f4019q0));
        } else {
            j11 = X0;
        }
        t.b bVar = this.f4019q0.f4105b;
        return new m3.e(obj2, z10, f2Var, obj, i10, X0, j11, bVar.f14943b, bVar.f14944c);
    }

    private m3.e f1(int i10, j3 j3Var, int i11) {
        int i12;
        Object obj;
        f2 f2Var;
        Object obj2;
        int i13;
        long j10;
        long g12;
        g4.b bVar = new g4.b();
        if (!j3Var.f4104a.u()) {
            Object obj3 = j3Var.f4105b.f14942a;
            j3Var.f4104a.l(obj3, bVar);
            int i14 = bVar.f4055c;
            int f10 = j3Var.f4104a.f(obj3);
            Object obj4 = j3Var.f4104a.r(i14, this.f4280a).f4073a;
            f2Var = this.f4280a.f4075c;
            obj2 = obj3;
            i13 = f10;
            obj = obj4;
            i12 = i14;
        } else {
            i12 = i11;
            obj = null;
            f2Var = null;
            obj2 = null;
            i13 = -1;
        }
        if (i10 == 0) {
            if (j3Var.f4105b.b()) {
                t.b bVar2 = j3Var.f4105b;
                j10 = bVar.e(bVar2.f14943b, bVar2.f14944c);
                g12 = g1(j3Var);
            } else {
                if (j3Var.f4105b.f14946e != -1) {
                    j10 = g1(this.f4019q0);
                } else {
                    j10 = bVar.f4057e + bVar.f4056d;
                }
                g12 = j10;
            }
        } else if (j3Var.f4105b.b()) {
            j10 = j3Var.f4121r;
            g12 = g1(j3Var);
        } else {
            j10 = bVar.f4057e + j3Var.f4121r;
            g12 = j10;
        }
        long X0 = y4.q0.X0(j10);
        long X02 = y4.q0.X0(g12);
        t.b bVar3 = j3Var.f4105b;
        return new m3.e(obj, i12, f2Var, obj2, i13, X0, X02, bVar3.f14943b, bVar3.f14944c);
    }

    private static long g1(j3 j3Var) {
        g4.d dVar = new g4.d();
        g4.b bVar = new g4.b();
        j3Var.f4104a.l(j3Var.f4105b.f14942a, bVar);
        if (j3Var.f4106c == -9223372036854775807L) {
            return j3Var.f4104a.r(bVar.f4055c, dVar).e();
        }
        return bVar.q() + j3Var.f4106c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h1 */
    public void m1(t1.e eVar) {
        long j10;
        boolean z10;
        long j11;
        boolean z11;
        int i10 = this.H - eVar.f4427c;
        this.H = i10;
        boolean z12 = true;
        if (eVar.f4428d) {
            this.I = eVar.f4429e;
            this.J = true;
        }
        if (eVar.f4430f) {
            this.K = eVar.f4431g;
        }
        if (i10 == 0) {
            g4 g4Var = eVar.f4426b.f4104a;
            if (!this.f4019q0.f4104a.u() && g4Var.u()) {
                this.f4021r0 = -1;
                this.f4025t0 = 0L;
                this.f4023s0 = 0;
            }
            if (!g4Var.u()) {
                List I = ((q3) g4Var).I();
                if (I.size() == this.f4014o.size()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                y4.a.f(z11);
                for (int i11 = 0; i11 < I.size(); i11++) {
                    ((e) this.f4014o.get(i11)).f4038b = (g4) I.get(i11);
                }
            }
            if (this.J) {
                if (eVar.f4426b.f4105b.equals(this.f4019q0.f4105b) && eVar.f4426b.f4107d == this.f4019q0.f4121r) {
                    z12 = false;
                }
                if (z12) {
                    if (!g4Var.u() && !eVar.f4426b.f4105b.b()) {
                        j3 j3Var = eVar.f4426b;
                        j11 = K1(g4Var, j3Var.f4105b, j3Var.f4107d);
                    } else {
                        j11 = eVar.f4426b.f4107d;
                    }
                    j10 = j11;
                } else {
                    j10 = -9223372036854775807L;
                }
                z10 = z12;
            } else {
                j10 = -9223372036854775807L;
                z10 = false;
            }
            this.J = false;
            Z1(eVar.f4426b, 1, this.K, false, z10, this.I, j10, -1, false);
        }
    }

    private int i1(int i10) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i10) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, 4000, 4, 2, 2, 0, i10);
        }
        return this.T.getAudioSessionId();
    }

    private static boolean j1(j3 j3Var) {
        if (j3Var.f4108e == 3 && j3Var.f4115l && j3Var.f4116m == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l1(m3.d dVar, y4.l lVar) {
        dVar.onEvents(this.f3996f, new m3.c(lVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n1(final t1.e eVar) {
        this.f4002i.b(new Runnable() { // from class: b3.w0
            @Override // java.lang.Runnable
            public final void run() {
                g1.this.m1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o1(m3.d dVar) {
        dVar.onPlayerError(a0.i(new v1(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s1(m3.d dVar) {
        dVar.onAvailableCommandsChanged(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t1(j3 j3Var, int i10, m3.d dVar) {
        dVar.onTimelineChanged(j3Var.f4104a, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u1(int i10, m3.e eVar, m3.e eVar2, m3.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.onPositionDiscontinuity(eVar, eVar2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w1(j3 j3Var, m3.d dVar) {
        dVar.onPlayerErrorChanged(j3Var.f4109f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x1(j3 j3Var, m3.d dVar) {
        dVar.onPlayerError(j3Var.f4109f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y1(j3 j3Var, m3.d dVar) {
        dVar.onTracksChanged(j3Var.f4112i.f31844d);
    }

    @Override // b3.m3
    public void A(final int i10) {
        c2();
        if (this.F != i10) {
            this.F = i10;
            this.f4006k.U0(i10);
            this.f4008l.i(8, new q.a() { // from class: b3.c1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onRepeatModeChanged(i10);
                }
            });
            X1();
            this.f4008l.f();
        }
    }

    @Override // b3.b0
    public void B(d4.t tVar) {
        c2();
        Q1(Collections.singletonList(tVar));
    }

    @Override // b3.m3
    public int D() {
        c2();
        return this.f4019q0.f4116m;
    }

    @Override // b3.m3
    public int E() {
        c2();
        return this.F;
    }

    @Override // b3.m3
    public g4 F() {
        c2();
        return this.f4019q0.f4104a;
    }

    @Override // b3.m3
    public boolean G() {
        c2();
        return this.G;
    }

    @Override // b3.n
    public void M(int i10, long j10, int i11, boolean z10) {
        boolean z11;
        c2();
        int i12 = 1;
        if (i10 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        y4.a.a(z11);
        this.f4020r.w();
        g4 g4Var = this.f4019q0.f4104a;
        if (!g4Var.u() && i10 >= g4Var.t()) {
            return;
        }
        this.H++;
        if (h()) {
            y4.r.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            t1.e eVar = new t1.e(this.f4019q0);
            eVar.b(1);
            this.f4004j.a(eVar);
            return;
        }
        if (u() != 1) {
            i12 = 2;
        }
        int z12 = z();
        j3 H1 = H1(this.f4019q0.g(i12), g4Var, I1(g4Var, i10, j10));
        this.f4006k.A0(g4Var, i10, y4.q0.A0(j10));
        Z1(H1, 0, 1, true, true, 1, Z0(H1), z12, z10);
    }

    public void O0(c3.b bVar) {
        this.f4020r.v((c3.b) y4.a.e(bVar));
    }

    public void P0(b0.a aVar) {
        this.f4010m.add(aVar);
    }

    public void Q1(List list) {
        c2();
        R1(list, true);
    }

    public void R1(List list, boolean z10) {
        c2();
        S1(list, -1, -9223372036854775807L, z10);
    }

    public void V1(boolean z10) {
        c2();
        this.A.p(j(), 1);
        W1(z10, null);
        this.f4003i0 = new m4.e(o6.q.D(), this.f4019q0.f4121r);
    }

    public boolean W0() {
        c2();
        return this.f4019q0.f4118o;
    }

    public Looper X0() {
        return this.f4022s;
    }

    public long Y0() {
        c2();
        if (this.f4019q0.f4104a.u()) {
            return this.f4025t0;
        }
        j3 j3Var = this.f4019q0;
        if (j3Var.f4114k.f14945d != j3Var.f4105b.f14945d) {
            return j3Var.f4104a.r(z(), this.f4280a).f();
        }
        long j10 = j3Var.f4119p;
        if (this.f4019q0.f4114k.b()) {
            j3 j3Var2 = this.f4019q0;
            g4.b l10 = j3Var2.f4104a.l(j3Var2.f4114k.f14942a, this.f4012n);
            long i10 = l10.i(this.f4019q0.f4114k.f14943b);
            if (i10 == Long.MIN_VALUE) {
                j10 = l10.f4056d;
            } else {
                j10 = i10;
            }
        }
        j3 j3Var3 = this.f4019q0;
        return y4.q0.X0(K1(j3Var3.f4104a, j3Var3.f4114k, j10));
    }

    @Override // b3.b0
    public x1 a() {
        c2();
        return this.R;
    }

    @Override // b3.m3
    public void b() {
        c2();
        boolean j10 = j();
        int i10 = 2;
        int p10 = this.A.p(j10, 2);
        Y1(j10, p10, c1(j10, p10));
        j3 j3Var = this.f4019q0;
        if (j3Var.f4108e != 1) {
            return;
        }
        j3 e10 = j3Var.e(null);
        if (e10.f4104a.u()) {
            i10 = 4;
        }
        j3 g10 = e10.g(i10);
        this.H++;
        this.f4006k.i0();
        Z1(g10, 1, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // b3.m3
    public void c(l3 l3Var) {
        c2();
        if (l3Var == null) {
            l3Var = l3.f4205d;
        }
        if (this.f4019q0.f4117n.equals(l3Var)) {
            return;
        }
        j3 f10 = this.f4019q0.f(l3Var);
        this.H++;
        this.f4006k.S0(l3Var);
        Z1(f10, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // b3.b0
    public void d(final d3.e eVar, boolean z10) {
        d3.e eVar2;
        c2();
        if (this.f4011m0) {
            return;
        }
        if (!y4.q0.c(this.f3997f0, eVar)) {
            this.f3997f0 = eVar;
            O1(1, 3, eVar);
            this.B.h(y4.q0.f0(eVar.f14456c));
            this.f4008l.i(20, new q.a() { // from class: b3.z0
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    ((m3.d) obj).onAudioAttributesChanged(d3.e.this);
                }
            });
        }
        m mVar = this.A;
        if (z10) {
            eVar2 = eVar;
        } else {
            eVar2 = null;
        }
        mVar.m(eVar2);
        this.f4000h.h(eVar);
        boolean j10 = j();
        int p10 = this.A.p(j10, u());
        Y1(j10, p10, c1(j10, p10));
        this.f4008l.f();
    }

    @Override // b3.m3
    /* renamed from: d1 */
    public a0 p() {
        c2();
        return this.f4019q0.f4109f;
    }

    @Override // b3.m3
    public void e(float f10) {
        c2();
        final float p10 = y4.q0.p(f10, 0.0f, 1.0f);
        if (this.f3999g0 == p10) {
            return;
        }
        this.f3999g0 = p10;
        P1();
        this.f4008l.k(22, new q.a() { // from class: b3.b1
            @Override // y4.q.a
            public final void invoke(Object obj) {
                ((m3.d) obj).onVolumeChanged(p10);
            }
        });
    }

    @Override // b3.m3
    public long f() {
        c2();
        return y4.q0.X0(Z0(this.f4019q0));
    }

    @Override // b3.m3
    public void g(Surface surface) {
        int i10;
        c2();
        N1();
        U1(surface);
        if (surface == null) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        J1(i10, i10);
    }

    @Override // b3.m3
    public long getDuration() {
        c2();
        if (h()) {
            j3 j3Var = this.f4019q0;
            t.b bVar = j3Var.f4105b;
            j3Var.f4104a.l(bVar.f14942a, this.f4012n);
            return y4.q0.X0(this.f4012n.e(bVar.f14943b, bVar.f14944c));
        }
        return I();
    }

    @Override // b3.m3
    public boolean h() {
        c2();
        return this.f4019q0.f4105b.b();
    }

    @Override // b3.m3
    public long i() {
        c2();
        return y4.q0.X0(this.f4019q0.f4120q);
    }

    @Override // b3.m3
    public boolean j() {
        c2();
        return this.f4019q0.f4115l;
    }

    @Override // b3.m3
    public int k() {
        c2();
        if (this.f4019q0.f4104a.u()) {
            return this.f4023s0;
        }
        j3 j3Var = this.f4019q0;
        return j3Var.f4104a.f(j3Var.f4105b.f14942a);
    }

    @Override // b3.m3
    public int n() {
        c2();
        if (h()) {
            return this.f4019q0.f4105b.f14944c;
        }
        return -1;
    }

    @Override // b3.m3
    public void q(boolean z10) {
        c2();
        int p10 = this.A.p(z10, u());
        Y1(z10, p10, c1(z10, p10));
    }

    @Override // b3.m3
    public long r() {
        c2();
        if (h()) {
            j3 j3Var = this.f4019q0;
            j3Var.f4104a.l(j3Var.f4105b.f14942a, this.f4012n);
            j3 j3Var2 = this.f4019q0;
            if (j3Var2.f4106c == -9223372036854775807L) {
                return j3Var2.f4104a.r(z(), this.f4280a).d();
            }
            return this.f4012n.p() + y4.q0.X0(this.f4019q0.f4106c);
        }
        return f();
    }

    @Override // b3.m3
    public void release() {
        AudioTrack audioTrack;
        y4.r.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.7] [" + y4.q0.f32950e + "] [" + u1.b() + "]");
        c2();
        if (y4.q0.f32946a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.f4031z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.f4006k.k0()) {
            this.f4008l.k(10, new q.a() { // from class: b3.a1
                @Override // y4.q.a
                public final void invoke(Object obj) {
                    g1.o1((m3.d) obj);
                }
            });
        }
        this.f4008l.j();
        this.f4002i.k(null);
        this.f4024t.c(this.f4020r);
        j3 g10 = this.f4019q0.g(1);
        this.f4019q0 = g10;
        j3 b10 = g10.b(g10.f4105b);
        this.f4019q0 = b10;
        b10.f4119p = b10.f4121r;
        this.f4019q0.f4120q = 0L;
        this.f4020r.release();
        this.f4000h.f();
        N1();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (!this.f4009l0) {
            this.f4003i0 = m4.e.f25719c;
            this.f4011m0 = true;
            return;
        }
        android.support.v4.media.session.b.a(y4.a.e(null));
        throw null;
    }

    @Override // b3.m3
    public long s() {
        c2();
        if (h()) {
            j3 j3Var = this.f4019q0;
            if (j3Var.f4114k.equals(j3Var.f4105b)) {
                return y4.q0.X0(this.f4019q0.f4119p);
            }
            return getDuration();
        }
        return Y0();
    }

    @Override // b3.m3
    public void stop() {
        c2();
        V1(false);
    }

    @Override // b3.m3
    public int u() {
        c2();
        return this.f4019q0.f4108e;
    }

    @Override // b3.m3
    public l4 v() {
        c2();
        return this.f4019q0.f4112i.f31844d;
    }

    @Override // b3.m3
    public void x(m3.d dVar) {
        this.f4008l.c((m3.d) y4.a.e(dVar));
    }

    @Override // b3.m3
    public int y() {
        c2();
        if (h()) {
            return this.f4019q0.f4105b.f14943b;
        }
        return -1;
    }

    @Override // b3.m3
    public int z() {
        c2();
        int a12 = a1();
        if (a12 == -1) {
            return 0;
        }
        return a12;
    }
}
