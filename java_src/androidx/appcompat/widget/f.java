package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
/* loaded from: classes.dex */
public class f extends Button {

    /* renamed from: a  reason: collision with root package name */
    private final e f1489a;

    /* renamed from: b  reason: collision with root package name */
    private final c0 f1490b;

    /* renamed from: c  reason: collision with root package name */
    private n f1491c;

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.f16454n);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1491c == null) {
            this.f1491c = new n(this);
        }
        return this.f1491c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1489a;
        if (eVar != null) {
            eVar.b();
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (q1.f1624b) {
            return super.getAutoSizeMaxTextSize();
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            return c0Var.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (q1.f1624b) {
            return super.getAutoSizeMinTextSize();
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            return c0Var.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (q1.f1624b) {
            return super.getAutoSizeStepGranularity();
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            return c0Var.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (q1.f1624b) {
            return super.getAutoSizeTextAvailableSizes();
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            return c0Var.h();
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (q1.f1624b) {
            if (super.getAutoSizeTextType() != 1) {
                return 0;
            }
            return 1;
        }
        c0 c0Var = this.f1490b;
        if (c0Var == null) {
            return 0;
        }
        return c0Var.i();
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.i.m(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1489a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1489a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1490b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1490b.k();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.o(z10, i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        boolean z10;
        super.onTextChanged(charSequence, i10, i11, i12);
        c0 c0Var = this.f1490b;
        if (c0Var != null && !q1.f1624b && c0Var.l()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f1490b.c();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) {
        if (q1.f1624b) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
            return;
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.t(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) {
        if (q1.f1624b) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
            return;
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.u(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (q1.f1624b) {
            super.setAutoSizeTextTypeWithDefaults(i10);
            return;
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.v(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1489a;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1489a;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.n(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z10) {
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.s(z10);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1489a;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1489a;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1490b.w(colorStateList);
        this.f1490b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1490b.x(mode);
        this.f1490b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.q(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        if (q1.f1624b) {
            super.setTextSize(i10, f10);
            return;
        }
        c0 c0Var = this.f1490b;
        if (c0Var != null) {
            c0Var.A(i10, f10);
        }
    }

    public f(Context context, AttributeSet attributeSet, int i10) {
        super(c1.b(context), attributeSet, i10);
        b1.a(this, getContext());
        e eVar = new e(this);
        this.f1489a = eVar;
        eVar.e(attributeSet, i10);
        c0 c0Var = new c0(this);
        this.f1490b = c0Var;
        c0Var.m(attributeSet, i10);
        c0Var.b();
        getEmojiTextViewHelper().c(attributeSet, i10);
    }
}
