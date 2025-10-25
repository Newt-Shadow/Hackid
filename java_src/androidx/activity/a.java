package androidx.activity;

import android.window.BackEvent;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f523a = new a();

    private a() {
    }

    public final float a(BackEvent backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int b(BackEvent backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    public final float c(BackEvent backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float d(BackEvent backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
