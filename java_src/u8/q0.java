package u8;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class q0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final s0 f30972a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30973b;

    public q0(s0 sharedSessionRepository) {
        kotlin.jvm.internal.m.e(sharedSessionRepository, "sharedSessionRepository");
        this.f30972a = sharedSessionRepository;
        this.f30973b = true;
    }

    public final void a() {
        this.f30973b = false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        if (this.f30973b) {
            this.f30972a.b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        if (this.f30973b) {
            this.f30972a.c();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        kotlin.jvm.internal.m.e(activity, "activity");
        kotlin.jvm.internal.m.e(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }
}
