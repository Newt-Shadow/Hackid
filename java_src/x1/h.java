package x1;

import android.graphics.Point;
import android.view.Display;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f32173a = new h();

    private h() {
    }

    public final void a(Display display, Point point) {
        kotlin.jvm.internal.m.e(display, "display");
        kotlin.jvm.internal.m.e(point, "point");
        display.getRealSize(point);
    }
}
