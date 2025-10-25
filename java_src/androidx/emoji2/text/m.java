package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements Spannable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2482a = false;

    /* renamed from: b  reason: collision with root package name */
    private Spannable f2483b;

    /* loaded from: classes.dex */
    private static class a {
        static IntStream a(CharSequence charSequence) {
            return charSequence.chars();
        }

        static IntStream b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        b() {
        }

        boolean a(CharSequence charSequence) {
            return charSequence instanceof b0.k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c extends b {
        c() {
        }

        @Override // androidx.emoji2.text.m.b
        boolean a(CharSequence charSequence) {
            if (!p0.e.a(charSequence) && !(charSequence instanceof b0.k)) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Spannable spannable) {
        this.f2483b = spannable;
    }

    private void a() {
        Spannable spannable = this.f2483b;
        if (!this.f2482a && c().a(spannable)) {
            this.f2483b = new SpannableString(spannable);
        }
        this.f2482a = true;
    }

    static b c() {
        if (Build.VERSION.SDK_INT < 28) {
            return new b();
        }
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Spannable b() {
        return this.f2483b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.f2483b.charAt(i10);
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        return a.a(this.f2483b);
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        return a.b(this.f2483b);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f2483b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f2483b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f2483b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public Object[] getSpans(int i10, int i11, Class cls) {
        return this.f2483b.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f2483b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f2483b.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f2483b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        a();
        this.f2483b.setSpan(obj, i10, i11, i12);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.f2483b.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f2483b.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(CharSequence charSequence) {
        this.f2483b = new SpannableString(charSequence);
    }
}
