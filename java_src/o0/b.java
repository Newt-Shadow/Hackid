package o0;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f26905a;

    public b(boolean z10) {
        this.f26905a = new AtomicBoolean(z10);
    }

    public final boolean a() {
        return this.f26905a.get();
    }

    public final void b(boolean z10) {
        this.f26905a.set(z10);
    }
}
