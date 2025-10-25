package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
/* loaded from: classes.dex */
class z extends u {

    /* renamed from: d  reason: collision with root package name */
    private final SeekBar f1725d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f1726e;

    /* renamed from: f  reason: collision with root package name */
    private ColorStateList f1727f;

    /* renamed from: g  reason: collision with root package name */
    private PorterDuff.Mode f1728g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1729h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1730i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(SeekBar seekBar) {
        super(seekBar);
        this.f1727f = null;
        this.f1728g = null;
        this.f1729h = false;
        this.f1730i = false;
        this.f1725d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f1726e;
        if (drawable != null) {
            if (this.f1729h || this.f1730i) {
                Drawable j10 = w.a.j(drawable.mutate());
                this.f1726e = j10;
                if (this.f1729h) {
                    w.a.g(j10, this.f1727f);
                }
                if (this.f1730i) {
                    w.a.h(this.f1726e, this.f1728g);
                }
                if (this.f1726e.isStateful()) {
                    this.f1726e.setState(this.f1725d.getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.u
    public void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        f1 u10 = f1.u(this.f1725d.getContext(), attributeSet, h.j.T, i10, 0);
        SeekBar seekBar = this.f1725d;
        d0.p0.S(seekBar, seekBar.getContext(), h.j.T, attributeSet, u10.q(), i10, 0);
        Drawable g10 = u10.g(h.j.U);
        if (g10 != null) {
            this.f1725d.setThumb(g10);
        }
        j(u10.f(h.j.V));
        if (u10.r(h.j.X)) {
            this.f1728g = o0.e(u10.j(h.j.X, -1), this.f1728g);
            this.f1730i = true;
        }
        if (u10.r(h.j.W)) {
            this.f1727f = u10.c(h.j.W);
            this.f1729h = true;
        }
        u10.v();
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(Canvas canvas) {
        int i10;
        if (this.f1726e != null) {
            int max = this.f1725d.getMax();
            int i11 = 1;
            if (max > 1) {
                int intrinsicWidth = this.f1726e.getIntrinsicWidth();
                int intrinsicHeight = this.f1726e.getIntrinsicHeight();
                if (intrinsicWidth >= 0) {
                    i10 = intrinsicWidth / 2;
                } else {
                    i10 = 1;
                }
                if (intrinsicHeight >= 0) {
                    i11 = intrinsicHeight / 2;
                }
                this.f1726e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f1725d.getWidth() - this.f1725d.getPaddingLeft()) - this.f1725d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f1725d.getPaddingLeft(), this.f1725d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f1726e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        Drawable drawable = this.f1726e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1725d.getDrawableState())) {
            this.f1725d.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        Drawable drawable = this.f1726e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f1726e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1726e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1725d);
            w.a.e(drawable, d0.p0.t(this.f1725d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1725d.getDrawableState());
            }
            f();
        }
        this.f1725d.invalidate();
    }
}
