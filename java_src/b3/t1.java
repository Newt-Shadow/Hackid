package b3;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import b3.d3;
import b3.f2;
import b3.g4;
import b3.p3;
import b3.t3;
import b3.v;
import d4.r;
import d4.t;
import f3.n;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import o6.q;
import t3.a;
import w4.h0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t1 implements Handler.Callback, r.a, h0.a, d3.d, v.a, p3.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private h K;
    private long L;
    private int M;
    private boolean N;
    private a0 O;
    private long P;
    private long Q = -9223372036854775807L;

    /* renamed from: a  reason: collision with root package name */
    private final t3[] f4390a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f4391b;

    /* renamed from: c  reason: collision with root package name */
    private final u3[] f4392c;

    /* renamed from: d  reason: collision with root package name */
    private final w4.h0 f4393d;

    /* renamed from: e  reason: collision with root package name */
    private final w4.i0 f4394e;

    /* renamed from: f  reason: collision with root package name */
    private final d2 f4395f;

    /* renamed from: g  reason: collision with root package name */
    private final x4.e f4396g;

    /* renamed from: h  reason: collision with root package name */
    private final y4.n f4397h;

    /* renamed from: i  reason: collision with root package name */
    private final HandlerThread f4398i;

    /* renamed from: j  reason: collision with root package name */
    private final Looper f4399j;

    /* renamed from: k  reason: collision with root package name */
    private final g4.d f4400k;

    /* renamed from: l  reason: collision with root package name */
    private final g4.b f4401l;

    /* renamed from: m  reason: collision with root package name */
    private final long f4402m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f4403n;

    /* renamed from: o  reason: collision with root package name */
    private final v f4404o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList f4405p;

    /* renamed from: q  reason: collision with root package name */
    private final y4.d f4406q;

    /* renamed from: r  reason: collision with root package name */
    private final f f4407r;

    /* renamed from: s  reason: collision with root package name */
    private final o2 f4408s;

    /* renamed from: t  reason: collision with root package name */
    private final d3 f4409t;

    /* renamed from: u  reason: collision with root package name */
    private final c2 f4410u;

    /* renamed from: v  reason: collision with root package name */
    private final long f4411v;

    /* renamed from: w  reason: collision with root package name */
    private x3 f4412w;

    /* renamed from: x  reason: collision with root package name */
    private j3 f4413x;

    /* renamed from: y  reason: collision with root package name */
    private e f4414y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f4415z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements t3.a {
        a() {
        }

        @Override // b3.t3.a
        public void a() {
            t1.this.H = true;
        }

        @Override // b3.t3.a
        public void b() {
            t1.this.f4397h.e(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List f4417a;

        /* renamed from: b  reason: collision with root package name */
        private final d4.o0 f4418b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4419c;

        /* renamed from: d  reason: collision with root package name */
        private final long f4420d;

        /* synthetic */ b(List list, d4.o0 o0Var, int i10, long j10, a aVar) {
            this(list, o0Var, i10, j10);
        }

        private b(List list, d4.o0 o0Var, int i10, long j10) {
            this.f4417a = list;
            this.f4418b = o0Var;
            this.f4419c = i10;
            this.f4420d = j10;
        }
    }

    /* loaded from: classes.dex */
    private static class c {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        public final p3 f4421a;

        /* renamed from: b  reason: collision with root package name */
        public int f4422b;

        /* renamed from: c  reason: collision with root package name */
        public long f4423c;

        /* renamed from: d  reason: collision with root package name */
        public Object f4424d;

        public d(p3 p3Var) {
            this.f4421a = p3Var;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            boolean z10;
            boolean z11;
            Object obj = this.f4424d;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (dVar.f4424d == null) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 != z11) {
                if (obj == null) {
                    return 1;
                }
                return -1;
            } else if (obj == null) {
                return 0;
            } else {
                int i10 = this.f4422b - dVar.f4422b;
                if (i10 != 0) {
                    return i10;
                }
                return y4.q0.o(this.f4423c, dVar.f4423c);
            }
        }

        public void b(int i10, long j10, Object obj) {
            this.f4422b = i10;
            this.f4423c = j10;
            this.f4424d = obj;
        }
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4425a;

        /* renamed from: b  reason: collision with root package name */
        public j3 f4426b;

        /* renamed from: c  reason: collision with root package name */
        public int f4427c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f4428d;

        /* renamed from: e  reason: collision with root package name */
        public int f4429e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4430f;

        /* renamed from: g  reason: collision with root package name */
        public int f4431g;

        public e(j3 j3Var) {
            this.f4426b = j3Var;
        }

        public void b(int i10) {
            boolean z10;
            boolean z11 = this.f4425a;
            if (i10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f4425a = z11 | z10;
            this.f4427c += i10;
        }

        public void c(int i10) {
            this.f4425a = true;
            this.f4430f = true;
            this.f4431g = i10;
        }

        public void d(j3 j3Var) {
            boolean z10;
            boolean z11 = this.f4425a;
            if (this.f4426b != j3Var) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f4425a = z11 | z10;
            this.f4426b = j3Var;
        }

        public void e(int i10) {
            boolean z10 = true;
            if (this.f4428d && this.f4429e != 5) {
                if (i10 != 5) {
                    z10 = false;
                }
                y4.a.a(z10);
                return;
            }
            this.f4425a = true;
            this.f4428d = true;
            this.f4429e = i10;
        }
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final t.b f4432a;

        /* renamed from: b  reason: collision with root package name */
        public final long f4433b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4434c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4435d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f4436e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f4437f;

        public g(t.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f4432a = bVar;
            this.f4433b = j10;
            this.f4434c = j11;
            this.f4435d = z10;
            this.f4436e = z11;
            this.f4437f = z12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final g4 f4438a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4439b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4440c;

        public h(g4 g4Var, int i10, long j10) {
            this.f4438a = g4Var;
            this.f4439b = i10;
            this.f4440c = j10;
        }
    }

    public t1(t3[] t3VarArr, w4.h0 h0Var, w4.i0 i0Var, d2 d2Var, x4.e eVar, int i10, boolean z10, c3.a aVar, x3 x3Var, c2 c2Var, long j10, boolean z11, Looper looper, y4.d dVar, f fVar, c3.t3 t3Var, Looper looper2) {
        this.f4407r = fVar;
        this.f4390a = t3VarArr;
        this.f4393d = h0Var;
        this.f4394e = i0Var;
        this.f4395f = d2Var;
        this.f4396g = eVar;
        this.E = i10;
        this.F = z10;
        this.f4412w = x3Var;
        this.f4410u = c2Var;
        this.f4411v = j10;
        this.P = j10;
        this.A = z11;
        this.f4406q = dVar;
        this.f4402m = d2Var.c();
        this.f4403n = d2Var.b();
        j3 j11 = j3.j(i0Var);
        this.f4413x = j11;
        this.f4414y = new e(j11);
        this.f4392c = new u3[t3VarArr.length];
        for (int i11 = 0; i11 < t3VarArr.length; i11++) {
            t3VarArr[i11].l(i11, t3Var);
            this.f4392c[i11] = t3VarArr[i11].q();
        }
        this.f4404o = new v(this, dVar);
        this.f4405p = new ArrayList();
        this.f4391b = o6.o0.h();
        this.f4400k = new g4.d();
        this.f4401l = new g4.b();
        h0Var.b(this, eVar);
        this.N = true;
        y4.n a10 = dVar.a(looper, null);
        this.f4408s = new o2(aVar, a10);
        this.f4409t = new d3(this, aVar, a10, t3Var);
        if (looper2 != null) {
            this.f4398i = null;
            this.f4399j = looper2;
        } else {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
            this.f4398i = handlerThread;
            handlerThread.start();
            this.f4399j = handlerThread.getLooper();
        }
        this.f4397h = dVar.a(this.f4399j, this);
    }

    private Pair A(g4 g4Var) {
        long j10 = 0;
        if (g4Var.u()) {
            return Pair.create(j3.k(), 0L);
        }
        Pair n10 = g4Var.n(this.f4400k, this.f4401l, g4Var.e(this.F), -9223372036854775807L);
        t.b B = this.f4408s.B(g4Var, n10.first, 0L);
        long longValue = ((Long) n10.second).longValue();
        if (B.b()) {
            g4Var.l(B.f14942a, this.f4401l);
            if (B.f14944c == this.f4401l.n(B.f14943b)) {
                j10 = this.f4401l.j();
            }
            longValue = j10;
        }
        return Pair.create(B, Long.valueOf(longValue));
    }

    private void B0(boolean z10) {
        t.b bVar = this.f4408s.p().f4195f.f4242a;
        long E0 = E0(bVar, this.f4413x.f4121r, true, false);
        if (E0 != this.f4413x.f4121r) {
            j3 j3Var = this.f4413x;
            this.f4413x = L(bVar, E0, j3Var.f4106c, j3Var.f4107d, z10, 5);
        }
    }

    private long C() {
        return D(this.f4413x.f4119p);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac A[Catch: all -> 0x0147, TryCatch #1 {all -> 0x0147, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d3, B:40:0x00db, B:42:0x00e5, B:44:0x00f5, B:48:0x00ff, B:52:0x0111, B:56:0x011a), top: B:74:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void C0(b3.t1.h r19) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.C0(b3.t1$h):void");
    }

    private long D(long j10) {
        l2 j11 = this.f4408s.j();
        if (j11 == null) {
            return 0L;
        }
        return Math.max(0L, j10 - j11.y(this.L));
    }

    private long D0(t.b bVar, long j10, boolean z10) {
        boolean z11;
        if (this.f4408s.p() != this.f4408s.q()) {
            z11 = true;
        } else {
            z11 = false;
        }
        return E0(bVar, j10, z11, z10);
    }

    private void E(d4.r rVar) {
        if (!this.f4408s.v(rVar)) {
            return;
        }
        this.f4408s.y(this.L);
        V();
    }

    private long E0(t.b bVar, long j10, boolean z10, boolean z11) {
        i1();
        this.C = false;
        if (z11 || this.f4413x.f4108e == 3) {
            Z0(2);
        }
        l2 p10 = this.f4408s.p();
        l2 l2Var = p10;
        while (l2Var != null && !bVar.equals(l2Var.f4195f.f4242a)) {
            l2Var = l2Var.j();
        }
        if (z10 || p10 != l2Var || (l2Var != null && l2Var.z(j10) < 0)) {
            for (t3 t3Var : this.f4390a) {
                o(t3Var);
            }
            if (l2Var != null) {
                while (this.f4408s.p() != l2Var) {
                    this.f4408s.b();
                }
                this.f4408s.z(l2Var);
                l2Var.x(1000000000000L);
                r();
            }
        }
        if (l2Var != null) {
            this.f4408s.z(l2Var);
            if (!l2Var.f4193d) {
                l2Var.f4195f = l2Var.f4195f.b(j10);
            } else if (l2Var.f4194e) {
                long k10 = l2Var.f4190a.k(j10);
                l2Var.f4190a.r(k10 - this.f4402m, this.f4403n);
                j10 = k10;
            }
            s0(j10);
            V();
        } else {
            this.f4408s.f();
            s0(j10);
        }
        G(false);
        this.f4397h.e(2);
        return j10;
    }

    private void F(IOException iOException, int i10) {
        a0 g10 = a0.g(iOException, i10);
        l2 p10 = this.f4408s.p();
        if (p10 != null) {
            g10 = g10.e(p10.f4195f.f4242a);
        }
        y4.r.d("ExoPlayerImplInternal", "Playback error", g10);
        h1(false, false);
        this.f4413x = this.f4413x.e(g10);
    }

    private void F0(p3 p3Var) {
        if (p3Var.f() == -9223372036854775807L) {
            G0(p3Var);
        } else if (this.f4413x.f4104a.u()) {
            this.f4405p.add(new d(p3Var));
        } else {
            d dVar = new d(p3Var);
            g4 g4Var = this.f4413x.f4104a;
            if (u0(dVar, g4Var, g4Var, this.E, this.F, this.f4400k, this.f4401l)) {
                this.f4405p.add(dVar);
                Collections.sort(this.f4405p);
                return;
            }
            p3Var.k(false);
        }
    }

    private void G(boolean z10) {
        t.b bVar;
        long i10;
        l2 j10 = this.f4408s.j();
        if (j10 == null) {
            bVar = this.f4413x.f4105b;
        } else {
            bVar = j10.f4195f.f4242a;
        }
        boolean z11 = !this.f4413x.f4114k.equals(bVar);
        if (z11) {
            this.f4413x = this.f4413x.b(bVar);
        }
        j3 j3Var = this.f4413x;
        if (j10 == null) {
            i10 = j3Var.f4121r;
        } else {
            i10 = j10.i();
        }
        j3Var.f4119p = i10;
        this.f4413x.f4120q = C();
        if ((z11 || z10) && j10 != null && j10.f4193d) {
            k1(j10.n(), j10.o());
        }
    }

    private void G0(p3 p3Var) {
        if (p3Var.c() == this.f4399j) {
            n(p3Var);
            int i10 = this.f4413x.f4108e;
            if (i10 == 3 || i10 == 2) {
                this.f4397h.e(2);
                return;
            }
            return;
        }
        this.f4397h.j(15, p3Var).a();
    }

    /* JADX WARN: Not initialized variable reg: 25, insn: 0x0141: MOVE  (r5 I:??[long, double]) = (r25 I:??[long, double]), block:B:73:0x0140 */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void H(b3.g4 r28, boolean r29) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.H(b3.g4, boolean):void");
    }

    private void H0(final p3 p3Var) {
        Looper c10 = p3Var.c();
        if (!c10.getThread().isAlive()) {
            y4.r.i("TAG", "Trying to send message on a dead thread.");
            p3Var.k(false);
            return;
        }
        this.f4406q.a(c10, null).b(new Runnable() { // from class: b3.s1
            @Override // java.lang.Runnable
            public final void run() {
                t1.this.U(p3Var);
            }
        });
    }

    private void I(d4.r rVar) {
        if (!this.f4408s.v(rVar)) {
            return;
        }
        l2 j10 = this.f4408s.j();
        j10.p(this.f4404o.g().f4209a, this.f4413x.f4104a);
        k1(j10.n(), j10.o());
        if (j10 == this.f4408s.p()) {
            s0(j10.f4195f.f4243b);
            r();
            j3 j3Var = this.f4413x;
            t.b bVar = j3Var.f4105b;
            long j11 = j10.f4195f.f4243b;
            this.f4413x = L(bVar, j11, j3Var.f4106c, j11, false, 5);
        }
        V();
    }

    private void I0(long j10) {
        t3[] t3VarArr;
        for (t3 t3Var : this.f4390a) {
            if (t3Var.f() != null) {
                J0(t3Var, j10);
            }
        }
    }

    private void J(l3 l3Var, float f10, boolean z10, boolean z11) {
        t3[] t3VarArr;
        if (z10) {
            if (z11) {
                this.f4414y.b(1);
            }
            this.f4413x = this.f4413x.f(l3Var);
        }
        o1(l3Var.f4209a);
        for (t3 t3Var : this.f4390a) {
            if (t3Var != null) {
                t3Var.t(f10, l3Var.f4209a);
            }
        }
    }

    private void J0(t3 t3Var, long j10) {
        t3Var.m();
        if (t3Var instanceof m4.o) {
            ((m4.o) t3Var).i0(j10);
        }
    }

    private void K(l3 l3Var, boolean z10) {
        J(l3Var, l3Var.f4209a, true, z10);
    }

    private void K0(boolean z10, AtomicBoolean atomicBoolean) {
        t3[] t3VarArr;
        if (this.G != z10) {
            this.G = z10;
            if (!z10) {
                for (t3 t3Var : this.f4390a) {
                    if (!Q(t3Var) && this.f4391b.remove(t3Var)) {
                        t3Var.a();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    private j3 L(t.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        boolean z11;
        o6.q qVar;
        d4.u0 u0Var;
        w4.i0 i0Var;
        d4.u0 n10;
        w4.i0 o10;
        if (!this.N && j10 == this.f4413x.f4121r && bVar.equals(this.f4413x.f4105b)) {
            z11 = false;
        } else {
            z11 = true;
        }
        this.N = z11;
        r0();
        j3 j3Var = this.f4413x;
        d4.u0 u0Var2 = j3Var.f4111h;
        w4.i0 i0Var2 = j3Var.f4112i;
        ?? r12 = j3Var.f4113j;
        if (this.f4409t.s()) {
            l2 p10 = this.f4408s.p();
            if (p10 == null) {
                n10 = d4.u0.f14959d;
            } else {
                n10 = p10.n();
            }
            if (p10 == null) {
                o10 = this.f4394e;
            } else {
                o10 = p10.o();
            }
            o6.q v10 = v(o10.f31843c);
            if (p10 != null) {
                m2 m2Var = p10.f4195f;
                if (m2Var.f4244c != j11) {
                    p10.f4195f = m2Var.a(j11);
                }
            }
            u0Var = n10;
            i0Var = o10;
            qVar = v10;
        } else if (!bVar.equals(this.f4413x.f4105b)) {
            d4.u0 u0Var3 = d4.u0.f14959d;
            u0Var = u0Var3;
            i0Var = this.f4394e;
            qVar = o6.q.D();
        } else {
            qVar = r12;
            u0Var = u0Var2;
            i0Var = i0Var2;
        }
        if (z10) {
            this.f4414y.e(i10);
        }
        return this.f4413x.c(bVar, j10, j11, j12, C(), u0Var, i0Var, qVar);
    }

    private void L0(l3 l3Var) {
        this.f4397h.i(16);
        this.f4404o.c(l3Var);
    }

    private boolean M(t3 t3Var, l2 l2Var) {
        l2 j10 = l2Var.j();
        if (l2Var.f4195f.f4247f && j10.f4193d && ((t3Var instanceof m4.o) || (t3Var instanceof t3.f) || t3Var.B() >= j10.m())) {
            return true;
        }
        return false;
    }

    private void M0(b bVar) {
        this.f4414y.b(1);
        if (bVar.f4419c != -1) {
            this.K = new h(new q3(bVar.f4417a, bVar.f4418b), bVar.f4419c, bVar.f4420d);
        }
        H(this.f4409t.B(bVar.f4417a, bVar.f4418b), false);
    }

    private boolean N() {
        l2 q10 = this.f4408s.q();
        if (!q10.f4193d) {
            return false;
        }
        int i10 = 0;
        while (true) {
            t3[] t3VarArr = this.f4390a;
            if (i10 < t3VarArr.length) {
                t3 t3Var = t3VarArr[i10];
                d4.m0 m0Var = q10.f4192c[i10];
                if (t3Var.f() != m0Var || (m0Var != null && !t3Var.j() && !M(t3Var, q10))) {
                    break;
                }
                i10++;
            } else {
                return true;
            }
        }
        return false;
    }

    private static boolean O(boolean z10, t.b bVar, long j10, t.b bVar2, g4.b bVar3, long j11) {
        if (z10 || j10 != j11 || !bVar.f14942a.equals(bVar2.f14942a)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.f14943b)) {
            if (bVar3.k(bVar.f14943b, bVar.f14944c) == 4 || bVar3.k(bVar.f14943b, bVar.f14944c) == 2) {
                return false;
            }
            return true;
        } else if (!bVar2.b() || !bVar3.t(bVar2.f14943b)) {
            return false;
        } else {
            return true;
        }
    }

    private void O0(boolean z10) {
        if (z10 == this.I) {
            return;
        }
        this.I = z10;
        if (!z10 && this.f4413x.f4118o) {
            this.f4397h.e(2);
        }
    }

    private boolean P() {
        l2 j10 = this.f4408s.j();
        if (j10 == null || j10.k() == Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    private void P0(boolean z10) {
        this.A = z10;
        r0();
        if (this.B && this.f4408s.q() != this.f4408s.p()) {
            B0(true);
            G(false);
        }
    }

    private static boolean Q(t3 t3Var) {
        if (t3Var.getState() != 0) {
            return true;
        }
        return false;
    }

    private boolean R() {
        l2 p10 = this.f4408s.p();
        long j10 = p10.f4195f.f4246e;
        if (p10.f4193d && (j10 == -9223372036854775807L || this.f4413x.f4121r < j10 || !c1())) {
            return true;
        }
        return false;
    }

    private void R0(boolean z10, int i10, boolean z11, int i11) {
        this.f4414y.b(z11 ? 1 : 0);
        this.f4414y.c(i11);
        this.f4413x = this.f4413x.d(z10, i10);
        this.C = false;
        f0(z10);
        if (!c1()) {
            i1();
            m1();
            return;
        }
        int i12 = this.f4413x.f4108e;
        if (i12 == 3) {
            f1();
            this.f4397h.e(2);
        } else if (i12 == 2) {
            this.f4397h.e(2);
        }
    }

    private static boolean S(j3 j3Var, g4.b bVar) {
        t.b bVar2 = j3Var.f4105b;
        g4 g4Var = j3Var.f4104a;
        if (!g4Var.u() && !g4Var.l(bVar2.f14942a, bVar).f4058f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean T() {
        return Boolean.valueOf(this.f4415z);
    }

    private void T0(l3 l3Var) {
        L0(l3Var);
        K(this.f4404o.g(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(p3 p3Var) {
        try {
            n(p3Var);
        } catch (a0 e10) {
            y4.r.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void V() {
        boolean b12 = b1();
        this.D = b12;
        if (b12) {
            this.f4408s.j().d(this.L);
        }
        j1();
    }

    private void V0(int i10) {
        this.E = i10;
        if (!this.f4408s.G(this.f4413x.f4104a, i10)) {
            B0(true);
        }
        G(false);
    }

    private void W() {
        this.f4414y.d(this.f4413x);
        if (this.f4414y.f4425a) {
            this.f4407r.a(this.f4414y);
            this.f4414y = new e(this.f4413x);
        }
    }

    private void W0(x3 x3Var) {
        this.f4412w = x3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090 A[LOOP:1: B:27:0x0074->B:37:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0044 -> B:14:0x0045). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0073 -> B:27:0x0074). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void X(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.X(long, long):void");
    }

    private void X0(boolean z10) {
        this.F = z10;
        if (!this.f4408s.H(this.f4413x.f4104a, z10)) {
            B0(true);
        }
        G(false);
    }

    private void Y() {
        m2 o10;
        this.f4408s.y(this.L);
        if (this.f4408s.D() && (o10 = this.f4408s.o(this.L, this.f4413x)) != null) {
            l2 g10 = this.f4408s.g(this.f4392c, this.f4393d, this.f4395f.h(), this.f4409t, o10, this.f4394e);
            g10.f4190a.t(this, o10.f4243b);
            if (this.f4408s.p() == g10) {
                s0(o10.f4243b);
            }
            G(false);
        }
        if (this.D) {
            this.D = P();
            j1();
            return;
        }
        V();
    }

    private void Y0(d4.o0 o0Var) {
        this.f4414y.b(1);
        H(this.f4409t.C(o0Var), false);
    }

    private void Z() {
        boolean z10;
        boolean z11 = false;
        while (a1()) {
            if (z11) {
                W();
            }
            l2 l2Var = (l2) y4.a.e(this.f4408s.b());
            if (this.f4413x.f4105b.f14942a.equals(l2Var.f4195f.f4242a.f14942a)) {
                t.b bVar = this.f4413x.f4105b;
                if (bVar.f14943b == -1) {
                    t.b bVar2 = l2Var.f4195f.f4242a;
                    if (bVar2.f14943b == -1 && bVar.f14946e != bVar2.f14946e) {
                        z10 = true;
                        m2 m2Var = l2Var.f4195f;
                        t.b bVar3 = m2Var.f4242a;
                        long j10 = m2Var.f4243b;
                        this.f4413x = L(bVar3, j10, m2Var.f4244c, j10, !z10, 0);
                        r0();
                        m1();
                        z11 = true;
                    }
                }
            }
            z10 = false;
            m2 m2Var2 = l2Var.f4195f;
            t.b bVar32 = m2Var2.f4242a;
            long j102 = m2Var2.f4243b;
            this.f4413x = L(bVar32, j102, m2Var2.f4244c, j102, !z10, 0);
            r0();
            m1();
            z11 = true;
        }
    }

    private void Z0(int i10) {
        j3 j3Var = this.f4413x;
        if (j3Var.f4108e != i10) {
            if (i10 != 2) {
                this.Q = -9223372036854775807L;
            }
            this.f4413x = j3Var.g(i10);
        }
    }

    private void a0() {
        long j10;
        boolean z10;
        l2 q10 = this.f4408s.q();
        if (q10 == null) {
            return;
        }
        int i10 = 0;
        if (q10.j() != null && !this.B) {
            if (!N()) {
                return;
            }
            if (!q10.j().f4193d && this.L < q10.j().m()) {
                return;
            }
            w4.i0 o10 = q10.o();
            l2 c10 = this.f4408s.c();
            w4.i0 o11 = c10.o();
            g4 g4Var = this.f4413x.f4104a;
            n1(g4Var, c10.f4195f.f4242a, g4Var, q10.f4195f.f4242a, -9223372036854775807L, false);
            if (c10.f4193d && c10.f4190a.p() != -9223372036854775807L) {
                I0(c10.m());
                return;
            }
            for (int i11 = 0; i11 < this.f4390a.length; i11++) {
                boolean c11 = o10.c(i11);
                boolean c12 = o11.c(i11);
                if (c11 && !this.f4390a[i11].D()) {
                    if (this.f4392c[i11].h() == -2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    v3 v3Var = o10.f31842b[i11];
                    v3 v3Var2 = o11.f31842b[i11];
                    if (!c12 || !v3Var2.equals(v3Var) || z10) {
                        J0(this.f4390a[i11], c10.m());
                    }
                }
            }
        } else if (q10.f4195f.f4250i || this.B) {
            while (true) {
                t3[] t3VarArr = this.f4390a;
                if (i10 < t3VarArr.length) {
                    t3 t3Var = t3VarArr[i10];
                    d4.m0 m0Var = q10.f4192c[i10];
                    if (m0Var != null && t3Var.f() == m0Var && t3Var.j()) {
                        long j11 = q10.f4195f.f4246e;
                        if (j11 != -9223372036854775807L && j11 != Long.MIN_VALUE) {
                            j10 = q10.l() + q10.f4195f.f4246e;
                        } else {
                            j10 = -9223372036854775807L;
                        }
                        J0(t3Var, j10);
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private boolean a1() {
        l2 p10;
        l2 j10;
        if (!c1() || this.B || (p10 = this.f4408s.p()) == null || (j10 = p10.j()) == null || this.L < j10.m() || !j10.f4196g) {
            return false;
        }
        return true;
    }

    private void b0() {
        l2 q10 = this.f4408s.q();
        if (q10 != null && this.f4408s.p() != q10 && !q10.f4196g && o0()) {
            r();
        }
    }

    private boolean b1() {
        long y10;
        if (!P()) {
            return false;
        }
        l2 j10 = this.f4408s.j();
        long D = D(j10.k());
        if (j10 == this.f4408s.p()) {
            y10 = j10.y(this.L);
        } else {
            y10 = j10.y(this.L) - j10.f4195f.f4243b;
        }
        long j11 = y10;
        boolean g10 = this.f4395f.g(j11, D, this.f4404o.g().f4209a);
        if (!g10 && D < 500000) {
            if (this.f4402m > 0 || this.f4403n) {
                this.f4408s.p().f4190a.r(this.f4413x.f4121r, false);
                return this.f4395f.g(j11, D, this.f4404o.g().f4209a);
            }
            return g10;
        }
        return g10;
    }

    private void c0() {
        H(this.f4409t.i(), true);
    }

    private boolean c1() {
        j3 j3Var = this.f4413x;
        if (j3Var.f4115l && j3Var.f4116m == 0) {
            return true;
        }
        return false;
    }

    private void d0(c cVar) {
        this.f4414y.b(1);
        throw null;
    }

    private boolean d1(boolean z10) {
        long j10;
        boolean z11;
        boolean z12;
        if (this.J == 0) {
            return R();
        }
        if (!z10) {
            return false;
        }
        j3 j3Var = this.f4413x;
        if (!j3Var.f4110g) {
            return true;
        }
        if (e1(j3Var.f4104a, this.f4408s.p().f4195f.f4242a)) {
            j10 = this.f4410u.c();
        } else {
            j10 = -9223372036854775807L;
        }
        long j11 = j10;
        l2 j12 = this.f4408s.j();
        if (j12.q() && j12.f4195f.f4250i) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (j12.f4195f.f4242a.b() && !j12.f4193d) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z11 && !z12 && !this.f4395f.e(C(), this.f4404o.g().f4209a, this.C, j11)) {
            return false;
        }
        return true;
    }

    private void e0() {
        w4.y[] yVarArr;
        for (l2 p10 = this.f4408s.p(); p10 != null; p10 = p10.j()) {
            for (w4.y yVar : p10.o().f31843c) {
                if (yVar != null) {
                    yVar.r();
                }
            }
        }
    }

    private boolean e1(g4 g4Var, t.b bVar) {
        if (bVar.b() || g4Var.u()) {
            return false;
        }
        g4Var.r(g4Var.l(bVar.f14942a, this.f4401l).f4055c, this.f4400k);
        if (!this.f4400k.g()) {
            return false;
        }
        g4.d dVar = this.f4400k;
        if (!dVar.f4081i || dVar.f4078f == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    private void f0(boolean z10) {
        w4.y[] yVarArr;
        for (l2 p10 = this.f4408s.p(); p10 != null; p10 = p10.j()) {
            for (w4.y yVar : p10.o().f31843c) {
                if (yVar != null) {
                    yVar.f(z10);
                }
            }
        }
    }

    private void f1() {
        t3[] t3VarArr;
        this.C = false;
        this.f4404o.f();
        for (t3 t3Var : this.f4390a) {
            if (Q(t3Var)) {
                t3Var.start();
            }
        }
    }

    private void g0() {
        w4.y[] yVarArr;
        for (l2 p10 = this.f4408s.p(); p10 != null; p10 = p10.j()) {
            for (w4.y yVar : p10.o().f31843c) {
                if (yVar != null) {
                    yVar.t();
                }
            }
        }
    }

    private void h1(boolean z10, boolean z11) {
        boolean z12;
        if (!z10 && this.G) {
            z12 = false;
        } else {
            z12 = true;
        }
        q0(z12, false, true, false);
        this.f4414y.b(z11 ? 1 : 0);
        this.f4395f.i();
        Z0(1);
    }

    private void i1() {
        t3[] t3VarArr;
        this.f4404o.h();
        for (t3 t3Var : this.f4390a) {
            if (Q(t3Var)) {
                t(t3Var);
            }
        }
    }

    private void j0() {
        int i10;
        this.f4414y.b(1);
        q0(false, false, false, true);
        this.f4395f.a();
        if (this.f4413x.f4104a.u()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        Z0(i10);
        this.f4409t.v(this.f4396g.g());
        this.f4397h.e(2);
    }

    private void j1() {
        boolean z10;
        l2 j10 = this.f4408s.j();
        if (!this.D && (j10 == null || !j10.f4190a.isLoading())) {
            z10 = false;
        } else {
            z10 = true;
        }
        j3 j3Var = this.f4413x;
        if (z10 != j3Var.f4110g) {
            this.f4413x = j3Var.a(z10);
        }
    }

    private void k1(d4.u0 u0Var, w4.i0 i0Var) {
        this.f4395f.f(this.f4390a, u0Var, i0Var.f31843c);
    }

    private void l(b bVar, int i10) {
        this.f4414y.b(1);
        d3 d3Var = this.f4409t;
        if (i10 == -1) {
            i10 = d3Var.q();
        }
        H(d3Var.f(i10, bVar.f4417a, bVar.f4418b), false);
    }

    private void l0() {
        q0(true, false, true, false);
        this.f4395f.d();
        Z0(1);
        HandlerThread handlerThread = this.f4398i;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        synchronized (this) {
            this.f4415z = true;
            notifyAll();
        }
    }

    private void l1() {
        if (!this.f4413x.f4104a.u() && this.f4409t.s()) {
            Y();
            a0();
            b0();
            Z();
        }
    }

    private void m() {
        B0(true);
    }

    private void m0(int i10, int i11, d4.o0 o0Var) {
        this.f4414y.b(1);
        H(this.f4409t.z(i10, i11, o0Var), false);
    }

    private void m1() {
        long j10;
        boolean z10;
        l2 p10 = this.f4408s.p();
        if (p10 == null) {
            return;
        }
        if (p10.f4193d) {
            j10 = p10.f4190a.p();
        } else {
            j10 = -9223372036854775807L;
        }
        if (j10 != -9223372036854775807L) {
            s0(j10);
            if (j10 != this.f4413x.f4121r) {
                j3 j3Var = this.f4413x;
                this.f4413x = L(j3Var.f4105b, j10, j3Var.f4106c, j10, true, 5);
            }
        } else {
            v vVar = this.f4404o;
            if (p10 != this.f4408s.q()) {
                z10 = true;
            } else {
                z10 = false;
            }
            long i10 = vVar.i(z10);
            this.L = i10;
            long y10 = p10.y(i10);
            X(this.f4413x.f4121r, y10);
            this.f4413x.f4121r = y10;
        }
        this.f4413x.f4119p = this.f4408s.j().i();
        this.f4413x.f4120q = C();
        j3 j3Var2 = this.f4413x;
        if (j3Var2.f4115l && j3Var2.f4108e == 3 && e1(j3Var2.f4104a, j3Var2.f4105b) && this.f4413x.f4117n.f4209a == 1.0f) {
            float b10 = this.f4410u.b(w(), C());
            if (this.f4404o.g().f4209a != b10) {
                L0(this.f4413x.f4117n.d(b10));
                J(this.f4413x.f4117n, this.f4404o.g().f4209a, false, false);
            }
        }
    }

    private void n(p3 p3Var) {
        if (p3Var.j()) {
            return;
        }
        try {
            p3Var.g().y(p3Var.i(), p3Var.e());
        } finally {
            p3Var.k(true);
        }
    }

    private void n1(g4 g4Var, t.b bVar, g4 g4Var2, t.b bVar2, long j10, boolean z10) {
        Object obj;
        l3 l3Var;
        if (!e1(g4Var, bVar)) {
            if (bVar.b()) {
                l3Var = l3.f4205d;
            } else {
                l3Var = this.f4413x.f4117n;
            }
            if (!this.f4404o.g().equals(l3Var)) {
                L0(l3Var);
                J(this.f4413x.f4117n, l3Var.f4209a, false, false);
                return;
            }
            return;
        }
        g4Var.r(g4Var.l(bVar.f14942a, this.f4401l).f4055c, this.f4400k);
        this.f4410u.a((f2.g) y4.q0.j(this.f4400k.f4083k));
        if (j10 != -9223372036854775807L) {
            this.f4410u.e(y(g4Var, bVar.f14942a, j10));
            return;
        }
        Object obj2 = this.f4400k.f4073a;
        if (!g4Var2.u()) {
            obj = g4Var2.r(g4Var2.l(bVar2.f14942a, this.f4401l).f4055c, this.f4400k).f4073a;
        } else {
            obj = null;
        }
        if (!y4.q0.c(obj, obj2) || z10) {
            this.f4410u.e(-9223372036854775807L);
        }
    }

    private void o(t3 t3Var) {
        if (!Q(t3Var)) {
            return;
        }
        this.f4404o.a(t3Var);
        t(t3Var);
        t3Var.e();
        this.J--;
    }

    private boolean o0() {
        boolean z10;
        l2 q10 = this.f4408s.q();
        w4.i0 o10 = q10.o();
        int i10 = 0;
        boolean z11 = false;
        while (true) {
            t3[] t3VarArr = this.f4390a;
            if (i10 < t3VarArr.length) {
                t3 t3Var = t3VarArr[i10];
                if (Q(t3Var)) {
                    if (t3Var.f() != q10.f4192c[i10]) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!o10.c(i10) || z10) {
                        if (!t3Var.D()) {
                            t3Var.i(x(o10.f31843c[i10]), q10.f4192c[i10], q10.m(), q10.l());
                        } else if (t3Var.d()) {
                            o(t3Var);
                        } else {
                            z11 = true;
                        }
                    }
                }
                i10++;
            } else {
                return !z11;
            }
        }
    }

    private void o1(float f10) {
        w4.y[] yVarArr;
        for (l2 p10 = this.f4408s.p(); p10 != null; p10 = p10.j()) {
            for (w4.y yVar : p10.o().f31843c) {
                if (yVar != null) {
                    yVar.p(f10);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void p() {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.p():void");
    }

    private void p0() {
        boolean z10;
        float f10 = this.f4404o.g().f4209a;
        l2 q10 = this.f4408s.q();
        boolean z11 = true;
        for (l2 p10 = this.f4408s.p(); p10 != null && p10.f4193d; p10 = p10.j()) {
            w4.i0 v10 = p10.v(f10, this.f4413x.f4104a);
            if (!v10.a(p10.o())) {
                if (z11) {
                    l2 p11 = this.f4408s.p();
                    boolean z12 = this.f4408s.z(p11);
                    boolean[] zArr = new boolean[this.f4390a.length];
                    long b10 = p11.b(v10, this.f4413x.f4121r, z12, zArr);
                    j3 j3Var = this.f4413x;
                    if (j3Var.f4108e != 4 && b10 != j3Var.f4121r) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    j3 j3Var2 = this.f4413x;
                    this.f4413x = L(j3Var2.f4105b, b10, j3Var2.f4106c, j3Var2.f4107d, z10, 5);
                    if (z10) {
                        s0(b10);
                    }
                    boolean[] zArr2 = new boolean[this.f4390a.length];
                    int i10 = 0;
                    while (true) {
                        t3[] t3VarArr = this.f4390a;
                        if (i10 >= t3VarArr.length) {
                            break;
                        }
                        t3 t3Var = t3VarArr[i10];
                        boolean Q = Q(t3Var);
                        zArr2[i10] = Q;
                        d4.m0 m0Var = p11.f4192c[i10];
                        if (Q) {
                            if (m0Var != t3Var.f()) {
                                o(t3Var);
                            } else if (zArr[i10]) {
                                t3Var.C(this.L);
                            }
                        }
                        i10++;
                    }
                    s(zArr2);
                } else {
                    this.f4408s.z(p10);
                    if (p10.f4193d) {
                        p10.a(v10, Math.max(p10.f4195f.f4243b, p10.y(this.L)), false);
                    }
                }
                G(true);
                if (this.f4413x.f4108e != 4) {
                    V();
                    m1();
                    this.f4397h.e(2);
                    return;
                }
                return;
            }
            if (p10 == q10) {
                z11 = false;
            }
        }
    }

    private synchronized void p1(n6.s sVar, long j10) {
        long elapsedRealtime = this.f4406q.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!((Boolean) sVar.get()).booleanValue() && j10 > 0) {
            try {
                this.f4406q.b();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = elapsedRealtime - this.f4406q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void q(int i10, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        t3 t3Var = this.f4390a[i10];
        if (Q(t3Var)) {
            return;
        }
        l2 q10 = this.f4408s.q();
        if (q10 == this.f4408s.p()) {
            z11 = true;
        } else {
            z11 = false;
        }
        w4.i0 o10 = q10.o();
        v3 v3Var = o10.f31842b[i10];
        x1[] x10 = x(o10.f31843c[i10]);
        if (c1() && this.f4413x.f4108e == 3) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z10 && z12) {
            z13 = true;
        } else {
            z13 = false;
        }
        this.J++;
        this.f4391b.add(t3Var);
        t3Var.A(v3Var, x10, q10.f4192c[i10], this.L, z13, z11, q10.m(), q10.l());
        t3Var.y(11, new a());
        this.f4404o.b(t3Var);
        if (z12) {
            t3Var.start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q0(boolean r29, boolean r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.q0(boolean, boolean, boolean, boolean):void");
    }

    private void r() {
        s(new boolean[this.f4390a.length]);
    }

    private void r0() {
        boolean z10;
        l2 p10 = this.f4408s.p();
        if (p10 != null && p10.f4195f.f4249h && this.A) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.B = z10;
    }

    private void s(boolean[] zArr) {
        l2 q10 = this.f4408s.q();
        w4.i0 o10 = q10.o();
        for (int i10 = 0; i10 < this.f4390a.length; i10++) {
            if (!o10.c(i10) && this.f4391b.remove(this.f4390a[i10])) {
                this.f4390a[i10].a();
            }
        }
        for (int i11 = 0; i11 < this.f4390a.length; i11++) {
            if (o10.c(i11)) {
                q(i11, zArr[i11]);
            }
        }
        q10.f4196g = true;
    }

    private void s0(long j10) {
        long z10;
        t3[] t3VarArr;
        l2 p10 = this.f4408s.p();
        if (p10 == null) {
            z10 = j10 + 1000000000000L;
        } else {
            z10 = p10.z(j10);
        }
        this.L = z10;
        this.f4404o.d(z10);
        for (t3 t3Var : this.f4390a) {
            if (Q(t3Var)) {
                t3Var.C(this.L);
            }
        }
        e0();
    }

    private void t(t3 t3Var) {
        if (t3Var.getState() == 2) {
            t3Var.stop();
        }
    }

    private static void t0(g4 g4Var, d dVar, g4.d dVar2, g4.b bVar) {
        long j10;
        int i10 = g4Var.r(g4Var.l(dVar.f4424d, bVar).f4055c, dVar2).f4088p;
        Object obj = g4Var.k(i10, bVar, true).f4054b;
        long j11 = bVar.f4056d;
        if (j11 != -9223372036854775807L) {
            j10 = j11 - 1;
        } else {
            j10 = Long.MAX_VALUE;
        }
        dVar.b(i10, j10, obj);
    }

    private static boolean u0(d dVar, g4 g4Var, g4 g4Var2, int i10, boolean z10, g4.d dVar2, g4.b bVar) {
        long A0;
        Object obj = dVar.f4424d;
        if (obj == null) {
            if (dVar.f4421a.f() == Long.MIN_VALUE) {
                A0 = -9223372036854775807L;
            } else {
                A0 = y4.q0.A0(dVar.f4421a.f());
            }
            Pair x02 = x0(g4Var, new h(dVar.f4421a.h(), dVar.f4421a.d(), A0), false, i10, z10, dVar2, bVar);
            if (x02 == null) {
                return false;
            }
            dVar.b(g4Var.f(x02.first), ((Long) x02.second).longValue(), x02.first);
            if (dVar.f4421a.f() == Long.MIN_VALUE) {
                t0(g4Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int f10 = g4Var.f(obj);
        if (f10 == -1) {
            return false;
        }
        if (dVar.f4421a.f() == Long.MIN_VALUE) {
            t0(g4Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f4422b = f10;
        g4Var2.l(dVar.f4424d, bVar);
        if (bVar.f4058f && g4Var2.r(bVar.f4055c, dVar2).f4087o == g4Var2.f(dVar.f4424d)) {
            Pair n10 = g4Var.n(dVar2, bVar, g4Var.l(dVar.f4424d, bVar).f4055c, dVar.f4423c + bVar.q());
            dVar.b(g4Var.f(n10.first), ((Long) n10.second).longValue(), n10.first);
        }
        return true;
    }

    private o6.q v(w4.y[] yVarArr) {
        q.a aVar = new q.a();
        boolean z10 = false;
        for (w4.y yVar : yVarArr) {
            if (yVar != null) {
                t3.a aVar2 = yVar.h(0).f4512j;
                if (aVar2 == null) {
                    aVar.a(new t3.a(new a.b[0]));
                } else {
                    aVar.a(aVar2);
                    z10 = true;
                }
            }
        }
        if (z10) {
            return aVar.k();
        }
        return o6.q.D();
    }

    private void v0(g4 g4Var, g4 g4Var2) {
        if (g4Var.u() && g4Var2.u()) {
            return;
        }
        for (int size = this.f4405p.size() - 1; size >= 0; size--) {
            if (!u0((d) this.f4405p.get(size), g4Var, g4Var2, this.E, this.F, this.f4400k, this.f4401l)) {
                ((d) this.f4405p.get(size)).f4421a.k(false);
                this.f4405p.remove(size);
            }
        }
        Collections.sort(this.f4405p);
    }

    private long w() {
        j3 j3Var = this.f4413x;
        return y(j3Var.f4104a, j3Var.f4105b.f14942a, j3Var.f4121r);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static b3.t1.g w0(b3.g4 r30, b3.j3 r31, b3.t1.h r32, b3.o2 r33, int r34, boolean r35, b3.g4.d r36, b3.g4.b r37) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.t1.w0(b3.g4, b3.j3, b3.t1$h, b3.o2, int, boolean, b3.g4$d, b3.g4$b):b3.t1$g");
    }

    private static x1[] x(w4.y yVar) {
        int i10;
        if (yVar != null) {
            i10 = yVar.length();
        } else {
            i10 = 0;
        }
        x1[] x1VarArr = new x1[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            x1VarArr[i11] = yVar.h(i11);
        }
        return x1VarArr;
    }

    private static Pair x0(g4 g4Var, h hVar, boolean z10, int i10, boolean z11, g4.d dVar, g4.b bVar) {
        g4 g4Var2;
        Pair n10;
        Object y02;
        g4 g4Var3 = hVar.f4438a;
        if (g4Var.u()) {
            return null;
        }
        if (g4Var3.u()) {
            g4Var2 = g4Var;
        } else {
            g4Var2 = g4Var3;
        }
        try {
            n10 = g4Var2.n(dVar, bVar, hVar.f4439b, hVar.f4440c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (g4Var.equals(g4Var2)) {
            return n10;
        }
        if (g4Var.f(n10.first) != -1) {
            if (g4Var2.l(n10.first, bVar).f4058f && g4Var2.r(bVar.f4055c, dVar).f4087o == g4Var2.f(n10.first)) {
                return g4Var.n(dVar, bVar, g4Var.l(n10.first, bVar).f4055c, hVar.f4440c);
            }
            return n10;
        }
        if (z10 && (y02 = y0(dVar, bVar, i10, z11, n10.first, g4Var2, g4Var)) != null) {
            return g4Var.n(dVar, bVar, g4Var.l(y02, bVar).f4055c, -9223372036854775807L);
        }
        return null;
    }

    private long y(g4 g4Var, Object obj, long j10) {
        g4Var.r(g4Var.l(obj, this.f4401l).f4055c, this.f4400k);
        g4.d dVar = this.f4400k;
        if (dVar.f4078f != -9223372036854775807L && dVar.g()) {
            g4.d dVar2 = this.f4400k;
            if (dVar2.f4081i) {
                return y4.q0.A0(dVar2.c() - this.f4400k.f4078f) - (j10 + this.f4401l.q());
            }
        }
        return -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object y0(g4.d dVar, g4.b bVar, int i10, boolean z10, Object obj, g4 g4Var, g4 g4Var2) {
        int f10 = g4Var.f(obj);
        int m10 = g4Var.m();
        int i11 = f10;
        int i12 = -1;
        for (int i13 = 0; i13 < m10 && i12 == -1; i13++) {
            i11 = g4Var.h(i11, bVar, dVar, i10, z10);
            if (i11 == -1) {
                break;
            }
            i12 = g4Var2.f(g4Var.q(i11));
        }
        if (i12 == -1) {
            return null;
        }
        return g4Var2.q(i12);
    }

    private long z() {
        l2 q10 = this.f4408s.q();
        if (q10 == null) {
            return 0L;
        }
        long l10 = q10.l();
        if (!q10.f4193d) {
            return l10;
        }
        int i10 = 0;
        while (true) {
            t3[] t3VarArr = this.f4390a;
            if (i10 < t3VarArr.length) {
                if (Q(t3VarArr[i10]) && this.f4390a[i10].f() == q10.f4192c[i10]) {
                    long B = this.f4390a[i10].B();
                    if (B == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    l10 = Math.max(B, l10);
                }
                i10++;
            } else {
                return l10;
            }
        }
    }

    private void z0(long j10, long j11) {
        this.f4397h.g(2, j10 + j11);
    }

    public void A0(g4 g4Var, int i10, long j10) {
        this.f4397h.j(3, new h(g4Var, i10, j10)).a();
    }

    public Looper B() {
        return this.f4399j;
    }

    public void N0(List list, int i10, long j10, d4.o0 o0Var) {
        this.f4397h.j(17, new b(list, o0Var, i10, j10, null)).a();
    }

    public void Q0(boolean z10, int i10) {
        this.f4397h.a(1, z10 ? 1 : 0, i10).a();
    }

    public void S0(l3 l3Var) {
        this.f4397h.j(4, l3Var).a();
    }

    public void U0(int i10) {
        this.f4397h.a(11, i10, 0).a();
    }

    @Override // w4.h0.a
    public void b() {
        this.f4397h.e(10);
    }

    @Override // b3.d3.d
    public void c() {
        this.f4397h.e(22);
    }

    @Override // b3.p3.a
    public synchronized void d(p3 p3Var) {
        if (!this.f4415z && this.f4399j.getThread().isAlive()) {
            this.f4397h.j(14, p3Var).a();
            return;
        }
        y4.r.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        p3Var.k(false);
    }

    @Override // d4.r.a
    public void g(d4.r rVar) {
        this.f4397h.j(8, rVar).a();
    }

    public void g1() {
        this.f4397h.c(6).a();
    }

    @Override // d4.n0.a
    /* renamed from: h0 */
    public void h(d4.r rVar) {
        this.f4397h.j(9, rVar).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10;
        l2 q10;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    j0();
                    break;
                case 1:
                    if (message.arg1 != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    R0(z10, message.arg2, true, 1);
                    break;
                case 2:
                    p();
                    break;
                case 3:
                    C0((h) message.obj);
                    break;
                case 4:
                    T0((l3) message.obj);
                    break;
                case 5:
                    W0((x3) message.obj);
                    break;
                case 6:
                    h1(false, true);
                    break;
                case 7:
                    l0();
                    return true;
                case 8:
                    I((d4.r) message.obj);
                    break;
                case 9:
                    E((d4.r) message.obj);
                    break;
                case 10:
                    p0();
                    break;
                case 11:
                    V0(message.arg1);
                    break;
                case 12:
                    if (message.arg1 != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    X0(z11);
                    break;
                case 13:
                    if (message.arg1 != 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    K0(z12, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    F0((p3) message.obj);
                    break;
                case 15:
                    H0((p3) message.obj);
                    break;
                case 16:
                    K((l3) message.obj, false);
                    break;
                case 17:
                    M0((b) message.obj);
                    break;
                case 18:
                    l((b) message.obj, message.arg1);
                    break;
                case C1415p9.C /* 19 */:
                    android.support.v4.media.session.b.a(message.obj);
                    d0(null);
                    break;
                case 20:
                    m0(message.arg1, message.arg2, (d4.o0) message.obj);
                    break;
                case 21:
                    Y0((d4.o0) message.obj);
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    c0();
                    break;
                case Build.API_LEVELS.API_23 /* 23 */:
                    if (message.arg1 != 0) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    P0(z13);
                    break;
                case Build.API_LEVELS.API_24 /* 24 */:
                    if (message.arg1 == 1) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    O0(z14);
                    break;
                case 25:
                    m();
                    break;
                default:
                    return false;
            }
        } catch (a0 e10) {
            e = e10;
            if (e.f3767i == 1 && (q10 = this.f4408s.q()) != null) {
                e = e.e(q10.f4195f.f4242a);
            }
            if (e.f3773o && this.O == null) {
                y4.r.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.O = e;
                y4.n nVar = this.f4397h;
                nVar.h(nVar.j(25, e));
            } else {
                a0 a0Var = this.O;
                if (a0Var != null) {
                    a0Var.addSuppressed(e);
                    e = this.O;
                }
                y4.r.d("ExoPlayerImplInternal", "Playback error", e);
                h1(true, false);
                this.f4413x = this.f4413x.e(e);
            }
        } catch (e3 e11) {
            int i12 = e11.f3865b;
            if (i12 == 1) {
                if (e11.f3864a) {
                    i10 = 3001;
                } else {
                    i10 = 3003;
                }
            } else {
                if (i12 == 4) {
                    if (e11.f3864a) {
                        i10 = 3002;
                    } else {
                        i10 = 3004;
                    }
                }
                F(e11, i11);
            }
            i11 = i10;
            F(e11, i11);
        } catch (d4.b e12) {
            F(e12, 1002);
        } catch (n.a e13) {
            F(e13, e13.f15723a);
        } catch (RuntimeException e14) {
            a0 i13 = a0.i(e14, ((e14 instanceof IllegalStateException) || (e14 instanceof IllegalArgumentException)) ? 1004 : 1004);
            y4.r.d("ExoPlayerImplInternal", "Playback error", i13);
            h1(true, false);
            this.f4413x = this.f4413x.e(i13);
        } catch (x4.k e15) {
            F(e15, e15.f32348a);
        } catch (IOException e16) {
            F(e16, 2000);
        }
        W();
        return true;
    }

    public void i0() {
        this.f4397h.c(0).a();
    }

    public synchronized boolean k0() {
        if (!this.f4415z && this.f4399j.getThread().isAlive()) {
            this.f4397h.e(7);
            p1(new n6.s() { // from class: b3.r1
                @Override // n6.s
                public final Object get() {
                    Boolean T;
                    T = t1.this.T();
                    return T;
                }
            }, this.f4411v);
            return this.f4415z;
        }
        return true;
    }

    public void n0(int i10, int i11, d4.o0 o0Var) {
        this.f4397h.f(20, i10, i11, o0Var).a();
    }

    @Override // b3.v.a
    public void onPlaybackParametersChanged(l3 l3Var) {
        this.f4397h.j(16, l3Var).a();
    }

    public void u(long j10) {
        this.P = j10;
    }
}
