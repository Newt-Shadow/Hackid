package td;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes2.dex */
public final class w0 extends yd.b0 {

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f30700e = AtomicIntegerFieldUpdater.newUpdater(w0.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    public w0(ad.i iVar, ad.e eVar) {
        super(iVar, eVar);
    }

    private final boolean U0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f30700e;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f30700e.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean V0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f30700e;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f30700e.compareAndSet(this, 0, 1));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // yd.b0, td.z1
    public void F(Object obj) {
        O0(obj);
    }

    @Override // yd.b0, td.a
    protected void O0(Object obj) {
        ad.e c10;
        if (!U0()) {
            c10 = bd.c.c(this.f33248d);
            yd.i.b(c10, c0.a(obj, this.f33248d));
        }
    }

    public final Object S0() {
        Object e10;
        if (V0()) {
            e10 = bd.d.e();
            return e10;
        }
        Object h10 = a2.h(g0());
        if (!(h10 instanceof a0)) {
            return h10;
        }
        throw ((a0) h10).f30621a;
    }
}
