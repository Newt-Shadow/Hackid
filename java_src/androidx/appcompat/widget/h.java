package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
/* loaded from: classes.dex */
public class h extends CheckedTextView {

    /* renamed from: a  reason: collision with root package name */
    private final i f1500a;

    /* renamed from: b  reason: collision with root package name */
    private final e f1501b;

    /* renamed from: c  reason: collision with root package name */
    private final c0 f1502c;

    /* renamed from: d  reason: collision with root package name */
    private n f1503d;

    public h(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.f16456p);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1503d == null) {
            this.f1503d = new n(this);
        }
        return this.f1503d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c0 c0Var = this.f1502c;
        if (c0Var != null) {
            c0Var.b();
        }
        e eVar = this.f1501b;
        if (eVar != null) {
            eVar.b();
        }
        i iVar = this.f1500a;
        if (iVar != null) {
            iVar.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.i.m(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1501b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1501b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        i iVar = this.f1500a;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        i iVar = this.f1500a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1502c.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1502c.k();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return o.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1501b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1501b;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        i iVar = this.f1500a;
        if (iVar != null) {
            iVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1502c;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1502c;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.n(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1501b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1501b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        i iVar = this.f1500a;
        if (iVar != null) {
            iVar.f(colorStateList);
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        i iVar = this.f1500a;
        if (iVar != null) {
            iVar.g(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1502c.w(colorStateList);
        this.f1502c.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1502c.x(mode);
        this.f1502c.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        c0 c0Var = this.f1502c;
        if (c0Var != null) {
            c0Var.q(context, i10);
        }
    }

    public h(Context context, AttributeSet attributeSet, int i10) {
        super(c1.b(context), attributeSet, i10);
        b1.a(this, getContext());
        c0 c0Var = new c0(this);
        this.f1502c = c0Var;
        c0Var.m(attributeSet, i10);
        c0Var.b();
        e eVar = new e(this);
        this.f1501b = eVar;
        eVar.e(attributeSet, i10);
        i iVar = new i(this);
        this.f1500a = iVar;
        iVar.d(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(i.a.b(getContext(), i10));
    }
}
