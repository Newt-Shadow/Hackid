package io.flutter.embedding.engine;

import android.view.Surface;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes2.dex */
public class FlutterOverlaySurface {

    /* renamed from: id  reason: collision with root package name */
    private final int f21496id;
    private final Surface surface;

    public FlutterOverlaySurface(int i10, Surface surface) {
        this.f21496id = i10;
        this.surface = surface;
    }

    public int getId() {
        return this.f21496id;
    }

    public Surface getSurface() {
        return this.surface;
    }
}
