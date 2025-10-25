package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.view.b;
/* loaded from: classes.dex */
public abstract class a {
    public androidx.appcompat.view.b A(b.a aVar) {
        return null;
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z10);

    public abstract int j();

    public abstract Context k();

    public abstract void l();

    public boolean m() {
        return false;
    }

    public abstract boolean n();

    public void o(Configuration configuration) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
    }

    public abstract boolean q(int i10, KeyEvent keyEvent);

    public boolean r(KeyEvent keyEvent) {
        return false;
    }

    public boolean s() {
        return false;
    }

    public abstract void t(Drawable drawable);

    public abstract void u(boolean z10);

    public abstract void v(boolean z10);

    public abstract void w(boolean z10);

    public abstract void x(CharSequence charSequence);

    public abstract void y(CharSequence charSequence);

    public abstract void z();

    /* renamed from: androidx.appcompat.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0013a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f668a;

        public C0013a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f668a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.f16675t);
            this.f668a = obtainStyledAttributes.getInt(h.j.f16680u, 0);
            obtainStyledAttributes.recycle();
        }

        public C0013a(int i10, int i11) {
            super(i10, i11);
            this.f668a = 8388627;
        }

        public C0013a(C0013a c0013a) {
            super((ViewGroup.MarginLayoutParams) c0013a);
            this.f668a = 0;
            this.f668a = c0013a.f668a;
        }

        public C0013a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f668a = 0;
        }
    }
}
