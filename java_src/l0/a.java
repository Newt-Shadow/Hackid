package l0;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f24989a;

    public a(boolean z10) {
        this.f24989a = new AtomicBoolean(z10);
    }

    public final boolean a() {
        return this.f24989a.get();
    }

    public final void b(boolean z10) {
        this.f24989a.set(z10);
    }
}
