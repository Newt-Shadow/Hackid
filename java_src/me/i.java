package me;

import android.app.Application;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final Application f26048a;

    /* renamed from: b  reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f26049b;

    public i(Application application, Application.ActivityLifecycleCallbacks callback) {
        m.e(application, "application");
        m.e(callback, "callback");
        this.f26048a = application;
        this.f26049b = callback;
    }

    public final void a() {
        this.f26048a.unregisterActivityLifecycleCallbacks(this.f26049b);
    }
}
