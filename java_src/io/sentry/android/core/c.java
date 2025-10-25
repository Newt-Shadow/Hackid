package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.j5;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22170a;

    /* renamed from: b  reason: collision with root package name */
    private final a f22171b;

    /* renamed from: c  reason: collision with root package name */
    private final o1 f22172c;

    /* renamed from: d  reason: collision with root package name */
    private final io.sentry.transport.p f22173d;

    /* renamed from: e  reason: collision with root package name */
    private long f22174e;

    /* renamed from: f  reason: collision with root package name */
    private final long f22175f;

    /* renamed from: g  reason: collision with root package name */
    private final ILogger f22176g;

    /* renamed from: h  reason: collision with root package name */
    private volatile long f22177h;

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f22178i;

    /* renamed from: j  reason: collision with root package name */
    private final Context f22179j;

    /* renamed from: k  reason: collision with root package name */
    private final Runnable f22180k;

    /* loaded from: classes2.dex */
    public interface a {
        void a(ApplicationNotResponding applicationNotResponding);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(long j10, boolean z10, a aVar, ILogger iLogger, Context context) {
        this(new io.sentry.transport.p() { // from class: io.sentry.android.core.a
            @Override // io.sentry.transport.p
            public final long a() {
                long d10;
                d10 = c.d();
                return d10;
            }
        }, j10, 500L, z10, aVar, iLogger, new o1(), context);
    }

    private boolean c() {
        List<ActivityManager.ProcessErrorStateInfo> list;
        ActivityManager activityManager = (ActivityManager) this.f22179j.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        try {
            list = activityManager.getProcessesInErrorState();
        } catch (Throwable th) {
            this.f22176g.b(j5.ERROR, "Error getting ActivityManager#getProcessesInErrorState.", th);
            list = null;
        }
        if (list != null) {
            for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : list) {
                if (processErrorStateInfo.condition == 2) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long d() {
        return SystemClock.uptimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(io.sentry.transport.p pVar) {
        this.f22177h = pVar.a();
        this.f22178i.set(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f22180k.run();
        while (!isInterrupted()) {
            this.f22172c.b(this.f22180k);
            try {
                Thread.sleep(this.f22174e);
                if (this.f22173d.a() - this.f22177h > this.f22175f) {
                    if (!this.f22170a && (Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        this.f22176g.c(j5.DEBUG, "An ANR was detected but ignored because the debugger is connected.", new Object[0]);
                        this.f22178i.set(true);
                    } else if (c() && this.f22178i.compareAndSet(false, true)) {
                        this.f22171b.a(new ApplicationNotResponding("Application Not Responding for at least " + this.f22175f + " ms.", this.f22172c.a()));
                    }
                }
            } catch (InterruptedException e10) {
                try {
                    Thread.currentThread().interrupt();
                    this.f22176g.c(j5.WARNING, "Interrupted: %s", e10.getMessage());
                    return;
                } catch (SecurityException unused) {
                    this.f22176g.c(j5.WARNING, "Failed to interrupt due to SecurityException: %s", e10.getMessage());
                    return;
                }
            }
        }
    }

    c(final io.sentry.transport.p pVar, long j10, long j11, boolean z10, a aVar, ILogger iLogger, o1 o1Var, Context context) {
        super("|ANR-WatchDog|");
        this.f22177h = 0L;
        this.f22178i = new AtomicBoolean(false);
        this.f22173d = pVar;
        this.f22175f = j10;
        this.f22174e = j11;
        this.f22170a = z10;
        this.f22171b = aVar;
        this.f22176g = iLogger;
        this.f22172c = o1Var;
        this.f22179j = context;
        this.f22180k = new Runnable() { // from class: io.sentry.android.core.b
            @Override // java.lang.Runnable
            public final void run() {
                c.this.e(pVar);
            }
        };
        if (j10 < this.f22174e * 2) {
            throw new IllegalArgumentException(String.format("ANRWatchDog: timeoutIntervalMillis has to be at least %d ms", Long.valueOf(this.f22174e * 2)));
        }
    }
}
