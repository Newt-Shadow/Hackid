package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
/* loaded from: classes.dex */
public class l extends EditText implements d0.j0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f1552a;

    /* renamed from: b  reason: collision with root package name */
    private final c0 f1553b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f1554c;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.core.widget.j f1555d;

    /* renamed from: e  reason: collision with root package name */
    private final m f1556e;

    /* renamed from: f  reason: collision with root package name */
    private a f1557f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {
        a() {
        }

        public TextClassifier a() {
            return l.super.getTextClassifier();
        }

        public void b(TextClassifier textClassifier) {
            l.super.setTextClassifier(textClassifier);
        }
    }

    public l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.f16465y);
    }

    private a getSuperCaller() {
        if (this.f1557f == null) {
            this.f1557f = new a();
        }
        return this.f1557f;
    }

    @Override // d0.j0
    public d0.d a(d0.d dVar) {
        return this.f1555d.a(this, dVar);
    }

    void d(m mVar) {
        KeyListener keyListener = getKeyListener();
        if (mVar.b(keyListener)) {
            boolean isFocusable = super.isFocusable();
            boolean isClickable = super.isClickable();
            boolean isLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener a10 = mVar.a(keyListener);
            if (a10 == keyListener) {
                return;
            }
            super.setKeyListener(a10);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
            super.setClickable(isClickable);
            super.setLongClickable(isLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1552a;
        if (eVar != null) {
            eVar.b();
        }
        c0 c0Var = this.f1553b;
        if (c0Var != null) {
            c0Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.i.m(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1552a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1552a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1553b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1553b.k();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT < 28 && (b0Var = this.f1554c) != null) {
            return b0Var.a();
        }
        return getSuperCaller().a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] w10;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1553b.r(this, onCreateInputConnection, editorInfo);
        InputConnection a10 = o.a(onCreateInputConnection, editorInfo, this);
        if (a10 != null && Build.VERSION.SDK_INT <= 30 && (w10 = d0.p0.w(this)) != null) {
            f0.c.d(editorInfo, w10);
            a10 = f0.e.c(this, a10, editorInfo);
        }
        return this.f1556e.d(a10, editorInfo);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        if (x.a(this, dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i10) {
        if (x.b(this, i10)) {
            return true;
        }
        return super.onTextContextMenuItem(i10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1552a;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1552a;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1553b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1553b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.n(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.f1556e.e(z10);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f1556e.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1552a;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1552a;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1553b.w(colorStateList);
        this.f1553b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1553b.x(mode);
        this.f1553b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        c0 c0Var = this.f1553b;
        if (c0Var != null) {
            c0Var.q(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT < 28 && (b0Var = this.f1554c) != null) {
            b0Var.b(textClassifier);
        } else {
            getSuperCaller().b(textClassifier);
        }
    }

    public l(Context context, AttributeSet attributeSet, int i10) {
        super(c1.b(context), attributeSet, i10);
        b1.a(this, getContext());
        e eVar = new e(this);
        this.f1552a = eVar;
        eVar.e(attributeSet, i10);
        c0 c0Var = new c0(this);
        this.f1553b = c0Var;
        c0Var.m(attributeSet, i10);
        c0Var.b();
        this.f1554c = new b0(this);
        this.f1555d = new androidx.core.widget.j();
        m mVar = new m(this);
        this.f1556e = mVar;
        mVar.c(attributeSet, i10);
        d(mVar);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }
}
