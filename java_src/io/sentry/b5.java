package io.sentry;

import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class b5 implements x0 {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f22905a;

    /* loaded from: classes2.dex */
    private static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f22906a;

        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryExecutorServiceThreadFactory-");
            int i10 = this.f22906a;
            this.f22906a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(runnable, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    b5(ScheduledExecutorService scheduledExecutorService) {
        this.f22905a = scheduledExecutorService;
    }

    @Override // io.sentry.x0
    public void a(long j10) {
        synchronized (this.f22905a) {
            if (!this.f22905a.isShutdown()) {
                this.f22905a.shutdown();
                try {
                    if (!this.f22905a.awaitTermination(j10, TimeUnit.MILLISECONDS)) {
                        this.f22905a.shutdownNow();
                    }
                } catch (InterruptedException unused) {
                    this.f22905a.shutdownNow();
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // io.sentry.x0
    public boolean b() {
        boolean isShutdown;
        synchronized (this.f22905a) {
            isShutdown = this.f22905a.isShutdown();
        }
        return isShutdown;
    }

    @Override // io.sentry.x0
    public Future c(Runnable runnable, long j10) {
        return this.f22905a.schedule(runnable, j10, TimeUnit.MILLISECONDS);
    }

    @Override // io.sentry.x0
    public Future submit(Runnable runnable) {
        return this.f22905a.submit(runnable);
    }

    public b5() {
        this(Executors.newSingleThreadScheduledExecutor(new b()));
    }
}
