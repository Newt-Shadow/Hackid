package td;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes2.dex */
final class r1 extends y1 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f30690f = AtomicIntegerFieldUpdater.newUpdater(r1.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile = 0;

    /* renamed from: e  reason: collision with root package name */
    private final id.l f30691e;

    public r1(id.l lVar) {
        this.f30691e = lVar;
    }

    @Override // td.y1
    public boolean u() {
        return true;
    }

    @Override // td.y1
    public void v(Throwable th) {
        if (f30690f.compareAndSet(this, 0, 1)) {
            this.f30691e.invoke(th);
        }
    }
}
