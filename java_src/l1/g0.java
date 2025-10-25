package l1;

import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes.dex */
abstract class g0 extends d0 {

    /* renamed from: d  reason: collision with root package name */
    private static boolean f25088d = true;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f25089e = true;

    @Override // l1.m0
    public void g(View view, Matrix matrix) {
        if (f25088d) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f25088d = false;
            }
        }
    }

    @Override // l1.m0
    public void h(View view, Matrix matrix) {
        if (f25089e) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f25089e = false;
            }
        }
    }
}
