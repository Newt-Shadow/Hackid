package z;

import android.os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import xc.l;
/* loaded from: classes.dex */
final class g extends AtomicBoolean implements OutcomeReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final ad.e f33323a;

    public g(ad.e eVar) {
        super(false);
        this.f33323a = eVar;
    }

    public void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            ad.e eVar = this.f33323a;
            l.a aVar = xc.l.f32718b;
            eVar.resumeWith(xc.l.b(xc.m.a(th)));
        }
    }

    public void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.f33323a.resumeWith(xc.l.b(obj));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
