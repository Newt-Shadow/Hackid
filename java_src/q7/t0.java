package q7;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f28562a = new AtomicInteger();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f28563b = new AtomicInteger();

    public int a() {
        return this.f28563b.get();
    }

    public int b() {
        return this.f28562a.get();
    }

    public void c() {
        this.f28563b.getAndIncrement();
    }

    public void d() {
        this.f28562a.getAndIncrement();
    }

    public void e() {
        this.f28563b.set(0);
    }
}
