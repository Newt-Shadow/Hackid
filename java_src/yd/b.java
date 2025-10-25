package yd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33246a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_next$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33247b = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public b(b bVar) {
        this._prev$volatile = bVar;
    }

    private final b d() {
        b h10 = h();
        while (h10 != null && h10.k()) {
            h10 = (b) f33247b.get(h10);
        }
        return h10;
    }

    private final b e() {
        b f10 = f();
        kotlin.jvm.internal.m.b(f10);
        while (f10.k()) {
            b f11 = f10.f();
            if (f11 == null) {
                return f10;
            }
            f10 = f11;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g() {
        return f33246a.get(this);
    }

    public final void c() {
        f33247b.set(this, null);
    }

    public final b f() {
        Object g10 = g();
        if (g10 == a.a()) {
            return null;
        }
        return (b) g10;
    }

    public final b h() {
        return (b) f33247b.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        if (f() == null) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        return androidx.concurrent.futures.b.a(f33246a, this, null, a.a());
    }

    public final void n() {
        Object obj;
        b bVar;
        if (l()) {
            return;
        }
        while (true) {
            b d10 = d();
            b e10 = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33247b;
            do {
                obj = atomicReferenceFieldUpdater.get(e10);
                if (((b) obj) == null) {
                    bVar = null;
                } else {
                    bVar = d10;
                }
            } while (!androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, e10, obj, bVar));
            if (d10 != null) {
                f33246a.set(d10, e10);
            }
            if (!e10.k() || e10.l()) {
                if (d10 == null || !d10.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(b bVar) {
        return androidx.concurrent.futures.b.a(f33246a, this, null, bVar);
    }
}
