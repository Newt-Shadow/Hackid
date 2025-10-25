package yd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33284a = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_next$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33285b = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_prev$volatile");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f33286c = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
        if (androidx.concurrent.futures.b.a(yd.q.f33284a, r3, r2, ((yd.z) r4).f33310a) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final yd.q g() {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = n()
            java.lang.Object r0 = r0.get(r7)
            yd.q r0 = (yd.q) r0
            r1 = 0
            r2 = r0
        Lc:
            r3 = r1
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = m()
            java.lang.Object r4 = r4.get(r2)
            if (r4 != r7) goto L26
            if (r0 != r2) goto L1a
            return r2
        L1a:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = n()
            boolean r0 = androidx.concurrent.futures.b.a(r1, r7, r0, r2)
            if (r0 != 0) goto L25
            goto L0
        L25:
            return r2
        L26:
            boolean r5 = r7.p()
            if (r5 == 0) goto L2d
            return r1
        L2d:
            boolean r5 = r4 instanceof yd.z
            if (r5 == 0) goto L4f
            if (r3 == 0) goto L44
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = m()
            yd.z r4 = (yd.z) r4
            yd.q r4 = r4.f33310a
            boolean r2 = androidx.concurrent.futures.b.a(r5, r3, r2, r4)
            if (r2 != 0) goto L42
            goto L0
        L42:
            r2 = r3
            goto Lc
        L44:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = n()
            java.lang.Object r2 = r4.get(r2)
            yd.q r2 = (yd.q) r2
            goto Ld
        L4f:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.m.c(r4, r3)
            r3 = r4
            yd.q r3 = (yd.q) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: yd.q.g():yd.q");
    }

    private final q h(q qVar) {
        while (qVar.p()) {
            qVar = (q) f33285b.get(qVar);
        }
        return qVar;
    }

    private final void i(q qVar) {
        q qVar2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f33285b;
        do {
            qVar2 = (q) atomicReferenceFieldUpdater.get(qVar);
            if (j() != qVar) {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(f33285b, qVar, qVar2, this));
        if (p()) {
            qVar.g();
        }
    }

    private final z s() {
        z zVar = (z) f33286c.get(this);
        if (zVar == null) {
            z zVar2 = new z(this);
            f33286c.set(this, zVar2);
            return zVar2;
        }
        return zVar;
    }

    public final boolean c(q qVar, int i10) {
        q l10;
        do {
            l10 = l();
            if (l10 instanceof o) {
                if ((((o) l10).f33281d & i10) == 0 && l10.c(qVar, i10)) {
                    return true;
                }
                return false;
            }
        } while (!l10.d(qVar, this));
        return true;
    }

    public final boolean d(q qVar, q qVar2) {
        f33285b.set(qVar, this);
        f33284a.set(qVar, qVar2);
        if (!androidx.concurrent.futures.b.a(f33284a, this, qVar2, qVar)) {
            return false;
        }
        qVar.i(qVar2);
        return true;
    }

    public final boolean e(q qVar) {
        f33285b.set(qVar, this);
        f33284a.set(qVar, this);
        while (j() == this) {
            if (androidx.concurrent.futures.b.a(f33284a, this, this, qVar)) {
                qVar.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i10) {
        c(new o(i10), i10);
    }

    public final Object j() {
        return f33284a.get(this);
    }

    public final q k() {
        z zVar;
        q qVar;
        Object j10 = j();
        if (j10 instanceof z) {
            zVar = (z) j10;
        } else {
            zVar = null;
        }
        if (zVar == null || (qVar = zVar.f33310a) == null) {
            kotlin.jvm.internal.m.c(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            return (q) j10;
        }
        return qVar;
    }

    public final q l() {
        q g10 = g();
        if (g10 == null) {
            return h((q) f33285b.get(this));
        }
        return g10;
    }

    public boolean p() {
        return j() instanceof z;
    }

    public boolean q() {
        if (r() == null) {
            return true;
        }
        return false;
    }

    public final q r() {
        Object j10;
        q qVar;
        do {
            j10 = j();
            if (j10 instanceof z) {
                return ((z) j10).f33310a;
            }
            if (j10 == this) {
                return (q) j10;
            }
            kotlin.jvm.internal.m.c(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            qVar = (q) j10;
        } while (!androidx.concurrent.futures.b.a(f33284a, this, j10, qVar.s()));
        qVar.g();
        return null;
    }

    public String toString() {
        return new kotlin.jvm.internal.t(this) { // from class: yd.q.a
            @Override // pd.h
            public Object get() {
                return td.p0.a(this.receiver);
            }
        } + '@' + td.p0.b(this);
    }
}
