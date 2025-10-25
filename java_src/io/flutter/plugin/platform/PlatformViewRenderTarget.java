package io.flutter.plugin.platform;

import android.view.Surface;
/* loaded from: classes2.dex */
public interface PlatformViewRenderTarget {
    int getHeight();

    long getId();

    Surface getSurface();

    int getWidth();

    boolean isReleased();

    void release();

    void resize(int i10, int i11);

    default void scheduleFrame() {
    }
}
