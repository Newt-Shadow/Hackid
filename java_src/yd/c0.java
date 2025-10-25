package yd;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import td.g2;
/* loaded from: classes2.dex */
public abstract class c0 extends b implements g2 {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f33249d = AtomicIntegerFieldUpdater.newUpdater(c0.class, "cleanedAndPointers$volatile");

    /* renamed from: c  reason: collision with root package name */
    public final long f33250c;
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    public c0(long j10, c0 c0Var, int i10) {
        super(c0Var);
        this.f33250c = j10;
        this.cleanedAndPointers$volatile = i10 << 16;
    }

    @Override // yd.b
    public boolean k() {
        if (f33249d.get(this) == r() && !l()) {
            return true;
        }
        return false;
    }

    public final boolean p() {
        if (f33249d.addAndGet(this, -65536) == r() && !l()) {
            return true;
        }
        return false;
    }

    public abstract int r();

    public abstract void s(int i10, Throwable th, ad.i iVar);

    public final void t() {
        if (f33249d.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i10;
        boolean z10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f33249d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == r() && !l()) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
