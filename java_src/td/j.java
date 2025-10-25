package td;

import java.util.concurrent.Future;
/* loaded from: classes2.dex */
final class j implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Future f30655a;

    public j(Future future) {
        this.f30655a = future;
    }

    @Override // td.k
    public void a(Throwable th) {
        this.f30655a.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f30655a + ']';
    }
}
