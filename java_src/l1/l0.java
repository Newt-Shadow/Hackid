package l1;

import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes.dex */
class l0 extends k0 {
    @Override // l1.d0, l1.m0
    public float b(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // l1.i0, l1.m0
    public void d(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override // l1.d0, l1.m0
    public void e(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override // l1.k0, l1.m0
    public void f(View view, int i10) {
        view.setTransitionVisibility(i10);
    }

    @Override // l1.g0, l1.m0
    public void g(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // l1.g0, l1.m0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
