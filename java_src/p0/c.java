package p0;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import c0.f;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class c extends SpannableStringBuilder {

    /* renamed from: a  reason: collision with root package name */
    private final Class f27688a;

    /* renamed from: b  reason: collision with root package name */
    private final List f27689b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements TextWatcher, SpanWatcher {

        /* renamed from: a  reason: collision with root package name */
        final Object f27690a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f27691b = new AtomicInteger(0);

        a(Object obj) {
            this.f27690a = obj;
        }

        private boolean b(Object obj) {
            return obj instanceof b;
        }

        final void a() {
            this.f27691b.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f27690a).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f27690a).beforeTextChanged(charSequence, i10, i11, i12);
        }

        final void c() {
            this.f27691b.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f27691b.get() > 0 && b(obj)) {
                return;
            }
            ((SpanWatcher) this.f27690a).onSpanAdded(spannable, obj, i10, i11);
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
            int i14;
            int i15;
            if (this.f27691b.get() > 0 && b(obj)) {
                return;
            }
            if (Build.VERSION.SDK_INT < 28) {
                if (i10 > i11) {
                    i10 = 0;
                }
                if (i12 > i13) {
                    i14 = i10;
                    i15 = 0;
                    ((SpanWatcher) this.f27690a).onSpanChanged(spannable, obj, i14, i11, i15, i13);
                }
            }
            i14 = i10;
            i15 = i12;
            ((SpanWatcher) this.f27690a).onSpanChanged(spannable, obj, i14, i11, i15, i13);
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f27691b.get() > 0 && b(obj)) {
                return;
            }
            ((SpanWatcher) this.f27690a).onSpanRemoved(spannable, obj, i10, i11);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f27690a).onTextChanged(charSequence, i10, i11, i12);
        }
    }

    c(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f27689b = new ArrayList();
        f.h(cls, "watcherClass cannot be null");
        this.f27688a = cls;
    }

    private void b() {
        for (int i10 = 0; i10 < this.f27689b.size(); i10++) {
            ((a) this.f27689b.get(i10)).a();
        }
    }

    public static c c(Class cls, CharSequence charSequence) {
        return new c(cls, charSequence);
    }

    private void e() {
        for (int i10 = 0; i10 < this.f27689b.size(); i10++) {
            ((a) this.f27689b.get(i10)).onTextChanged(this, 0, length(), length());
        }
    }

    private a f(Object obj) {
        for (int i10 = 0; i10 < this.f27689b.size(); i10++) {
            a aVar = (a) this.f27689b.get(i10);
            if (aVar.f27690a == obj) {
                return aVar;
            }
        }
        return null;
    }

    private boolean g(Class cls) {
        if (this.f27688a == cls) {
            return true;
        }
        return false;
    }

    private boolean h(Object obj) {
        if (obj != null && g(obj.getClass())) {
            return true;
        }
        return false;
    }

    private void i() {
        for (int i10 = 0; i10 < this.f27689b.size(); i10++) {
            ((a) this.f27689b.get(i10)).c();
        }
    }

    public void a() {
        b();
    }

    public void d() {
        i();
        e();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public Object[] getSpans(int i10, int i11, Class cls) {
        if (g(cls)) {
            a[] aVarArr = (a[]) super.getSpans(i10, i11, a.class);
            Object[] objArr = (Object[]) Array.newInstance(cls, aVarArr.length);
            for (int i12 = 0; i12 < aVarArr.length; i12++) {
                objArr[i12] = aVarArr[i12].f27690a;
            }
            return objArr;
        }
        return super.getSpans(i10, i11, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return super.nextSpanTransition(i10, i11, (cls == null || g(cls)) ? a.class : a.class);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(Object obj) {
        a aVar;
        if (h(obj)) {
            aVar = f(obj);
            if (aVar != null) {
                obj = aVar;
            }
        } else {
            aVar = null;
        }
        super.removeSpan(obj);
        if (aVar != null) {
            this.f27689b.remove(aVar);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (h(obj)) {
            a aVar = new a(obj);
            this.f27689b.add(aVar);
            obj = aVar;
        }
        super.setSpan(obj, i10, i11, i12);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return new c(this.f27688a, this, i10, i11);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder delete(int i10, int i11) {
        super.delete(i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder insert(int i10, CharSequence charSequence) {
        super.insert(i10, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence) {
        b();
        super.replace(i10, i11, charSequence);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder insert(int i10, CharSequence charSequence, int i11, int i12) {
        super.insert(i10, charSequence, i11, i12);
        return this;
    }

    c(Class cls, CharSequence charSequence, int i10, int i11) {
        super(charSequence, i10, i11);
        this.f27689b = new ArrayList();
        f.h(cls, "watcherClass cannot be null");
        this.f27688a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence, int i12, int i13) {
        b();
        super.replace(i10, i11, charSequence, i12, i13);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c10) {
        super.append(c10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence, int i10, int i11) {
        super.append(charSequence, i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i10) {
        super.append(charSequence, obj, i10);
        return this;
    }
}
