package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Locale;
import u.f;
/* loaded from: classes.dex */
class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f1426a;

    /* renamed from: b  reason: collision with root package name */
    private d1 f1427b;

    /* renamed from: c  reason: collision with root package name */
    private d1 f1428c;

    /* renamed from: d  reason: collision with root package name */
    private d1 f1429d;

    /* renamed from: e  reason: collision with root package name */
    private d1 f1430e;

    /* renamed from: f  reason: collision with root package name */
    private d1 f1431f;

    /* renamed from: g  reason: collision with root package name */
    private d1 f1432g;

    /* renamed from: h  reason: collision with root package name */
    private d1 f1433h;

    /* renamed from: i  reason: collision with root package name */
    private final e0 f1434i;

    /* renamed from: j  reason: collision with root package name */
    private int f1435j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f1436k = -1;

    /* renamed from: l  reason: collision with root package name */
    private Typeface f1437l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f1438m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f1439a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f1440b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ WeakReference f1441c;

        a(int i10, int i11, WeakReference weakReference) {
            this.f1439a = i10;
            this.f1440b = i11;
            this.f1441c = weakReference;
        }

        @Override // u.f.e
        public void h(int i10) {
        }

        @Override // u.f.e
        public void i(Typeface typeface) {
            int i10;
            boolean z10;
            if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f1439a) != -1) {
                if ((this.f1440b & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                typeface = f.a(typeface, i10, z10);
            }
            c0.this.n(this.f1441c, typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f1443a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Typeface f1444b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f1445c;

        b(TextView textView, Typeface typeface, int i10) {
            this.f1443a = textView;
            this.f1444b = typeface;
            this.f1445c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1443a.setTypeface(this.f1444b, this.f1445c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static Drawable[] a(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        static void b(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        static void c(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }
    }

    /* loaded from: classes.dex */
    static class d {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* loaded from: classes.dex */
    static class e {
        static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        static void b(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        static void c(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class f {
        static Typeface a(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(TextView textView) {
        this.f1426a = textView;
        this.f1434i = new e0(textView);
    }

    private void B(int i10, float f10) {
        this.f1434i.t(i10, f10);
    }

    private void C(Context context, f1 f1Var) {
        int i10;
        String n10;
        boolean z10;
        boolean z11;
        this.f1435j = f1Var.j(h.j.V2, this.f1435j);
        int i11 = Build.VERSION.SDK_INT;
        boolean z12 = false;
        if (i11 >= 28) {
            int j10 = f1Var.j(h.j.Y2, -1);
            this.f1436k = j10;
            if (j10 != -1) {
                this.f1435j = (this.f1435j & 2) | 0;
            }
        }
        if (!f1Var.r(h.j.X2) && !f1Var.r(h.j.Z2)) {
            if (f1Var.r(h.j.U2)) {
                this.f1438m = false;
                int j11 = f1Var.j(h.j.U2, 1);
                if (j11 != 1) {
                    if (j11 != 2) {
                        if (j11 == 3) {
                            this.f1437l = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.f1437l = Typeface.SERIF;
                    return;
                }
                this.f1437l = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.f1437l = null;
        if (f1Var.r(h.j.Z2)) {
            i10 = h.j.Z2;
        } else {
            i10 = h.j.X2;
        }
        int i12 = this.f1436k;
        int i13 = this.f1435j;
        if (!context.isRestricted()) {
            try {
                Typeface i14 = f1Var.i(i10, this.f1435j, new a(i12, i13, new WeakReference(this.f1426a)));
                if (i14 != null) {
                    if (i11 >= 28 && this.f1436k != -1) {
                        Typeface create = Typeface.create(i14, 0);
                        int i15 = this.f1436k;
                        if ((this.f1435j & 2) != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.f1437l = f.a(create, i15, z11);
                    } else {
                        this.f1437l = i14;
                    }
                }
                if (this.f1437l == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.f1438m = z10;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1437l == null && (n10 = f1Var.n(i10)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.f1436k != -1) {
                Typeface create2 = Typeface.create(n10, 0);
                int i16 = this.f1436k;
                if ((this.f1435j & 2) != 0) {
                    z12 = true;
                }
                this.f1437l = f.a(create2, i16, z12);
                return;
            }
            this.f1437l = Typeface.create(n10, this.f1435j);
        }
    }

    private void a(Drawable drawable, d1 d1Var) {
        if (drawable != null && d1Var != null) {
            k.i(drawable, d1Var, this.f1426a.getDrawableState());
        }
    }

    private static d1 d(Context context, k kVar, int i10) {
        ColorStateList f10 = kVar.f(context, i10);
        if (f10 != null) {
            d1 d1Var = new d1();
            d1Var.f1467d = true;
            d1Var.f1464a = f10;
            return d1Var;
        }
        return null;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] a10 = c.a(this.f1426a);
                Drawable drawable7 = a10[0];
                if (drawable7 == null && a10[2] == null) {
                    Drawable[] compoundDrawables = this.f1426a.getCompoundDrawables();
                    TextView textView = this.f1426a;
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                    return;
                }
                TextView textView2 = this.f1426a;
                if (drawable2 == null) {
                    drawable2 = a10[1];
                }
                Drawable drawable8 = a10[2];
                if (drawable4 == null) {
                    drawable4 = a10[3];
                }
                c.b(textView2, drawable7, drawable2, drawable8, drawable4);
                return;
            }
            return;
        }
        Drawable[] a11 = c.a(this.f1426a);
        TextView textView3 = this.f1426a;
        if (drawable5 == null) {
            drawable5 = a11[0];
        }
        if (drawable2 == null) {
            drawable2 = a11[1];
        }
        if (drawable6 == null) {
            drawable6 = a11[2];
        }
        if (drawable4 == null) {
            drawable4 = a11[3];
        }
        c.b(textView3, drawable5, drawable2, drawable6, drawable4);
    }

    private void z() {
        d1 d1Var = this.f1433h;
        this.f1427b = d1Var;
        this.f1428c = d1Var;
        this.f1429d = d1Var;
        this.f1430e = d1Var;
        this.f1431f = d1Var;
        this.f1432g = d1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(int i10, float f10) {
        if (!q1.f1624b && !l()) {
            B(i10, f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f1427b != null || this.f1428c != null || this.f1429d != null || this.f1430e != null) {
            Drawable[] compoundDrawables = this.f1426a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1427b);
            a(compoundDrawables[1], this.f1428c);
            a(compoundDrawables[2], this.f1429d);
            a(compoundDrawables[3], this.f1430e);
        }
        if (this.f1431f != null || this.f1432g != null) {
            Drawable[] a10 = c.a(this.f1426a);
            a(a10[0], this.f1431f);
            a(a10[2], this.f1432g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f1434i.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f1434i.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f1434i.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f1434i.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] h() {
        return this.f1434i.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f1434i.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList j() {
        d1 d1Var = this.f1433h;
        if (d1Var != null) {
            return d1Var.f1464a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode k() {
        d1 d1Var = this.f1433h;
        if (d1Var != null) {
            return d1Var.f1465b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.f1434i.n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(AttributeSet attributeSet, int i10) {
        boolean z10;
        boolean z11;
        String str;
        String str2;
        boolean z12;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        Context context = this.f1426a.getContext();
        k b10 = k.b();
        f1 u10 = f1.u(context, attributeSet, h.j.Y, i10, 0);
        TextView textView = this.f1426a;
        d0.p0.S(textView, textView.getContext(), h.j.Y, attributeSet, u10.q(), i10, 0);
        int m10 = u10.m(h.j.Z, -1);
        if (u10.r(h.j.f16591c0)) {
            this.f1427b = d(context, b10, u10.m(h.j.f16591c0, 0));
        }
        if (u10.r(h.j.f16581a0)) {
            this.f1428c = d(context, b10, u10.m(h.j.f16581a0, 0));
        }
        if (u10.r(h.j.f16596d0)) {
            this.f1429d = d(context, b10, u10.m(h.j.f16596d0, 0));
        }
        if (u10.r(h.j.f16586b0)) {
            this.f1430e = d(context, b10, u10.m(h.j.f16586b0, 0));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (u10.r(h.j.f16601e0)) {
            this.f1431f = d(context, b10, u10.m(h.j.f16601e0, 0));
        }
        if (u10.r(h.j.f16606f0)) {
            this.f1432g = d(context, b10, u10.m(h.j.f16606f0, 0));
        }
        u10.v();
        boolean z13 = this.f1426a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (m10 != -1) {
            f1 s10 = f1.s(context, m10, h.j.S2);
            if (!z13 && s10.r(h.j.f16589b3)) {
                z10 = s10.a(h.j.f16589b3, false);
                z11 = true;
            } else {
                z10 = false;
                z11 = false;
            }
            C(context, s10);
            if (s10.r(h.j.f16594c3)) {
                str2 = s10.n(h.j.f16594c3);
            } else {
                str2 = null;
            }
            if (i11 >= 26 && s10.r(h.j.f16584a3)) {
                str = s10.n(h.j.f16584a3);
            } else {
                str = null;
            }
            s10.v();
        } else {
            z10 = false;
            z11 = false;
            str = null;
            str2 = null;
        }
        f1 u11 = f1.u(context, attributeSet, h.j.S2, i10, 0);
        if (!z13 && u11.r(h.j.f16589b3)) {
            z10 = u11.a(h.j.f16589b3, false);
            z12 = true;
        } else {
            z12 = z11;
        }
        if (u11.r(h.j.f16594c3)) {
            str2 = u11.n(h.j.f16594c3);
        }
        if (i11 >= 26 && u11.r(h.j.f16584a3)) {
            str = u11.n(h.j.f16584a3);
        }
        if (i11 >= 28 && u11.r(h.j.T2) && u11.e(h.j.T2, -1) == 0) {
            this.f1426a.setTextSize(0, 0.0f);
        }
        C(context, u11);
        u11.v();
        if (!z13 && z12) {
            s(z10);
        }
        Typeface typeface = this.f1437l;
        if (typeface != null) {
            if (this.f1436k == -1) {
                this.f1426a.setTypeface(typeface, this.f1435j);
            } else {
                this.f1426a.setTypeface(typeface);
            }
        }
        if (str != null) {
            e.d(this.f1426a, str);
        }
        if (str2 != null) {
            d.b(this.f1426a, d.a(str2));
        }
        this.f1434i.o(attributeSet, i10);
        if (q1.f1624b && this.f1434i.j() != 0) {
            int[] i12 = this.f1434i.i();
            if (i12.length > 0) {
                if (e.a(this.f1426a) != -1.0f) {
                    e.b(this.f1426a, this.f1434i.g(), this.f1434i.f(), this.f1434i.h(), 0);
                } else {
                    e.c(this.f1426a, i12, 0);
                }
            }
        }
        f1 t10 = f1.t(context, attributeSet, h.j.f16611g0);
        int m11 = t10.m(h.j.f16651o0, -1);
        if (m11 != -1) {
            drawable = b10.c(context, m11);
        } else {
            drawable = null;
        }
        int m12 = t10.m(h.j.f16676t0, -1);
        if (m12 != -1) {
            drawable2 = b10.c(context, m12);
        } else {
            drawable2 = null;
        }
        int m13 = t10.m(h.j.f16656p0, -1);
        if (m13 != -1) {
            drawable3 = b10.c(context, m13);
        } else {
            drawable3 = null;
        }
        int m14 = t10.m(h.j.f16641m0, -1);
        if (m14 != -1) {
            drawable4 = b10.c(context, m14);
        } else {
            drawable4 = null;
        }
        int m15 = t10.m(h.j.f16661q0, -1);
        if (m15 != -1) {
            drawable5 = b10.c(context, m15);
        } else {
            drawable5 = null;
        }
        int m16 = t10.m(h.j.f16646n0, -1);
        if (m16 != -1) {
            drawable6 = b10.c(context, m16);
        } else {
            drawable6 = null;
        }
        y(drawable, drawable2, drawable3, drawable4, drawable5, drawable6);
        if (t10.r(h.j.f16666r0)) {
            androidx.core.widget.i.f(this.f1426a, t10.c(h.j.f16666r0));
        }
        if (t10.r(h.j.f16671s0)) {
            androidx.core.widget.i.g(this.f1426a, o0.e(t10.j(h.j.f16671s0, -1), null));
        }
        int e10 = t10.e(h.j.f16686v0, -1);
        int e11 = t10.e(h.j.f16691w0, -1);
        int e12 = t10.e(h.j.f16696x0, -1);
        t10.v();
        if (e10 != -1) {
            androidx.core.widget.i.h(this.f1426a, e10);
        }
        if (e11 != -1) {
            androidx.core.widget.i.i(this.f1426a, e11);
        }
        if (e12 != -1) {
            androidx.core.widget.i.j(this.f1426a, e12);
        }
    }

    void n(WeakReference weakReference, Typeface typeface) {
        if (this.f1438m) {
            this.f1437l = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (d0.p0.E(textView)) {
                    textView.post(new b(textView, typeface, this.f1435j));
                } else {
                    textView.setTypeface(typeface, this.f1435j);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(boolean z10, int i10, int i11, int i12, int i13) {
        if (!q1.f1624b) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(Context context, int i10) {
        String n10;
        f1 s10 = f1.s(context, i10, h.j.S2);
        if (s10.r(h.j.f16589b3)) {
            s(s10.a(h.j.f16589b3, false));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (s10.r(h.j.T2) && s10.e(h.j.T2, -1) == 0) {
            this.f1426a.setTextSize(0, 0.0f);
        }
        C(context, s10);
        if (i11 >= 26 && s10.r(h.j.f16584a3) && (n10 = s10.n(h.j.f16584a3)) != null) {
            e.d(this.f1426a, n10);
        }
        s10.v();
        Typeface typeface = this.f1437l;
        if (typeface != null) {
            this.f1426a.setTypeface(typeface, this.f1435j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT < 30 && inputConnection != null) {
            f0.c.f(editorInfo, textView.getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(boolean z10) {
        this.f1426a.setAllCaps(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(int i10, int i11, int i12, int i13) {
        this.f1434i.p(i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int[] iArr, int i10) {
        this.f1434i.q(iArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(int i10) {
        this.f1434i.r(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(ColorStateList colorStateList) {
        boolean z10;
        if (this.f1433h == null) {
            this.f1433h = new d1();
        }
        d1 d1Var = this.f1433h;
        d1Var.f1464a = colorStateList;
        if (colorStateList != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        d1Var.f1467d = z10;
        z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(PorterDuff.Mode mode) {
        boolean z10;
        if (this.f1433h == null) {
            this.f1433h = new d1();
        }
        d1 d1Var = this.f1433h;
        d1Var.f1465b = mode;
        if (mode != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        d1Var.f1466c = z10;
        z();
    }
}
