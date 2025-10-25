package io.sentry.android.replay;

import android.view.View;
import android.view.Window;
/* loaded from: classes2.dex */
public abstract class a0 {
    public static final Window a(View view) {
        kotlin.jvm.internal.m.e(view, "<this>");
        z zVar = z.f22884a;
        View rootView = view.getRootView();
        kotlin.jvm.internal.m.d(rootView, "rootView");
        return zVar.d(rootView);
    }
}
