package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import b0.k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public class d0 extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private final e f1455a;

    /* renamed from: b  reason: collision with root package name */
    private final c0 f1456b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f1457c;

    /* renamed from: d  reason: collision with root package name */
    private n f1458d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f1459e;

    /* renamed from: f  reason: collision with root package name */
    private a f1460f;

    /* renamed from: g  reason: collision with root package name */
    private Future f1461g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        void a(int[] iArr, int i10);

        int[] b();

        TextClassifier c();

        int d();

        void e(TextClassifier textClassifier);

        void f(int i10);

        void g(int i10, int i11, int i12, int i13);

        int h();

        int i();

        void j(int i10);

        int k();

        void l(int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements a {
        b() {
        }

        @Override // androidx.appcompat.widget.d0.a
        public void a(int[] iArr, int i10) {
            d0.super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        @Override // androidx.appcompat.widget.d0.a
        public int[] b() {
            return d0.super.getAutoSizeTextAvailableSizes();
        }

        @Override // androidx.appcompat.widget.d0.a
        public TextClassifier c() {
            return d0.super.getTextClassifier();
        }

        @Override // androidx.appcompat.widget.d0.a
        public int d() {
            return d0.super.getAutoSizeMaxTextSize();
        }

        @Override // androidx.appcompat.widget.d0.a
        public void e(TextClassifier textClassifier) {
            d0.super.setTextClassifier(textClassifier);
        }

        @Override // androidx.appcompat.widget.d0.a
        public void f(int i10) {
        }

        @Override // androidx.appcompat.widget.d0.a
        public void g(int i10, int i11, int i12, int i13) {
            d0.super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        @Override // androidx.appcompat.widget.d0.a
        public int h() {
            return d0.super.getAutoSizeTextType();
        }

        @Override // androidx.appcompat.widget.d0.a
        public int i() {
            return d0.super.getAutoSizeMinTextSize();
        }

        @Override // androidx.appcompat.widget.d0.a
        public void j(int i10) {
        }

        @Override // androidx.appcompat.widget.d0.a
        public int k() {
            return d0.super.getAutoSizeStepGranularity();
        }

        @Override // androidx.appcompat.widget.d0.a
        public void l(int i10) {
            d0.super.setAutoSizeTextTypeWithDefaults(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends b {
        c() {
            super();
        }

        @Override // androidx.appcompat.widget.d0.b, androidx.appcompat.widget.d0.a
        public void f(int i10) {
            d0.super.setLastBaselineToBottomHeight(i10);
        }

        @Override // androidx.appcompat.widget.d0.b, androidx.appcompat.widget.d0.a
        public void j(int i10) {
            d0.super.setFirstBaselineToTopHeight(i10);
        }
    }

    public d0(Context context) {
        this(context, null);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1458d == null) {
            this.f1458d = new n(this);
        }
        return this.f1458d;
    }

    private void q() {
        Future future = this.f1461g;
        if (future != null) {
            try {
                this.f1461g = null;
                android.support.v4.media.session.b.a(future.get());
                androidx.core.widget.i.k(this, null);
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1455a;
        if (eVar != null) {
            eVar.b();
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (q1.f1624b) {
            return getSuperCaller().d();
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            return c0Var.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (q1.f1624b) {
            return getSuperCaller().i();
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            return c0Var.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (q1.f1624b) {
            return getSuperCaller().k();
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            return c0Var.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (q1.f1624b) {
            return getSuperCaller().b();
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            return c0Var.h();
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (q1.f1624b) {
            if (getSuperCaller().h() != 1) {
                return 0;
            }
            return 1;
        }
        c0 c0Var = this.f1456b;
        if (c0Var == null) {
            return 0;
        }
        return c0Var.i();
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.i.m(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.i.a(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.i.b(this);
    }

    a getSuperCaller() {
        if (this.f1460f == null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                this.f1460f = new c();
            } else if (i10 >= 26) {
                this.f1460f = new b();
            }
        }
        return this.f1460f;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1455a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1455a;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1456b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1456b.k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        q();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT < 28 && (b0Var = this.f1457c) != null) {
            return b0Var.a();
        }
        return getSuperCaller().c();
    }

    public k.a getTextMetricsParamsCompat() {
        return androidx.core.widget.i.e(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1456b.r(this, onCreateInputConnection, editorInfo);
        return o.a(onCreateInputConnection, editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.o(z10, i10, i11, i12, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        q();
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        boolean z10;
        super.onTextChanged(charSequence, i10, i11, i12);
        c0 c0Var = this.f1456b;
        if (c0Var != null && !q1.f1624b && c0Var.l()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f1456b.c();
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
            getSuperCaller().g(i10, i11, i12, i13);
            return;
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.t(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) {
        if (q1.f1624b) {
            getSuperCaller().a(iArr, i10);
            return;
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.u(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (q1.f1624b) {
            getSuperCaller().l(i10);
            return;
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.v(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1455a;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1455a;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        c0 c0Var = this.f1456b;
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

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().j(i10);
        } else {
            androidx.core.widget.i.h(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().f(i10);
        } else {
            androidx.core.widget.i.i(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i10) {
        androidx.core.widget.i.j(this, i10);
    }

    public void setPrecomputedText(b0.k kVar) {
        androidx.core.widget.i.k(this, kVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1455a;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1455a;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1456b.w(colorStateList);
        this.f1456b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1456b.x(mode);
        this.f1456b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.q(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT < 28 && (b0Var = this.f1457c) != null) {
            b0Var.b(textClassifier);
        } else {
            getSuperCaller().e(textClassifier);
        }
    }

    public void setTextFuture(Future<b0.k> future) {
        this.f1461g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(k.a aVar) {
        androidx.core.widget.i.l(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        if (q1.f1624b) {
            super.setTextSize(i10, f10);
            return;
        }
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.A(i10, f10);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i10) {
        Typeface typeface2;
        if (this.f1459e) {
            return;
        }
        if (typeface != null && i10 > 0) {
            typeface2 = v.g.a(getContext(), typeface, i10);
        } else {
            typeface2 = null;
        }
        this.f1459e = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i10);
        } finally {
            this.f1459e = false;
        }
    }

    public d0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public d0(Context context, AttributeSet attributeSet, int i10) {
        super(c1.b(context), attributeSet, i10);
        this.f1459e = false;
        this.f1460f = null;
        b1.a(this, getContext());
        e eVar = new e(this);
        this.f1455a = eVar;
        eVar.e(attributeSet, i10);
        c0 c0Var = new c0(this);
        this.f1456b = c0Var;
        c0Var.m(attributeSet, i10);
        c0Var.b();
        this.f1457c = new b0(this);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i10 != 0 ? i.a.b(context, i10) : null, i11 != 0 ? i.a.b(context, i11) : null, i12 != 0 ? i.a.b(context, i12) : null, i13 != 0 ? i.a.b(context, i13) : null);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i10 != 0 ? i.a.b(context, i10) : null, i11 != 0 ? i.a.b(context, i11) : null, i12 != 0 ? i.a.b(context, i12) : null, i13 != 0 ? i.a.b(context, i13) : null);
        c0 c0Var = this.f1456b;
        if (c0Var != null) {
            c0Var.p();
        }
    }
}
