package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.Window;
import android.view.WindowInsets;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.util.ViewUtils;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class FlutterViewDelegate {
    public List<Rect> getCaptionBarInsets(Context context) {
        int captionBar;
        WindowInsets windowInsets = getWindowInsets(context);
        if (windowInsets != null) {
            captionBar = WindowInsets.Type.captionBar();
            return windowInsets.getBoundingRects(captionBar);
        }
        return Collections.emptyList();
    }

    public WindowInsets getWindowInsets(Context context) {
        Window window;
        Activity activity = ViewUtils.getActivity(context);
        if (activity == null || (window = activity.getWindow()) == null) {
            return null;
        }
        return window.getDecorView().getRootWindowInsets();
    }

    public void growViewportMetricsToCaptionBar(Context context, FlutterRenderer.ViewportMetrics viewportMetrics) {
        List<Rect> captionBarInsets = getCaptionBarInsets(context);
        int i10 = viewportMetrics.viewPaddingTop;
        for (Rect rect : captionBarInsets) {
            i10 = Math.max(i10, rect.bottom);
        }
        viewportMetrics.viewPaddingTop = i10;
    }
}
