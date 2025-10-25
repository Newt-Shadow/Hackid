package m5;

import android.app.Activity;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final Object f25800a;

    public g(Activity activity) {
        n5.q.l(activity, "Activity must not be null");
        this.f25800a = activity;
    }

    public final Activity a() {
        return (Activity) this.f25800a;
    }

    public final androidx.fragment.app.u b() {
        return (androidx.fragment.app.u) this.f25800a;
    }

    public final boolean c() {
        return this.f25800a instanceof Activity;
    }

    public final boolean d() {
        return this.f25800a instanceof androidx.fragment.app.u;
    }
}
