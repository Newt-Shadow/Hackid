package l1;

import android.view.View;
/* loaded from: classes.dex */
abstract class i0 extends g0 {

    /* renamed from: f  reason: collision with root package name */
    private static boolean f25092f = true;

    @Override // l1.m0
    public void d(View view, int i10, int i11, int i12, int i13) {
        if (f25092f) {
            try {
                view.setLeftTopRightBottom(i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f25092f = false;
            }
        }
    }
}
