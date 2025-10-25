package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import u.f;
/* loaded from: classes.dex */
public class f1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1492a;

    /* renamed from: b  reason: collision with root package name */
    private final TypedArray f1493b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f1494c;

    private f1(Context context, TypedArray typedArray) {
        this.f1492a = context;
        this.f1493b = typedArray;
    }

    public static f1 s(Context context, int i10, int[] iArr) {
        return new f1(context, context.obtainStyledAttributes(i10, iArr));
    }

    public static f1 t(Context context, AttributeSet attributeSet, int[] iArr) {
        return new f1(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static f1 u(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        return new f1(context, context.obtainStyledAttributes(attributeSet, iArr, i10, i11));
    }

    public boolean a(int i10, boolean z10) {
        return this.f1493b.getBoolean(i10, z10);
    }

    public int b(int i10, int i11) {
        return this.f1493b.getColor(i10, i11);
    }

    public ColorStateList c(int i10) {
        int resourceId;
        ColorStateList a10;
        if (this.f1493b.hasValue(i10) && (resourceId = this.f1493b.getResourceId(i10, 0)) != 0 && (a10 = i.a.a(this.f1492a, resourceId)) != null) {
            return a10;
        }
        return this.f1493b.getColorStateList(i10);
    }

    public int d(int i10, int i11) {
        return this.f1493b.getDimensionPixelOffset(i10, i11);
    }

    public int e(int i10, int i11) {
        return this.f1493b.getDimensionPixelSize(i10, i11);
    }

    public Drawable f(int i10) {
        int resourceId;
        if (this.f1493b.hasValue(i10) && (resourceId = this.f1493b.getResourceId(i10, 0)) != 0) {
            return i.a.b(this.f1492a, resourceId);
        }
        return this.f1493b.getDrawable(i10);
    }

    public Drawable g(int i10) {
        int resourceId;
        if (this.f1493b.hasValue(i10) && (resourceId = this.f1493b.getResourceId(i10, 0)) != 0) {
            return k.b().d(this.f1492a, resourceId, true);
        }
        return null;
    }

    public float h(int i10, float f10) {
        return this.f1493b.getFloat(i10, f10);
    }

    public Typeface i(int i10, int i11, f.e eVar) {
        int resourceId = this.f1493b.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1494c == null) {
            this.f1494c = new TypedValue();
        }
        return u.f.f(this.f1492a, resourceId, this.f1494c, i11, eVar);
    }

    public int j(int i10, int i11) {
        return this.f1493b.getInt(i10, i11);
    }

    public int k(int i10, int i11) {
        return this.f1493b.getInteger(i10, i11);
    }

    public int l(int i10, int i11) {
        return this.f1493b.getLayoutDimension(i10, i11);
    }

    public int m(int i10, int i11) {
        return this.f1493b.getResourceId(i10, i11);
    }

    public String n(int i10) {
        return this.f1493b.getString(i10);
    }

    public CharSequence o(int i10) {
        return this.f1493b.getText(i10);
    }

    public CharSequence[] p(int i10) {
        return this.f1493b.getTextArray(i10);
    }

    public TypedArray q() {
        return this.f1493b;
    }

    public boolean r(int i10) {
        return this.f1493b.hasValue(i10);
    }

    public void v() {
        this.f1493b.recycle();
    }
}
