package ae;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.c0;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f344b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f345c = AtomicIntegerFieldUpdater.newUpdater(l.class, "producerIndex$volatile");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f346d = AtomicIntegerFieldUpdater.newUpdater(l.class, "consumerIndex$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f347e = AtomicIntegerFieldUpdater.newUpdater(l.class, "blockingTasksInBuffer$volatile");

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReferenceArray f348a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    private final h b(h hVar) {
        if (e() == 127) {
            return hVar;
        }
        if (hVar.f335b) {
            f347e.incrementAndGet(this);
        }
        int i10 = f345c.get(this) & 127;
        while (this.f348a.get(i10) != null) {
            Thread.yield();
        }
        this.f348a.lazySet(i10, hVar);
        f345c.incrementAndGet(this);
        return null;
    }

    private final void c(h hVar) {
        if (hVar != null && hVar.f335b) {
            f347e.decrementAndGet(this);
        }
    }

    private final int e() {
        return f345c.get(this) - f346d.get(this);
    }

    private final h m() {
        h hVar;
        while (true) {
            int i10 = f346d.get(this);
            if (i10 - f345c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f346d.compareAndSet(this, i10, i10 + 1) && (hVar = (h) this.f348a.getAndSet(i11, null)) != null) {
                c(hVar);
                return hVar;
            }
        }
    }

    private final boolean n(d dVar) {
        h m10 = m();
        if (m10 == null) {
            return false;
        }
        dVar.a(m10);
        return true;
    }

    private final h o(boolean z10) {
        h hVar;
        do {
            hVar = (h) f344b.get(this);
            if (hVar == null || hVar.f335b != z10) {
                int i10 = f346d.get(this);
                int i11 = f345c.get(this);
                while (i10 != i11) {
                    if (z10 && f347e.get(this) == 0) {
                        return null;
                    }
                    i11--;
                    h q10 = q(i11, z10);
                    if (q10 != null) {
                        return q10;
                    }
                }
                return null;
            }
        } while (!androidx.concurrent.futures.b.a(f344b, this, hVar, null));
        return hVar;
    }

    private final h p(int i10) {
        int i11 = f346d.get(this);
        int i12 = f345c.get(this);
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        while (i11 != i12) {
            if (z10 && f347e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            h q10 = q(i11, z10);
            if (q10 == null) {
                i11 = i13;
            } else {
                return q10;
            }
        }
        return null;
    }

    private final h q(int i10, boolean z10) {
        int i11 = i10 & 127;
        h hVar = (h) this.f348a.get(i11);
        if (hVar == null || hVar.f335b != z10 || !vd.l.a(this.f348a, i11, hVar, null)) {
            return null;
        }
        if (z10) {
            f347e.decrementAndGet(this);
        }
        return hVar;
    }

    private final long s(int i10, c0 c0Var) {
        h hVar;
        int i11;
        do {
            hVar = (h) f344b.get(this);
            if (hVar == null) {
                return -2L;
            }
            if (hVar.f335b) {
                i11 = 1;
            } else {
                i11 = 2;
            }
            if ((i11 & i10) == 0) {
                return -2L;
            }
            long a10 = j.f342f.a() - hVar.f334a;
            long j10 = j.f338b;
            if (a10 < j10) {
                return j10 - a10;
            }
        } while (!androidx.concurrent.futures.b.a(f344b, this, hVar, null));
        c0Var.f24971a = hVar;
        return -1L;
    }

    public final h a(h hVar, boolean z10) {
        if (z10) {
            return b(hVar);
        }
        h hVar2 = (h) f344b.getAndSet(this, hVar);
        if (hVar2 == null) {
            return null;
        }
        return b(hVar2);
    }

    public final int i() {
        if (f344b.get(this) != null) {
            return e() + 1;
        }
        return e();
    }

    public final void j(d dVar) {
        h hVar = (h) f344b.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        do {
        } while (n(dVar));
    }

    public final h k() {
        h hVar = (h) f344b.getAndSet(this, null);
        if (hVar == null) {
            return m();
        }
        return hVar;
    }

    public final h l() {
        return o(true);
    }

    public final long r(int i10, c0 c0Var) {
        h p10;
        if (i10 == 3) {
            p10 = m();
        } else {
            p10 = p(i10);
        }
        if (p10 != null) {
            c0Var.f24971a = p10;
            return -1L;
        }
        return s(i10, c0Var);
    }
}
