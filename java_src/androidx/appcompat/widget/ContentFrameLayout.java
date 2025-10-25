package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TypedValue f1210a;

    /* renamed from: b  reason: collision with root package name */
    private TypedValue f1211b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f1212c;

    /* renamed from: d  reason: collision with root package name */
    private TypedValue f1213d;

    /* renamed from: e  reason: collision with root package name */
    private TypedValue f1214e;

    /* renamed from: f  reason: collision with root package name */
    private TypedValue f1215f;

    /* renamed from: g  reason: collision with root package name */
    private final Rect f1216g;

    /* renamed from: h  reason: collision with root package name */
    private a f1217h;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void a(int i10, int i11, int i12, int i13) {
        this.f1216g.set(i10, i11, i12, i13);
        if (d0.p0.F(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1214e == null) {
            this.f1214e = new TypedValue();
        }
        return this.f1214e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1215f == null) {
            this.f1215f = new TypedValue();
        }
        return this.f1215f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1212c == null) {
            this.f1212c = new TypedValue();
        }
        return this.f1212c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1213d == null) {
            this.f1213d = new TypedValue();
        }
        return this.f1213d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1210a == null) {
            this.f1210a = new TypedValue();
        }
        return this.f1210a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1211b == null) {
            this.f1211b = new TypedValue();
        }
        return this.f1211b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f1217h;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f1217h;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.f1217h = aVar;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1216g = new Rect();
    }
}
