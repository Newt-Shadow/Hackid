package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: l  reason: collision with root package name */
    private static final RectF f1474l = new RectF();

    /* renamed from: m  reason: collision with root package name */
    private static ConcurrentHashMap f1475m = new ConcurrentHashMap();

    /* renamed from: n  reason: collision with root package name */
    private static ConcurrentHashMap f1476n = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private int f1477a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1478b = false;

    /* renamed from: c  reason: collision with root package name */
    private float f1479c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f1480d = -1.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f1481e = -1.0f;

    /* renamed from: f  reason: collision with root package name */
    private int[] f1482f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    private boolean f1483g = false;

    /* renamed from: h  reason: collision with root package name */
    private TextPaint f1484h;

    /* renamed from: i  reason: collision with root package name */
    private final TextView f1485i;

    /* renamed from: j  reason: collision with root package name */
    private final Context f1486j;

    /* renamed from: k  reason: collision with root package name */
    private final f f1487k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, TextView textView, TextPaint textPaint) {
            return new StaticLayout(charSequence, textPaint, i10, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
        }

        static int b(TextView textView) {
            return textView.getMaxLines();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        static boolean a(View view) {
            return view.isInLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {
        static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11, TextView textView, TextPaint textPaint, f fVar) {
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                fVar.a(obtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return obtain.build();
        }
    }

    /* loaded from: classes.dex */
    private static class d extends f {
        d() {
        }

        @Override // androidx.appcompat.widget.e0.f
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) e0.m(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* loaded from: classes.dex */
    private static class e extends d {
        e() {
        }

        @Override // androidx.appcompat.widget.e0.d, androidx.appcompat.widget.e0.f
        void a(StaticLayout.Builder builder, TextView textView) {
            TextDirectionHeuristic textDirectionHeuristic;
            textDirectionHeuristic = textView.getTextDirectionHeuristic();
            builder.setTextDirection(textDirectionHeuristic);
        }

        @Override // androidx.appcompat.widget.e0.f
        boolean b(TextView textView) {
            boolean isHorizontallyScrollable;
            isHorizontallyScrollable = textView.isHorizontallyScrollable();
            return isHorizontallyScrollable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f {
        f() {
        }

        abstract void a(StaticLayout.Builder builder, TextView textView);

        boolean b(TextView textView) {
            return ((Boolean) e0.m(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(TextView textView) {
        this.f1485i = textView;
        this.f1486j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1487k = new e();
        } else {
            this.f1487k = new d();
        }
    }

    private int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    private void c() {
        this.f1477a = 0;
        this.f1480d = -1.0f;
        this.f1481e = -1.0f;
        this.f1479c = -1.0f;
        this.f1482f = new int[0];
        this.f1478b = false;
    }

    private int e(RectF rectF) {
        int length = this.f1482f.length;
        if (length != 0) {
            int i10 = 1;
            int i11 = length - 1;
            int i12 = 0;
            while (i10 <= i11) {
                int i13 = (i10 + i11) / 2;
                if (x(this.f1482f[i13], rectF)) {
                    int i14 = i13 + 1;
                    i12 = i10;
                    i10 = i14;
                } else {
                    i12 = i13 - 1;
                    i11 = i12;
                }
            }
            return this.f1482f[i12];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    private static Method k(String str) {
        try {
            Method method = (Method) f1475m.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f1475m.put(str, method);
            }
            return method;
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    static Object m(Object obj, String str, Object obj2) {
        try {
            return k(str).invoke(obj, new Object[0]);
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e10);
            return obj2;
        }
    }

    private void s(float f10) {
        if (f10 != this.f1485i.getPaint().getTextSize()) {
            this.f1485i.getPaint().setTextSize(f10);
            boolean a10 = b.a(this.f1485i);
            if (this.f1485i.getLayout() != null) {
                this.f1478b = false;
                try {
                    Method k10 = k("nullLayouts");
                    if (k10 != null) {
                        k10.invoke(this.f1485i, new Object[0]);
                    }
                } catch (Exception e10) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (!a10) {
                    this.f1485i.requestLayout();
                } else {
                    this.f1485i.forceLayout();
                }
                this.f1485i.invalidate();
            }
        }
    }

    private boolean u() {
        if (y() && this.f1477a == 1) {
            if (!this.f1483g || this.f1482f.length == 0) {
                int floor = ((int) Math.floor((this.f1481e - this.f1480d) / this.f1479c)) + 1;
                int[] iArr = new int[floor];
                for (int i10 = 0; i10 < floor; i10++) {
                    iArr[i10] = Math.round(this.f1480d + (i10 * this.f1479c));
                }
                this.f1482f = b(iArr);
            }
            this.f1478b = true;
        } else {
            this.f1478b = false;
        }
        return this.f1478b;
    }

    private void v(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.f1482f = b(iArr);
            w();
        }
    }

    private boolean w() {
        int[] iArr;
        int length;
        boolean z10;
        if (this.f1482f.length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f1483g = z10;
        if (z10) {
            this.f1477a = 1;
            this.f1480d = iArr[0];
            this.f1481e = iArr[length - 1];
            this.f1479c = -1.0f;
        }
        return z10;
    }

    private boolean x(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1485i.getText();
        TransformationMethod transformationMethod = this.f1485i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1485i)) != null) {
            text = transformation;
        }
        int b10 = a.b(this.f1485i);
        l(i10);
        StaticLayout d10 = d(text, (Layout.Alignment) m(this.f1485i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), b10);
        if ((b10 != -1 && (d10.getLineCount() > b10 || d10.getLineEnd(d10.getLineCount() - 1) != text.length())) || d10.getHeight() > rectF.bottom) {
            return false;
        }
        return true;
    }

    private boolean y() {
        return !(this.f1485i instanceof l);
    }

    private void z(float f10, float f11, float f12) {
        if (f10 > 0.0f) {
            if (f11 > f10) {
                if (f12 > 0.0f) {
                    this.f1477a = 1;
                    this.f1480d = f10;
                    this.f1481e = f11;
                    this.f1479c = f12;
                    this.f1483g = false;
                    return;
                }
                throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
            }
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        int measuredWidth;
        if (!n()) {
            return;
        }
        if (this.f1478b) {
            if (this.f1485i.getMeasuredHeight() > 0 && this.f1485i.getMeasuredWidth() > 0) {
                if (this.f1487k.b(this.f1485i)) {
                    measuredWidth = 1048576;
                } else {
                    measuredWidth = (this.f1485i.getMeasuredWidth() - this.f1485i.getTotalPaddingLeft()) - this.f1485i.getTotalPaddingRight();
                }
                int height = (this.f1485i.getHeight() - this.f1485i.getCompoundPaddingBottom()) - this.f1485i.getCompoundPaddingTop();
                if (measuredWidth > 0 && height > 0) {
                    RectF rectF = f1474l;
                    synchronized (rectF) {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float e10 = e(rectF);
                        if (e10 != this.f1485i.getTextSize()) {
                            t(0, e10);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.f1478b = true;
    }

    StaticLayout d(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        return c.a(charSequence, alignment, i10, i11, this.f1485i, this.f1484h, this.f1487k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return Math.round(this.f1481e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return Math.round(this.f1480d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return Math.round(this.f1479c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] i() {
        return this.f1482f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f1477a;
    }

    void l(int i10) {
        TextPaint textPaint = this.f1484h;
        if (textPaint == null) {
            this.f1484h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1484h.set(this.f1485i.getPaint());
        this.f1484h.setTextSize(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        if (y() && this.f1477a != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(AttributeSet attributeSet, int i10) {
        float f10;
        float f11;
        float f12;
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1486j.obtainStyledAttributes(attributeSet, h.j.f16611g0, i10, 0);
        TextView textView = this.f1485i;
        d0.p0.S(textView, textView.getContext(), h.j.f16611g0, attributeSet, obtainStyledAttributes, i10, 0);
        if (obtainStyledAttributes.hasValue(h.j.f16636l0)) {
            this.f1477a = obtainStyledAttributes.getInt(h.j.f16636l0, 0);
        }
        if (obtainStyledAttributes.hasValue(h.j.f16631k0)) {
            f10 = obtainStyledAttributes.getDimension(h.j.f16631k0, -1.0f);
        } else {
            f10 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(h.j.f16621i0)) {
            f11 = obtainStyledAttributes.getDimension(h.j.f16621i0, -1.0f);
        } else {
            f11 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(h.j.f16616h0)) {
            f12 = obtainStyledAttributes.getDimension(h.j.f16616h0, -1.0f);
        } else {
            f12 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(h.j.f16626j0) && (resourceId = obtainStyledAttributes.getResourceId(h.j.f16626j0, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            v(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (y()) {
            if (this.f1477a == 1) {
                if (!this.f1483g) {
                    DisplayMetrics displayMetrics = this.f1486j.getResources().getDisplayMetrics();
                    if (f11 == -1.0f) {
                        f11 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (f12 == -1.0f) {
                        f12 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (f10 == -1.0f) {
                        f10 = 1.0f;
                    }
                    z(f11, f12, f10);
                }
                u();
                return;
            }
            return;
        }
        this.f1477a = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i10, int i11, int i12, int i13) {
        if (y()) {
            DisplayMetrics displayMetrics = this.f1486j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (u()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int[] iArr, int i10) {
        if (y()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i10 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1486j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArr2[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.f1482f = b(iArr2);
                if (!w()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1483g = false;
            }
            if (u()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(int i10) {
        if (y()) {
            if (i10 != 0) {
                if (i10 == 1) {
                    DisplayMetrics displayMetrics = this.f1486j.getResources().getDisplayMetrics();
                    z(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (u()) {
                        a();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
            }
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(int i10, float f10) {
        Resources resources;
        Context context = this.f1486j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        s(TypedValue.applyDimension(i10, f10, resources.getDisplayMetrics()));
    }
}
