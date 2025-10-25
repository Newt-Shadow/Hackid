package j0;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f23979a;

    public b(int i10) {
        this.f23979a = new AtomicInteger(i10);
    }

    public final int a() {
        return this.f23979a.decrementAndGet();
    }

    public final int b() {
        return this.f23979a.get();
    }

    public final int c() {
        return this.f23979a.getAndIncrement();
    }

    public final int d() {
        return this.f23979a.incrementAndGet();
    }
}
