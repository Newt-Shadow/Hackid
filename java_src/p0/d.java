package p0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.emoji2.text.g;
/* loaded from: classes.dex */
public final class d extends b {

    /* renamed from: f  reason: collision with root package name */
    private static Paint f27692f;

    public d(g gVar) {
        super(gVar);
    }

    private static Paint c() {
        if (f27692f == null) {
            TextPaint textPaint = new TextPaint();
            f27692f = textPaint;
            textPaint.setColor(androidx.emoji2.text.e.b().c());
            f27692f.setStyle(Paint.Style.FILL);
        }
        return f27692f;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        if (androidx.emoji2.text.e.b().i()) {
            canvas.drawRect(f10, i12, f10 + b(), i14, c());
        }
        a().a(canvas, f10, i13, paint);
    }
}
