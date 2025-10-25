package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import io.sentry.android.core.p0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class k implements ViewTreeObserver.OnDrawListener {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f22356a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference f22357b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f22358c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnDrawListener(k.this);
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    private k(View view, Runnable runnable) {
        this.f22357b = new AtomicReference(view);
        this.f22358c = runnable;
    }

    private static boolean c(View view) {
        if (view.getViewTreeObserver().isAlive() && view.isAttachedToWindow()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Window window, Window.Callback callback, Runnable runnable, p0 p0Var) {
        View peekDecorView = window.peekDecorView();
        if (peekDecorView != null) {
            window.setCallback(callback);
            g(peekDecorView, runnable, p0Var);
        }
    }

    public static void f(Activity activity, final Runnable runnable, final p0 p0Var) {
        Window.Callback bVar;
        final Window window = activity.getWindow();
        if (window != null) {
            View peekDecorView = window.peekDecorView();
            if (peekDecorView != null) {
                g(peekDecorView, runnable, p0Var);
                return;
            }
            final Window.Callback callback = window.getCallback();
            if (callback != null) {
                bVar = callback;
            } else {
                bVar = new io.sentry.android.core.internal.gestures.b();
            }
            window.setCallback(new io.sentry.android.core.performance.i(bVar, new Runnable() { // from class: io.sentry.android.core.internal.util.i
                @Override // java.lang.Runnable
                public final void run() {
                    k.e(window, callback, runnable, p0Var);
                }
            }));
        }
    }

    public static void g(View view, Runnable runnable, p0 p0Var) {
        k kVar = new k(view, runnable);
        if (p0Var.d() < 26 && !c(view)) {
            view.addOnAttachStateChangeListener(new a());
        } else {
            view.getViewTreeObserver().addOnDrawListener(kVar);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        final View view = (View) this.f22357b.getAndSet(null);
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.sentry.android.core.internal.util.j
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                k.this.d(view);
            }
        });
        this.f22356a.postAtFrontOfQueue(this.f22358c);
    }
}
