package td;

import ad.i;
import id.Function2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.t1;
/* loaded from: classes2.dex */
public class z1 implements t1, u, h2 {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30711a = AtomicReferenceFieldUpdater.newUpdater(z1.class, Object.class, "_state$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f30712b = AtomicReferenceFieldUpdater.newUpdater(z1.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a extends n {

        /* renamed from: i  reason: collision with root package name */
        private final z1 f30713i;

        public a(ad.e eVar, z1 z1Var) {
            super(eVar, 1);
            this.f30713i = z1Var;
        }

        @Override // td.n
        protected String L() {
            return "AwaitContinuation";
        }

        @Override // td.n
        public Throwable v(t1 t1Var) {
            Throwable e10;
            Object g02 = this.f30713i.g0();
            if ((g02 instanceof c) && (e10 = ((c) g02).e()) != null) {
                return e10;
            }
            if (g02 instanceof a0) {
                return ((a0) g02).f30621a;
            }
            return t1Var.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends y1 {

        /* renamed from: e  reason: collision with root package name */
        private final z1 f30714e;

        /* renamed from: f  reason: collision with root package name */
        private final c f30715f;

        /* renamed from: g  reason: collision with root package name */
        private final t f30716g;

        /* renamed from: h  reason: collision with root package name */
        private final Object f30717h;

        public b(z1 z1Var, c cVar, t tVar, Object obj) {
            this.f30714e = z1Var;
            this.f30715f = cVar;
            this.f30716g = tVar;
            this.f30717h = obj;
        }

        @Override // td.y1
        public boolean u() {
            return false;
        }

        @Override // td.y1
        public void v(Throwable th) {
            this.f30714e.S(this.f30715f, this.f30716g, this.f30717h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c implements p1 {

        /* renamed from: b  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f30718b = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f30719c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f30720d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* renamed from: a  reason: collision with root package name */
        private final e2 f30721a;

        public c(e2 e2Var, boolean z10, Throwable th) {
            this.f30721a = e2Var;
            this._isCompleting$volatile = z10 ? 1 : 0;
            this._rootCause$volatile = th;
        }

        private final ArrayList c() {
            return new ArrayList(4);
        }

        private final Object d() {
            return f30720d.get(this);
        }

        private final void n(Object obj) {
            f30720d.set(this, obj);
        }

        public final void a(Throwable th) {
            Throwable e10 = e();
            if (e10 == null) {
                o(th);
            } else if (th == e10) {
            } else {
                Object d10 = d();
                if (d10 == null) {
                    n(th);
                } else if (d10 instanceof Throwable) {
                    if (th == d10) {
                        return;
                    }
                    ArrayList c10 = c();
                    c10.add(d10);
                    c10.add(th);
                    n(c10);
                } else if (d10 instanceof ArrayList) {
                    ((ArrayList) d10).add(th);
                } else {
                    throw new IllegalStateException(("State is " + d10).toString());
                }
            }
        }

        @Override // td.p1
        public e2 b() {
            return this.f30721a;
        }

        public final Throwable e() {
            return (Throwable) f30719c.get(this);
        }

        public final boolean i() {
            if (e() != null) {
                return true;
            }
            return false;
        }

        @Override // td.p1
        public boolean isActive() {
            if (e() == null) {
                return true;
            }
            return false;
        }

        public final boolean j() {
            if (f30718b.get(this) != 0) {
                return true;
            }
            return false;
        }

        public final boolean k() {
            yd.f0 f0Var;
            Object d10 = d();
            f0Var = a2.f30626e;
            if (d10 == f0Var) {
                return true;
            }
            return false;
        }

        public final List l(Throwable th) {
            ArrayList arrayList;
            yd.f0 f0Var;
            Object d10 = d();
            if (d10 == null) {
                arrayList = c();
            } else if (d10 instanceof Throwable) {
                ArrayList c10 = c();
                c10.add(d10);
                arrayList = c10;
            } else if (d10 instanceof ArrayList) {
                arrayList = (ArrayList) d10;
            } else {
                throw new IllegalStateException(("State is " + d10).toString());
            }
            Throwable e10 = e();
            if (e10 != null) {
                arrayList.add(0, e10);
            }
            if (th != null && !kotlin.jvm.internal.m.a(th, e10)) {
                arrayList.add(th);
            }
            f0Var = a2.f30626e;
            n(f0Var);
            return arrayList;
        }

        public final void m(boolean z10) {
            f30718b.set(this, z10 ? 1 : 0);
        }

        public final void o(Throwable th) {
            f30719c.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + b() + ']';
        }
    }

    public z1(boolean z10) {
        this._state$volatile = z10 ? a2.f30628g : a2.f30627f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [td.o1] */
    private final void A0(c1 c1Var) {
        e2 e2Var = new e2();
        if (!c1Var.isActive()) {
            e2Var = new o1(e2Var);
        }
        androidx.concurrent.futures.b.a(f30711a, this, c1Var, e2Var);
    }

    private final void B0(y1 y1Var) {
        y1Var.e(new e2());
        androidx.concurrent.futures.b.a(f30711a, this, y1Var, y1Var.k());
    }

    private final void D(Throwable th, List list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                xc.b.a(th, th2);
            }
        }
    }

    private final int E0(Object obj) {
        c1 c1Var;
        if (obj instanceof c1) {
            if (!((c1) obj).isActive()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f30711a;
                c1Var = a2.f30628g;
                if (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, obj, c1Var)) {
                    return -1;
                }
                z0();
                return 1;
            }
            return 0;
        } else if (!(obj instanceof o1)) {
            return 0;
        } else {
            if (!androidx.concurrent.futures.b.a(f30711a, this, obj, ((o1) obj).b())) {
                return -1;
            }
            z0();
            return 1;
        }
    }

    private final String F0(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.i()) {
                return "Cancelling";
            }
            if (!cVar.j()) {
                return "Active";
            }
            return "Completing";
        } else if (obj instanceof p1) {
            if (((p1) obj).isActive()) {
                return "Active";
            }
            return "New";
        } else if (obj instanceof a0) {
            return "Cancelled";
        } else {
            return "Completed";
        }
    }

    public static /* synthetic */ CancellationException H0(z1 z1Var, Throwable th, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            return z1Var.G0(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    private final Object I(ad.e eVar) {
        a aVar = new a(bd.b.c(eVar), this);
        aVar.E();
        p.a(aVar, w1.g(this, false, new i2(aVar), 1, null));
        Object x10 = aVar.x();
        if (x10 == bd.b.e()) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        return x10;
    }

    private final boolean J0(p1 p1Var, Object obj) {
        if (!androidx.concurrent.futures.b.a(f30711a, this, p1Var, a2.g(obj))) {
            return false;
        }
        x0(null);
        y0(obj);
        R(p1Var, obj);
        return true;
    }

    private final boolean K0(p1 p1Var, Throwable th) {
        e2 c02 = c0(p1Var);
        if (c02 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.b.a(f30711a, this, p1Var, new c(c02, false, th))) {
            return false;
        }
        v0(c02, th);
        return true;
    }

    private final Object L0(Object obj, Object obj2) {
        yd.f0 f0Var;
        yd.f0 f0Var2;
        if (!(obj instanceof p1)) {
            f0Var2 = a2.f30622a;
            return f0Var2;
        } else if (((obj instanceof c1) || (obj instanceof y1)) && !(obj instanceof t) && !(obj2 instanceof a0)) {
            if (!J0((p1) obj, obj2)) {
                f0Var = a2.f30624c;
                return f0Var;
            }
            return obj2;
        } else {
            return M0((p1) obj, obj2);
        }
    }

    private final Object M(Object obj) {
        yd.f0 f0Var;
        Object L0;
        yd.f0 f0Var2;
        do {
            Object g02 = g0();
            if (!(g02 instanceof p1) || ((g02 instanceof c) && ((c) g02).j())) {
                f0Var = a2.f30622a;
                return f0Var;
            }
            L0 = L0(g02, new a0(T(obj), false, 2, null));
            f0Var2 = a2.f30624c;
        } while (L0 == f0Var2);
        return L0;
    }

    private final Object M0(p1 p1Var, Object obj) {
        c cVar;
        a0 a0Var;
        yd.f0 f0Var;
        yd.f0 f0Var2;
        yd.f0 f0Var3;
        e2 c02 = c0(p1Var);
        if (c02 == null) {
            f0Var3 = a2.f30624c;
            return f0Var3;
        }
        Throwable th = null;
        if (p1Var instanceof c) {
            cVar = (c) p1Var;
        } else {
            cVar = null;
        }
        boolean z10 = false;
        if (cVar == null) {
            cVar = new c(c02, false, null);
        }
        kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        synchronized (cVar) {
            if (cVar.j()) {
                f0Var2 = a2.f30622a;
                return f0Var2;
            }
            cVar.m(true);
            if (cVar != p1Var && !androidx.concurrent.futures.b.a(f30711a, this, p1Var, cVar)) {
                f0Var = a2.f30624c;
                return f0Var;
            }
            boolean i10 = cVar.i();
            if (obj instanceof a0) {
                a0Var = (a0) obj;
            } else {
                a0Var = null;
            }
            if (a0Var != null) {
                cVar.a(a0Var.f30621a);
            }
            Throwable e10 = cVar.e();
            if (!i10) {
                z10 = true;
            }
            if (Boolean.valueOf(z10).booleanValue()) {
                th = e10;
            }
            c0Var.f24971a = th;
            xc.t tVar = xc.t.f32733a;
            if (th != null) {
                v0(c02, th);
            }
            t u02 = u0(c02);
            if (u02 != null && N0(cVar, u02, obj)) {
                return a2.f30623b;
            }
            c02.f(2);
            t u03 = u0(c02);
            if (u03 != null && N0(cVar, u03, obj)) {
                return a2.f30623b;
            }
            return U(cVar, obj);
        }
    }

    private final boolean N(Throwable th) {
        if (p0()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        s f02 = f0();
        if (f02 != null && f02 != f2.f30650a) {
            if (f02.a(th) || z10) {
                return true;
            }
            return false;
        }
        return z10;
    }

    private final boolean N0(c cVar, t tVar, Object obj) {
        while (w1.f(tVar.f30694e, false, new b(this, cVar, tVar, obj)) == f2.f30650a) {
            tVar = u0(tVar);
            if (tVar == null) {
                return false;
            }
        }
        return true;
    }

    private final void R(p1 p1Var, Object obj) {
        a0 a0Var;
        s f02 = f0();
        if (f02 != null) {
            f02.dispose();
            D0(f2.f30650a);
        }
        Throwable th = null;
        if (obj instanceof a0) {
            a0Var = (a0) obj;
        } else {
            a0Var = null;
        }
        if (a0Var != null) {
            th = a0Var.f30621a;
        }
        if (p1Var instanceof y1) {
            try {
                ((y1) p1Var).v(th);
                return;
            } catch (Throwable th2) {
                l0(new b0("Exception in completion handler " + p1Var + " for " + this, th2));
                return;
            }
        }
        e2 b10 = p1Var.b();
        if (b10 != null) {
            w0(b10, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(c cVar, t tVar, Object obj) {
        t u02 = u0(tVar);
        if (u02 != null && N0(cVar, u02, obj)) {
            return;
        }
        cVar.b().f(2);
        t u03 = u0(tVar);
        if (u03 != null && N0(cVar, u03, obj)) {
            return;
        }
        F(U(cVar, obj));
    }

    private final Throwable T(Object obj) {
        boolean z10;
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof Throwable;
        }
        if (z10) {
            Throwable th = (Throwable) obj;
            if (th == null) {
                return new u1(O(), null, this);
            }
            return th;
        }
        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((h2) obj).W();
    }

    private final Object U(c cVar, Object obj) {
        a0 a0Var;
        Throwable th;
        boolean i10;
        Throwable Z;
        if (obj instanceof a0) {
            a0Var = (a0) obj;
        } else {
            a0Var = null;
        }
        if (a0Var != null) {
            th = a0Var.f30621a;
        } else {
            th = null;
        }
        synchronized (cVar) {
            i10 = cVar.i();
            List l10 = cVar.l(th);
            Z = Z(cVar, l10);
            if (Z != null) {
                D(Z, l10);
            }
        }
        boolean z10 = false;
        if (Z != null && Z != th) {
            obj = new a0(Z, false, 2, null);
        }
        if (Z != null) {
            if ((N(Z) || j0(Z)) ? true : true) {
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((a0) obj).c();
            }
        }
        if (!i10) {
            x0(Z);
        }
        y0(obj);
        androidx.concurrent.futures.b.a(f30711a, this, cVar, a2.g(obj));
        R(cVar, obj);
        return obj;
    }

    private final Throwable Y(Object obj) {
        a0 a0Var;
        if (obj instanceof a0) {
            a0Var = (a0) obj;
        } else {
            a0Var = null;
        }
        if (a0Var == null) {
            return null;
        }
        return a0Var.f30621a;
    }

    private final Throwable Z(c cVar, List list) {
        Object obj = null;
        if (list.isEmpty()) {
            if (!cVar.i()) {
                return null;
            }
            return new u1(O(), null, this);
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                obj = next;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        return (Throwable) list.get(0);
    }

    private final e2 c0(p1 p1Var) {
        e2 b10 = p1Var.b();
        if (b10 == null) {
            if (p1Var instanceof c1) {
                return new e2();
            }
            if (p1Var instanceof y1) {
                B0((y1) p1Var);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + p1Var).toString());
        }
        return b10;
    }

    private final Object q0(Object obj) {
        yd.f0 f0Var;
        yd.f0 f0Var2;
        yd.f0 f0Var3;
        yd.f0 f0Var4;
        yd.f0 f0Var5;
        yd.f0 f0Var6;
        Throwable th = null;
        Throwable th2 = null;
        while (true) {
            Object g02 = g0();
            if (g02 instanceof c) {
                synchronized (g02) {
                    if (((c) g02).k()) {
                        f0Var2 = a2.f30625d;
                        return f0Var2;
                    }
                    boolean i10 = ((c) g02).i();
                    if (obj != null || !i10) {
                        if (th2 == null) {
                            th2 = T(obj);
                        }
                        ((c) g02).a(th2);
                    }
                    Throwable e10 = ((c) g02).e();
                    if (!i10) {
                        th = e10;
                    }
                    if (th != null) {
                        v0(((c) g02).b(), th);
                    }
                    f0Var = a2.f30622a;
                    return f0Var;
                }
            } else if (!(g02 instanceof p1)) {
                f0Var3 = a2.f30625d;
                return f0Var3;
            } else {
                if (th2 == null) {
                    th2 = T(obj);
                }
                p1 p1Var = (p1) g02;
                if (p1Var.isActive()) {
                    if (K0(p1Var, th2)) {
                        f0Var4 = a2.f30622a;
                        return f0Var4;
                    }
                } else {
                    Object L0 = L0(g02, new a0(th2, false, 2, null));
                    f0Var5 = a2.f30622a;
                    if (L0 != f0Var5) {
                        f0Var6 = a2.f30624c;
                        if (L0 != f0Var6) {
                            return L0;
                        }
                    } else {
                        throw new IllegalStateException(("Cannot happen in " + g02).toString());
                    }
                }
            }
        }
    }

    private final t u0(yd.q qVar) {
        while (qVar.p()) {
            qVar = qVar.l();
        }
        while (true) {
            qVar = qVar.k();
            if (!qVar.p()) {
                if (qVar instanceof t) {
                    return (t) qVar;
                }
                if (qVar instanceof e2) {
                    return null;
                }
            }
        }
    }

    private final void v0(e2 e2Var, Throwable th) {
        x0(th);
        e2Var.f(4);
        Object j10 = e2Var.j();
        kotlin.jvm.internal.m.c(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        b0 b0Var = null;
        for (yd.q qVar = (yd.q) j10; !kotlin.jvm.internal.m.a(qVar, e2Var); qVar = qVar.k()) {
            if ((qVar instanceof y1) && ((y1) qVar).u()) {
                try {
                    ((y1) qVar).v(th);
                } catch (Throwable th2) {
                    if (b0Var != null) {
                        xc.b.a(b0Var, th2);
                    } else {
                        b0Var = new b0("Exception in completion handler " + qVar + " for " + this, th2);
                        xc.t tVar = xc.t.f32733a;
                    }
                }
            }
        }
        if (b0Var != null) {
            l0(b0Var);
        }
        N(th);
    }

    private final void w0(e2 e2Var, Throwable th) {
        e2Var.f(1);
        Object j10 = e2Var.j();
        kotlin.jvm.internal.m.c(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        b0 b0Var = null;
        for (yd.q qVar = (yd.q) j10; !kotlin.jvm.internal.m.a(qVar, e2Var); qVar = qVar.k()) {
            if (qVar instanceof y1) {
                y1 y1Var = (y1) qVar;
                try {
                    ((y1) qVar).v(th);
                } catch (Throwable th2) {
                    if (b0Var != null) {
                        xc.b.a(b0Var, th2);
                    } else {
                        b0Var = new b0("Exception in completion handler " + qVar + " for " + this, th2);
                        xc.t tVar = xc.t.f32733a;
                    }
                }
            }
        }
        if (b0Var != null) {
            l0(b0Var);
        }
    }

    public final void C0(y1 y1Var) {
        Object g02;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        c1 c1Var;
        do {
            g02 = g0();
            if (g02 instanceof y1) {
                if (g02 == y1Var) {
                    atomicReferenceFieldUpdater = f30711a;
                    c1Var = a2.f30628g;
                } else {
                    return;
                }
            } else if ((g02 instanceof p1) && ((p1) g02).b() != null) {
                y1Var.q();
                return;
            } else {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, g02, c1Var));
    }

    public final void D0(s sVar) {
        f30712b.set(this, sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object G(ad.e eVar) {
        Object g02;
        do {
            g02 = g0();
            if (!(g02 instanceof p1)) {
                if (!(g02 instanceof a0)) {
                    return a2.h(g02);
                }
                throw ((a0) g02).f30621a;
            }
        } while (E0(g02) < 0);
        return I(eVar);
    }

    protected final CancellationException G0(Throwable th, String str) {
        CancellationException cancellationException;
        if (th instanceof CancellationException) {
            cancellationException = (CancellationException) th;
        } else {
            cancellationException = null;
        }
        if (cancellationException == null) {
            if (str == null) {
                str = O();
            }
            cancellationException = new u1(str, th, this);
        }
        return cancellationException;
    }

    public final String I0() {
        return t0() + '{' + F0(g0()) + '}';
    }

    public final boolean J(Throwable th) {
        return K(th);
    }

    public final boolean K(Object obj) {
        Object obj2;
        yd.f0 f0Var;
        yd.f0 f0Var2;
        yd.f0 f0Var3;
        obj2 = a2.f30622a;
        if (!b0() || (obj2 = M(obj)) != a2.f30623b) {
            f0Var = a2.f30622a;
            if (obj2 == f0Var) {
                obj2 = q0(obj);
            }
            f0Var2 = a2.f30622a;
            if (obj2 != f0Var2 && obj2 != a2.f30623b) {
                f0Var3 = a2.f30625d;
                if (obj2 == f0Var3) {
                    return false;
                }
                F(obj2);
                return true;
            }
            return true;
        }
        return true;
    }

    public void L(Throwable th) {
        K(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String O() {
        return "Job was cancelled";
    }

    @Override // td.u
    public final void P(h2 h2Var) {
        K(h2Var);
    }

    public boolean Q(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        if (K(th) && a0()) {
            return true;
        }
        return false;
    }

    public final Object V() {
        Object g02 = g0();
        if (!(g02 instanceof p1)) {
            if (!(g02 instanceof a0)) {
                return a2.h(g02);
            }
            throw ((a0) g02).f30621a;
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // td.h2
    public CancellationException W() {
        Throwable th;
        Object g02 = g0();
        CancellationException cancellationException = null;
        if (g02 instanceof c) {
            th = ((c) g02).e();
        } else if (g02 instanceof a0) {
            th = ((a0) g02).f30621a;
        } else if (!(g02 instanceof p1)) {
            th = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + g02).toString());
        }
        if (th instanceof CancellationException) {
            cancellationException = th;
        }
        if (cancellationException == null) {
            return new u1("Parent job is " + F0(g02), th, this);
        }
        return cancellationException;
    }

    @Override // td.t1
    public final boolean X() {
        return !(g0() instanceof p1);
    }

    @Override // ad.i.b, ad.i
    public i.b a(i.c cVar) {
        return t1.a.c(this, cVar);
    }

    public boolean a0() {
        return true;
    }

    @Override // td.t1
    public void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new u1(O(), null, this);
        }
        L(cancellationException);
    }

    public boolean b0() {
        return false;
    }

    @Override // ad.i
    public ad.i e(ad.i iVar) {
        return t1.a.e(this, iVar);
    }

    public t1 e0() {
        s f02 = f0();
        if (f02 != null) {
            return f02.getParent();
        }
        return null;
    }

    public final s f0() {
        return (s) f30712b.get(this);
    }

    @Override // ad.i
    public ad.i g(i.c cVar) {
        return t1.a.d(this, cVar);
    }

    public final Object g0() {
        return f30711a.get(this);
    }

    @Override // ad.i.b
    public final i.c getKey() {
        return t1.f30695t0;
    }

    @Override // td.t1
    public boolean isActive() {
        Object g02 = g0();
        if ((g02 instanceof p1) && ((p1) g02).isActive()) {
            return true;
        }
        return false;
    }

    @Override // td.t1
    public final boolean isCancelled() {
        Object g02 = g0();
        if (!(g02 instanceof a0) && (!(g02 instanceof c) || !((c) g02).i())) {
            return false;
        }
        return true;
    }

    protected boolean j0(Throwable th) {
        return false;
    }

    @Override // ad.i
    public Object k(Object obj, Function2 function2) {
        return t1.a.b(this, obj, function2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m0(t1 t1Var) {
        if (t1Var == null) {
            D0(f2.f30650a);
            return;
        }
        t1Var.start();
        s x10 = t1Var.x(this);
        D0(x10);
        if (X()) {
            x10.dispose();
            D0(f2.f30650a);
        }
    }

    public final a1 n0(boolean z10, y1 y1Var) {
        boolean z11;
        Throwable th;
        a0 a0Var;
        boolean c10;
        c cVar;
        Throwable th2;
        y1Var.w(this);
        while (true) {
            Object g02 = g0();
            z11 = true;
            th = null;
            if (g02 instanceof c1) {
                c1 c1Var = (c1) g02;
                if (c1Var.isActive()) {
                    if (androidx.concurrent.futures.b.a(f30711a, this, g02, y1Var)) {
                        break;
                    }
                } else {
                    A0(c1Var);
                }
            } else if (g02 instanceof p1) {
                p1 p1Var = (p1) g02;
                e2 b10 = p1Var.b();
                if (b10 == null) {
                    kotlin.jvm.internal.m.c(g02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    B0((y1) g02);
                } else {
                    if (y1Var.u()) {
                        if (p1Var instanceof c) {
                            cVar = (c) p1Var;
                        } else {
                            cVar = null;
                        }
                        if (cVar != null) {
                            th2 = cVar.e();
                        } else {
                            th2 = null;
                        }
                        if (th2 == null) {
                            c10 = b10.c(y1Var, 5);
                        } else {
                            if (z10) {
                                y1Var.v(th2);
                            }
                            return f2.f30650a;
                        }
                    } else {
                        c10 = b10.c(y1Var, 1);
                    }
                    if (c10) {
                        break;
                    }
                }
            } else {
                z11 = false;
                break;
            }
        }
        if (z11) {
            return y1Var;
        }
        if (z10) {
            Object g03 = g0();
            if (g03 instanceof a0) {
                a0Var = (a0) g03;
            } else {
                a0Var = null;
            }
            if (a0Var != null) {
                th = a0Var.f30621a;
            }
            y1Var.v(th);
        }
        return f2.f30650a;
    }

    @Override // td.t1
    public final a1 o0(boolean z10, boolean z11, id.l lVar) {
        y1 s1Var;
        if (z10) {
            s1Var = new r1(lVar);
        } else {
            s1Var = new s1(lVar);
        }
        return n0(z11, s1Var);
    }

    protected boolean p0() {
        return false;
    }

    @Override // td.t1
    public final a1 q(id.l lVar) {
        return n0(true, new s1(lVar));
    }

    public final boolean r0(Object obj) {
        Object L0;
        yd.f0 f0Var;
        yd.f0 f0Var2;
        do {
            L0 = L0(g0(), obj);
            f0Var = a2.f30622a;
            if (L0 == f0Var) {
                return false;
            }
            if (L0 != a2.f30623b) {
                f0Var2 = a2.f30624c;
            } else {
                return true;
            }
        } while (L0 == f0Var2);
        F(L0);
        return true;
    }

    public final Object s0(Object obj) {
        Object L0;
        yd.f0 f0Var;
        yd.f0 f0Var2;
        do {
            L0 = L0(g0(), obj);
            f0Var = a2.f30622a;
            if (L0 != f0Var) {
                f0Var2 = a2.f30624c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, Y(obj));
            }
        } while (L0 == f0Var2);
        return L0;
    }

    @Override // td.t1
    public final boolean start() {
        int E0;
        do {
            E0 = E0(g0());
            if (E0 == 0) {
                return false;
            }
        } while (E0 != 1);
        return true;
    }

    public String t0() {
        return p0.a(this);
    }

    public String toString() {
        return I0() + '@' + p0.b(this);
    }

    @Override // td.t1
    public final CancellationException u() {
        Object g02 = g0();
        if (g02 instanceof c) {
            Throwable e10 = ((c) g02).e();
            if (e10 != null) {
                CancellationException G0 = G0(e10, p0.a(this) + " is cancelling");
                if (G0 != null) {
                    return G0;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        } else if (!(g02 instanceof p1)) {
            if (g02 instanceof a0) {
                return H0(this, ((a0) g02).f30621a, null, 1, null);
            }
            return new u1(p0.a(this) + " has completed normally", null, this);
        } else {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
    }

    @Override // td.t1
    public final s x(u uVar) {
        boolean z10;
        Throwable th;
        a0 a0Var;
        a0 a0Var2;
        Throwable th2;
        t tVar = new t(uVar);
        tVar.w(this);
        while (true) {
            Object g02 = g0();
            z10 = true;
            th = null;
            if (g02 instanceof c1) {
                c1 c1Var = (c1) g02;
                if (c1Var.isActive()) {
                    if (androidx.concurrent.futures.b.a(f30711a, this, g02, tVar)) {
                        break;
                    }
                } else {
                    A0(c1Var);
                }
            } else if (g02 instanceof p1) {
                e2 b10 = ((p1) g02).b();
                if (b10 == null) {
                    kotlin.jvm.internal.m.c(g02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    B0((y1) g02);
                } else if (!b10.c(tVar, 7)) {
                    boolean c10 = b10.c(tVar, 3);
                    Object g03 = g0();
                    if (g03 instanceof c) {
                        th2 = ((c) g03).e();
                    } else {
                        if (g03 instanceof a0) {
                            a0Var2 = (a0) g03;
                        } else {
                            a0Var2 = null;
                        }
                        if (a0Var2 != null) {
                            th2 = a0Var2.f30621a;
                        } else {
                            th2 = null;
                        }
                    }
                    tVar.v(th2);
                    if (!c10) {
                        return f2.f30650a;
                    }
                }
            } else {
                z10 = false;
                break;
            }
        }
        if (z10) {
            return tVar;
        }
        Object g04 = g0();
        if (g04 instanceof a0) {
            a0Var = (a0) g04;
        } else {
            a0Var = null;
        }
        if (a0Var != null) {
            th = a0Var.f30621a;
        }
        tVar.v(th);
        return f2.f30650a;
    }

    protected void x0(Throwable th) {
    }

    protected void y0(Object obj) {
    }

    protected void z0() {
    }

    public void l0(Throwable th) {
        throw th;
    }
}
