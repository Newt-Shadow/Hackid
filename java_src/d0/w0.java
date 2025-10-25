package d0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference f14396a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x0 f14397a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f14398b;

        a(x0 x0Var, View view) {
            this.f14397a = x0Var;
            this.f14398b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f14397a.a(this.f14398b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f14397a.b(this.f14398b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f14397a.c(this.f14398b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(View view) {
        this.f14396a = new WeakReference(view);
    }

    private void i(View view, x0 x0Var) {
        if (x0Var != null) {
            view.animate().setListener(new a(x0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public w0 b(float f10) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
        return this;
    }

    public void c() {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long d() {
        View view = (View) this.f14396a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public w0 f(long j10) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
        return this;
    }

    public w0 g(Interpolator interpolator) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public w0 h(x0 x0Var) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            i(view, x0Var);
        }
        return this;
    }

    public w0 j(long j10) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().setStartDelay(j10);
        }
        return this;
    }

    public w0 k(final z0 z0Var) {
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
        final View view = (View) this.f14396a.get();
        if (view != null) {
            if (z0Var != null) {
                animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: d0.v0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        z0.this.a(view);
                    }
                };
            } else {
                animatorUpdateListener = null;
            }
            view.animate().setUpdateListener(animatorUpdateListener);
        }
        return this;
    }

    public void l() {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public w0 m(float f10) {
        View view = (View) this.f14396a.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
        return this;
    }
}
