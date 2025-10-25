package io.sentry;

import java.net.InetAddress;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: g  reason: collision with root package name */
    private static final long f23093g = TimeUnit.HOURS.toMillis(5);

    /* renamed from: h  reason: collision with root package name */
    private static final long f23094h = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: i  reason: collision with root package name */
    private static f0 f23095i;

    /* renamed from: a  reason: collision with root package name */
    private final long f23096a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f23097b;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f23098c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f23099d;

    /* renamed from: e  reason: collision with root package name */
    private final Callable f23100e;

    /* renamed from: f  reason: collision with root package name */
    private final ExecutorService f23101f;

    /* loaded from: classes2.dex */
    private static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f23102a;

        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryHostnameCache-");
            int i10 = this.f23102a;
            this.f23102a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(runnable, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    private f0() {
        this(f23093g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f0 e() {
        if (f23095i == null) {
            f23095i = new f0();
        }
        return f23095i;
    }

    private void f() {
        this.f23098c = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InetAddress g() {
        return InetAddress.getLocalHost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void h() {
        try {
            this.f23097b = ((InetAddress) this.f23100e.call()).getCanonicalHostName();
            this.f23098c = System.currentTimeMillis() + this.f23096a;
            this.f23099d.set(false);
            return null;
        } catch (Throwable th) {
            this.f23099d.set(false);
            throw th;
        }
    }

    private void i() {
        try {
            this.f23101f.submit(new Callable() { // from class: io.sentry.e0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Void h10;
                    h10 = f0.this.h();
                    return h10;
                }
            }).get(f23094h, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            f();
        } catch (RuntimeException | ExecutionException | TimeoutException unused2) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f23101f.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        if (this.f23098c < System.currentTimeMillis() && this.f23099d.compareAndSet(false, true)) {
            i();
        }
        return this.f23097b;
    }

    f0(long j10) {
        this(j10, new Callable() { // from class: io.sentry.d0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                InetAddress g10;
                g10 = f0.g();
                return g10;
            }
        });
    }

    f0(long j10, Callable callable) {
        this.f23099d = new AtomicBoolean(false);
        this.f23101f = Executors.newSingleThreadExecutor(new b());
        this.f23096a = j10;
        this.f23100e = (Callable) io.sentry.util.q.c(callable, "getLocalhost is required");
        i();
    }
}
