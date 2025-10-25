package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Choreographer;
import android.view.Display;
import android.view.FrameMetrics;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.android.core.p0;
import io.sentry.android.core.x0;
import io.sentry.j5;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class t implements Application.ActivityLifecycleCallbacks {

    /* renamed from: n  reason: collision with root package name */
    private static final long f22378n = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: o  reason: collision with root package name */
    private static final long f22379o = TimeUnit.MILLISECONDS.toNanos(700);

    /* renamed from: a  reason: collision with root package name */
    private final p0 f22380a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f22381b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f22382c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f22383d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference f22384e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f22385f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22386g;

    /* renamed from: h  reason: collision with root package name */
    private final c f22387h;

    /* renamed from: i  reason: collision with root package name */
    private Window.OnFrameMetricsAvailableListener f22388i;

    /* renamed from: j  reason: collision with root package name */
    private Choreographer f22389j;

    /* renamed from: k  reason: collision with root package name */
    private Field f22390k;

    /* renamed from: l  reason: collision with root package name */
    private long f22391l;

    /* renamed from: m  reason: collision with root package name */
    private long f22392m;

    /* loaded from: classes2.dex */
    class a implements c {
        a() {
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void d(long j10, long j11, long j12, long j13, boolean z10, boolean z11, float f10);
    }

    /* loaded from: classes2.dex */
    public interface c {
        default void a(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, Handler handler) {
            window.addOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener, handler);
        }

        default void b(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
            window.removeOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener);
        }
    }

    public t(Context context, ILogger iLogger, p0 p0Var) {
        this(context, iLogger, p0Var, new a());
    }

    private long d(FrameMetrics frameMetrics) {
        return frameMetrics.getMetric(0) + frameMetrics.getMetric(1) + frameMetrics.getMetric(2) + frameMetrics.getMetric(3) + frameMetrics.getMetric(4) + frameMetrics.getMetric(5);
    }

    private long e(FrameMetrics frameMetrics) {
        if (this.f22380a.d() >= 26) {
            return frameMetrics.getMetric(10);
        }
        return f();
    }

    public static boolean g(long j10) {
        if (j10 > f22379o) {
            return true;
        }
        return false;
    }

    public static boolean h(long j10, long j11) {
        return j10 > j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(ILogger iLogger, Thread thread, Throwable th) {
        iLogger.b(j5.ERROR, "Error during frames measurements.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(ILogger iLogger) {
        try {
            this.f22389j = Choreographer.getInstance();
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(p0 p0Var, Window window, FrameMetrics frameMetrics, int i10) {
        float refreshRate;
        boolean z10;
        Display display;
        long nanoTime = System.nanoTime();
        if (p0Var.d() >= 30) {
            display = window.getContext().getDisplay();
            refreshRate = display.getRefreshRate();
        } else {
            refreshRate = window.getWindowManager().getDefaultDisplay().getRefreshRate();
        }
        long j10 = f22378n;
        long d10 = d(frameMetrics);
        long max = Math.max(0L, d10 - (((float) j10) / refreshRate));
        long e10 = e(frameMetrics);
        if (e10 < 0) {
            e10 = nanoTime - d10;
        }
        long max2 = Math.max(e10, this.f22392m);
        if (max2 == this.f22391l) {
            return;
        }
        this.f22391l = max2;
        this.f22392m = max2 + d10;
        boolean h10 = h(d10, ((float) j10) / (refreshRate - 1.0f));
        if (h10 && g(d10)) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        for (b bVar : this.f22385f.values()) {
            bVar.d(max2, this.f22392m, d10, max, h10, z11, refreshRate);
            d10 = d10;
        }
    }

    private void l(Window window) {
        WeakReference weakReference = this.f22384e;
        if (weakReference != null && weakReference.get() == window) {
            return;
        }
        this.f22384e = new WeakReference(window);
        p();
    }

    private void o(Window window) {
        if (this.f22381b.contains(window)) {
            if (this.f22380a.d() >= 24) {
                try {
                    this.f22387h.b(window, this.f22388i);
                } catch (Exception e10) {
                    this.f22382c.b(j5.ERROR, "Failed to remove frameMetricsAvailableListener", e10);
                }
            }
            this.f22381b.remove(window);
        }
    }

    private void p() {
        Window window;
        WeakReference weakReference = this.f22384e;
        if (weakReference != null) {
            window = (Window) weakReference.get();
        } else {
            window = null;
        }
        if (window != null && this.f22386g && !this.f22381b.contains(window) && !this.f22385f.isEmpty() && this.f22380a.d() >= 24 && this.f22383d != null) {
            this.f22381b.add(window);
            this.f22387h.a(window, this.f22388i, this.f22383d);
        }
    }

    public long f() {
        Field field;
        Choreographer choreographer = this.f22389j;
        if (choreographer != null && (field = this.f22390k) != null) {
            try {
                Long l10 = (Long) field.get(choreographer);
                if (l10 != null) {
                    return l10.longValue();
                }
                return -1L;
            } catch (IllegalAccessException unused) {
                return -1L;
            }
        }
        return -1L;
    }

    public String m(b bVar) {
        if (!this.f22386g) {
            return null;
        }
        String uuid = UUID.randomUUID().toString();
        this.f22385f.put(uuid, bVar);
        p();
        return uuid;
    }

    public void n(String str) {
        Window window;
        if (!this.f22386g) {
            return;
        }
        if (str != null) {
            this.f22385f.remove(str);
        }
        WeakReference weakReference = this.f22384e;
        if (weakReference != null) {
            window = (Window) weakReference.get();
        } else {
            window = null;
        }
        if (window != null && this.f22385f.isEmpty()) {
            o(window);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        l(activity.getWindow());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        o(activity.getWindow());
        WeakReference weakReference = this.f22384e;
        if (weakReference != null && weakReference.get() == activity.getWindow()) {
            this.f22384e = null;
        }
    }

    public t(Context context, final ILogger iLogger, final p0 p0Var, c cVar) {
        this.f22381b = new CopyOnWriteArraySet();
        this.f22385f = new ConcurrentHashMap();
        this.f22386g = false;
        this.f22391l = 0L;
        this.f22392m = 0L;
        Context context2 = (Context) io.sentry.util.q.c(x0.h(context), "The context is required");
        this.f22382c = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required");
        this.f22380a = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
        this.f22387h = (c) io.sentry.util.q.c(cVar, "WindowFrameMetricsManager is required");
        if ((context2 instanceof Application) && p0Var.d() >= 24) {
            this.f22386g = true;
            HandlerThread handlerThread = new HandlerThread("io.sentry.android.core.internal.util.SentryFrameMetricsCollector");
            handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.sentry.android.core.internal.util.q
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    t.i(ILogger.this, thread, th);
                }
            });
            handlerThread.start();
            this.f22383d = new Handler(handlerThread.getLooper());
            ((Application) context2).registerActivityLifecycleCallbacks(this);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.internal.util.r
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.j(iLogger);
                }
            });
            try {
                Field declaredField = Choreographer.class.getDeclaredField("mLastFrameTimeNanos");
                this.f22390k = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                iLogger.b(j5.ERROR, "Unable to get the frame timestamp from the choreographer: ", e10);
            }
            this.f22388i = new Window.OnFrameMetricsAvailableListener() { // from class: io.sentry.android.core.internal.util.s
                @Override // android.view.Window.OnFrameMetricsAvailableListener
                public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i10) {
                    t.this.k(p0Var, window, frameMetrics, i10);
                }
            };
        }
    }
}
