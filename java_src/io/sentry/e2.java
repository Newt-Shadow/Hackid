package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
final class e2 implements x0 {

    /* renamed from: a  reason: collision with root package name */
    private static final e2 f23077a = new e2();

    private e2() {
    }

    public static x0 f() {
        return f23077a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object h() {
        return null;
    }

    @Override // io.sentry.x0
    public void a(long j10) {
    }

    @Override // io.sentry.x0
    public boolean b() {
        return false;
    }

    @Override // io.sentry.x0
    public Future c(Runnable runnable, long j10) {
        return new FutureTask(new Callable() { // from class: io.sentry.d2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object g10;
                g10 = e2.g();
                return g10;
            }
        });
    }

    @Override // io.sentry.x0
    public Future submit(Runnable runnable) {
        return new FutureTask(new Callable() { // from class: io.sentry.c2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object h10;
                h10 = e2.h();
                return h10;
            }
        });
    }
}
