package io.sentry.android.core;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class y0 {

    /* renamed from: b  reason: collision with root package name */
    private static final y0 f22508b = new y0();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference f22509a;

    private y0() {
    }

    public static y0 c() {
        return f22508b;
    }

    public void a() {
        this.f22509a = null;
    }

    public Activity b() {
        WeakReference weakReference = this.f22509a;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public void d(Activity activity) {
        WeakReference weakReference = this.f22509a;
        if (weakReference != null && weakReference.get() == activity) {
            return;
        }
        this.f22509a = new WeakReference(activity);
    }
}
