package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private final View f1468a;

    /* renamed from: d  reason: collision with root package name */
    private d1 f1471d;

    /* renamed from: e  reason: collision with root package name */
    private d1 f1472e;

    /* renamed from: f  reason: collision with root package name */
    private d1 f1473f;

    /* renamed from: c  reason: collision with root package name */
    private int f1470c = -1;

    /* renamed from: b  reason: collision with root package name */
    private final k f1469b = k.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(View view) {
        this.f1468a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f1473f == null) {
            this.f1473f = new d1();
        }
        d1 d1Var = this.f1473f;
        d1Var.a();
        ColorStateList m10 = d0.p0.m(this.f1468a);
        if (m10 != null) {
            d1Var.f1467d = true;
            d1Var.f1464a = m10;
        }
        PorterDuff.Mode n10 = d0.p0.n(this.f1468a);
        if (n10 != null) {
            d1Var.f1466c = true;
            d1Var.f1465b = n10;
        }
        if (!d1Var.f1467d && !d1Var.f1466c) {
            return false;
        }
        k.i(drawable, d1Var, this.f1468a.getDrawableState());
        return true;
    }

    private boolean k() {
        if (this.f1471d != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        Drawable background = this.f1468a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            d1 d1Var = this.f1472e;
            if (d1Var != null) {
                k.i(background, d1Var, this.f1468a.getDrawableState());
                return;
            }
            d1 d1Var2 = this.f1471d;
            if (d1Var2 != null) {
                k.i(background, d1Var2, this.f1468a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList c() {
        d1 d1Var = this.f1472e;
        if (d1Var != null) {
            return d1Var.f1464a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode d() {
        d1 d1Var = this.f1472e;
        if (d1Var != null) {
            return d1Var.f1465b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(AttributeSet attributeSet, int i10) {
        f1 u10 = f1.u(this.f1468a.getContext(), attributeSet, h.j.K3, i10, 0);
        View view = this.f1468a;
        d0.p0.S(view, view.getContext(), h.j.K3, attributeSet, u10.q(), i10, 0);
        try {
            if (u10.r(h.j.L3)) {
                this.f1470c = u10.m(h.j.L3, -1);
                ColorStateList f10 = this.f1469b.f(this.f1468a.getContext(), this.f1470c);
                if (f10 != null) {
                    h(f10);
                }
            }
            if (u10.r(h.j.M3)) {
                d0.p0.Y(this.f1468a, u10.c(h.j.M3));
            }
            if (u10.r(h.j.N3)) {
                d0.p0.Z(this.f1468a, o0.e(u10.j(h.j.N3, -1), null));
            }
        } finally {
            u10.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Drawable drawable) {
        this.f1470c = -1;
        h(null);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i10) {
        ColorStateList colorStateList;
        this.f1470c = i10;
        k kVar = this.f1469b;
        if (kVar != null) {
            colorStateList = kVar.f(this.f1468a.getContext(), i10);
        } else {
            colorStateList = null;
        }
        h(colorStateList);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1471d == null) {
                this.f1471d = new d1();
            }
            d1 d1Var = this.f1471d;
            d1Var.f1464a = colorStateList;
            d1Var.f1467d = true;
        } else {
            this.f1471d = null;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(ColorStateList colorStateList) {
        if (this.f1472e == null) {
            this.f1472e = new d1();
        }
        d1 d1Var = this.f1472e;
        d1Var.f1464a = colorStateList;
        d1Var.f1467d = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(PorterDuff.Mode mode) {
        if (this.f1472e == null) {
            this.f1472e = new d1();
        }
        d1 d1Var = this.f1472e;
        d1Var.f1465b = mode;
        d1Var.f1466c = true;
        b();
    }
}
