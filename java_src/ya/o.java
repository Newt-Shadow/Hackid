package ya;

import android.graphics.Rect;
/* loaded from: classes.dex */
public class o extends q {
    private static float e(float f10) {
        return f10 < 1.0f ? 1.0f / f10 : f10;
    }

    @Override // ya.q
    protected float c(xa.p pVar, xa.p pVar2) {
        int i10 = pVar.f32649a;
        if (i10 > 0 && pVar.f32650b > 0) {
            float e10 = (1.0f / e((i10 * 1.0f) / pVar2.f32649a)) / e((pVar.f32650b * 1.0f) / pVar2.f32650b);
            float e11 = e(((pVar.f32649a * 1.0f) / pVar.f32650b) / ((pVar2.f32649a * 1.0f) / pVar2.f32650b));
            return e10 * (((1.0f / e11) / e11) / e11);
        }
        return 0.0f;
    }

    @Override // ya.q
    public Rect d(xa.p pVar, xa.p pVar2) {
        return new Rect(0, 0, pVar2.f32649a, pVar2.f32650b);
    }
}
