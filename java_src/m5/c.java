package m5;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e  reason: collision with root package name */
    private static final c f25760e = new c();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f25761a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f25762b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList f25763c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f25764d = false;

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z10);
    }

    private c() {
    }

    public static c b() {
        return f25760e;
    }

    public static void c(Application application) {
        c cVar = f25760e;
        synchronized (cVar) {
            if (!cVar.f25764d) {
                application.registerActivityLifecycleCallbacks(cVar);
                application.registerComponentCallbacks(cVar);
                cVar.f25764d = true;
            }
        }
    }

    private final void f(boolean z10) {
        synchronized (f25760e) {
            Iterator it = this.f25763c.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(z10);
            }
        }
    }

    public void a(a aVar) {
        synchronized (f25760e) {
            this.f25763c.add(aVar);
        }
    }

    public boolean d() {
        return this.f25761a.get();
    }

    public boolean e(boolean z10) {
        if (!this.f25762b.get()) {
            if (!com.google.android.gms.common.util.n.b()) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                if (!this.f25762b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                    this.f25761a.set(true);
                }
            } else {
                return z10;
            }
        }
        return d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f25762b;
        boolean compareAndSet = this.f25761a.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        AtomicBoolean atomicBoolean = this.f25762b;
        boolean compareAndSet = this.f25761a.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        if (i10 == 20 && this.f25761a.compareAndSet(false, true)) {
            this.f25762b.set(true);
            f(true);
        }
    }
}
