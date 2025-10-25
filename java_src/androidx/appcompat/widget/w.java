package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
/* loaded from: classes.dex */
public class w extends RatingBar {

    /* renamed from: a  reason: collision with root package name */
    private final u f1704a;

    public w(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.D);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        Bitmap b10 = this.f1704a.b();
        if (b10 != null) {
            setMeasuredDimension(View.resolveSizeAndState(b10.getWidth() * getNumStars(), i10, 0), getMeasuredHeight());
        }
    }

    public w(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b1.a(this, getContext());
        u uVar = new u(this);
        this.f1704a = uVar;
        uVar.c(attributeSet, i10);
    }
}
