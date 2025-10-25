package me;

import android.app.Activity;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f26045a = new h();

    /* renamed from: b  reason: collision with root package name */
    private static Activity f26046b;

    /* renamed from: c  reason: collision with root package name */
    private static ActivityPluginBinding f26047c;

    private h() {
    }

    public final Activity a() {
        return f26046b;
    }

    public final ActivityPluginBinding b() {
        return f26047c;
    }

    public final void c(Activity activity) {
        f26046b = activity;
    }

    public final void d(ActivityPluginBinding activityPluginBinding) {
        f26047c = activityPluginBinding;
    }
}
