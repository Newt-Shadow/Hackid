package gb;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
/* loaded from: classes.dex */
public abstract class a {
    public static final String a(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        DisplayMetrics g10 = o.g(context);
        if (context.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv")) {
            return "TV";
        }
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return "TV";
        }
        String c10 = c(context);
        if (c10 == null) {
            return b(context, g10);
        }
        return c10;
    }

    private static final String b(Context context, DisplayMetrics displayMetrics) {
        double d10;
        double d11;
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        WindowManager u10 = o.u(context);
        if (u10 == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            currentWindowMetrics = u10.getCurrentWindowMetrics();
            bounds = currentWindowMetrics.getBounds();
            kotlin.jvm.internal.m.d(bounds, "windowManager.currentWindowMetrics.bounds");
            double d12 = context.getResources().getConfiguration().densityDpi;
            d10 = bounds.width() / d12;
            d11 = bounds.height() / d12;
        } else {
            d10 = displayMetrics.widthPixels / displayMetrics.xdpi;
            d11 = displayMetrics.heightPixels / displayMetrics.ydpi;
        }
        double sqrt = Math.sqrt(Math.pow(d10, 2.0d) + Math.pow(d11, 2.0d));
        boolean z10 = false;
        if (3.0d <= sqrt && sqrt <= 6.9d) {
            z10 = true;
        }
        if (z10) {
            return "Mobile";
        }
        if (sqrt <= 6.9d || sqrt > 18.0d) {
            return null;
        }
        return "Tablet";
    }

    private static final String c(Context context) {
        int i10 = context.getResources().getConfiguration().smallestScreenWidthDp;
        if (i10 == 0) {
            return null;
        }
        if (i10 >= 600) {
            return "Tablet";
        }
        return "Mobile";
    }
}
