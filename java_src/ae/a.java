package ae;

import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.m;
import td.p0;
import xc.t;
import yd.a0;
import yd.f0;
/* loaded from: classes2.dex */
public final class a implements Executor, Closeable {

    /* renamed from: h  reason: collision with root package name */
    public static final C0009a f296h = new C0009a(null);

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f297i = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack$volatile");

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f298j = AtomicLongFieldUpdater.newUpdater(a.class, "controlState$volatile");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f299k = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated$volatile");

    /* renamed from: l  reason: collision with root package name */
    public static final f0 f300l = new f0("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* renamed from: a  reason: collision with root package name */
    public final int f301a;

    /* renamed from: b  reason: collision with root package name */
    public final int f302b;

    /* renamed from: c  reason: collision with root package name */
    public final long f303c;
    private volatile /* synthetic */ long controlState$volatile;

    /* renamed from: d  reason: collision with root package name */
    public final String f304d;

    /* renamed from: e  reason: collision with root package name */
    public final ae.d f305e;

    /* renamed from: f  reason: collision with root package name */
    public final ae.d f306f;

    /* renamed from: g  reason: collision with root package name */
    public final a0 f307g;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* renamed from: ae.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0009a {
        private C0009a() {
        }

        public /* synthetic */ C0009a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f308a;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.f320c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.f319b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.f318a.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.f321d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.f322e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f308a = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f318a = new d("CPU_ACQUIRED", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final d f319b = new d("BLOCKING", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final d f320c = new d("PARKING", 2);

        /* renamed from: d  reason: collision with root package name */
        public static final d f321d = new d("DORMANT", 3);

        /* renamed from: e  reason: collision with root package name */
        public static final d f322e = new d("TERMINATED", 4);

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ d[] f323f;

        /* renamed from: g  reason: collision with root package name */
        private static final /* synthetic */ cd.a f324g;

        static {
            d[] a10 = a();
            f323f = a10;
            f324g = cd.b.a(a10);
        }

        private d(String str, int i10) {
        }

        private static final /* synthetic */ d[] a() {
            return new d[]{f318a, f319b, f320c, f321d, f322e};
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) f323f.clone();
        }
    }

    public a(int i10, int i11, long j10, String str) {
        boolean z10;
        boolean z11;
        boolean z12;
        this.f301a = i10;
        this.f302b = i11;
        this.f303c = j10;
        this.f304d = str;
        if (i10 >= 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i11 >= i10) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                if (i11 <= 2097150) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (z12) {
                    if (j10 > 0) {
                        this.f305e = new ae.d();
                        this.f306f = new ae.d();
                        this.f307g = new a0((i10 + 1) * 2);
                        this.controlState$volatile = i10 << 42;
                        this._isTerminated$volatile = 0;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
                }
                throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
    }

    private final void P(long j10, boolean z10) {
        if (z10 || o0() || d0(j10)) {
            return;
        }
        o0();
    }

    private final h X(c cVar, h hVar, boolean z10) {
        if (cVar == null) {
            return hVar;
        }
        d dVar = cVar.f312c;
        if (dVar == d.f322e) {
            return hVar;
        }
        if (!hVar.f335b && dVar == d.f319b) {
            return hVar;
        }
        cVar.f316g = true;
        return cVar.f310a.a(hVar, z10);
    }

    public static final /* synthetic */ AtomicLongFieldUpdater a() {
        return f298j;
    }

    private final boolean b(h hVar) {
        if (hVar.f335b) {
            return this.f306f.a(hVar);
        }
        return this.f305e.a(hVar);
    }

    private final int c() {
        int b10;
        boolean z10;
        synchronized (this.f307g) {
            if (isTerminated()) {
                return -1;
            }
            long j10 = f298j.get(this);
            int i10 = (int) (j10 & 2097151);
            boolean z11 = false;
            b10 = od.i.b(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
            if (b10 >= this.f301a) {
                return 0;
            }
            if (i10 >= this.f302b) {
                return 0;
            }
            int i11 = ((int) (a().get(this) & 2097151)) + 1;
            if (i11 > 0 && this.f307g.b(i11) == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                c cVar = new c(this, i11);
                this.f307g.c(i11, cVar);
                if (i11 == ((int) (2097151 & f298j.incrementAndGet(this)))) {
                    z11 = true;
                }
                if (z11) {
                    int i12 = b10 + 1;
                    cVar.start();
                    return i12;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final boolean d0(long j10) {
        int b10;
        b10 = od.i.b(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0);
        if (b10 < this.f301a) {
            int c10 = c();
            if (c10 == 1 && this.f301a > 1) {
                c();
            }
            if (c10 > 0) {
                return true;
            }
        }
        return false;
    }

    private final c g() {
        c cVar;
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof c) {
            cVar = (c) currentThread;
        } else {
            cVar = null;
        }
        if (cVar == null || !m.a(a.this, this)) {
            return null;
        }
        return cVar;
    }

    public static /* synthetic */ void j(a aVar, Runnable runnable, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        aVar.h(runnable, z10, z11);
    }

    static /* synthetic */ boolean k0(a aVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f298j.get(aVar);
        }
        return aVar.d0(j10);
    }

    private final boolean o0() {
        c v10;
        do {
            v10 = v();
            if (v10 == null) {
                return false;
            }
        } while (!c.f309i.compareAndSet(v10, -1, 0));
        LockSupport.unpark(v10);
        return true;
    }

    private final int u(c cVar) {
        Object g10 = cVar.g();
        while (g10 != f300l) {
            if (g10 == null) {
                return 0;
            }
            c cVar2 = (c) g10;
            int f10 = cVar2.f();
            if (f10 != 0) {
                return f10;
            }
            g10 = cVar2.g();
        }
        return -1;
    }

    private final c v() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f297i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            c cVar = (c) this.f307g.b((int) (2097151 & j10));
            if (cVar == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int u10 = u(cVar);
            if (u10 >= 0 && f297i.compareAndSet(this, j10, u10 | j11)) {
                cVar.o(f300l);
                return cVar;
            }
        }
    }

    public final void E(h hVar) {
        try {
            hVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void H(long j10) {
        int i10;
        h hVar;
        if (!f299k.compareAndSet(this, 0, 1)) {
            return;
        }
        c g10 = g();
        synchronized (this.f307g) {
            i10 = (int) (a().get(this) & 2097151);
        }
        if (1 <= i10) {
            int i11 = 1;
            while (true) {
                Object b10 = this.f307g.b(i11);
                m.b(b10);
                c cVar = (c) b10;
                if (cVar != g10) {
                    while (cVar.getState() != Thread.State.TERMINATED) {
                        LockSupport.unpark(cVar);
                        cVar.join(j10);
                    }
                    cVar.f310a.j(this.f306f);
                }
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        this.f306f.b();
        this.f305e.b();
        while (true) {
            if (g10 != null) {
                hVar = g10.e(true);
                if (hVar != null) {
                    continue;
                    E(hVar);
                }
            }
            hVar = (h) this.f305e.e();
            if (hVar == null && (hVar = (h) this.f306f.e()) == null) {
                break;
            }
            E(hVar);
        }
        if (g10 != null) {
            g10.r(d.f322e);
        }
        f297i.set(this, 0L);
        f298j.set(this, 0L);
    }

    public final void W() {
        if (o0() || k0(this, 0L, 1, null)) {
            return;
        }
        o0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        H(10000L);
    }

    public final h e(Runnable runnable, boolean z10) {
        long a10 = j.f342f.a();
        if (runnable instanceof h) {
            h hVar = (h) runnable;
            hVar.f334a = a10;
            hVar.f335b = z10;
            return hVar;
        }
        return j.b(runnable, a10, z10);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        j(this, runnable, false, false, 6, null);
    }

    public final void h(Runnable runnable, boolean z10, boolean z11) {
        long j10;
        boolean z12;
        td.c.a();
        h e10 = e(runnable, z10);
        boolean z13 = e10.f335b;
        if (z13) {
            j10 = f298j.addAndGet(this, 2097152L);
        } else {
            j10 = 0;
        }
        c g10 = g();
        h X = X(g10, e10, z11);
        if (X != null && !b(X)) {
            throw new RejectedExecutionException(this.f304d + " was terminated");
        }
        if (z11 && g10 != null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z13) {
            P(j10, z12);
        } else if (z12) {
        } else {
            W();
        }
    }

    public final boolean isTerminated() {
        if (f299k.get(this) != 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int a10 = this.f307g.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < a10; i15++) {
            c cVar = (c) this.f307g.b(i15);
            if (cVar != null) {
                int i16 = cVar.f310a.i();
                int i17 = b.f308a[cVar.f312c.ordinal()];
                if (i17 != 1) {
                    if (i17 != 2) {
                        if (i17 != 3) {
                            if (i17 != 4) {
                                if (i17 == 5) {
                                    i14++;
                                } else {
                                    throw new xc.i();
                                }
                            } else {
                                i13++;
                                if (i16 > 0) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(i16);
                                    sb2.append('d');
                                    arrayList.add(sb2.toString());
                                }
                            }
                        } else {
                            i10++;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(i16);
                            sb3.append('c');
                            arrayList.add(sb3.toString());
                        }
                    } else {
                        i11++;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(i16);
                        sb4.append('b');
                        arrayList.add(sb4.toString());
                    }
                } else {
                    i12++;
                }
            }
        }
        long j10 = f298j.get(this);
        return this.f304d + '@' + p0.b(this) + "[Pool Size {core = " + this.f301a + ", max = " + this.f302b + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f305e.c() + ", global blocking queue size = " + this.f306f.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f301a - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    public final boolean w(c cVar) {
        long j10;
        int f10;
        if (cVar.g() == f300l) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f297i;
            do {
                j10 = atomicLongFieldUpdater.get(this);
                f10 = cVar.f();
                cVar.o(this.f307g.b((int) (2097151 & j10)));
            } while (!f297i.compareAndSet(this, j10, ((2097152 + j10) & (-2097152)) | f10));
            return true;
        }
        return false;
    }

    public final void x(c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f297i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int i12 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (i12 == i10) {
                if (i11 == 0) {
                    i12 = u(cVar);
                } else {
                    i12 = i11;
                }
            }
            if (i12 >= 0 && f297i.compareAndSet(this, j10, j11 | i12)) {
                return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class c extends Thread {

        /* renamed from: i  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f309i = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl$volatile");

        /* renamed from: a  reason: collision with root package name */
        public final l f310a;

        /* renamed from: b  reason: collision with root package name */
        private final c0 f311b;

        /* renamed from: c  reason: collision with root package name */
        public d f312c;

        /* renamed from: d  reason: collision with root package name */
        private long f313d;

        /* renamed from: e  reason: collision with root package name */
        private long f314e;

        /* renamed from: f  reason: collision with root package name */
        private int f315f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f316g;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        private c() {
            setDaemon(true);
            setContextClassLoader(a.this.getClass().getClassLoader());
            this.f310a = new l();
            this.f311b = new c0();
            this.f312c = d.f321d;
            this.nextParkedWorker = a.f300l;
            int nanoTime = (int) System.nanoTime();
            this.f315f = nanoTime == 0 ? 42 : nanoTime;
        }

        private final void b(h hVar) {
            this.f313d = 0L;
            if (this.f312c == d.f320c) {
                this.f312c = d.f319b;
            }
            if (hVar.f335b) {
                if (r(d.f319b)) {
                    a.this.W();
                }
                a.this.E(hVar);
                a.a().addAndGet(a.this, -2097152L);
                if (this.f312c != d.f322e) {
                    this.f312c = d.f321d;
                    return;
                }
                return;
            }
            a.this.E(hVar);
        }

        private final h c(boolean z10) {
            boolean z11;
            h l10;
            h l11;
            if (z10) {
                if (j(a.this.f301a * 2) == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11 && (l11 = l()) != null) {
                    return l11;
                }
                h k10 = this.f310a.k();
                if (k10 != null) {
                    return k10;
                }
                if (!z11 && (l10 = l()) != null) {
                    return l10;
                }
            } else {
                h l12 = l();
                if (l12 != null) {
                    return l12;
                }
            }
            return s(3);
        }

        private final h d() {
            h l10 = this.f310a.l();
            if (l10 == null) {
                h hVar = (h) a.this.f306f.e();
                if (hVar == null) {
                    return s(1);
                }
                return hVar;
            }
            return l10;
        }

        private final boolean i() {
            if (this.nextParkedWorker != a.f300l) {
                return true;
            }
            return false;
        }

        private final void k() {
            if (this.f313d == 0) {
                this.f313d = System.nanoTime() + a.this.f303c;
            }
            LockSupport.parkNanos(a.this.f303c);
            if (System.nanoTime() - this.f313d >= 0) {
                this.f313d = 0L;
                t();
            }
        }

        private final h l() {
            if (j(2) == 0) {
                h hVar = (h) a.this.f305e.e();
                if (hVar != null) {
                    return hVar;
                }
                return (h) a.this.f306f.e();
            }
            h hVar2 = (h) a.this.f306f.e();
            if (hVar2 != null) {
                return hVar2;
            }
            return (h) a.this.f305e.e();
        }

        private final void m() {
            loop0: while (true) {
                boolean z10 = false;
                while (!a.this.isTerminated() && this.f312c != d.f322e) {
                    h e10 = e(this.f316g);
                    if (e10 != null) {
                        this.f314e = 0L;
                        b(e10);
                    } else {
                        this.f316g = false;
                        if (this.f314e != 0) {
                            if (!z10) {
                                z10 = true;
                            } else {
                                r(d.f320c);
                                Thread.interrupted();
                                LockSupport.parkNanos(this.f314e);
                                this.f314e = 0L;
                            }
                        } else {
                            q();
                        }
                    }
                }
            }
            r(d.f322e);
        }

        private final boolean p() {
            boolean z10;
            if (this.f312c == d.f318a) {
                return true;
            }
            a aVar = a.this;
            AtomicLongFieldUpdater a10 = a.a();
            while (true) {
                long j10 = a10.get(aVar);
                if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                    z10 = false;
                    break;
                }
                if (a.a().compareAndSet(aVar, j10, j10 - 4398046511104L)) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                return false;
            }
            this.f312c = d.f318a;
            return true;
        }

        private final void q() {
            if (!i()) {
                a.this.w(this);
                return;
            }
            f309i.set(this, -1);
            while (i() && f309i.get(this) == -1 && !a.this.isTerminated() && this.f312c != d.f322e) {
                r(d.f320c);
                Thread.interrupted();
                k();
            }
        }

        private final h s(int i10) {
            int i11 = (int) (a.a().get(a.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int j10 = j(i11);
            a aVar = a.this;
            long j11 = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                j10++;
                if (j10 > i11) {
                    j10 = 1;
                }
                c cVar = (c) aVar.f307g.b(j10);
                if (cVar != null && cVar != this) {
                    long r10 = cVar.f310a.r(i10, this.f311b);
                    if (r10 == -1) {
                        c0 c0Var = this.f311b;
                        h hVar = (h) c0Var.f24971a;
                        c0Var.f24971a = null;
                        return hVar;
                    } else if (r10 > 0) {
                        j11 = Math.min(j11, r10);
                    }
                }
            }
            if (j11 == Long.MAX_VALUE) {
                j11 = 0;
            }
            this.f314e = j11;
            return null;
        }

        private final void t() {
            a aVar = a.this;
            synchronized (aVar.f307g) {
                if (aVar.isTerminated()) {
                    return;
                }
                if (((int) (a.a().get(aVar) & 2097151)) <= aVar.f301a) {
                    return;
                }
                if (!f309i.compareAndSet(this, -1, 1)) {
                    return;
                }
                int i10 = this.indexInArray;
                n(0);
                aVar.x(this, i10, 0);
                int andDecrement = (int) (a.a().getAndDecrement(aVar) & 2097151);
                if (andDecrement != i10) {
                    Object b10 = aVar.f307g.b(andDecrement);
                    m.b(b10);
                    c cVar = (c) b10;
                    aVar.f307g.c(i10, cVar);
                    cVar.n(i10);
                    aVar.x(cVar, andDecrement, i10);
                }
                aVar.f307g.c(andDecrement, null);
                t tVar = t.f32733a;
                this.f312c = d.f322e;
            }
        }

        public final h e(boolean z10) {
            if (p()) {
                return c(z10);
            }
            return d();
        }

        public final int f() {
            return this.indexInArray;
        }

        public final Object g() {
            return this.nextParkedWorker;
        }

        public final int j(int i10) {
            int i11 = this.f315f;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f315f = i14;
            int i15 = i10 - 1;
            if ((i15 & i10) == 0) {
                return i14 & i15;
            }
            return (i14 & Integer.MAX_VALUE) % i10;
        }

        public final void n(int i10) {
            String valueOf;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a.this.f304d);
            sb2.append("-worker-");
            if (i10 == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i10);
            }
            sb2.append(valueOf);
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void o(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean r(d dVar) {
            boolean z10;
            d dVar2 = this.f312c;
            if (dVar2 == d.f318a) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                a.a().addAndGet(a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f312c = dVar;
            }
            return z10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m();
        }

        public c(a aVar, int i10) {
            this();
            n(i10);
        }
    }
}
