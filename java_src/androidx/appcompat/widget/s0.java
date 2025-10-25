package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
/* loaded from: classes.dex */
public abstract class s0 extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1643a;

    /* renamed from: b  reason: collision with root package name */
    private int f1644b;

    /* renamed from: c  reason: collision with root package name */
    private int f1645c;

    /* renamed from: d  reason: collision with root package name */
    private int f1646d;

    /* renamed from: e  reason: collision with root package name */
    private int f1647e;

    /* renamed from: f  reason: collision with root package name */
    private int f1648f;

    /* renamed from: g  reason: collision with root package name */
    private float f1649g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1650h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f1651i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f1652j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f1653k;

    /* renamed from: l  reason: collision with root package name */
    private int f1654l;

    /* renamed from: m  reason: collision with root package name */
    private int f1655m;

    /* renamed from: n  reason: collision with root package name */
    private int f1656n;

    /* renamed from: o  reason: collision with root package name */
    private int f1657o;

    /* loaded from: classes.dex */
    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i10, int i11) {
            super(i10, i11);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public s0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void i(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View q10 = q(i12);
            if (q10.getVisibility() != 8) {
                a aVar = (a) q10.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i13 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = q10.getMeasuredWidth();
                    measureChildWithMargins(q10, i11, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i13;
                }
            }
        }
    }

    private void j(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View q10 = q(i12);
            if (q10.getVisibility() != 8) {
                a aVar = (a) q10.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i13 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = q10.getMeasuredHeight();
                    measureChildWithMargins(q10, makeMeasureSpec, 0, i11, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i13;
                }
            }
        }
    }

    private void y(View view, int i10, int i11, int i12, int i13) {
        view.layout(i10, i11, i12 + i10, i13 + i11);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    void e(Canvas canvas) {
        int right;
        int left;
        int i10;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean b10 = q1.b(this);
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View q10 = q(i11);
            if (q10 != null && q10.getVisibility() != 8 && r(i11)) {
                a aVar = (a) q10.getLayoutParams();
                if (b10) {
                    left2 = q10.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else {
                    left2 = (q10.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.f1654l;
                }
                h(canvas, left2);
            }
        }
        if (r(virtualChildCount)) {
            View q11 = q(virtualChildCount - 1);
            if (q11 == null) {
                if (b10) {
                    right = getPaddingLeft();
                } else {
                    left = getWidth() - getPaddingRight();
                    i10 = this.f1654l;
                    right = left - i10;
                }
            } else {
                a aVar2 = (a) q11.getLayoutParams();
                if (b10) {
                    left = q11.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i10 = this.f1654l;
                    right = left - i10;
                } else {
                    right = q11.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            }
            h(canvas, right);
        }
    }

    void f(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View q10 = q(i10);
            if (q10 != null && q10.getVisibility() != 8 && r(i10)) {
                g(canvas, (q10.getTop() - ((LinearLayout.LayoutParams) ((a) q10.getLayoutParams())).topMargin) - this.f1655m);
            }
        }
        if (r(virtualChildCount)) {
            View q11 = q(virtualChildCount - 1);
            if (q11 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.f1655m;
            } else {
                bottom = q11.getBottom() + ((LinearLayout.LayoutParams) ((a) q11.getLayoutParams())).bottomMargin;
            }
            g(canvas, bottom);
        }
    }

    void g(Canvas canvas, int i10) {
        this.f1653k.setBounds(getPaddingLeft() + this.f1657o, i10, (getWidth() - getPaddingRight()) - this.f1657o, this.f1655m + i10);
        this.f1653k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.f1644b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.f1644b;
        if (childCount > i11) {
            View childAt = getChildAt(i11);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f1644b == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i12 = this.f1645c;
            if (this.f1646d == 1 && (i10 = this.f1647e & 112) != 48) {
                if (i10 != 16) {
                    if (i10 == 80) {
                        i12 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1648f;
                    }
                } else {
                    i12 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1648f) / 2;
                }
            }
            return i12 + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1644b;
    }

    public Drawable getDividerDrawable() {
        return this.f1653k;
    }

    public int getDividerPadding() {
        return this.f1657o;
    }

    public int getDividerWidth() {
        return this.f1654l;
    }

    public int getGravity() {
        return this.f1647e;
    }

    public int getOrientation() {
        return this.f1646d;
    }

    public int getShowDividers() {
        return this.f1656n;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1649g;
    }

    void h(Canvas canvas, int i10) {
        this.f1653k.setBounds(i10, getPaddingTop() + this.f1657o, this.f1654l + i10, (getHeight() - getPaddingBottom()) - this.f1657o);
        this.f1653k.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: k */
    public a generateDefaultLayoutParams() {
        int i10 = this.f1646d;
        if (i10 == 0) {
            return new a(-2, -2);
        }
        if (i10 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: l */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: m */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    int n(View view, int i10) {
        return 0;
    }

    int o(View view) {
        return 0;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1653k == null) {
            return;
        }
        if (this.f1646d == 1) {
            f(canvas);
        } else {
            e(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.f1646d == 1) {
            t(i10, i11, i12, i13);
        } else {
            s(i10, i11, i12, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.f1646d == 1) {
            x(i10, i11);
        } else {
            v(i10, i11);
        }
    }

    int p(View view) {
        return 0;
    }

    View q(int i10) {
        return getChildAt(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean r(int i10) {
        if (i10 == 0) {
            if ((this.f1656n & 1) == 0) {
                return false;
            }
            return true;
        } else if (i10 == getChildCount()) {
            if ((this.f1656n & 4) == 0) {
                return false;
            }
            return true;
        } else if ((this.f1656n & 2) == 0) {
            return false;
        } else {
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                if (getChildAt(i11).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void s(int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.s0.s(int, int, int, int):void");
    }

    public void setBaselineAligned(boolean z10) {
        this.f1643a = z10;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.f1644b = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1653k) {
            return;
        }
        this.f1653k = drawable;
        boolean z10 = false;
        if (drawable != null) {
            this.f1654l = drawable.getIntrinsicWidth();
            this.f1655m = drawable.getIntrinsicHeight();
        } else {
            this.f1654l = 0;
            this.f1655m = 0;
        }
        if (drawable == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        requestLayout();
    }

    public void setDividerPadding(int i10) {
        this.f1657o = i10;
    }

    public void setGravity(int i10) {
        if (this.f1647e != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f1647e = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & 8388615;
        int i12 = this.f1647e;
        if ((8388615 & i12) != i11) {
            this.f1647e = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z10) {
        this.f1650h = z10;
    }

    public void setOrientation(int i10) {
        if (this.f1646d != i10) {
            this.f1646d = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.f1656n) {
            requestLayout();
        }
        this.f1656n = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.f1647e;
        if ((i12 & 112) != i11) {
            this.f1647e = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f10) {
        this.f1649g = Math.max(0.0f, f10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void t(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            r6 = r17
            int r7 = r17.getPaddingLeft()
            int r0 = r20 - r18
            int r1 = r17.getPaddingRight()
            int r8 = r0 - r1
            int r0 = r0 - r7
            int r1 = r17.getPaddingRight()
            int r9 = r0 - r1
            int r10 = r17.getVirtualChildCount()
            int r0 = r6.f1647e
            r1 = r0 & 112(0x70, float:1.57E-43)
            r2 = 8388615(0x800007, float:1.1754953E-38)
            r11 = r0 & r2
            r0 = 16
            if (r1 == r0) goto L3b
            r0 = 80
            if (r1 == r0) goto L2f
            int r0 = r17.getPaddingTop()
            goto L47
        L2f:
            int r0 = r17.getPaddingTop()
            int r0 = r0 + r21
            int r0 = r0 - r19
            int r1 = r6.f1648f
            int r0 = r0 - r1
            goto L47
        L3b:
            int r0 = r17.getPaddingTop()
            int r1 = r21 - r19
            int r2 = r6.f1648f
            int r1 = r1 - r2
            int r1 = r1 / 2
            int r0 = r0 + r1
        L47:
            r1 = 0
            r12 = r1
        L49:
            if (r12 >= r10) goto Lcb
            android.view.View r13 = r6.q(r12)
            r14 = 1
            if (r13 != 0) goto L59
            int r1 = r6.w(r12)
            int r0 = r0 + r1
            goto Lc7
        L59:
            int r1 = r13.getVisibility()
            r2 = 8
            if (r1 == r2) goto Lc7
            int r4 = r13.getMeasuredWidth()
            int r15 = r13.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r1 = r13.getLayoutParams()
            r5 = r1
            androidx.appcompat.widget.s0$a r5 = (androidx.appcompat.widget.s0.a) r5
            int r1 = r5.gravity
            if (r1 >= 0) goto L75
            r1 = r11
        L75:
            int r2 = d0.p0.t(r17)
            int r1 = d0.s.a(r1, r2)
            r1 = r1 & 7
            if (r1 == r14) goto L8d
            r2 = 5
            if (r1 == r2) goto L88
            int r1 = r5.leftMargin
            int r1 = r1 + r7
            goto L98
        L88:
            int r1 = r8 - r4
            int r2 = r5.rightMargin
            goto L97
        L8d:
            int r1 = r9 - r4
            int r1 = r1 / 2
            int r1 = r1 + r7
            int r2 = r5.leftMargin
            int r1 = r1 + r2
            int r2 = r5.rightMargin
        L97:
            int r1 = r1 - r2
        L98:
            r2 = r1
            boolean r1 = r6.r(r12)
            if (r1 == 0) goto La2
            int r1 = r6.f1655m
            int r0 = r0 + r1
        La2:
            int r1 = r5.topMargin
            int r16 = r0 + r1
            int r0 = r6.o(r13)
            int r3 = r16 + r0
            r0 = r17
            r1 = r13
            r14 = r5
            r5 = r15
            r0.y(r1, r2, r3, r4, r5)
            int r0 = r14.bottomMargin
            int r15 = r15 + r0
            int r0 = r6.p(r13)
            int r15 = r15 + r0
            int r16 = r16 + r15
            int r0 = r6.n(r13, r12)
            int r12 = r12 + r0
            r0 = r16
            r1 = 1
            goto Lc8
        Lc7:
            r1 = r14
        Lc8:
            int r12 = r12 + r1
            goto L49
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.s0.t(int, int, int, int):void");
    }

    void u(View view, int i10, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void v(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 1291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.s0.v(int, int):void");
    }

    int w(int i10) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0325  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void x(int r34, int r35) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.s0.x(int, int):void");
    }

    public s0(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1643a = true;
        this.f1644b = -1;
        this.f1645c = 0;
        this.f1647e = 8388659;
        f1 u10 = f1.u(context, attributeSet, h.j.f16582a1, i10, 0);
        d0.p0.S(this, context, h.j.f16582a1, attributeSet, u10.q(), i10, 0);
        int j10 = u10.j(h.j.f16592c1, -1);
        if (j10 >= 0) {
            setOrientation(j10);
        }
        int j11 = u10.j(h.j.f16587b1, -1);
        if (j11 >= 0) {
            setGravity(j11);
        }
        boolean a10 = u10.a(h.j.f16597d1, true);
        if (!a10) {
            setBaselineAligned(a10);
        }
        this.f1649g = u10.h(h.j.f16607f1, -1.0f);
        this.f1644b = u10.j(h.j.f16602e1, -1);
        this.f1650h = u10.a(h.j.f16622i1, false);
        setDividerDrawable(u10.f(h.j.f16612g1));
        this.f1656n = u10.j(h.j.f16627j1, 0);
        this.f1657o = u10.e(h.j.f16617h1, 0);
        u10.v();
    }
}
