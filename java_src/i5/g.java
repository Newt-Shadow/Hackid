package i5;

import android.content.Context;
import android.util.Log;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class g extends z0.a implements m5.r {

    /* renamed from: o  reason: collision with root package name */
    private final Semaphore f17267o;

    /* renamed from: p  reason: collision with root package name */
    private final Set f17268p;

    public g(Context context, Set set) {
        super(context);
        this.f17267o = new Semaphore(0);
        this.f17268p = set;
    }

    @Override // z0.a
    public final /* bridge */ /* synthetic */ Object C() {
        int i10 = 0;
        for (com.google.android.gms.common.api.f fVar : this.f17268p) {
            if (fVar.e(this)) {
                i10++;
            }
        }
        try {
            this.f17267o.tryAcquire(i10, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e10) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e10);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // z0.b
    protected final void p() {
        this.f17267o.drainPermits();
        h();
    }
}
