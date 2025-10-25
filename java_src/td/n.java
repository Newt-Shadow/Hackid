package td;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.k;
/* loaded from: classes2.dex */
public class n extends x0 implements l, kotlin.coroutines.jvm.internal.e, s2 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f30664f = AtomicIntegerFieldUpdater.newUpdater(n.class, "_decisionAndIndex$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30665g = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_state$volatile");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30666h = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: d  reason: collision with root package name */
    private final ad.e f30667d;

    /* renamed from: e  reason: collision with root package name */
    private final ad.i f30668e;

    public n(ad.e eVar, int i10) {
        super(i10);
        this.f30667d = eVar;
        this.f30668e = eVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = d.f30633a;
    }

    private final a1 F() {
        t1 t1Var = (t1) getContext().a(t1.f30695t0);
        if (t1Var == null) {
            return null;
        }
        a1 g10 = w1.g(t1Var, false, new r(this), 1, null);
        androidx.concurrent.futures.b.a(f30666h, this, null, g10);
        return g10;
    }

    private final void G(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30665g;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof d) {
                if (androidx.concurrent.futures.b.a(f30665g, this, obj2, obj)) {
                    return;
                }
            } else if (!(obj2 instanceof k) && !(obj2 instanceof yd.c0)) {
                boolean z10 = obj2 instanceof a0;
                if (z10) {
                    a0 a0Var = (a0) obj2;
                    if (!a0Var.c()) {
                        K(obj, obj2);
                    }
                    if (obj2 instanceof q) {
                        Throwable th = null;
                        if (!z10) {
                            a0Var = null;
                        }
                        if (a0Var != null) {
                            th = a0Var.f30621a;
                        }
                        if (obj instanceof k) {
                            m((k) obj, th);
                            return;
                        }
                        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        p((yd.c0) obj, th);
                        return;
                    }
                    return;
                } else if (obj2 instanceof z) {
                    z zVar = (z) obj2;
                    if (zVar.f30704b != null) {
                        K(obj, obj2);
                    }
                    if (obj instanceof yd.c0) {
                        return;
                    }
                    kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    k kVar = (k) obj;
                    if (zVar.c()) {
                        m(kVar, zVar.f30707e);
                        return;
                    }
                    if (androidx.concurrent.futures.b.a(f30665g, this, obj2, z.b(zVar, null, kVar, null, null, null, 29, null))) {
                        return;
                    }
                } else if (obj instanceof yd.c0) {
                    return;
                } else {
                    kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (androidx.concurrent.futures.b.a(f30665g, this, obj2, new z(obj2, (k) obj, null, null, null, 28, null))) {
                        return;
                    }
                }
            } else {
                K(obj, obj2);
            }
        }
    }

    private final boolean J() {
        if (y0.c(this.f30701c)) {
            ad.e eVar = this.f30667d;
            kotlin.jvm.internal.m.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((yd.h) eVar).p()) {
                return true;
            }
        }
        return false;
    }

    private final void K(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t Q(id.l lVar, Throwable th, Object obj, ad.i iVar) {
        lVar.invoke(th);
        return xc.t.f32733a;
    }

    public static /* synthetic */ void S(n nVar, Object obj, int i10, id.p pVar, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 4) != 0) {
                pVar = null;
            }
            nVar.R(obj, i10, pVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
    }

    private final Object T(g2 g2Var, Object obj, int i10, id.p pVar, Object obj2) {
        k kVar;
        if (!(obj instanceof a0)) {
            if (y0.b(i10) || obj2 != null) {
                if (pVar != null || (g2Var instanceof k) || obj2 != null) {
                    if (g2Var instanceof k) {
                        kVar = (k) g2Var;
                    } else {
                        kVar = null;
                    }
                    return new z(obj, kVar, pVar, obj2, null, 16, null);
                }
                return obj;
            }
            return obj;
        }
        return obj;
    }

    private final boolean U() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f30664f;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f30664f.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final yd.f0 V(Object obj, Object obj2, id.p pVar) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30665g;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof g2) {
            } else if (!(obj3 instanceof z) || obj2 == null || ((z) obj3).f30706d != obj2) {
                return null;
            } else {
                return o.f30677a;
            }
        } while (!androidx.concurrent.futures.b.a(f30665g, this, obj3, T((g2) obj3, obj, this.f30701c, pVar, obj2)));
        t();
        return o.f30677a;
    }

    private final boolean W() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f30664f;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f30664f.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        return true;
    }

    private final Void k(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void p(yd.c0 c0Var, Throwable th) {
        boolean z10;
        int i10 = f30664f.get(this) & 536870911;
        if (i10 != 536870911) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            try {
                c0Var.s(i10, th, getContext());
                return;
            } catch (Throwable th2) {
                ad.i context = getContext();
                k0.a(context, new b0("Exception in invokeOnCancellation handler for " + this, th2));
                return;
            }
        }
        throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
    }

    private final boolean q(Throwable th) {
        if (!J()) {
            return false;
        }
        ad.e eVar = this.f30667d;
        kotlin.jvm.internal.m.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((yd.h) eVar).q(th);
    }

    private final void t() {
        if (!J()) {
            s();
        }
    }

    private final void u(int i10) {
        if (U()) {
            return;
        }
        y0.a(this, i10);
    }

    private final a1 w() {
        return (a1) f30666h.get(this);
    }

    private final String z() {
        Object y10 = y();
        if (y10 instanceof g2) {
            return "Active";
        }
        if (y10 instanceof q) {
            return "Cancelled";
        }
        return "Completed";
    }

    @Override // td.l
    public void A(Object obj) {
        u(this.f30701c);
    }

    public void E() {
        a1 F = F();
        if (F != null && I()) {
            F.dispose();
            f30666h.set(this, f2.f30650a);
        }
    }

    public final void H(k kVar) {
        G(kVar);
    }

    public boolean I() {
        return !(y() instanceof g2);
    }

    protected String L() {
        return "CancellableContinuation";
    }

    public final void M(Throwable th) {
        if (q(th)) {
            return;
        }
        o(th);
        t();
    }

    public final void N() {
        yd.h hVar;
        Throwable t10;
        ad.e eVar = this.f30667d;
        if (eVar instanceof yd.h) {
            hVar = (yd.h) eVar;
        } else {
            hVar = null;
        }
        if (hVar != null && (t10 = hVar.t(this)) != null) {
            s();
            o(t10);
        }
    }

    public final boolean O() {
        Object obj = f30665g.get(this);
        if ((obj instanceof z) && ((z) obj).f30706d != null) {
            s();
            return false;
        }
        f30664f.set(this, 536870911);
        f30665g.set(this, d.f30633a);
        return true;
    }

    public void P(Object obj, final id.l lVar) {
        id.p pVar;
        int i10 = this.f30701c;
        if (lVar != null) {
            pVar = new id.p() { // from class: td.m
                @Override // id.p
                public final Object e(Object obj2, Object obj3, Object obj4) {
                    xc.t Q;
                    Q = n.Q(id.l.this, (Throwable) obj2, obj3, (ad.i) obj4);
                    return Q;
                }
            };
        } else {
            pVar = null;
        }
        R(obj, i10, pVar);
    }

    public final void R(Object obj, int i10, id.p pVar) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30665g;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof g2) {
            } else {
                if (obj2 instanceof q) {
                    q qVar = (q) obj2;
                    if (qVar.e()) {
                        if (pVar != null) {
                            n(pVar, qVar.f30621a, obj);
                            return;
                        }
                        return;
                    }
                }
                k(obj);
                throw new xc.c();
            }
        } while (!androidx.concurrent.futures.b.a(f30665g, this, obj2, T((g2) obj2, obj, i10, pVar, null)));
        t();
        u(i10);
    }

    @Override // td.x0
    public void a(Object obj, Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30665g;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof g2)) {
                if (obj2 instanceof a0) {
                    return;
                }
                if (obj2 instanceof z) {
                    z zVar = (z) obj2;
                    if (!zVar.c()) {
                        if (androidx.concurrent.futures.b.a(f30665g, this, obj2, z.b(zVar, null, null, null, null, th, 15, null))) {
                            zVar.d(this, th);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (androidx.concurrent.futures.b.a(f30665g, this, obj2, new z(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    @Override // td.s2
    public void b(yd.c0 c0Var, int i10) {
        int i11;
        boolean z10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f30664f;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) == 536870911) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        G(c0Var);
    }

    @Override // td.x0
    public final ad.e c() {
        return this.f30667d;
    }

    @Override // td.l
    public Object d(Object obj, Object obj2, id.p pVar) {
        return V(obj, obj2, pVar);
    }

    @Override // td.x0
    public Throwable e(Object obj) {
        Throwable e10 = super.e(obj);
        if (e10 == null) {
            return null;
        }
        return e10;
    }

    @Override // td.x0
    public Object f(Object obj) {
        if (obj instanceof z) {
            return ((z) obj).f30703a;
        }
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        ad.e eVar = this.f30667d;
        if (eVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) eVar;
        }
        return null;
    }

    @Override // ad.e
    public ad.i getContext() {
        return this.f30668e;
    }

    @Override // td.x0
    public Object h() {
        return y();
    }

    @Override // td.l
    public void i(i0 i0Var, Object obj) {
        yd.h hVar;
        int i10;
        ad.e eVar = this.f30667d;
        i0 i0Var2 = null;
        if (eVar instanceof yd.h) {
            hVar = (yd.h) eVar;
        } else {
            hVar = null;
        }
        if (hVar != null) {
            i0Var2 = hVar.f33259d;
        }
        if (i0Var2 == i0Var) {
            i10 = 4;
        } else {
            i10 = this.f30701c;
        }
        S(this, obj, i10, null, 4, null);
    }

    @Override // td.l
    public void l(id.l lVar) {
        p.c(this, new k.a(lVar));
    }

    public final void m(k kVar, Throwable th) {
        try {
            kVar.a(th);
        } catch (Throwable th2) {
            ad.i context = getContext();
            k0.a(context, new b0("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void n(id.p pVar, Throwable th, Object obj) {
        try {
            pVar.e(th, obj, getContext());
        } catch (Throwable th2) {
            ad.i context = getContext();
            k0.a(context, new b0("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // td.l
    public boolean o(Throwable th) {
        Object obj;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30665g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            z10 = false;
            if (!(obj instanceof g2)) {
                return false;
            }
            if ((obj instanceof k) || (obj instanceof yd.c0)) {
                z10 = true;
            }
        } while (!androidx.concurrent.futures.b.a(f30665g, this, obj, new q(this, th, z10)));
        g2 g2Var = (g2) obj;
        if (g2Var instanceof k) {
            m((k) obj, th);
        } else if (g2Var instanceof yd.c0) {
            p((yd.c0) obj, th);
        }
        t();
        u(this.f30701c);
        return true;
    }

    @Override // td.l
    public void r(Object obj, id.p pVar) {
        R(obj, this.f30701c, pVar);
    }

    @Override // ad.e
    public void resumeWith(Object obj) {
        S(this, c0.c(obj, this), this.f30701c, null, 4, null);
    }

    public final void s() {
        a1 w10 = w();
        if (w10 == null) {
            return;
        }
        w10.dispose();
        f30666h.set(this, f2.f30650a);
    }

    public String toString() {
        return L() + '(' + p0.c(this.f30667d) + "){" + z() + "}@" + p0.b(this);
    }

    public Throwable v(t1 t1Var) {
        return t1Var.u();
    }

    public final Object x() {
        t1 t1Var;
        Object e10;
        boolean J = J();
        if (W()) {
            if (w() == null) {
                F();
            }
            if (J) {
                N();
            }
            e10 = bd.d.e();
            return e10;
        }
        if (J) {
            N();
        }
        Object y10 = y();
        if (!(y10 instanceof a0)) {
            if (y0.b(this.f30701c) && (t1Var = (t1) getContext().a(t1.f30695t0)) != null && !t1Var.isActive()) {
                CancellationException u10 = t1Var.u();
                a(y10, u10);
                throw u10;
            }
            return f(y10);
        }
        throw ((a0) y10).f30621a;
    }

    public final Object y() {
        return f30665g.get(this);
    }
}
