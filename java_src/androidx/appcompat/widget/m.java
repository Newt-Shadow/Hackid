package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
/* loaded from: classes.dex */
class m {

    /* renamed from: a  reason: collision with root package name */
    private final EditText f1560a;

    /* renamed from: b  reason: collision with root package name */
    private final r0.a f1561b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(EditText editText) {
        this.f1560a = editText;
        this.f1561b = new r0.a(editText, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyListener a(KeyListener keyListener) {
        if (b(keyListener)) {
            return this.f1561b.a(keyListener);
        }
        return keyListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = this.f1560a.getContext().obtainStyledAttributes(attributeSet, h.j.f16611g0, i10, 0);
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
    public InputConnection d(InputConnection inputConnection, EditorInfo editorInfo) {
        return this.f1561b.b(inputConnection, editorInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z10) {
        this.f1561b.c(z10);
    }
}
