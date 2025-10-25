package l1;

import android.os.Build;
import android.view.View;
/* loaded from: classes.dex */
class k0 extends i0 {

    /* renamed from: g  reason: collision with root package name */
    private static boolean f25094g = true;

    @Override // l1.m0
    public void f(View view, int i10) {
        if (Build.VERSION.SDK_INT == 28) {
            super.f(view, i10);
        } else if (f25094g) {
            try {
                view.setTransitionVisibility(i10);
            } catch (NoSuchMethodError unused) {
                f25094g = false;
            }
        }
    }
}
