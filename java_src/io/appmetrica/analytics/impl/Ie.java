package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Ie implements Gc {

    /* renamed from: a  reason: collision with root package name */
    public final Fc f18385a;

    /* renamed from: b  reason: collision with root package name */
    public final Fc f18386b;

    public Ie(final C9 c92, Og og, F4 f42, Ue ue2) {
        Fc fc2 = new Fc(og, f42, ue2);
        this.f18385a = fc2;
        this.f18386b = fc2;
        if (!fc2.b()) {
            C1665za.j().a().subscribe(TimeUnit.SECONDS.toMillis(S7.f18925a.longValue()), C1665za.j().w().a(), new ActivationBarrierCallback() { // from class: io.appmetrica.analytics.impl.to
                @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
                public final void onWaitFinished() {
                    Ie.a(Ie.this, c92);
                }
            });
        }
    }

    @Override // io.appmetrica.analytics.impl.Gc
    public final O8 a() {
        return this.f18386b;
    }

    public static final void a(Ie ie2, C9 c92) {
        ie2.f18385a.a();
        ((C1660z5) c92.a()).e();
    }
}
