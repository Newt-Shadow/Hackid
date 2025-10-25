package androidx.lifecycle;

import androidx.lifecycle.i;
/* loaded from: classes.dex */
public final class b0 implements k {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f2944a;

    public b0(e0 provider) {
        kotlin.jvm.internal.m.e(provider, "provider");
        this.f2944a = provider;
    }

    @Override // androidx.lifecycle.k
    public void a(m source, i.a event) {
        boolean z10;
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_CREATE) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            source.getLifecycle().c(this);
            this.f2944a.d();
            return;
        }
        throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
    }
}
