package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f1618a;

    /* renamed from: b  reason: collision with root package name */
    private d1 f1619b;

    /* renamed from: c  reason: collision with root package name */
    private d1 f1620c;

    /* renamed from: d  reason: collision with root package name */
    private d1 f1621d;

    /* renamed from: e  reason: collision with root package name */
    private int f1622e = 0;

    public q(ImageView imageView) {
        this.f1618a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f1621d == null) {
            this.f1621d = new d1();
        }
        d1 d1Var = this.f1621d;
        d1Var.a();
        ColorStateList a10 = androidx.core.widget.e.a(this.f1618a);
        if (a10 != null) {
            d1Var.f1467d = true;
            d1Var.f1464a = a10;
        }
        PorterDuff.Mode b10 = androidx.core.widget.e.b(this.f1618a);
        if (b10 != null) {
            d1Var.f1466c = true;
            d1Var.f1465b = b10;
        }
        if (!d1Var.f1467d && !d1Var.f1466c) {
            return false;
        }
        k.i(drawable, d1Var, this.f1618a.getDrawableState());
        return true;
    }

    private boolean l() {
        if (this.f1619b != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f1618a.getDrawable() != null) {
            this.f1618a.getDrawable().setLevel(this.f1622e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable drawable = this.f1618a.getDrawable();
        if (drawable != null) {
            o0.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            d1 d1Var = this.f1620c;
            if (d1Var != null) {
                k.i(drawable, d1Var, this.f1618a.getDrawableState());
                return;
            }
            d1 d1Var2 = this.f1619b;
            if (d1Var2 != null) {
                k.i(drawable, d1Var2, this.f1618a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList d() {
        d1 d1Var = this.f1620c;
        if (d1Var != null) {
            return d1Var.f1464a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode e() {
        d1 d1Var = this.f1620c;
        if (d1Var != null) {
            return d1Var.f1465b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        if (this.f1618a.getBackground() instanceof RippleDrawable) {
            return false;
        }
        return true;
    }

    public void g(AttributeSet attributeSet, int i10) {
        int m10;
        f1 u10 = f1.u(this.f1618a.getContext(), attributeSet, h.j.P, i10, 0);
        ImageView imageView = this.f1618a;
        d0.p0.S(imageView, imageView.getContext(), h.j.P, attributeSet, u10.q(), i10, 0);
        try {
            Drawable drawable = this.f1618a.getDrawable();
            if (drawable == null && (m10 = u10.m(h.j.Q, -1)) != -1 && (drawable = i.a.b(this.f1618a.getContext(), m10)) != null) {
                this.f1618a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                o0.b(drawable);
            }
            if (u10.r(h.j.R)) {
                androidx.core.widget.e.c(this.f1618a, u10.c(h.j.R));
            }
            if (u10.r(h.j.S)) {
                androidx.core.widget.e.d(this.f1618a, o0.e(u10.j(h.j.S, -1), null));
            }
        } finally {
            u10.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(Drawable drawable) {
        this.f1622e = drawable.getLevel();
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable b10 = i.a.b(this.f1618a.getContext(), i10);
            if (b10 != null) {
                o0.b(b10);
            }
            this.f1618a.setImageDrawable(b10);
        } else {
            this.f1618a.setImageDrawable(null);
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(ColorStateList colorStateList) {
        if (this.f1620c == null) {
            this.f1620c = new d1();
        }
        d1 d1Var = this.f1620c;
        d1Var.f1464a = colorStateList;
        d1Var.f1467d = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(PorterDuff.Mode mode) {
        if (this.f1620c == null) {
            this.f1620c = new d1();
        }
        d1 d1Var = this.f1620c;
        d1Var.f1465b = mode;
        d1Var.f1466c = true;
        c();
    }
}
