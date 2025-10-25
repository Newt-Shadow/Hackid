package ra;

import android.graphics.Rect;
/* loaded from: classes.dex */
abstract class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Float a(float f10, float f11, float f12) {
        return Float.valueOf(y.a.a(f10, f11, f12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect b(float f10, Rect rect, float f11, float f12) {
        float floatValue = a(f10, f11, f12).floatValue();
        int width = rect.width() / 2;
        int height = rect.height() / 2;
        int width2 = (int) ((rect.width() * 0.5f) / floatValue);
        int height2 = (int) ((rect.height() * 0.5f) / floatValue);
        return new Rect(width - width2, height - height2, width + width2, height + height2);
    }
}
