package d0;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
public final class k0 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f14346a;

    /* renamed from: b  reason: collision with root package name */
    private ViewTreeObserver f14347b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f14348c;

    private k0(View view, Runnable runnable) {
        this.f14346a = view;
        this.f14347b = view.getViewTreeObserver();
        this.f14348c = runnable;
    }

    public static k0 a(View view, Runnable runnable) {
        if (view != null) {
            if (runnable != null) {
                k0 k0Var = new k0(view, runnable);
                view.getViewTreeObserver().addOnPreDrawListener(k0Var);
                view.addOnAttachStateChangeListener(k0Var);
                return k0Var;
            }
            throw new NullPointerException("runnable == null");
        }
        throw new NullPointerException("view == null");
    }

    public void b() {
        if (this.f14347b.isAlive()) {
            this.f14347b.removeOnPreDrawListener(this);
        } else {
            this.f14346a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f14346a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f14348c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f14347b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
