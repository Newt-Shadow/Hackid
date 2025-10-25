package td;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public abstract class e1 extends f1 implements u0 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30641f = AtomicReferenceFieldUpdater.newUpdater(e1.class, Object.class, "_queue$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30642g = AtomicReferenceFieldUpdater.newUpdater(e1.class, Object.class, "_delayed$volatile");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f30643h = AtomicIntegerFieldUpdater.newUpdater(e1.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    /* loaded from: classes2.dex */
    private final class a extends b {

        /* renamed from: c  reason: collision with root package name */
        private final l f30644c;

        public a(long j10, l lVar) {
            super(j10);
            this.f30644c = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f30644c.i(e1.this, xc.t.f32733a);
        }

        @Override // td.e1.b
        public String toString() {
            return super.toString() + this.f30644c;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b implements Runnable, Comparable, a1, yd.p0 {
        private volatile Object _heap;

        /* renamed from: a  reason: collision with root package name */
        public long f30646a;

        /* renamed from: b  reason: collision with root package name */
        private int f30647b = -1;

        public b(long j10) {
            this.f30646a = j10;
        }

        @Override // yd.p0
        public yd.o0 b() {
            Object obj = this._heap;
            if (obj instanceof yd.o0) {
                return (yd.o0) obj;
            }
            return null;
        }

        @Override // td.a1
        public final void dispose() {
            yd.f0 f0Var;
            c cVar;
            yd.f0 f0Var2;
            synchronized (this) {
                Object obj = this._heap;
                f0Var = h1.f30651a;
                if (obj == f0Var) {
                    return;
                }
                if (obj instanceof c) {
                    cVar = (c) obj;
                } else {
                    cVar = null;
                }
                if (cVar != null) {
                    cVar.h(this);
                }
                f0Var2 = h1.f30651a;
                this._heap = f0Var2;
                xc.t tVar = xc.t.f32733a;
            }
        }

        @Override // yd.p0
        public void f(int i10) {
            this.f30647b = i10;
        }

        @Override // yd.p0
        public int i() {
            return this.f30647b;
        }

        @Override // yd.p0
        public void j(yd.o0 o0Var) {
            yd.f0 f0Var;
            boolean z10;
            Object obj = this._heap;
            f0Var = h1.f30651a;
            if (obj != f0Var) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                this._heap = o0Var;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // java.lang.Comparable
        /* renamed from: l */
        public int compareTo(b bVar) {
            int i10 = ((this.f30646a - bVar.f30646a) > 0L ? 1 : ((this.f30646a - bVar.f30646a) == 0L ? 0 : -1));
            if (i10 > 0) {
                return 1;
            }
            if (i10 < 0) {
                return -1;
            }
            return 0;
        }

        public final int m(long j10, c cVar, e1 e1Var) {
            yd.f0 f0Var;
            synchronized (this) {
                Object obj = this._heap;
                f0Var = h1.f30651a;
                if (obj == f0Var) {
                    return 2;
                }
                synchronized (cVar) {
                    b bVar = (b) cVar.b();
                    if (e1Var.X()) {
                        return 1;
                    }
                    if (bVar == null) {
                        cVar.f30648c = j10;
                    } else {
                        long j11 = bVar.f30646a;
                        if (j11 - j10 < 0) {
                            j10 = j11;
                        }
                        if (j10 - cVar.f30648c > 0) {
                            cVar.f30648c = j10;
                        }
                    }
                    long j12 = this.f30646a;
                    long j13 = cVar.f30648c;
                    if (j12 - j13 < 0) {
                        this.f30646a = j13;
                    }
                    cVar.a(this);
                    return 0;
                }
            }
        }

        public final boolean n(long j10) {
            if (j10 - this.f30646a >= 0) {
                return true;
            }
            return false;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f30646a + ']';
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends yd.o0 {

        /* renamed from: c  reason: collision with root package name */
        public long f30648c;

        public c(long j10) {
            this.f30648c = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean X() {
        if (f30643h.get(this) != 0) {
            return true;
        }
        return false;
    }

    private final void i1() {
        yd.f0 f0Var;
        yd.f0 f0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30641f;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f30641f;
                f0Var = h1.f30652b;
                if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater2, this, null, f0Var)) {
                    return;
                }
            } else if (!(obj instanceof yd.s)) {
                f0Var2 = h1.f30652b;
                if (obj == f0Var2) {
                    return;
                }
                yd.s sVar = new yd.s(8, true);
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                sVar.a((Runnable) obj);
                if (androidx.concurrent.futures.b.a(f30641f, this, obj, sVar)) {
                    return;
                }
            } else {
                ((yd.s) obj).d();
                return;
            }
        }
    }

    private final Runnable j1() {
        yd.f0 f0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30641f;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof yd.s)) {
                f0Var = h1.f30652b;
                if (obj == f0Var) {
                    return null;
                }
                if (androidx.concurrent.futures.b.a(f30641f, this, obj, null)) {
                    kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    return (Runnable) obj;
                }
            } else {
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                yd.s sVar = (yd.s) obj;
                Object m10 = sVar.m();
                if (m10 != yd.s.f33295h) {
                    return (Runnable) m10;
                }
                androidx.concurrent.futures.b.a(f30641f, this, obj, sVar.l());
            }
        }
    }

    private final void l1() {
        b bVar;
        boolean z10;
        c cVar = (c) f30642g.get(this);
        if (cVar != null && !cVar.e()) {
            td.c.a();
            long nanoTime = System.nanoTime();
            do {
                synchronized (cVar) {
                    yd.p0 b10 = cVar.b();
                    bVar = null;
                    if (b10 != null) {
                        b bVar2 = (b) b10;
                        if (bVar2.n(nanoTime)) {
                            z10 = m1(bVar2);
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            bVar = cVar.i(0);
                        }
                    }
                }
            } while (bVar != null);
        }
    }

    private final boolean m1(Runnable runnable) {
        yd.f0 f0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30641f;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (X()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.b.a(f30641f, this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof yd.s)) {
                f0Var = h1.f30652b;
                if (obj == f0Var) {
                    return false;
                }
                yd.s sVar = new yd.s(8, true);
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type java.lang.Runnable");
                sVar.a((Runnable) obj);
                sVar.a(runnable);
                if (androidx.concurrent.futures.b.a(f30641f, this, obj, sVar)) {
                    return true;
                }
            } else {
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                yd.s sVar2 = (yd.s) obj;
                int a10 = sVar2.a(runnable);
                if (a10 == 0) {
                    return true;
                }
                if (a10 != 1) {
                    if (a10 == 2) {
                        return false;
                    }
                } else {
                    androidx.concurrent.futures.b.a(f30641f, this, obj, sVar2.l());
                }
            }
        }
    }

    private final void r1() {
        b bVar;
        td.c.a();
        long nanoTime = System.nanoTime();
        while (true) {
            c cVar = (c) f30642g.get(this);
            if (cVar != null && (bVar = (b) cVar.j()) != null) {
                f1(nanoTime, bVar);
            } else {
                return;
            }
        }
    }

    private final int u1(long j10, b bVar) {
        if (X()) {
            return 1;
        }
        c cVar = (c) f30642g.get(this);
        if (cVar == null) {
            androidx.concurrent.futures.b.a(f30642g, this, null, new c(j10));
            Object obj = f30642g.get(this);
            kotlin.jvm.internal.m.b(obj);
            cVar = (c) obj;
        }
        return bVar.m(j10, cVar, this);
    }

    private final void v1(boolean z10) {
        f30643h.set(this, z10 ? 1 : 0);
    }

    private final boolean w1(b bVar) {
        b bVar2;
        c cVar = (c) f30642g.get(this);
        if (cVar != null) {
            bVar2 = (b) cVar.f();
        } else {
            bVar2 = null;
        }
        if (bVar2 == bVar) {
            return true;
        }
        return false;
    }

    @Override // td.d1
    protected long W0() {
        b bVar;
        long c10;
        yd.f0 f0Var;
        if (super.W0() == 0) {
            return 0L;
        }
        Object obj = f30641f.get(this);
        if (obj != null) {
            if (!(obj instanceof yd.s)) {
                f0Var = h1.f30652b;
                if (obj != f0Var) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            } else if (!((yd.s) obj).j()) {
                return 0L;
            }
        }
        c cVar = (c) f30642g.get(this);
        if (cVar == null || (bVar = (b) cVar.f()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = bVar.f30646a;
        td.c.a();
        c10 = od.i.c(j10 - System.nanoTime(), 0L);
        return c10;
    }

    @Override // td.d1
    public long b1() {
        if (c1()) {
            return 0L;
        }
        l1();
        Runnable j12 = j1();
        if (j12 != null) {
            j12.run();
            return 0L;
        }
        return W0();
    }

    @Override // td.u0
    public void h(long j10, l lVar) {
        long c10 = h1.c(j10);
        if (c10 < 4611686018427387903L) {
            td.c.a();
            long nanoTime = System.nanoTime();
            a aVar = new a(c10 + nanoTime, lVar);
            t1(nanoTime, aVar);
            p.a(lVar, aVar);
        }
    }

    public void k1(Runnable runnable) {
        l1();
        if (m1(runnable)) {
            g1();
        } else {
            q0.f30683i.k1(runnable);
        }
    }

    @Override // td.i0
    public final void q0(ad.i iVar, Runnable runnable) {
        k1(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean q1() {
        yd.f0 f0Var;
        if (!a1()) {
            return false;
        }
        c cVar = (c) f30642g.get(this);
        if (cVar != null && !cVar.e()) {
            return false;
        }
        Object obj = f30641f.get(this);
        if (obj != null) {
            if (!(obj instanceof yd.s)) {
                f0Var = h1.f30652b;
                if (obj != f0Var) {
                    return false;
                }
            } else {
                return ((yd.s) obj).j();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s1() {
        f30641f.set(this, null);
        f30642g.set(this, null);
    }

    @Override // td.d1
    public void shutdown() {
        o2.f30679a.c();
        v1(true);
        i1();
        do {
        } while (b1() <= 0);
        r1();
    }

    public final void t1(long j10, b bVar) {
        int u12 = u1(j10, bVar);
        if (u12 != 0) {
            if (u12 != 1) {
                if (u12 != 2) {
                    throw new IllegalStateException("unexpected result".toString());
                }
                return;
            }
            f1(j10, bVar);
        } else if (w1(bVar)) {
            g1();
        }
    }
}
