package ya;

import android.graphics.Rect;
import android.util.Log;
/* loaded from: classes.dex */
public class l extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f33157b = "l";

    @Override // ya.q
    protected float c(xa.p pVar, xa.p pVar2) {
        if (pVar.f32649a > 0 && pVar.f32650b > 0) {
            xa.p f10 = pVar.f(pVar2);
            float f11 = (f10.f32649a * 1.0f) / pVar.f32649a;
            if (f11 > 1.0f) {
                f11 = (float) Math.pow(1.0f / f11, 1.1d);
            }
            float f12 = ((f10.f32649a * 1.0f) / pVar2.f32649a) + ((f10.f32650b * 1.0f) / pVar2.f32650b);
            return f11 * ((1.0f / f12) / f12);
        }
        return 0.0f;
    }

    @Override // ya.q
    public Rect d(xa.p pVar, xa.p pVar2) {
        xa.p f10 = pVar.f(pVar2);
        String str = f33157b;
        Log.i(str, "Preview: " + pVar + "; Scaled: " + f10 + "; Want: " + pVar2);
        int i10 = (f10.f32649a - pVar2.f32649a) / 2;
        int i11 = (f10.f32650b - pVar2.f32650b) / 2;
        return new Rect(-i10, -i11, f10.f32649a - i10, f10.f32650b - i11);
    }
}
