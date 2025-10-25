package ce;

import id.Function2;
import id.p;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.m;
import td.s2;
import vd.l;
import xc.t;
import yd.c0;
import yd.d0;
import yd.f0;
/* loaded from: classes2.dex */
public class i {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f5182c = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "head$volatile");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f5183d = AtomicLongFieldUpdater.newUpdater(i.class, "deqIdx$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f5184e = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "tail$volatile");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f5185f = AtomicLongFieldUpdater.newUpdater(i.class, "enqIdx$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f5186g = AtomicIntegerFieldUpdater.newUpdater(i.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f5187a;

    /* renamed from: b  reason: collision with root package name */
    private final p f5188b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a extends kotlin.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f5189a = new a();

        a() {
            super(2, j.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        public final k f(long j10, k kVar) {
            k h10;
            h10 = j.h(j10, kVar);
            return h10;
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return f(((Number) obj).longValue(), (k) obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class b extends kotlin.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f5190a = new b();

        b() {
            super(2, j.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        public final k f(long j10, k kVar) {
            k h10;
            h10 = j.h(j10, kVar);
            return h10;
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return f(((Number) obj).longValue(), (k) obj2);
        }
    }

    public i(int i10, int i11) {
        boolean z10;
        this.f5187a = i10;
        boolean z11 = true;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if ((i11 < 0 || i11 > i10) ? false : z11) {
                k kVar = new k(0L, null, 2);
                this.head$volatile = kVar;
                this.tail$volatile = kVar;
                this._availablePermits$volatile = i10 - i11;
                this.f5188b = new p() { // from class: ce.h
                    @Override // id.p
                    public final Object e(Object obj, Object obj2, Object obj3) {
                        t p10;
                        p10 = i.p(i.this, (Throwable) obj, (t) obj2, (ad.i) obj3);
                        return p10;
                    }
                };
                return;
            }
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
    }

    private final boolean g(s2 s2Var) {
        int i10;
        Object c10;
        int i11;
        f0 f0Var;
        f0 f0Var2;
        boolean z10;
        k kVar = (k) f5184e.get(this);
        long andIncrement = f5185f.getAndIncrement(this);
        a aVar = a.f5189a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5184e;
        i10 = j.f5196f;
        long j10 = andIncrement / i10;
        do {
            c10 = yd.a.c(kVar, j10, aVar);
            if (d0.c(c10)) {
                break;
            }
            c0 b10 = d0.b(c10);
            while (true) {
                c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
                if (c0Var.f33250c >= b10.f33250c) {
                    break;
                } else if (!b10.u()) {
                    z10 = false;
                    continue;
                    break;
                } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, c0Var, b10)) {
                    if (c0Var.p()) {
                        c0Var.n();
                    }
                } else if (b10.p()) {
                    b10.n();
                }
            }
            z10 = true;
            continue;
        } while (!z10);
        k kVar2 = (k) d0.b(c10);
        i11 = j.f5196f;
        int i12 = (int) (andIncrement % i11);
        if (!l.a(kVar2.v(), i12, null, s2Var)) {
            f0Var = j.f5192b;
            f0Var2 = j.f5193c;
            if (l.a(kVar2.v(), i12, f0Var, f0Var2)) {
                if (s2Var instanceof td.l) {
                    m.c(s2Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                    ((td.l) s2Var).r(t.f32733a, this.f5188b);
                    return true;
                }
                throw new IllegalStateException(("unexpected: " + s2Var).toString());
            }
            return false;
        }
        s2Var.b(kVar2, i12);
        return true;
    }

    private final void h() {
        int i10;
        do {
            i10 = f5186g.get(this);
            if (i10 <= this.f5187a) {
                return;
            }
        } while (!f5186g.compareAndSet(this, i10, this.f5187a));
    }

    private final int i() {
        int andDecrement;
        do {
            andDecrement = f5186g.getAndDecrement(this);
        } while (andDecrement > this.f5187a);
        return andDecrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t p(i iVar, Throwable th, t tVar, ad.i iVar2) {
        iVar.q();
        return t.f32733a;
    }

    private final boolean s(Object obj) {
        if (obj instanceof td.l) {
            m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            td.l lVar = (td.l) obj;
            Object d10 = lVar.d(t.f32733a, null, this.f5188b);
            if (d10 != null) {
                lVar.A(d10);
                return true;
            }
            return false;
        }
        throw new IllegalStateException(("unexpected: " + obj).toString());
    }

    private final boolean t() {
        int i10;
        Object c10;
        int i11;
        f0 f0Var;
        f0 f0Var2;
        int i12;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        boolean z10;
        k kVar = (k) f5182c.get(this);
        long andIncrement = f5183d.getAndIncrement(this);
        i10 = j.f5196f;
        long j10 = andIncrement / i10;
        b bVar = b.f5190a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5182c;
        do {
            c10 = yd.a.c(kVar, j10, bVar);
            if (d0.c(c10)) {
                break;
            }
            c0 b10 = d0.b(c10);
            while (true) {
                c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
                if (c0Var.f33250c >= b10.f33250c) {
                    break;
                } else if (!b10.u()) {
                    z10 = false;
                    continue;
                    break;
                } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, c0Var, b10)) {
                    if (c0Var.p()) {
                        c0Var.n();
                    }
                } else if (b10.p()) {
                    b10.n();
                }
            }
            z10 = true;
            continue;
        } while (!z10);
        k kVar2 = (k) d0.b(c10);
        kVar2.c();
        if (kVar2.f33250c <= j10) {
            i11 = j.f5196f;
            int i13 = (int) (andIncrement % i11);
            f0Var = j.f5192b;
            Object andSet = kVar2.v().getAndSet(i13, f0Var);
            if (andSet == null) {
                i12 = j.f5191a;
                for (int i14 = 0; i14 < i12; i14++) {
                    Object obj = kVar2.v().get(i13);
                    f0Var5 = j.f5193c;
                    if (obj == f0Var5) {
                        return true;
                    }
                }
                f0Var3 = j.f5192b;
                f0Var4 = j.f5194d;
                return !l.a(kVar2.v(), i13, f0Var3, f0Var4);
            }
            f0Var2 = j.f5195e;
            if (andSet == f0Var2) {
                return false;
            }
            return s(andSet);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(td.l lVar) {
        while (i() <= 0) {
            m.c(lVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (g((s2) lVar)) {
                return;
            }
        }
        lVar.r(t.f32733a, this.f5188b);
    }

    public final int j() {
        return Math.max(f5186g.get(this), 0);
    }

    public final void q() {
        do {
            int andIncrement = f5186g.getAndIncrement(this);
            if (andIncrement < this.f5187a) {
                if (andIncrement >= 0) {
                    return;
                }
            } else {
                h();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f5187a).toString());
            }
        } while (!t());
    }

    public final boolean r() {
        while (true) {
            int i10 = f5186g.get(this);
            if (i10 > this.f5187a) {
                h();
            } else if (i10 <= 0) {
                return false;
            } else {
                if (f5186g.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }
}
