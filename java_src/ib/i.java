package ib;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final gb.b f17391a;

    /* renamed from: b  reason: collision with root package name */
    private final lb.g f17392b;

    /* renamed from: c  reason: collision with root package name */
    private long f17393c;

    /* renamed from: d  reason: collision with root package name */
    private final long f17394d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f17395e;

    public i(gb.b mainHandler, lb.g dateProvider, long j10) {
        m.e(mainHandler, "mainHandler");
        m.e(dateProvider, "dateProvider");
        this.f17391a = mainHandler;
        this.f17392b = dateProvider;
        this.f17394d = TimeUnit.MILLISECONDS.toNanos(j10);
        this.f17395e = new AtomicBoolean(false);
    }

    private final void b(Runnable runnable) {
        try {
            this.f17393c = this.f17392b.a();
            runnable.run();
        } finally {
            this.f17395e.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(i this$0, Runnable runnable) {
        m.e(this$0, "this$0");
        m.e(runnable, "$runnable");
        this$0.b(runnable);
    }

    public final void d(final Runnable runnable) {
        m.e(runnable, "runnable");
        long a10 = this.f17392b.a() - this.f17393c;
        if (a10 >= this.f17394d) {
            if (!this.f17395e.getAndSet(true)) {
                b(runnable);
            }
        } else if (!this.f17395e.getAndSet(true)) {
            this.f17391a.a().postDelayed(new Runnable() { // from class: ib.h
                @Override // java.lang.Runnable
                public final void run() {
                    i.c(i.this, runnable);
                }
            }, TimeUnit.NANOSECONDS.toMillis(this.f17394d - a10));
        }
    }
}
