package p0;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.emoji2.text.g;
import c0.f;
/* loaded from: classes.dex */
public abstract class b extends ReplacementSpan {

    /* renamed from: b  reason: collision with root package name */
    private final g f27684b;

    /* renamed from: a  reason: collision with root package name */
    private final Paint.FontMetricsInt f27683a = new Paint.FontMetricsInt();

    /* renamed from: c  reason: collision with root package name */
    private short f27685c = -1;

    /* renamed from: d  reason: collision with root package name */
    private short f27686d = -1;

    /* renamed from: e  reason: collision with root package name */
    private float f27687e = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar) {
        f.h(gVar, "metadata cannot be null");
        this.f27684b = gVar;
    }

    public final g a() {
        return this.f27684b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f27685c;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f27683a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f27683a;
        this.f27687e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f27684b.e();
        this.f27686d = (short) (this.f27684b.e() * this.f27687e);
        short i12 = (short) (this.f27684b.i() * this.f27687e);
        this.f27685c = i12;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f27683a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return i12;
    }
}
