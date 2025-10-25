package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f2980a = new j();

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f2981b = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public static final class a extends e {
        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.c(activity);
        }
    }

    private j() {
    }

    public static final void a(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        if (f2981b.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.m.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new a());
    }
}
