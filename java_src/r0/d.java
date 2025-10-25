package r0;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
final class d implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f28853a;

    /* renamed from: b  reason: collision with root package name */
    private e.AbstractC0038e f28854b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends e.AbstractC0038e {

        /* renamed from: a  reason: collision with root package name */
        private final Reference f28855a;

        /* renamed from: b  reason: collision with root package name */
        private final Reference f28856b;

        a(TextView textView, d dVar) {
            this.f28855a = new WeakReference(textView);
            this.f28856b = new WeakReference(dVar);
        }

        private boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.e.AbstractC0038e
        public void b() {
            CharSequence text;
            CharSequence o10;
            super.b();
            TextView textView = (TextView) this.f28855a.get();
            if (!c(textView, (InputFilter) this.f28856b.get()) || !textView.isAttachedToWindow() || text == (o10 = androidx.emoji2.text.e.b().o((text = textView.getText())))) {
                return;
            }
            int selectionStart = Selection.getSelectionStart(o10);
            int selectionEnd = Selection.getSelectionEnd(o10);
            textView.setText(o10);
            if (o10 instanceof Spannable) {
                d.b((Spannable) o10, selectionStart, selectionEnd);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(TextView textView) {
        this.f28853a = textView;
    }

    private e.AbstractC0038e a() {
        if (this.f28854b == null) {
            this.f28854b = new a(this.f28853a, this);
        }
        return this.f28854b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.f28853a.isInEditMode()) {
            return charSequence;
        }
        int d10 = androidx.emoji2.text.e.b().d();
        if (d10 != 0) {
            boolean z10 = true;
            if (d10 != 1) {
                if (d10 != 3) {
                    return charSequence;
                }
            } else {
                if (i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.f28853a.getText()) {
                    z10 = false;
                }
                if (z10 && charSequence != null) {
                    if (i10 != 0 || i11 != charSequence.length()) {
                        charSequence = charSequence.subSequence(i10, i11);
                    }
                    return androidx.emoji2.text.e.b().p(charSequence, 0, charSequence.length());
                }
                return charSequence;
            }
        }
        androidx.emoji2.text.e.b().s(a());
        return charSequence;
    }
}
