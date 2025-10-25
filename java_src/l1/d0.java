package l1;

import android.view.View;
/* loaded from: classes.dex */
abstract class d0 extends m0 {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f25069c = true;

    @Override // l1.m0
    public void a(View view) {
    }

    @Override // l1.m0
    public float b(View view) {
        float transitionAlpha;
        if (f25069c) {
            try {
                transitionAlpha = view.getTransitionAlpha();
                return transitionAlpha;
            } catch (NoSuchMethodError unused) {
                f25069c = false;
            }
        }
        return view.getAlpha();
    }

    @Override // l1.m0
    public void c(View view) {
    }

    @Override // l1.m0
    public void e(View view, float f10) {
        if (f25069c) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                f25069c = false;
            }
        }
        view.setAlpha(f10);
    }
}
