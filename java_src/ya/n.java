package ya;

import android.graphics.Rect;
import android.util.Log;
/* loaded from: classes.dex */
public class n extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f33162b = "n";

    @Override // ya.q
    protected float c(xa.p pVar, xa.p pVar2) {
        if (pVar.f32649a > 0 && pVar.f32650b > 0) {
            xa.p i10 = pVar.i(pVar2);
            float f10 = (i10.f32649a * 1.0f) / pVar.f32649a;
            if (f10 > 1.0f) {
                f10 = (float) Math.pow(1.0f / f10, 1.1d);
            }
            float f11 = ((pVar2.f32649a * 1.0f) / i10.f32649a) * ((pVar2.f32650b * 1.0f) / i10.f32650b);
            return f10 * (((1.0f / f11) / f11) / f11);
        }
        return 0.0f;
    }

    @Override // ya.q
    public Rect d(xa.p pVar, xa.p pVar2) {
        xa.p i10 = pVar.i(pVar2);
        String str = f33162b;
        Log.i(str, "Preview: " + pVar + "; Scaled: " + i10 + "; Want: " + pVar2);
        int i11 = (i10.f32649a - pVar2.f32649a) / 2;
        int i12 = (i10.f32650b - pVar2.f32650b) / 2;
        return new Rect(-i11, -i12, i10.f32649a - i11, i10.f32650b - i12);
    }
}
