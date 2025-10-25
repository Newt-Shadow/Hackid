package io.sentry.android.core.internal.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.Window;
import androidx.core.view.GestureDetectorCompat;
import io.sentry.p6;
import io.sentry.s5;
/* loaded from: classes2.dex */
public final class h extends j {

    /* renamed from: b  reason: collision with root package name */
    private final Window.Callback f22304b;

    /* renamed from: c  reason: collision with root package name */
    private final g f22305c;

    /* renamed from: d  reason: collision with root package name */
    private final GestureDetectorCompat f22306d;

    /* renamed from: e  reason: collision with root package name */
    private final s5 f22307e;

    /* renamed from: f  reason: collision with root package name */
    private final b f22308f;

    /* loaded from: classes2.dex */
    class a implements b {
        a() {
        }
    }

    /* loaded from: classes2.dex */
    interface b {
        default MotionEvent a(MotionEvent motionEvent) {
            return MotionEvent.obtain(motionEvent);
        }
    }

    public h(Window.Callback callback, Context context, g gVar, s5 s5Var) {
        this(callback, new GestureDetectorCompat(context, gVar), gVar, s5Var, new a());
    }

    private void b(MotionEvent motionEvent) {
        this.f22306d.a(motionEvent);
        if (motionEvent.getActionMasked() == 1) {
            this.f22305c.o(motionEvent);
        }
    }

    public Window.Callback a() {
        return this.f22304b;
    }

    public void c() {
        this.f22305c.q(p6.CANCELLED);
    }

    @Override // io.sentry.android.core.internal.gestures.j, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null) {
            try {
                b(this.f22308f.a(motionEvent));
            } finally {
                try {
                } finally {
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    h(Window.Callback callback, GestureDetectorCompat gestureDetectorCompat, g gVar, s5 s5Var, b bVar) {
        super(callback);
        this.f22304b = callback;
        this.f22305c = gVar;
        this.f22307e = s5Var;
        this.f22306d = gestureDetectorCompat;
        this.f22308f = bVar;
    }
}
