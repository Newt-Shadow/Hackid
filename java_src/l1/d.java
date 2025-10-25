package l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class d extends n0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f25065a;

        a(View view) {
            this.f25065a = view;
        }

        @Override // l1.l.f
        public void e(l lVar) {
            a0.g(this.f25065a, 1.0f);
            a0.a(this.f25065a);
            lVar.S(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final View f25067a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f25068b = false;

        b(View view) {
            this.f25067a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a0.g(this.f25067a, 1.0f);
            if (this.f25068b) {
                this.f25067a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (d0.p0.C(this.f25067a) && this.f25067a.getLayerType() == 0) {
                this.f25068b = true;
                this.f25067a.setLayerType(2, null);
            }
        }
    }

    public d(int i10) {
        l0(i10);
    }

    private Animator m0(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        a0.g(view, f10);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, a0.f25037b, f11);
        ofFloat.addListener(new b(view));
        a(new a(view));
        return ofFloat;
    }

    private static float n0(s sVar, float f10) {
        Float f11;
        if (sVar != null && (f11 = (Float) sVar.f25161a.get("android:fade:transitionAlpha")) != null) {
            return f11.floatValue();
        }
        return f10;
    }

    @Override // l1.n0
    public Animator h0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        float f10 = 0.0f;
        float n02 = n0(sVar, 0.0f);
        if (n02 != 1.0f) {
            f10 = n02;
        }
        return m0(view, f10, 1.0f);
    }

    @Override // l1.n0
    public Animator j0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        a0.e(view);
        return m0(view, n0(sVar, 1.0f), 0.0f);
    }

    @Override // l1.n0, l1.l
    public void l(s sVar) {
        super.l(sVar);
        sVar.f25161a.put("android:fade:transitionAlpha", Float.valueOf(a0.c(sVar.f25162b)));
    }
}
