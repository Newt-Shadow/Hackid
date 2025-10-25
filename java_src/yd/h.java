package yd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.d1;
import td.o2;
import td.x0;
/* loaded from: classes2.dex */
public final class h extends x0 implements kotlin.coroutines.jvm.internal.e, ad.e {

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33258h = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* renamed from: d  reason: collision with root package name */
    public final td.i0 f33259d;

    /* renamed from: e  reason: collision with root package name */
    public final ad.e f33260e;

    /* renamed from: f  reason: collision with root package name */
    public Object f33261f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f33262g;

    public h(td.i0 i0Var, ad.e eVar) {
        super(-1);
        this.f33259d = i0Var;
        this.f33260e = eVar;
        this.f33261f = i.a();
        this.f33262g = m0.g(getContext());
    }

    private final td.n m() {
        Object obj = f33258h.get(this);
        if (obj instanceof td.n) {
            return (td.n) obj;
        }
        return null;
    }

    @Override // td.x0
    public ad.e c() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        ad.e eVar = this.f33260e;
        if (eVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) eVar;
        }
        return null;
    }

    @Override // ad.e
    public ad.i getContext() {
        return this.f33260e.getContext();
    }

    @Override // td.x0
    public Object h() {
        Object obj = this.f33261f;
        this.f33261f = i.a();
        return obj;
    }

    public final void j() {
        do {
        } while (f33258h.get(this) == i.f33265b);
    }

    public final td.n k() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33258h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f33258h.set(this, i.f33265b);
                return null;
            } else if (obj instanceof td.n) {
                if (androidx.concurrent.futures.b.a(f33258h, this, obj, i.f33265b)) {
                    return (td.n) obj;
                }
            } else if (obj != i.f33265b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final boolean p() {
        if (f33258h.get(this) != null) {
            return true;
        }
        return false;
    }

    public final boolean q(Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33258h;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            f0 f0Var = i.f33265b;
            if (kotlin.jvm.internal.m.a(obj, f0Var)) {
                if (androidx.concurrent.futures.b.a(f33258h, this, f0Var, th)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (androidx.concurrent.futures.b.a(f33258h, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // ad.e
    public void resumeWith(Object obj) {
        Object b10 = td.c0.b(obj);
        if (this.f33259d.t0(getContext())) {
            this.f33261f = b10;
            this.f30701c = 0;
            this.f33259d.q0(getContext(), this);
            return;
        }
        d1 b11 = o2.f30679a.b();
        if (b11.Z0()) {
            this.f33261f = b10;
            this.f30701c = 0;
            b11.V0(this);
            return;
        }
        b11.X0(true);
        try {
            ad.i context = getContext();
            Object i10 = m0.i(context, this.f33262g);
            this.f33260e.resumeWith(obj);
            xc.t tVar = xc.t.f32733a;
            m0.f(context, i10);
            do {
            } while (b11.c1());
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void s() {
        j();
        td.n m10 = m();
        if (m10 != null) {
            m10.s();
        }
    }

    public final Throwable t(td.l lVar) {
        f0 f0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33258h;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            f0Var = i.f33265b;
            if (obj != f0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.b.a(f33258h, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.b.a(f33258h, this, f0Var, lVar));
        return null;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f33259d + ", " + td.p0.c(this.f33260e) + ']';
    }
}
