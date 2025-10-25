package x1;

import android.app.Activity;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32170a = new a();

    private a() {
    }

    public final boolean a(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        return activity.isInMultiWindowMode();
    }
}
