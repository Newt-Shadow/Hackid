package x1;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import d0.c1;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f32172a = new g();

    private g() {
    }

    public final Rect a(Context context) {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        kotlin.jvm.internal.m.e(context, "context");
        currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        bounds = currentWindowMetrics.getBounds();
        kotlin.jvm.internal.m.d(bounds, "wm.currentWindowMetrics.bounds");
        return bounds;
    }

    public final c1 b(Context context) {
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        kotlin.jvm.internal.m.e(context, "context");
        currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        windowInsets = currentWindowMetrics.getWindowInsets();
        kotlin.jvm.internal.m.d(windowInsets, "context.getSystemService…indowMetrics.windowInsets");
        c1 v10 = c1.v(windowInsets);
        kotlin.jvm.internal.m.d(v10, "toWindowInsetsCompat(platformInsets)");
        return v10;
    }

    public final t1.k c(Context context) {
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        WindowMetrics currentWindowMetrics2;
        Rect bounds;
        kotlin.jvm.internal.m.e(context, "context");
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        windowInsets = currentWindowMetrics.getWindowInsets();
        c1 v10 = c1.v(windowInsets);
        kotlin.jvm.internal.m.d(v10, "toWindowInsetsCompat(wm.…ndowMetrics.windowInsets)");
        currentWindowMetrics2 = windowManager.getCurrentWindowMetrics();
        bounds = currentWindowMetrics2.getBounds();
        kotlin.jvm.internal.m.d(bounds, "wm.currentWindowMetrics.bounds");
        return new t1.k(bounds, v10);
    }

    public final Rect d(Context context) {
        WindowMetrics maximumWindowMetrics;
        Rect bounds;
        kotlin.jvm.internal.m.e(context, "context");
        maximumWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics();
        bounds = maximumWindowMetrics.getBounds();
        kotlin.jvm.internal.m.d(bounds, "wm.maximumWindowMetrics.bounds");
        return bounds;
    }
}
