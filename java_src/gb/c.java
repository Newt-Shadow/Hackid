package gb;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import eb.h;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks, eb.g {

    /* renamed from: d  reason: collision with root package name */
    private static final a f16346d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f16347e;

    /* renamed from: a  reason: collision with root package name */
    private final Application f16348a;

    /* renamed from: b  reason: collision with root package name */
    private final fb.b f16349b;

    /* renamed from: c  reason: collision with root package name */
    private eb.h f16350c;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public c(Application application, fb.b config) {
        kotlin.jvm.internal.m.e(application, "application");
        kotlin.jvm.internal.m.e(config, "config");
        this.f16348a = application;
        this.f16349b = config;
    }

    @Override // eb.g
    public void b() {
        this.f16350c = null;
        f16347e = false;
        this.f16348a.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        kotlin.jvm.internal.m.e(postHog, "postHog");
        if (f16347e) {
            return;
        }
        f16347e = true;
        this.f16350c = postHog;
        this.f16348a.registerActivityLifecycleCallbacks(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x002b A[SYNTHETIC] */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityCreated(android.app.Activity r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gb.c.onActivityCreated(android.app.Activity, android.os.Bundle):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        kotlin.jvm.internal.m.e(activity, "activity");
        kotlin.jvm.internal.m.e(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        boolean z10;
        eb.h hVar;
        kotlin.jvm.internal.m.e(activity, "activity");
        if (this.f16349b.i0()) {
            String a10 = o.a(activity, this.f16349b);
            if (a10 != null && a10.length() != 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10 && (hVar = this.f16350c) != null) {
                h.a.f(hVar, a10, null, 2, null);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
    }
}
