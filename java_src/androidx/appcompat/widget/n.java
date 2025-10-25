package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f1563a;

    /* renamed from: b  reason: collision with root package name */
    private final r0.f f1564b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(TextView textView) {
        this.f1563a = textView;
        this.f1564b = new r0.f(textView, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1564b.a(inputFilterArr);
    }

    public boolean b() {
        return this.f1564b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = this.f1563a.getContext().obtainStyledAttributes(attributeSet, h.j.f16611g0, i10, 0);
        try {
            boolean z10 = true;
            if (obtainStyledAttributes.hasValue(h.j.f16681u0)) {
                z10 = obtainStyledAttributes.getBoolean(h.j.f16681u0, true);
            }
            obtainStyledAttributes.recycle();
            e(z10);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z10) {
        this.f1564b.c(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z10) {
        this.f1564b.d(z10);
    }

    public TransformationMethod f(TransformationMethod transformationMethod) {
        return this.f1564b.e(transformationMethod);
    }
}
