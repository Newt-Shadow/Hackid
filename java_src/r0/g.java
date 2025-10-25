package r0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
final class g implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private final EditText f28864a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28865b;

    /* renamed from: c  reason: collision with root package name */
    private e.AbstractC0038e f28866c;

    /* renamed from: d  reason: collision with root package name */
    private int f28867d = Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f28868e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28869f = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends e.AbstractC0038e {

        /* renamed from: a  reason: collision with root package name */
        private final Reference f28870a;

        a(EditText editText) {
            this.f28870a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.e.AbstractC0038e
        public void b() {
            super.b();
            g.b((EditText) this.f28870a.get(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(EditText editText, boolean z10) {
        this.f28864a = editText;
        this.f28865b = z10;
    }

    private e.AbstractC0038e a() {
        if (this.f28866c == null) {
            this.f28866c = new a(this.f28864a);
        }
        return this.f28866c;
    }

    static void b(EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.e.b().o(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean d() {
        if (this.f28869f && (this.f28865b || androidx.emoji2.text.e.h())) {
            return false;
        }
        return true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void c(boolean z10) {
        if (this.f28869f != z10) {
            if (this.f28866c != null) {
                androidx.emoji2.text.e.b().t(this.f28866c);
            }
            this.f28869f = z10;
            if (z10) {
                b(this.f28864a, androidx.emoji2.text.e.b().d());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (!this.f28864a.isInEditMode() && !d() && i11 <= i12 && (charSequence instanceof Spannable)) {
            int d10 = androidx.emoji2.text.e.b().d();
            if (d10 != 0) {
                if (d10 != 1) {
                    if (d10 != 3) {
                        return;
                    }
                } else {
                    androidx.emoji2.text.e.b().r((Spannable) charSequence, i10, i10 + i12, this.f28867d, this.f28868e);
                    return;
                }
            }
            androidx.emoji2.text.e.b().s(a());
        }
    }
}
