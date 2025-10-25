package vd;

import id.Function2;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.g0;
import td.s2;
import xc.l;
import yd.c0;
import yd.d0;
import yd.e0;
import yd.f0;
import yd.r0;
/* loaded from: classes2.dex */
public class e implements g {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f31364d = AtomicLongFieldUpdater.newUpdater(e.class, "sendersAndCloseStatus$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f31365e = AtomicLongFieldUpdater.newUpdater(e.class, "receivers$volatile");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f31366f = AtomicLongFieldUpdater.newUpdater(e.class, "bufferEnd$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f31367g = AtomicLongFieldUpdater.newUpdater(e.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31368h = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "sendSegment$volatile");

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31369i = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "receiveSegment$volatile");

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31370j = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "bufferEndSegment$volatile");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31371k = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_closeCause$volatile");

    /* renamed from: l  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31372l = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f31373a;

    /* renamed from: b  reason: collision with root package name */
    public final id.l f31374b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* renamed from: c  reason: collision with root package name */
    private final id.p f31375c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements i, s2 {

        /* renamed from: a  reason: collision with root package name */
        private Object f31376a;

        /* renamed from: b  reason: collision with root package name */
        private td.n f31377b;

        public a() {
            f0 f0Var;
            f0Var = f.f31394p;
            this.f31376a = f0Var;
        }

        private final Object f(m mVar, int i10, long j10, ad.e eVar) {
            ad.e c10;
            f0 f0Var;
            f0 f0Var2;
            Boolean a10;
            f0 f0Var3;
            f0 f0Var4;
            f0 f0Var5;
            Object e10;
            e eVar2 = e.this;
            c10 = bd.c.c(eVar);
            td.n b10 = td.p.b(c10);
            try {
                this.f31377b = b10;
                Object W0 = eVar2.W0(mVar, i10, j10, this);
                f0Var = f.f31391m;
                if (W0 == f0Var) {
                    eVar2.G0(this, mVar, i10);
                } else {
                    f0Var2 = f.f31393o;
                    id.p pVar = null;
                    if (W0 == f0Var2) {
                        if (j10 < eVar2.f0()) {
                            mVar.c();
                        }
                        m mVar2 = (m) e.l().get(eVar2);
                        while (true) {
                            if (eVar2.n0()) {
                                h();
                                break;
                            }
                            long andIncrement = e.n().getAndIncrement(eVar2);
                            int i11 = f.f31380b;
                            long j11 = andIncrement / i11;
                            int i12 = (int) (andIncrement % i11);
                            if (mVar2.f33250c != j11) {
                                m Q = eVar2.Q(j11, mVar2);
                                if (Q != null) {
                                    mVar2 = Q;
                                }
                            }
                            Object W02 = eVar2.W0(mVar2, i12, andIncrement, this);
                            f0Var3 = f.f31391m;
                            if (W02 == f0Var3) {
                                eVar2.G0(this, mVar2, i12);
                                break;
                            }
                            f0Var4 = f.f31393o;
                            if (W02 != f0Var4) {
                                f0Var5 = f.f31392n;
                                if (W02 != f0Var5) {
                                    mVar2.c();
                                    this.f31376a = W02;
                                    this.f31377b = null;
                                    a10 = kotlin.coroutines.jvm.internal.b.a(true);
                                    id.l lVar = eVar2.f31374b;
                                    if (lVar != null) {
                                        pVar = eVar2.C(lVar, W02);
                                    }
                                } else {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                            } else if (andIncrement < eVar2.f0()) {
                                mVar2.c();
                            }
                        }
                    } else {
                        mVar.c();
                        this.f31376a = W0;
                        this.f31377b = null;
                        a10 = kotlin.coroutines.jvm.internal.b.a(true);
                        id.l lVar2 = eVar2.f31374b;
                        if (lVar2 != null) {
                            pVar = eVar2.C(lVar2, W0);
                        }
                    }
                    b10.r(a10, pVar);
                }
                Object x10 = b10.x();
                e10 = bd.d.e();
                if (x10 == e10) {
                    kotlin.coroutines.jvm.internal.h.c(eVar);
                }
                return x10;
            } catch (Throwable th) {
                b10.N();
                throw th;
            }
        }

        private final boolean g() {
            this.f31376a = f.z();
            Throwable V = e.this.V();
            if (V == null) {
                return false;
            }
            throw e0.a(V);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h() {
            td.n nVar = this.f31377b;
            kotlin.jvm.internal.m.b(nVar);
            this.f31377b = null;
            this.f31376a = f.z();
            Throwable V = e.this.V();
            if (V == null) {
                l.a aVar = xc.l.f32718b;
                nVar.resumeWith(xc.l.b(Boolean.FALSE));
                return;
            }
            l.a aVar2 = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.m.a(V)));
        }

        @Override // vd.i
        public Object a(ad.e eVar) {
            f0 f0Var;
            m mVar;
            f0 f0Var2;
            f0 f0Var3;
            f0 f0Var4;
            Object obj = this.f31376a;
            f0Var = f.f31394p;
            boolean z10 = true;
            if (obj == f0Var || this.f31376a == f.z()) {
                e eVar2 = e.this;
                m mVar2 = (m) e.l().get(eVar2);
                while (true) {
                    if (eVar2.n0()) {
                        z10 = g();
                        break;
                    }
                    long andIncrement = e.n().getAndIncrement(eVar2);
                    int i10 = f.f31380b;
                    long j10 = andIncrement / i10;
                    int i11 = (int) (andIncrement % i10);
                    if (mVar2.f33250c != j10) {
                        m Q = eVar2.Q(j10, mVar2);
                        if (Q == null) {
                            continue;
                        } else {
                            mVar = Q;
                        }
                    } else {
                        mVar = mVar2;
                    }
                    Object W0 = eVar2.W0(mVar, i11, andIncrement, null);
                    f0Var2 = f.f31391m;
                    if (W0 != f0Var2) {
                        f0Var3 = f.f31393o;
                        if (W0 != f0Var3) {
                            f0Var4 = f.f31392n;
                            if (W0 == f0Var4) {
                                return f(mVar, i11, andIncrement, eVar);
                            }
                            mVar.c();
                            this.f31376a = W0;
                        } else {
                            if (andIncrement < eVar2.f0()) {
                                mVar.c();
                            }
                            mVar2 = mVar;
                        }
                    } else {
                        throw new IllegalStateException("unreachable".toString());
                    }
                }
            }
            return kotlin.coroutines.jvm.internal.b.a(z10);
        }

        @Override // td.s2
        public void b(c0 c0Var, int i10) {
            td.n nVar = this.f31377b;
            if (nVar != null) {
                nVar.b(c0Var, i10);
            }
        }

        public final boolean i(Object obj) {
            boolean B;
            td.n nVar = this.f31377b;
            kotlin.jvm.internal.m.b(nVar);
            id.p pVar = null;
            this.f31377b = null;
            this.f31376a = obj;
            Boolean bool = Boolean.TRUE;
            e eVar = e.this;
            id.l lVar = eVar.f31374b;
            if (lVar != null) {
                pVar = eVar.C(lVar, obj);
            }
            B = f.B(nVar, bool, pVar);
            return B;
        }

        public final void j() {
            td.n nVar = this.f31377b;
            kotlin.jvm.internal.m.b(nVar);
            this.f31377b = null;
            this.f31376a = f.z();
            Throwable V = e.this.V();
            if (V == null) {
                l.a aVar = xc.l.f32718b;
                nVar.resumeWith(xc.l.b(Boolean.FALSE));
                return;
            }
            l.a aVar2 = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.m.a(V)));
        }

        @Override // vd.i
        public Object next() {
            f0 f0Var;
            boolean z10;
            f0 f0Var2;
            Object obj = this.f31376a;
            f0Var = f.f31394p;
            if (obj != f0Var) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                f0Var2 = f.f31394p;
                this.f31376a = f0Var2;
                if (obj != f.z()) {
                    return obj;
                }
                throw e0.a(e.this.Y());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class b extends kotlin.jvm.internal.k implements id.p {
        b(Object obj) {
            super(3, obj, e.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
        }

        @Override // id.p
        public /* bridge */ /* synthetic */ Object e(Object obj, Object obj2, Object obj3) {
            f((Throwable) obj, obj2, (ad.i) obj3);
            return xc.t.f32733a;
        }

        public final void f(Throwable th, Object obj, ad.i iVar) {
            ((e) this.receiver).x0(th, obj, iVar);
        }
    }

    public e(int i10, id.l lVar) {
        boolean z10;
        long A;
        id.p pVar;
        f0 f0Var;
        this.f31373a = i10;
        this.f31374b = lVar;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            A = f.A(i10);
            this.bufferEnd$volatile = A;
            this.completedExpandBuffersAndPauseFlag$volatile = T();
            m mVar = new m(0L, null, this, 3);
            this.sendSegment$volatile = mVar;
            this.receiveSegment$volatile = mVar;
            if (r0()) {
                mVar = f.f31379a;
                kotlin.jvm.internal.m.c(mVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment$volatile = mVar;
            if (lVar != null) {
                pVar = new id.p() { // from class: vd.c
                    @Override // id.p
                    public final Object e(Object obj, Object obj2, Object obj3) {
                        id.p E0;
                        e eVar = e.this;
                        android.support.v4.media.session.b.a(obj);
                        E0 = e.E0(eVar, null, obj2, obj3);
                        return E0;
                    }
                };
            } else {
                pVar = null;
            }
            this.f31375c = pVar;
            f0Var = f.f31397s;
            this._closeCause$volatile = f0Var;
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
    }

    private final Object A0(Object obj, ad.e eVar) {
        ad.e c10;
        Object e10;
        Object e11;
        r0 c11;
        c10 = bd.c.c(eVar);
        td.n nVar = new td.n(c10, 1);
        nVar.E();
        id.l lVar = this.f31374b;
        if (lVar != null && (c11 = yd.y.c(lVar, obj, null, 2, null)) != null) {
            xc.b.a(c11, c0());
            l.a aVar = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.m.a(c11)));
        } else {
            Throwable c02 = c0();
            l.a aVar2 = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.m.a(c02)));
        }
        Object x10 = nVar.x();
        e10 = bd.d.e();
        if (x10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        e11 = bd.d.e();
        if (x10 == e11) {
            return x10;
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0(Object obj, td.l lVar) {
        id.l lVar2 = this.f31374b;
        if (lVar2 != null) {
            yd.y.a(lVar2, obj, lVar.getContext());
        }
        Throwable c02 = c0();
        l.a aVar = xc.l.f32718b;
        lVar.resumeWith(xc.l.b(xc.m.a(c02)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final id.p C(final id.l lVar, final Object obj) {
        return new id.p() { // from class: vd.b
            @Override // id.p
            public final Object e(Object obj2, Object obj3, Object obj4) {
                xc.t E;
                E = e.E(id.l.this, obj, (Throwable) obj2, obj3, (ad.i) obj4);
                return E;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final pd.f D(id.l lVar) {
        return new b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t E(id.l lVar, Object obj, Throwable th, Object obj2, ad.i iVar) {
        yd.y.a(lVar, obj, iVar);
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final id.p E0(final e eVar, final be.a aVar, Object obj, final Object obj2) {
        return new id.p(obj2, eVar, aVar) { // from class: vd.d

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Object f31362a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ e f31363b;

            @Override // id.p
            public final Object e(Object obj3, Object obj4, Object obj5) {
                xc.t F0;
                F0 = e.F0(this.f31362a, this.f31363b, null, (Throwable) obj3, obj4, (ad.i) obj5);
                return F0;
            }
        };
    }

    private final boolean F(long j10) {
        if (j10 >= T() && j10 >= b0() + this.f31373a) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t F0(Object obj, e eVar, be.a aVar, Throwable th, Object obj2, ad.i iVar) {
        if (obj != f.z()) {
            yd.y.a(eVar.f31374b, obj, aVar.getContext());
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(s2 s2Var, m mVar, int i10) {
        D0();
        s2Var.b(mVar, i10);
    }

    private final void H(m mVar, long j10) {
        f0 f0Var;
        Object b10 = yd.l.b(null, 1, null);
        loop0: while (mVar != null) {
            for (int i10 = f.f31380b - 1; -1 < i10; i10--) {
                if ((mVar.f33250c * f.f31380b) + i10 < j10) {
                    break loop0;
                }
                while (true) {
                    Object B = mVar.B(i10);
                    if (B != null) {
                        f0Var = f.f31383e;
                        if (B != f0Var) {
                            if (B instanceof y) {
                                if (mVar.v(i10, B, f.z())) {
                                    b10 = yd.l.c(b10, ((y) B).f31420a);
                                    mVar.C(i10, true);
                                    break;
                                }
                            } else if (!(B instanceof s2)) {
                                break;
                            } else if (mVar.v(i10, B, f.z())) {
                                b10 = yd.l.c(b10, B);
                                mVar.C(i10, true);
                                break;
                            }
                        }
                    }
                    if (mVar.v(i10, B, f.z())) {
                        mVar.t();
                        break;
                    }
                }
            }
            mVar = (m) mVar.h();
        }
        if (b10 != null) {
            if (!(b10 instanceof ArrayList)) {
                L0((s2) b10);
                return;
            }
            kotlin.jvm.internal.m.c(b10, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) b10;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                L0((s2) arrayList.get(size));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0(s2 s2Var, m mVar, int i10) {
        s2Var.b(mVar, i10 + f.f31380b);
    }

    private final m I() {
        m mVar = f31370j.get(this);
        m mVar2 = (m) f31368h.get(this);
        if (mVar2.f33250c > ((m) mVar).f33250c) {
            mVar = mVar2;
        }
        m mVar3 = (m) f31369i.get(this);
        if (mVar3.f33250c > ((m) mVar).f33250c) {
            mVar = mVar3;
        }
        return (m) yd.a.b((yd.b) mVar);
    }

    static /* synthetic */ Object I0(e eVar, ad.e eVar2) {
        m mVar;
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        m mVar2 = (m) l().get(eVar);
        while (!eVar.n0()) {
            long andIncrement = n().getAndIncrement(eVar);
            int i10 = f.f31380b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (mVar2.f33250c != j10) {
                m Q = eVar.Q(j10, mVar2);
                if (Q == null) {
                    continue;
                } else {
                    mVar = Q;
                }
            } else {
                mVar = mVar2;
            }
            Object W0 = eVar.W0(mVar, i11, andIncrement, null);
            f0Var = f.f31391m;
            if (W0 != f0Var) {
                f0Var2 = f.f31393o;
                if (W0 != f0Var2) {
                    f0Var3 = f.f31392n;
                    if (W0 == f0Var3) {
                        return eVar.J0(mVar, i11, andIncrement, eVar2);
                    }
                    mVar.c();
                    return W0;
                }
                if (andIncrement < eVar.f0()) {
                    mVar.c();
                }
                mVar2 = mVar;
            } else {
                throw new IllegalStateException("unexpected".toString());
            }
        }
        throw e0.a(eVar.Y());
    }

    private final Object J0(m mVar, int i10, long j10, ad.e eVar) {
        ad.e c10;
        f0 f0Var;
        f0 f0Var2;
        id.p pVar;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        Object e10;
        c10 = bd.c.c(eVar);
        td.n b10 = td.p.b(c10);
        try {
            Object W0 = W0(mVar, i10, j10, b10);
            f0Var = f.f31391m;
            if (W0 == f0Var) {
                G0(b10, mVar, i10);
            } else {
                f0Var2 = f.f31393o;
                pd.f fVar = null;
                pd.f fVar2 = null;
                td.n nVar = null;
                if (W0 == f0Var2) {
                    if (j10 < f0()) {
                        mVar.c();
                    }
                    m mVar2 = (m) l().get(this);
                    while (true) {
                        if (n0()) {
                            z0(b10);
                            break;
                        }
                        long andIncrement = n().getAndIncrement(this);
                        int i11 = f.f31380b;
                        long j11 = andIncrement / i11;
                        int i12 = (int) (andIncrement % i11);
                        if (mVar2.f33250c != j11) {
                            m Q = Q(j11, mVar2);
                            if (Q != null) {
                                mVar2 = Q;
                            }
                        }
                        W0 = W0(mVar2, i12, andIncrement, b10);
                        f0Var3 = f.f31391m;
                        if (W0 != f0Var3) {
                            f0Var4 = f.f31393o;
                            if (W0 != f0Var4) {
                                f0Var5 = f.f31392n;
                                if (W0 != f0Var5) {
                                    mVar2.c();
                                    id.l lVar = this.f31374b;
                                    if (lVar != null) {
                                        fVar2 = D(lVar);
                                    }
                                    pVar = (id.p) fVar2;
                                } else {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                            } else if (andIncrement < f0()) {
                                mVar2.c();
                            }
                        } else {
                            if (b10 instanceof s2) {
                                nVar = b10;
                            }
                            if (nVar != null) {
                                G0(nVar, mVar2, i12);
                            }
                        }
                    }
                } else {
                    mVar.c();
                    id.l lVar2 = this.f31374b;
                    if (lVar2 != null) {
                        fVar = D(lVar2);
                    }
                    pVar = (id.p) fVar;
                }
                b10.r(W0, pVar);
            }
            Object x10 = b10.x();
            e10 = bd.d.e();
            if (x10 == e10) {
                kotlin.coroutines.jvm.internal.h.c(eVar);
            }
            return x10;
        } catch (Throwable th) {
            b10.N();
            throw th;
        }
    }

    private final void K(long j10) {
        K0(L(j10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
        r12 = (vd.m) r12.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void K0(vd.m r12) {
        /*
            r11 = this;
            id.l r0 = r11.f31374b
            r1 = 0
            r2 = 1
            java.lang.Object r3 = yd.l.b(r1, r2, r1)
        L8:
            int r4 = vd.f.f31380b
            int r4 = r4 - r2
        Lb:
            r5 = -1
            if (r5 >= r4) goto Lb3
            long r6 = r12.f33250c
            int r8 = vd.f.f31380b
            long r8 = (long) r8
            long r6 = r6 * r8
            long r8 = (long) r4
            long r6 = r6 + r8
        L16:
            java.lang.Object r8 = r12.B(r4)
            yd.f0 r9 = vd.f.f()
            if (r8 == r9) goto Lbb
            yd.f0 r9 = vd.f.f31382d
            if (r8 != r9) goto L48
            long r9 = r11.b0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            yd.f0 r9 = vd.f.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L40
            java.lang.Object r5 = r12.A(r4)
            yd.r0 r1 = yd.y.b(r0, r5, r1)
        L40:
            r12.w(r4)
            r12.t()
            goto Laf
        L48:
            yd.f0 r9 = vd.f.k()
            if (r8 == r9) goto La2
            if (r8 != 0) goto L51
            goto La2
        L51:
            boolean r9 = r8 instanceof td.s2
            if (r9 != 0) goto L6e
            boolean r9 = r8 instanceof vd.y
            if (r9 == 0) goto L5a
            goto L6e
        L5a:
            yd.f0 r9 = vd.f.p()
            if (r8 == r9) goto Lbb
            yd.f0 r9 = vd.f.q()
            if (r8 != r9) goto L67
            goto Lbb
        L67:
            yd.f0 r9 = vd.f.p()
            if (r8 == r9) goto L16
            goto Laf
        L6e:
            long r9 = r11.b0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            boolean r9 = r8 instanceof vd.y
            if (r9 == 0) goto L80
            r9 = r8
            vd.y r9 = (vd.y) r9
            td.s2 r9 = r9.f31420a
            goto L83
        L80:
            r9 = r8
            td.s2 r9 = (td.s2) r9
        L83:
            yd.f0 r10 = vd.f.z()
            boolean r8 = r12.v(r4, r8, r10)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L97
            java.lang.Object r5 = r12.A(r4)
            yd.r0 r1 = yd.y.b(r0, r5, r1)
        L97:
            java.lang.Object r3 = yd.l.c(r3, r9)
            r12.w(r4)
            r12.t()
            goto Laf
        La2:
            yd.f0 r9 = vd.f.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            r12.t()
        Laf:
            int r4 = r4 + (-1)
            goto Lb
        Lb3:
            yd.b r12 = r12.h()
            vd.m r12 = (vd.m) r12
            if (r12 != 0) goto L8
        Lbb:
            if (r3 == 0) goto Le1
            boolean r12 = r3 instanceof java.util.ArrayList
            if (r12 != 0) goto Lc7
            td.s2 r3 = (td.s2) r3
            r11.M0(r3)
            goto Le1
        Lc7:
            java.lang.String r12 = "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"
            kotlin.jvm.internal.m.c(r3, r12)
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r12 = r3.size()
            int r12 = r12 - r2
        Ld3:
            if (r5 >= r12) goto Le1
            java.lang.Object r0 = r3.get(r12)
            td.s2 r0 = (td.s2) r0
            r11.M0(r0)
            int r12 = r12 + (-1)
            goto Ld3
        Le1:
            if (r1 != 0) goto Le4
            return
        Le4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.e.K0(vd.m):void");
    }

    private final m L(long j10) {
        m I = I();
        if (q0()) {
            long s02 = s0(I);
            if (s02 != -1) {
                N(s02);
            }
        }
        H(I, j10);
        return I;
    }

    private final void L0(s2 s2Var) {
        N0(s2Var, true);
    }

    private final void M() {
        z();
    }

    private final void M0(s2 s2Var) {
        N0(s2Var, false);
    }

    private final void N0(s2 s2Var, boolean z10) {
        Throwable c02;
        if (s2Var instanceof td.l) {
            ad.e eVar = (ad.e) s2Var;
            l.a aVar = xc.l.f32718b;
            if (z10) {
                c02 = Y();
            } else {
                c02 = c0();
            }
            eVar.resumeWith(xc.l.b(xc.m.a(c02)));
        } else if (s2Var instanceof a) {
            ((a) s2Var).j();
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + s2Var).toString());
        }
    }

    private final void O() {
        if (r0()) {
            return;
        }
        m mVar = (m) f31370j.get(this);
        while (true) {
            long andIncrement = f31366f.getAndIncrement(this);
            int i10 = f.f31380b;
            long j10 = andIncrement / i10;
            if (f0() <= andIncrement) {
                if (mVar.f33250c < j10 && mVar.f() != null) {
                    w0(j10, mVar);
                }
                j0(this, 0L, 1, null);
                return;
            }
            if (mVar.f33250c != j10) {
                m P = P(j10, mVar, andIncrement);
                if (P == null) {
                    continue;
                } else {
                    mVar = P;
                }
            }
            if (U0(mVar, (int) (andIncrement % i10), andIncrement)) {
                j0(this, 0L, 1, null);
                return;
            }
            j0(this, 0L, 1, null);
        }
    }

    static /* synthetic */ Object O0(e eVar, Object obj, ad.e eVar2) {
        m mVar;
        Object e10;
        Object e11;
        Object e12;
        Object e13;
        m mVar2 = (m) o().get(eVar);
        while (true) {
            long andIncrement = q().getAndIncrement(eVar);
            long j10 = andIncrement & 1152921504606846975L;
            boolean p02 = eVar.p0(andIncrement);
            int i10 = f.f31380b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (mVar2.f33250c != j11) {
                m R = eVar.R(j11, mVar2);
                if (R == null) {
                    if (p02) {
                        Object A0 = eVar.A0(obj, eVar2);
                        e13 = bd.d.e();
                        if (A0 == e13) {
                            return A0;
                        }
                    }
                } else {
                    mVar = R;
                }
            } else {
                mVar = mVar2;
            }
            int Y0 = eVar.Y0(mVar, i11, obj, j10, null, p02);
            if (Y0 != 0) {
                if (Y0 == 1) {
                    break;
                } else if (Y0 != 2) {
                    if (Y0 != 3) {
                        if (Y0 != 4) {
                            if (Y0 == 5) {
                                mVar.c();
                            }
                            mVar2 = mVar;
                        } else {
                            if (j10 < eVar.b0()) {
                                mVar.c();
                            }
                            Object A02 = eVar.A0(obj, eVar2);
                            e12 = bd.d.e();
                            if (A02 == e12) {
                                return A02;
                            }
                        }
                    } else {
                        Object P0 = eVar.P0(mVar, i11, obj, j10, eVar2);
                        e11 = bd.d.e();
                        if (P0 == e11) {
                            return P0;
                        }
                    }
                } else if (p02) {
                    mVar.t();
                    Object A03 = eVar.A0(obj, eVar2);
                    e10 = bd.d.e();
                    if (A03 == e10) {
                        return A03;
                    }
                }
            } else {
                mVar.c();
                break;
            }
        }
        return xc.t.f32733a;
    }

    private final m P(long j10, m mVar, long j11) {
        Object c10;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31370j;
        Function2 function2 = (Function2) f.y();
        do {
            c10 = yd.a.c(mVar, j10, function2);
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
        if (d0.c(c10)) {
            M();
            w0(j10, mVar);
            j0(this, 0L, 1, null);
            return null;
        }
        m mVar2 = (m) d0.b(c10);
        if (mVar2.f33250c > j10) {
            long j12 = mVar2.f33250c;
            int i10 = f.f31380b;
            if (f31366f.compareAndSet(this, j11 + 1, j12 * i10)) {
                i0((mVar2.f33250c * i10) - j11);
                return null;
            }
            j0(this, 0L, 1, null);
            return null;
        }
        return mVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object P0(vd.m r21, int r22, java.lang.Object r23, long r24, ad.e r26) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.e.P0(vd.m, int, java.lang.Object, long, ad.e):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final m Q(long j10, m mVar) {
        Object c10;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31369i;
        Function2 function2 = (Function2) f.y();
        do {
            c10 = yd.a.c(mVar, j10, function2);
            if (d0.c(c10)) {
                break;
            }
            c0 b10 = d0.b(c10);
            while (true) {
                c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
                z10 = true;
                if (c0Var.f33250c < b10.f33250c) {
                    if (!b10.u()) {
                        z10 = false;
                        continue;
                        break;
                    } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, c0Var, b10)) {
                        if (c0Var.p()) {
                            c0Var.n();
                            continue;
                        } else {
                            continue;
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            }
        } while (!z10);
        if (d0.c(c10)) {
            M();
            if (mVar.f33250c * f.f31380b >= f0()) {
                return null;
            }
            mVar.c();
            return null;
        }
        m mVar2 = (m) d0.b(c10);
        if (!r0() && j10 <= T() / f.f31380b) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f31370j;
            while (true) {
                c0 c0Var2 = (c0) atomicReferenceFieldUpdater2.get(this);
                if (c0Var2.f33250c >= mVar2.f33250c || !mVar2.u()) {
                    break;
                } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater2, this, c0Var2, mVar2)) {
                    if (c0Var2.p()) {
                        c0Var2.n();
                    }
                } else if (mVar2.p()) {
                    mVar2.n();
                }
            }
        }
        long j11 = mVar2.f33250c;
        if (j11 > j10) {
            int i10 = f.f31380b;
            a1(j11 * i10);
            if (mVar2.f33250c * i10 >= f0()) {
                return null;
            }
            mVar2.c();
            return null;
        }
        return mVar2;
    }

    private final boolean Q0(long j10) {
        if (p0(j10)) {
            return false;
        }
        return !F(j10 & 1152921504606846975L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final m R(long j10, m mVar) {
        Object c10;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31368h;
        Function2 function2 = (Function2) f.y();
        do {
            c10 = yd.a.c(mVar, j10, function2);
            if (d0.c(c10)) {
                break;
            }
            c0 b10 = d0.b(c10);
            while (true) {
                c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
                z10 = true;
                if (c0Var.f33250c < b10.f33250c) {
                    if (!b10.u()) {
                        z10 = false;
                        continue;
                        break;
                    } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, c0Var, b10)) {
                        if (c0Var.p()) {
                            c0Var.n();
                            continue;
                        } else {
                            continue;
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            }
        } while (!z10);
        if (d0.c(c10)) {
            M();
            if (mVar.f33250c * f.f31380b >= b0()) {
                return null;
            }
            mVar.c();
            return null;
        }
        m mVar2 = (m) d0.b(c10);
        long j11 = mVar2.f33250c;
        if (j11 > j10) {
            int i10 = f.f31380b;
            b1(j11 * i10);
            if (mVar2.f33250c * i10 >= b0()) {
                return null;
            }
            mVar2.c();
            return null;
        }
        return mVar2;
    }

    private final boolean R0(Object obj, Object obj2) {
        pd.f fVar;
        boolean B;
        if (obj instanceof a) {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(obj2);
        } else if (obj instanceof td.l) {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            td.l lVar = (td.l) obj;
            id.l lVar2 = this.f31374b;
            if (lVar2 != null) {
                fVar = D(lVar2);
            } else {
                fVar = null;
            }
            B = f.B(lVar, obj2, (id.p) fVar);
            return B;
        } else {
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
    }

    private final boolean S0(Object obj, m mVar, int i10) {
        if (obj instanceof td.l) {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return f.C((td.l) obj, xc.t.f32733a, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    private final long T() {
        return f31366f.get(this);
    }

    private final boolean U0(m mVar, int i10, long j10) {
        f0 f0Var;
        f0 f0Var2;
        Object B = mVar.B(i10);
        if ((B instanceof s2) && j10 >= f31365e.get(this)) {
            f0Var = f.f31385g;
            if (mVar.v(i10, B, f0Var)) {
                if (!S0(B, mVar, i10)) {
                    f0Var2 = f.f31388j;
                    mVar.F(i10, f0Var2);
                    mVar.C(i10, false);
                    return false;
                }
                mVar.F(i10, f.f31382d);
                return true;
            }
        }
        return V0(mVar, i10, j10);
    }

    private final boolean V0(m mVar, int i10, long j10) {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        f0 f0Var6;
        f0 f0Var7;
        f0 f0Var8;
        while (true) {
            Object B = mVar.B(i10);
            if (!(B instanceof s2)) {
                f0Var3 = f.f31388j;
                if (B == f0Var3) {
                    return false;
                }
                if (B == null) {
                    f0Var4 = f.f31383e;
                    if (mVar.v(i10, B, f0Var4)) {
                        return true;
                    }
                } else if (B != f.f31382d) {
                    f0Var5 = f.f31386h;
                    if (B == f0Var5) {
                        break;
                    }
                    f0Var6 = f.f31387i;
                    if (B == f0Var6) {
                        break;
                    }
                    f0Var7 = f.f31389k;
                    if (B != f0Var7 && B != f.z()) {
                        f0Var8 = f.f31384f;
                        if (B != f0Var8) {
                            throw new IllegalStateException(("Unexpected cell state: " + B).toString());
                        }
                    } else {
                        return true;
                    }
                } else {
                    return true;
                }
            } else if (j10 >= f31365e.get(this)) {
                f0Var = f.f31385g;
                if (mVar.v(i10, B, f0Var)) {
                    if (!S0(B, mVar, i10)) {
                        f0Var2 = f.f31388j;
                        mVar.F(i10, f0Var2);
                        mVar.C(i10, false);
                        return false;
                    }
                    mVar.F(i10, f.f31382d);
                    return true;
                }
            } else if (mVar.v(i10, B, new y((s2) B))) {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object W0(m mVar, int i10, long j10, Object obj) {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        Object B = mVar.B(i10);
        if (B == null) {
            if (j10 >= (f31364d.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    f0Var3 = f.f31392n;
                    return f0Var3;
                } else if (mVar.v(i10, B, obj)) {
                    O();
                    f0Var2 = f.f31391m;
                    return f0Var2;
                }
            }
        } else if (B == f.f31382d) {
            f0Var = f.f31387i;
            if (mVar.v(i10, B, f0Var)) {
                O();
                return mVar.D(i10);
            }
        }
        return X0(mVar, i10, j10, obj);
    }

    private final Object X0(m mVar, int i10, long j10, Object obj) {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        f0 f0Var6;
        f0 f0Var7;
        f0 f0Var8;
        f0 f0Var9;
        f0 f0Var10;
        f0 f0Var11;
        f0 f0Var12;
        f0 f0Var13;
        f0 f0Var14;
        f0 f0Var15;
        f0 f0Var16;
        while (true) {
            Object B = mVar.B(i10);
            if (B != null) {
                f0Var5 = f.f31383e;
                if (B != f0Var5) {
                    if (B == f.f31382d) {
                        f0Var6 = f.f31387i;
                        if (mVar.v(i10, B, f0Var6)) {
                            O();
                            return mVar.D(i10);
                        }
                    } else {
                        f0Var7 = f.f31388j;
                        if (B == f0Var7) {
                            f0Var8 = f.f31393o;
                            return f0Var8;
                        }
                        f0Var9 = f.f31386h;
                        if (B == f0Var9) {
                            f0Var10 = f.f31393o;
                            return f0Var10;
                        } else if (B != f.z()) {
                            f0Var12 = f.f31385g;
                            if (B != f0Var12) {
                                f0Var13 = f.f31384f;
                                if (mVar.v(i10, B, f0Var13)) {
                                    boolean z10 = B instanceof y;
                                    if (z10) {
                                        B = ((y) B).f31420a;
                                    }
                                    if (S0(B, mVar, i10)) {
                                        f0Var16 = f.f31387i;
                                        mVar.F(i10, f0Var16);
                                        O();
                                        return mVar.D(i10);
                                    }
                                    f0Var14 = f.f31388j;
                                    mVar.F(i10, f0Var14);
                                    mVar.C(i10, false);
                                    if (z10) {
                                        O();
                                    }
                                    f0Var15 = f.f31393o;
                                    return f0Var15;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            O();
                            f0Var11 = f.f31393o;
                            return f0Var11;
                        }
                    }
                }
            }
            if (j10 < (f31364d.get(this) & 1152921504606846975L)) {
                f0Var = f.f31386h;
                if (mVar.v(i10, B, f0Var)) {
                    O();
                    f0Var2 = f.f31393o;
                    return f0Var2;
                }
            } else if (obj == null) {
                f0Var3 = f.f31392n;
                return f0Var3;
            } else if (mVar.v(i10, B, obj)) {
                O();
                f0Var4 = f.f31391m;
                return f0Var4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable Y() {
        Throwable V = V();
        if (V == null) {
            return new q("Channel was closed");
        }
        return V;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Y0(m mVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        mVar.G(i10, obj);
        if (z10) {
            return Z0(mVar, i10, obj, j10, obj2, z10);
        }
        Object B = mVar.B(i10);
        if (B == null) {
            if (F(j10)) {
                if (mVar.v(i10, null, f.f31382d)) {
                    return 1;
                }
            } else if (obj2 == null) {
                return 3;
            } else {
                if (mVar.v(i10, null, obj2)) {
                    return 2;
                }
            }
        } else if (B instanceof s2) {
            mVar.w(i10);
            if (R0(B, obj)) {
                f0Var3 = f.f31387i;
                mVar.F(i10, f0Var3);
                C0();
                return 0;
            }
            f0Var = f.f31389k;
            Object x10 = mVar.x(i10, f0Var);
            f0Var2 = f.f31389k;
            if (x10 != f0Var2) {
                mVar.C(i10, true);
            }
            return 5;
        }
        return Z0(mVar, i10, obj, j10, obj2, z10);
    }

    private final int Z0(m mVar, int i10, Object obj, long j10, Object obj2, boolean z10) {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        f0 f0Var6;
        f0 f0Var7;
        while (true) {
            Object B = mVar.B(i10);
            if (B != null) {
                f0Var2 = f.f31383e;
                if (B != f0Var2) {
                    f0Var3 = f.f31389k;
                    if (B != f0Var3) {
                        f0Var4 = f.f31386h;
                        if (B == f0Var4) {
                            mVar.w(i10);
                            return 5;
                        } else if (B == f.z()) {
                            mVar.w(i10);
                            M();
                            return 4;
                        } else {
                            mVar.w(i10);
                            if (B instanceof y) {
                                B = ((y) B).f31420a;
                            }
                            if (R0(B, obj)) {
                                f0Var7 = f.f31387i;
                                mVar.F(i10, f0Var7);
                                C0();
                                return 0;
                            }
                            f0Var5 = f.f31389k;
                            Object x10 = mVar.x(i10, f0Var5);
                            f0Var6 = f.f31389k;
                            if (x10 != f0Var6) {
                                mVar.C(i10, true);
                            }
                            return 5;
                        }
                    }
                    mVar.w(i10);
                    return 5;
                } else if (mVar.v(i10, B, f.f31382d)) {
                    return 1;
                }
            } else if (F(j10) && !z10) {
                if (mVar.v(i10, null, f.f31382d)) {
                    return 1;
                }
            } else if (z10) {
                f0Var = f.f31388j;
                if (mVar.v(i10, null, f0Var)) {
                    mVar.C(i10, false);
                    return 4;
                }
            } else if (obj2 == null) {
                return 3;
            } else {
                if (mVar.v(i10, null, obj2)) {
                    return 2;
                }
            }
        }
    }

    private final void a1(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31365e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f31365e.compareAndSet(this, j11, j10));
    }

    private final void b1(long j10) {
        long j11;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31364d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            long j12 = 1152921504606846975L & j11;
            if (j12 < j10) {
                w10 = f.w(j12, (int) (j11 >> 60));
            } else {
                return;
            }
        } while (!f31364d.compareAndSet(this, j11, w10));
    }

    private final void i0(long j10) {
        boolean z10;
        boolean z11;
        if ((f31367g.addAndGet(this, j10) & 4611686018427387904L) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            do {
                if ((f31367g.get(this) & 4611686018427387904L) != 0) {
                    z11 = true;
                    continue;
                } else {
                    z11 = false;
                    continue;
                }
            } while (z11);
        }
    }

    static /* synthetic */ void j0(e eVar, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                j10 = 1;
            }
            eVar.i0(j10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
    }

    private final void k0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31372l;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, obj, obj == null ? f.f31395q : f.f31396r));
        if (obj == null) {
            return;
        }
        id.l lVar = (id.l) g0.c(obj, 1);
        ((id.l) obj).invoke(V());
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater l() {
        return f31369i;
    }

    private final boolean l0(m mVar, int i10, long j10) {
        Object B;
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        f0 f0Var4;
        f0 f0Var5;
        f0 f0Var6;
        f0 f0Var7;
        do {
            B = mVar.B(i10);
            if (B != null) {
                f0Var2 = f.f31383e;
                if (B != f0Var2) {
                    if (B != f.f31382d) {
                        f0Var3 = f.f31388j;
                        if (B != f0Var3 && B != f.z()) {
                            f0Var4 = f.f31387i;
                            if (B != f0Var4) {
                                f0Var5 = f.f31386h;
                                if (B != f0Var5) {
                                    f0Var6 = f.f31385g;
                                    if (B != f0Var6) {
                                        f0Var7 = f.f31384f;
                                        if (B == f0Var7 || j10 != b0()) {
                                            return false;
                                        }
                                        return true;
                                    }
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return true;
                }
            }
            f0Var = f.f31386h;
        } while (!mVar.v(i10, B, f0Var));
        O();
        return false;
    }

    private final boolean m0(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                K(j10 & 1152921504606846975L);
            } else {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
        } else {
            L(j10 & 1152921504606846975L);
            if (z10 && h0()) {
                return false;
            }
        }
        return true;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater n() {
        return f31365e;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater o() {
        return f31368h;
    }

    private final boolean o0(long j10) {
        return m0(j10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p0(long j10) {
        return m0(j10, false);
    }

    public static final /* synthetic */ AtomicLongFieldUpdater q() {
        return f31364d;
    }

    private final boolean r0() {
        long T = T();
        if (T != 0 && T != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    private final long s0(m mVar) {
        f0 f0Var;
        do {
            int i10 = f.f31380b;
            while (true) {
                i10--;
                if (-1 < i10) {
                    long j10 = (mVar.f33250c * f.f31380b) + i10;
                    if (j10 >= b0()) {
                        while (true) {
                            Object B = mVar.B(i10);
                            if (B != null) {
                                f0Var = f.f31383e;
                                if (B != f0Var) {
                                    if (B == f.f31382d) {
                                        return j10;
                                    }
                                }
                            }
                            if (mVar.v(i10, B, f.z())) {
                                mVar.t();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                } else {
                    mVar = (m) mVar.h();
                }
            }
        } while (mVar != null);
        return -1L;
    }

    private final void t0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31364d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) (j10 >> 60)) == 0) {
                w10 = f.w(1152921504606846975L & j10, 1);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    private final void u0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31364d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            w10 = f.w(1152921504606846975L & j10, 3);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    private final void v0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31364d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j10 >> 60);
            if (i10 == 0) {
                w10 = f.w(j10 & 1152921504606846975L, 2);
            } else if (i10 == 1) {
                w10 = f.w(j10 & 1152921504606846975L, 3);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    private final void w0(long j10, m mVar) {
        boolean z10;
        m mVar2;
        m mVar3;
        while (mVar.f33250c < j10 && (mVar3 = (m) mVar.f()) != null) {
            mVar = mVar3;
        }
        while (true) {
            if (!mVar.k() || (mVar2 = (m) mVar.f()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31370j;
                while (true) {
                    c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
                    z10 = true;
                    if (c0Var.f33250c >= mVar.f33250c) {
                        break;
                    } else if (!mVar.u()) {
                        z10 = false;
                        break;
                    } else if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, c0Var, mVar)) {
                        if (c0Var.p()) {
                            c0Var.n();
                        }
                    } else if (mVar.p()) {
                        mVar.n();
                    }
                }
                if (z10) {
                    return;
                }
            } else {
                mVar = mVar2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(Throwable th, Object obj, ad.i iVar) {
        id.l lVar = this.f31374b;
        kotlin.jvm.internal.m.b(lVar);
        yd.y.a(lVar, obj, iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(td.l lVar) {
        l.a aVar = xc.l.f32718b;
        lVar.resumeWith(xc.l.b(xc.m.a(Y())));
    }

    protected void C0() {
    }

    protected void D0() {
    }

    public boolean G(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return J(th, true);
    }

    protected boolean J(Throwable th, boolean z10) {
        f0 f0Var;
        if (z10) {
            t0();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f31371k;
        f0Var = f.f31397s;
        boolean a10 = androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, f0Var, th);
        if (z10) {
            u0();
        } else {
            v0();
        }
        M();
        y0();
        if (a10) {
            k0();
        }
        return a10;
    }

    protected final void N(long j10) {
        f0 f0Var;
        r0 c10;
        m mVar = (m) f31369i.get(this);
        while (true) {
            long j11 = f31365e.get(this);
            if (j10 < Math.max(this.f31373a + j11, T())) {
                return;
            }
            if (f31365e.compareAndSet(this, j11, j11 + 1)) {
                int i10 = f.f31380b;
                long j12 = j11 / i10;
                int i11 = (int) (j11 % i10);
                if (mVar.f33250c != j12) {
                    m Q = Q(j12, mVar);
                    if (Q == null) {
                        continue;
                    } else {
                        mVar = Q;
                    }
                }
                Object W0 = W0(mVar, i11, j11, null);
                f0Var = f.f31393o;
                if (W0 == f0Var) {
                    if (j11 < f0()) {
                        mVar.c();
                    }
                } else {
                    mVar.c();
                    id.l lVar = this.f31374b;
                    if (lVar != null && (c10 = yd.y.c(lVar, W0, null, 2, null)) != null) {
                        throw c10;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object T0(Object obj) {
        m mVar;
        s2 s2Var;
        f0 f0Var = f.f31382d;
        m mVar2 = (m) o().get(this);
        while (true) {
            long andIncrement = q().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean p02 = p0(andIncrement);
            int i10 = f.f31380b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (mVar2.f33250c != j11) {
                m R = R(j11, mVar2);
                if (R == null) {
                    if (p02) {
                        return k.f31403b.a(c0());
                    }
                } else {
                    mVar = R;
                }
            } else {
                mVar = mVar2;
            }
            int Y0 = Y0(mVar, i11, obj, j10, f0Var, p02);
            if (Y0 != 0) {
                if (Y0 != 1) {
                    if (Y0 != 2) {
                        if (Y0 != 3) {
                            if (Y0 != 4) {
                                if (Y0 == 5) {
                                    mVar.c();
                                }
                                mVar2 = mVar;
                            } else {
                                if (j10 < b0()) {
                                    mVar.c();
                                }
                                return k.f31403b.a(c0());
                            }
                        } else {
                            throw new IllegalStateException("unexpected".toString());
                        }
                    } else if (p02) {
                        mVar.t();
                        return k.f31403b.a(c0());
                    } else {
                        if (f0Var instanceof s2) {
                            s2Var = (s2) f0Var;
                        } else {
                            s2Var = null;
                        }
                        if (s2Var != null) {
                            H0(s2Var, mVar, i11);
                        }
                        N((mVar.f33250c * i10) + i11);
                        return k.f31403b.c(xc.t.f32733a);
                    }
                } else {
                    return k.f31403b.c(xc.t.f32733a);
                }
            } else {
                mVar.c();
                return k.f31403b.c(xc.t.f32733a);
            }
        }
    }

    protected final Throwable V() {
        return (Throwable) f31371k.get(this);
    }

    @Override // vd.w
    public final void b(CancellationException cancellationException) {
        G(cancellationException);
    }

    public final long b0() {
        return f31365e.get(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Throwable c0() {
        Throwable V = V();
        if (V == null) {
            return new r("Channel was closed");
        }
        return V;
    }

    public final void c1(long j10) {
        int i10;
        long j11;
        long v10;
        boolean z10;
        long v11;
        long j12;
        long v12;
        if (r0()) {
            return;
        }
        do {
        } while (T() <= j10);
        i10 = f.f31381c;
        for (int i11 = 0; i11 < i10; i11++) {
            long T = T();
            if (T == (f31367g.get(this) & 4611686018427387903L) && T == T()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f31367g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            v10 = f.v(j11 & 4611686018427387903L, true);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, v10));
        while (true) {
            long T2 = T();
            long j13 = f31367g.get(this);
            long j14 = j13 & 4611686018427387903L;
            if ((4611686018427387904L & j13) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (T2 == j14 && T2 == T()) {
                break;
            } else if (!z10) {
                AtomicLongFieldUpdater atomicLongFieldUpdater2 = f31367g;
                v11 = f.v(j14, true);
                atomicLongFieldUpdater2.compareAndSet(this, j13, v11);
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater3 = f31367g;
        do {
            j12 = atomicLongFieldUpdater3.get(this);
            v12 = f.v(j12 & 4611686018427387903L, false);
        } while (!atomicLongFieldUpdater3.compareAndSet(this, j12, v12));
    }

    @Override // vd.w
    public Object f() {
        f0 f0Var;
        m mVar;
        f0 f0Var2;
        s2 s2Var;
        f0 f0Var3;
        f0 f0Var4;
        long j10 = f31365e.get(this);
        long j11 = f31364d.get(this);
        if (o0(j11)) {
            return k.f31403b.a(V());
        }
        if (j10 < (j11 & 1152921504606846975L)) {
            f0Var = f.f31389k;
            m mVar2 = (m) l().get(this);
            while (!n0()) {
                long andIncrement = n().getAndIncrement(this);
                int i10 = f.f31380b;
                long j12 = andIncrement / i10;
                int i11 = (int) (andIncrement % i10);
                if (mVar2.f33250c != j12) {
                    m Q = Q(j12, mVar2);
                    if (Q == null) {
                        continue;
                    } else {
                        mVar = Q;
                    }
                } else {
                    mVar = mVar2;
                }
                Object W0 = W0(mVar, i11, andIncrement, f0Var);
                f0Var2 = f.f31391m;
                if (W0 != f0Var2) {
                    f0Var3 = f.f31393o;
                    if (W0 != f0Var3) {
                        f0Var4 = f.f31392n;
                        if (W0 != f0Var4) {
                            mVar.c();
                            return k.f31403b.c(W0);
                        }
                        throw new IllegalStateException("unexpected".toString());
                    }
                    if (andIncrement < f0()) {
                        mVar.c();
                    }
                    mVar2 = mVar;
                } else {
                    if (f0Var instanceof s2) {
                        s2Var = (s2) f0Var;
                    } else {
                        s2Var = null;
                    }
                    if (s2Var != null) {
                        G0(s2Var, mVar, i11);
                    }
                    c1(andIncrement);
                    mVar.t();
                    return k.f31403b.b();
                }
            }
            return k.f31403b.a(V());
        }
        return k.f31403b.b();
    }

    public final long f0() {
        return f31364d.get(this) & 1152921504606846975L;
    }

    @Override // vd.x
    public void h(id.l lVar) {
        f0 f0Var;
        f0 f0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        f0 f0Var3;
        f0 f0Var4;
        if (!androidx.concurrent.futures.b.a(f31372l, this, null, lVar)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f31372l;
            do {
                Object obj = atomicReferenceFieldUpdater2.get(this);
                f0Var = f.f31395q;
                if (obj == f0Var) {
                    atomicReferenceFieldUpdater = f31372l;
                    f0Var3 = f.f31395q;
                    f0Var4 = f.f31396r;
                } else {
                    f0Var2 = f.f31396r;
                    if (obj == f0Var2) {
                        throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                    }
                    throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                }
            } while (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, f0Var3, f0Var4));
            lVar.invoke(V());
        }
    }

    public final boolean h0() {
        while (true) {
            m mVar = (m) f31369i.get(this);
            long b02 = b0();
            if (f0() <= b02) {
                return false;
            }
            int i10 = f.f31380b;
            long j10 = b02 / i10;
            if (mVar.f33250c != j10 && (mVar = Q(j10, mVar)) == null) {
                if (((m) f31369i.get(this)).f33250c < j10) {
                    return false;
                }
            } else {
                mVar.c();
                if (l0(mVar, (int) (b02 % i10), b02)) {
                    return true;
                }
                f31365e.compareAndSet(this, b02, 1 + b02);
            }
        }
    }

    @Override // vd.w
    public i iterator() {
        return new a();
    }

    @Override // vd.x
    public boolean m(Throwable th) {
        return J(th, false);
    }

    public boolean n0() {
        return o0(f31364d.get(this));
    }

    @Override // vd.w
    public Object p(ad.e eVar) {
        return I0(this, eVar);
    }

    protected boolean q0() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bd, code lost:
        return vd.k.f31403b.c(xc.t.f32733a);
     */
    @Override // vd.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object t(java.lang.Object r15) {
        /*
            r14 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = e0()
            long r0 = r0.get(r14)
            boolean r0 = r14.Q0(r0)
            if (r0 == 0) goto L15
            vd.k$b r15 = vd.k.f31403b
            java.lang.Object r15 = r15.b()
            return r15
        L15:
            yd.f0 r8 = vd.f.j()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = o()
            java.lang.Object r0 = r0.get(r14)
            vd.m r0 = (vd.m) r0
        L23:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = q()
            long r1 = r1.getAndIncrement(r14)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r9 = r1 & r3
            boolean r11 = r(r14, r1)
            int r1 = vd.f.f31380b
            long r2 = (long) r1
            long r2 = r9 / r2
            long r4 = (long) r1
            long r4 = r9 % r4
            int r12 = (int) r4
            long r4 = r0.f33250c
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L50
            vd.m r1 = j(r14, r2, r0)
            if (r1 != 0) goto L4e
            if (r11 == 0) goto L23
            goto L90
        L4e:
            r13 = r1
            goto L51
        L50:
            r13 = r0
        L51:
            r0 = r14
            r1 = r13
            r2 = r12
            r3 = r15
            r4 = r9
            r6 = r8
            r7 = r11
            int r0 = B(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb2
            r1 = 1
            if (r0 == r1) goto Lb5
            r1 = 2
            if (r0 == r1) goto L8b
            r1 = 3
            if (r0 == r1) goto L7f
            r1 = 4
            if (r0 == r1) goto L73
            r1 = 5
            if (r0 == r1) goto L6e
            goto L71
        L6e:
            r13.c()
        L71:
            r0 = r13
            goto L23
        L73:
            long r0 = r14.b0()
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 >= 0) goto L90
            r13.c()
            goto L90
        L7f:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "unexpected"
            java.lang.String r0 = r0.toString()
            r15.<init>(r0)
            throw r15
        L8b:
            if (r11 == 0) goto L9b
            r13.t()
        L90:
            vd.k$b r15 = vd.k.f31403b
            java.lang.Throwable r0 = r14.c0()
            java.lang.Object r15 = r15.a(r0)
            goto Lbd
        L9b:
            boolean r15 = r8 instanceof td.s2
            if (r15 == 0) goto La2
            td.s2 r8 = (td.s2) r8
            goto La3
        La2:
            r8 = 0
        La3:
            if (r8 == 0) goto La8
            x(r14, r8, r13, r12)
        La8:
            r13.t()
            vd.k$b r15 = vd.k.f31403b
            java.lang.Object r15 = r15.b()
            goto Lbd
        Lb2:
            r13.c()
        Lb5:
            vd.k$b r15 = vd.k.f31403b
            xc.t r0 = xc.t.f32733a
            java.lang.Object r15 = r15.c(r0)
        Lbd:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.e.t(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b2, code lost:
        r3 = (vd.m) r3.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b9, code lost:
        if (r3 != null) goto L92;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b2 A[EDGE_INSN: B:91:0x01b2->B:73:0x01b2 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.e.toString():java.lang.String");
    }

    @Override // vd.x
    public Object y(Object obj, ad.e eVar) {
        return O0(this, obj, eVar);
    }

    protected void y0() {
    }

    @Override // vd.x
    public boolean z() {
        return p0(f31364d.get(this));
    }
}
