package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes.dex */
class t extends PopupWindow {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f1658b = false;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1659a;

    public t(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        a(context, attributeSet, i10, i11);
    }

    private void a(Context context, AttributeSet attributeSet, int i10, int i11) {
        f1 u10 = f1.u(context, attributeSet, h.j.Y1, i10, i11);
        if (u10.r(h.j.f16583a2)) {
            b(u10.a(h.j.f16583a2, false));
        }
        setBackgroundDrawable(u10.f(h.j.Z1));
        u10.v();
    }

    private void b(boolean z10) {
        if (f1658b) {
            this.f1659a = z10;
        } else {
            androidx.core.widget.h.a(this, z10);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11) {
        if (f1658b && this.f1659a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i10, int i11, int i12, int i13) {
        if (f1658b && this.f1659a) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11, int i12) {
        if (f1658b && this.f1659a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
