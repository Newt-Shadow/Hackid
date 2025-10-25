package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
/* loaded from: classes.dex */
public abstract class b1 {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f1391a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    static final int[] f1392b = {-16842910};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f1393c = {16842908};

    /* renamed from: d  reason: collision with root package name */
    static final int[] f1394d = {16843518};

    /* renamed from: e  reason: collision with root package name */
    static final int[] f1395e = {16842919};

    /* renamed from: f  reason: collision with root package name */
    static final int[] f1396f = {16842912};

    /* renamed from: g  reason: collision with root package name */
    static final int[] f1397g = {16842913};

    /* renamed from: h  reason: collision with root package name */
    static final int[] f1398h = {-16842919, -16842908};

    /* renamed from: i  reason: collision with root package name */
    static final int[] f1399i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f1400j = new int[1];

    public static void a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(h.j.f16701y0);
        try {
            if (!obtainStyledAttributes.hasValue(h.j.D0)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i10) {
        ColorStateList e10 = e(context, i10);
        if (e10 != null && e10.isStateful()) {
            return e10.getColorForState(f1392b, e10.getDefaultColor());
        }
        TypedValue f10 = f();
        context.getTheme().resolveAttribute(16842803, f10, true);
        return d(context, i10, f10.getFloat());
    }

    public static int c(Context context, int i10) {
        int[] iArr = f1400j;
        iArr[0] = i10;
        f1 t10 = f1.t(context, null, iArr);
        try {
            return t10.b(0, 0);
        } finally {
            t10.v();
        }
    }

    static int d(Context context, int i10, float f10) {
        int c10 = c(context, i10);
        return v.a.f(c10, Math.round(Color.alpha(c10) * f10));
    }

    public static ColorStateList e(Context context, int i10) {
        int[] iArr = f1400j;
        iArr[0] = i10;
        f1 t10 = f1.t(context, null, iArr);
        try {
            return t10.c(0);
        } finally {
            t10.v();
        }
    }

    private static TypedValue f() {
        ThreadLocal threadLocal = f1391a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }
}
