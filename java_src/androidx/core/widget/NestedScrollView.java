package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.view.ScrollingView;
import d0.c0;
import d0.d0;
import d0.f0;
import d0.g0;
import d0.o;
import d0.p;
import d0.p0;
import e0.t;
import e0.v;
import java.util.ArrayList;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements f0, ScrollingView {
    private static final float D = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final a E = new a();
    private static final int[] F = {16843130};
    private e A;
    final d B;
    o C;

    /* renamed from: a  reason: collision with root package name */
    private final float f2038a;

    /* renamed from: b  reason: collision with root package name */
    private long f2039b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f2040c;

    /* renamed from: d  reason: collision with root package name */
    private OverScroller f2041d;

    /* renamed from: e  reason: collision with root package name */
    public EdgeEffect f2042e;

    /* renamed from: f  reason: collision with root package name */
    public EdgeEffect f2043f;

    /* renamed from: g  reason: collision with root package name */
    private int f2044g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2045h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f2046i;

    /* renamed from: j  reason: collision with root package name */
    private View f2047j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f2048k;

    /* renamed from: l  reason: collision with root package name */
    private VelocityTracker f2049l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f2050m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f2051n;

    /* renamed from: o  reason: collision with root package name */
    private int f2052o;

    /* renamed from: p  reason: collision with root package name */
    private int f2053p;

    /* renamed from: q  reason: collision with root package name */
    private int f2054q;

    /* renamed from: r  reason: collision with root package name */
    private int f2055r;

    /* renamed from: s  reason: collision with root package name */
    private final int[] f2056s;

    /* renamed from: t  reason: collision with root package name */
    private final int[] f2057t;

    /* renamed from: u  reason: collision with root package name */
    private int f2058u;

    /* renamed from: v  reason: collision with root package name */
    private int f2059v;

    /* renamed from: w  reason: collision with root package name */
    private f f2060w;

    /* renamed from: x  reason: collision with root package name */
    private final g0 f2061x;

    /* renamed from: y  reason: collision with root package name */
    private final d0 f2062y;

    /* renamed from: z  reason: collision with root package name */
    private float f2063z;

    /* loaded from: classes.dex */
    static class a extends d0.a {
        a() {
        }

        @Override // d0.a
        public void f(View view, AccessibilityEvent accessibilityEvent) {
            boolean z10;
            super.f(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            if (nestedScrollView.getScrollRange() > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            v.a(accessibilityEvent, nestedScrollView.getScrollX());
            v.b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // d0.a
        public void g(View view, t tVar) {
            int scrollRange;
            super.g(view, tVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            tVar.W(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                tVar.b0(true);
                if (nestedScrollView.getScrollY() > 0) {
                    tVar.b(t.a.f15207q);
                    tVar.b(t.a.B);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    tVar.b(t.a.f15206p);
                    tVar.b(t.a.D);
                }
            }
        }

        @Override // d0.a
        public boolean j(View view, int i10, Bundle bundle) {
            if (super.j(view, i10, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int height = nestedScrollView.getHeight();
            Rect rect = new Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i10 != 4096) {
                if (i10 != 8192 && i10 != 16908344) {
                    if (i10 != 16908346) {
                        return false;
                    }
                } else {
                    int max = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.Q(0, max, true);
                    return true;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.Q(0, min, true);
            return true;
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static boolean a(ViewGroup viewGroup) {
            return viewGroup.getClipToPadding();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {
        public static void a(View view, float f10) {
            try {
                view.setFrameContentVelocity(f10);
            } catch (LinkageError unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements p {
        d() {
        }

        @Override // d0.p
        public boolean a(float f10) {
            if (f10 == 0.0f) {
                return false;
            }
            c();
            NestedScrollView.this.p((int) f10);
            return true;
        }

        @Override // d0.p
        public float b() {
            return -NestedScrollView.this.getVerticalScrollFactorCompat();
        }

        @Override // d0.p
        public void c() {
            NestedScrollView.this.f2041d.abortAnimation();
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public int f2065a;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public f createFromParcel(Parcel parcel) {
                return new f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public f[] newArray(int i10) {
                return new f[i10];
            }
        }

        f(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f2065a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2065a);
        }

        f(Parcel parcel) {
            super(parcel);
            this.f2065a = parcel.readInt();
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.a.f29701c);
    }

    private boolean A(View view, int i10, int i11) {
        view.getDrawingRect(this.f2040c);
        offsetDescendantRectToMyCoords(view, this.f2040c);
        if (this.f2040c.bottom + i10 >= getScrollY() && this.f2040c.top - i10 <= getScrollY() + i11) {
            return true;
        }
        return false;
    }

    private void B(int i10, int i11, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i10);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f2062y.e(0, scrollY2, 0, i10 - scrollY2, null, i11, iArr);
    }

    private void C(MotionEvent motionEvent) {
        int i10;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2055r) {
            if (actionIndex == 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            this.f2044g = (int) motionEvent.getY(i10);
            this.f2055r = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.f2049l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void F() {
        VelocityTracker velocityTracker = this.f2049l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2049l = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int G(int r4, float r5) {
        /*
            r3 = this;
            int r0 = r3.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r4 = (float) r4
            int r0 = r3.getHeight()
            float r0 = (float) r0
            float r4 = r4 / r0
            android.widget.EdgeEffect r0 = r3.f2042e
            float r0 = androidx.core.widget.d.b(r0)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L31
            android.widget.EdgeEffect r0 = r3.f2042e
            float r4 = -r4
            float r4 = androidx.core.widget.d.d(r0, r4, r5)
            float r4 = -r4
            android.widget.EdgeEffect r5 = r3.f2042e
            float r5 = androidx.core.widget.d.b(r5)
            int r5 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r5 != 0) goto L2f
            android.widget.EdgeEffect r5 = r3.f2042e
            r5.onRelease()
        L2f:
            r1 = r4
            goto L54
        L31:
            android.widget.EdgeEffect r0 = r3.f2043f
            float r0 = androidx.core.widget.d.b(r0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L54
            android.widget.EdgeEffect r0 = r3.f2043f
            r2 = 1065353216(0x3f800000, float:1.0)
            float r2 = r2 - r5
            float r4 = androidx.core.widget.d.d(r0, r4, r2)
            android.widget.EdgeEffect r5 = r3.f2043f
            float r5 = androidx.core.widget.d.b(r5)
            int r5 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r5 != 0) goto L2f
            android.widget.EdgeEffect r5 = r3.f2043f
            r5.onRelease()
            goto L2f
        L54:
            int r4 = r3.getHeight()
            float r4 = (float) r4
            float r1 = r1 * r4
            int r4 = java.lang.Math.round(r1)
            if (r4 == 0) goto L63
            r3.invalidate()
        L63:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.G(int, float):int");
    }

    private void H(boolean z10) {
        if (z10) {
            R(2, 1);
        } else {
            T(1);
        }
        this.f2059v = getScrollY();
        postInvalidateOnAnimation();
    }

    private boolean I(int i10, int i11, int i12) {
        boolean z10;
        int i13;
        int height = getHeight();
        int scrollY = getScrollY();
        int i14 = height + scrollY;
        boolean z11 = false;
        if (i10 == 33) {
            z10 = true;
        } else {
            z10 = false;
        }
        View o10 = o(z10, i11, i12);
        if (o10 == null) {
            o10 = this;
        }
        if (i11 < scrollY || i12 > i14) {
            if (z10) {
                i13 = i11 - scrollY;
            } else {
                i13 = i12 - i14;
            }
            J(i13, 0, 1, true);
            z11 = true;
        }
        if (o10 != findFocus()) {
            o10.requestFocus(i10);
        }
        return z11;
    }

    private int J(int i10, int i11, int i12, boolean z10) {
        int i13;
        int i14;
        boolean z11;
        boolean z12;
        VelocityTracker velocityTracker;
        if (i12 == 1) {
            R(2, i12);
        }
        boolean z13 = false;
        if (i(0, i10, this.f2057t, this.f2056s, i12)) {
            i13 = i10 - this.f2057t[1];
            i14 = this.f2056s[1] + 0;
        } else {
            i13 = i10;
            i14 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        if (d() && !z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (D(0, i13, 0, scrollY, 0, scrollRange, 0, 0, true) && !s(i12)) {
            z12 = true;
        } else {
            z12 = false;
        }
        int scrollY2 = getScrollY() - scrollY;
        int[] iArr = this.f2057t;
        iArr[1] = 0;
        j(0, scrollY2, 0, i13 - scrollY2, this.f2056s, i12, iArr);
        int i15 = i14 + this.f2056s[1];
        int i16 = i13 - this.f2057t[1];
        int i17 = scrollY + i16;
        if (i17 < 0) {
            if (z11) {
                androidx.core.widget.d.d(this.f2042e, (-i16) / getHeight(), i11 / getWidth());
                if (!this.f2043f.isFinished()) {
                    this.f2043f.onRelease();
                }
            }
        } else if (i17 > scrollRange && z11) {
            androidx.core.widget.d.d(this.f2043f, i16 / getHeight(), 1.0f - (i11 / getWidth()));
            if (!this.f2042e.isFinished()) {
                this.f2042e.onRelease();
            }
        }
        if (this.f2042e.isFinished() && this.f2043f.isFinished()) {
            z13 = z12;
        } else {
            postInvalidateOnAnimation();
        }
        if (z13 && i12 == 0 && (velocityTracker = this.f2049l) != null) {
            velocityTracker.clear();
        }
        if (i12 == 1) {
            T(i12);
            this.f2042e.onRelease();
            this.f2043f.onRelease();
        }
        return i15;
    }

    private void K(View view) {
        view.getDrawingRect(this.f2040c);
        offsetDescendantRectToMyCoords(view, this.f2040c);
        int g10 = g(this.f2040c);
        if (g10 != 0) {
            scrollBy(0, g10);
        }
    }

    private boolean L(Rect rect, boolean z10) {
        boolean z11;
        int g10 = g(rect);
        if (g10 != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            if (z10) {
                scrollBy(0, g10);
            } else {
                N(0, g10);
            }
        }
        return z11;
    }

    private boolean M(EdgeEffect edgeEffect, int i10) {
        if (i10 > 0) {
            return true;
        }
        if (r(-i10) < androidx.core.widget.d.b(edgeEffect) * getHeight()) {
            return true;
        }
        return false;
    }

    private void O(int i10, int i11, int i12, boolean z10) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f2039b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int scrollY = getScrollY();
            OverScroller overScroller = this.f2041d;
            int scrollX = getScrollX();
            overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i11 + scrollY, Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom())))) - scrollY, i12);
            H(z10);
        } else {
            if (!this.f2041d.isFinished()) {
                a();
            }
            scrollBy(i10, i11);
        }
        this.f2039b = AnimationUtils.currentAnimationTimeMillis();
    }

    private boolean S(MotionEvent motionEvent) {
        boolean z10;
        if (androidx.core.widget.d.b(this.f2042e) != 0.0f) {
            androidx.core.widget.d.d(this.f2042e, 0.0f, motionEvent.getX() / getWidth());
            z10 = true;
        } else {
            z10 = false;
        }
        if (androidx.core.widget.d.b(this.f2043f) != 0.0f) {
            androidx.core.widget.d.d(this.f2043f, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
            return true;
        }
        return z10;
    }

    private void a() {
        this.f2041d.abortAnimation();
        T(1);
    }

    private boolean d() {
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0) {
            return true;
        }
        if (overScrollMode == 1 && getScrollRange() > 0) {
            return true;
        }
        return false;
    }

    private boolean e() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin <= (getHeight() - getPaddingTop()) - getPaddingBottom()) {
            return false;
        }
        return true;
    }

    private static int f(int i10, int i11, int i12) {
        if (i11 >= i12 || i10 < 0) {
            return 0;
        }
        return i11 + i10 > i12 ? i12 - i11 : i10;
    }

    private void k(int i10) {
        if (i10 != 0) {
            if (this.f2051n) {
                N(0, i10);
            } else {
                scrollBy(0, i10);
            }
        }
    }

    private boolean l(int i10) {
        if (androidx.core.widget.d.b(this.f2042e) != 0.0f) {
            if (M(this.f2042e, i10)) {
                this.f2042e.onAbsorb(i10);
            } else {
                p(-i10);
            }
        } else if (androidx.core.widget.d.b(this.f2043f) != 0.0f) {
            int i11 = -i10;
            if (M(this.f2043f, i11)) {
                this.f2043f.onAbsorb(i11);
            } else {
                p(i11);
            }
        } else {
            return false;
        }
        return true;
    }

    private void m() {
        this.f2055r = -1;
        this.f2048k = false;
        F();
        T(0);
        this.f2042e.onRelease();
        this.f2043f.onRelease();
    }

    private View o(boolean z10, int i10, int i11) {
        boolean z11;
        boolean z12;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z13 = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view2 = focusables.get(i12);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i10 < bottom && top < i11) {
                if (i10 < top && bottom < i11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (view == null) {
                    view = view2;
                    z13 = z11;
                } else {
                    if ((z10 && top < view.getTop()) || (!z10 && bottom > view.getBottom())) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (z13) {
                        if (z11) {
                            if (!z12) {
                            }
                            view = view2;
                        }
                    } else if (z11) {
                        view = view2;
                        z13 = true;
                    } else {
                        if (!z12) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    private float r(int i10) {
        double log = Math.log((Math.abs(i10) * 0.35f) / (this.f2038a * 0.015f));
        float f10 = D;
        return (float) (this.f2038a * 0.015f * Math.exp((f10 / (f10 - 1.0d)) * log));
    }

    private boolean t(int i10, int i11) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        if (i11 < childAt.getTop() - scrollY || i11 >= childAt.getBottom() - scrollY || i10 < childAt.getLeft() || i10 >= childAt.getRight()) {
            return false;
        }
        return true;
    }

    private void u() {
        VelocityTracker velocityTracker = this.f2049l;
        if (velocityTracker == null) {
            this.f2049l = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void v() {
        this.f2041d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f2052o = viewConfiguration.getScaledTouchSlop();
        this.f2053p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2054q = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void w() {
        if (this.f2049l == null) {
            this.f2049l = VelocityTracker.obtain();
        }
    }

    private void x(int i10, int i11) {
        this.f2044g = i10;
        this.f2055r = i11;
        R(2, 0);
    }

    private boolean y(View view) {
        return !A(view, 0, getHeight());
    }

    private static boolean z(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if ((parent instanceof ViewGroup) && z((View) parent, view2)) {
            return true;
        }
        return false;
    }

    boolean D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i18;
        int i19;
        boolean z15;
        boolean z16;
        int overScrollMode = getOverScrollMode();
        if (computeHorizontalScrollRange() > computeHorizontalScrollExtent()) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (computeVerticalScrollRange() > computeVerticalScrollExtent()) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (overScrollMode != 0 && (overScrollMode != 1 || !z11)) {
            z13 = false;
        } else {
            z13 = true;
        }
        if (overScrollMode != 0 && (overScrollMode != 1 || !z12)) {
            z14 = false;
        } else {
            z14 = true;
        }
        int i20 = i12 + i10;
        if (!z13) {
            i18 = 0;
        } else {
            i18 = i16;
        }
        int i21 = i13 + i11;
        if (!z14) {
            i19 = 0;
        } else {
            i19 = i17;
        }
        int i22 = -i18;
        int i23 = i18 + i14;
        int i24 = -i19;
        int i25 = i19 + i15;
        if (i20 > i23) {
            i20 = i23;
            z15 = true;
        } else if (i20 < i22) {
            z15 = true;
            i20 = i22;
        } else {
            z15 = false;
        }
        if (i21 > i25) {
            i21 = i25;
            z16 = true;
        } else if (i21 < i24) {
            z16 = true;
            i21 = i24;
        } else {
            z16 = false;
        }
        if (z16 && !s(1)) {
            this.f2041d.springBack(i20, i21, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i20, i21, z15, z16);
        if (!z15 && !z16) {
            return false;
        }
        return true;
    }

    public boolean E(int i10) {
        boolean z10;
        if (i10 == 130) {
            z10 = true;
        } else {
            z10 = false;
        }
        int height = getHeight();
        if (z10) {
            this.f2040c.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f2040c;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f2040c.top = getScrollY() - height;
            Rect rect2 = this.f2040c;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f2040c;
        int i11 = rect3.top;
        int i12 = height + i11;
        rect3.bottom = i12;
        return I(i10, i11, i12);
    }

    public final void N(int i10, int i11) {
        O(i10, i11, 250, false);
    }

    void P(int i10, int i11, int i12, boolean z10) {
        O(i10 - getScrollX(), i11 - getScrollY(), i12, z10);
    }

    void Q(int i10, int i11, boolean z10) {
        P(i10, i11, 250, z10);
    }

    public boolean R(int i10, int i11) {
        return this.f2062y.q(i10, i11);
    }

    public void T(int i10) {
        this.f2062y.s(i10);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public boolean c(int i10) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && A(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.f2040c);
            offsetDescendantRectToMyCoords(findNextFocus, this.f2040c);
            J(g(this.f2040c), 0, 1, true);
            findNextFocus.requestFocus(i10);
        } else {
            if (i10 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i10 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            J(maxScrollAmount, 0, 1, true);
        }
        if (findFocus != null && findFocus.isFocused() && y(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f2041d.isFinished()) {
            return;
        }
        this.f2041d.computeScrollOffset();
        int currY = this.f2041d.getCurrY();
        int h10 = h(currY - this.f2059v);
        this.f2059v = currY;
        int[] iArr = this.f2057t;
        boolean z10 = false;
        iArr[1] = 0;
        i(0, h10, iArr, null, 1);
        int i10 = h10 - this.f2057t[1];
        int scrollRange = getScrollRange();
        if (z.a.c()) {
            c.a(this, Math.abs(this.f2041d.getCurrVelocity()));
        }
        if (i10 != 0) {
            int scrollY = getScrollY();
            D(0, i10, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i11 = i10 - scrollY2;
            int[] iArr2 = this.f2057t;
            iArr2[1] = 0;
            j(0, scrollY2, 0, i11, this.f2056s, 1, iArr2);
            i10 = i11 - this.f2057t[1];
        }
        if (i10 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z10 = true;
            }
            if (z10) {
                if (i10 < 0) {
                    if (this.f2042e.isFinished()) {
                        this.f2042e.onAbsorb((int) this.f2041d.getCurrVelocity());
                    }
                } else if (this.f2043f.isFinished()) {
                    this.f2043f.onAbsorb((int) this.f2041d.getCurrVelocity());
                }
            }
            a();
        }
        if (!this.f2041d.isFinished()) {
            postInvalidateOnAnimation();
        } else {
            T(1);
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > max) {
            return bottom + (scrollY - max);
        }
        return bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent) && !n(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.f2062y.a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.f2062y.b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return i(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.f2062y.f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i10;
        super.draw(canvas);
        int scrollY = getScrollY();
        int i11 = 0;
        if (!this.f2042e.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (b.a(this)) {
                width -= getPaddingLeft() + getPaddingRight();
                i10 = getPaddingLeft() + 0;
            } else {
                i10 = 0;
            }
            if (b.a(this)) {
                height -= getPaddingTop() + getPaddingBottom();
                min += getPaddingTop();
            }
            canvas.translate(i10, min);
            this.f2042e.setSize(width, height);
            if (this.f2042e.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        if (!this.f2043f.isFinished()) {
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int max = Math.max(getScrollRange(), scrollY) + height2;
            if (b.a(this)) {
                width2 -= getPaddingLeft() + getPaddingRight();
                i11 = 0 + getPaddingLeft();
            }
            if (b.a(this)) {
                height2 -= getPaddingTop() + getPaddingBottom();
                max -= getPaddingBottom();
            }
            canvas.translate(i11 - width2, max);
            canvas.rotate(180.0f, width2, 0.0f);
            this.f2043f.setSize(width2, height2);
            if (this.f2043f.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save2);
        }
    }

    protected int g(Rect rect) {
        int i10;
        int i11;
        int i12;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i13 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        if (rect.bottom < childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin) {
            i10 = i13 - verticalFadingEdgeLength;
        } else {
            i10 = i13;
        }
        int i14 = rect.bottom;
        if (i14 > i10 && rect.top > scrollY) {
            if (rect.height() > height) {
                i12 = rect.top - scrollY;
            } else {
                i12 = rect.bottom - i10;
            }
            return Math.min(i12 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i13);
        } else if (rect.top >= scrollY || i14 >= i10) {
            return 0;
        } else {
            if (rect.height() > height) {
                i11 = 0 - (i10 - rect.bottom);
            } else {
                i11 = 0 - (scrollY - rect.top);
            }
            return Math.max(i11, -getScrollY());
        }
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2061x.a();
    }

    int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    float getVerticalScrollFactorCompat() {
        if (this.f2063z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f2063z = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f2063z;
    }

    int h(int i10) {
        int height = getHeight();
        if (i10 > 0 && androidx.core.widget.d.b(this.f2042e) != 0.0f) {
            int round = Math.round(((-height) / 4.0f) * androidx.core.widget.d.d(this.f2042e, ((-i10) * 4.0f) / height, 0.5f));
            if (round != i10) {
                this.f2042e.finish();
            }
            return i10 - round;
        } else if (i10 < 0 && androidx.core.widget.d.b(this.f2043f) != 0.0f) {
            float f10 = height;
            int round2 = Math.round((f10 / 4.0f) * androidx.core.widget.d.d(this.f2043f, (i10 * 4.0f) / f10, 0.5f));
            if (round2 != i10) {
                this.f2043f.finish();
            }
            return i10 - round2;
        } else {
            return i10;
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return s(0);
    }

    public boolean i(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return this.f2062y.d(i10, i11, iArr, iArr2, i12);
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f2062y.m();
    }

    public void j(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        this.f2062y.e(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i10, int i11) {
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public boolean n(KeyEvent keyEvent) {
        this.f2040c.setEmpty();
        int i10 = 130;
        if (!e()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) {
                return false;
            }
            return true;
        } else if (keyEvent.getAction() != 0) {
            return false;
        } else {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 19) {
                if (keyCode != 20) {
                    if (keyCode != 62) {
                        if (keyCode != 92) {
                            if (keyCode != 93) {
                                if (keyCode != 122) {
                                    if (keyCode != 123) {
                                        return false;
                                    }
                                    E(130);
                                    return false;
                                }
                                E(33);
                                return false;
                            }
                            return q(130);
                        }
                        return q(33);
                    }
                    if (keyEvent.isShiftPressed()) {
                        i10 = 33;
                    }
                    E(i10);
                    return false;
                } else if (keyEvent.isAltPressed()) {
                    return q(130);
                } else {
                    return c(130);
                }
            } else if (keyEvent.isAltPressed()) {
                return q(33);
            } else {
                return c(33);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2046i = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i10;
        int i11;
        float f10;
        if (motionEvent.getAction() == 8 && !this.f2048k) {
            if (c0.a(motionEvent, 2)) {
                i10 = 9;
                f10 = motionEvent.getAxisValue(9);
                i11 = (int) motionEvent.getX();
            } else if (c0.a(motionEvent, 4194304)) {
                float axisValue = motionEvent.getAxisValue(26);
                i11 = getWidth() / 2;
                i10 = 26;
                f10 = axisValue;
            } else {
                i10 = 0;
                i11 = 0;
                f10 = 0.0f;
            }
            if (f10 != 0.0f) {
                J(-((int) (f10 * getVerticalScrollFactorCompat())), i11, 1, c0.a(motionEvent, 8194));
                if (i10 != 0) {
                    this.C.g(motionEvent, i10);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action == 2 && this.f2048k) {
            return true;
        }
        int i10 = action & KotlinVersion.MAX_COMPONENT_VALUE;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 6) {
                            C(motionEvent);
                        }
                    }
                } else {
                    int i11 = this.f2055r;
                    if (i11 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i11);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i11 + " in onInterceptTouchEvent");
                        } else {
                            int y10 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y10 - this.f2044g) > this.f2052o && (2 & getNestedScrollAxes()) == 0) {
                                this.f2048k = true;
                                this.f2044g = y10;
                                w();
                                this.f2049l.addMovement(motionEvent);
                                this.f2058u = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                }
            }
            this.f2048k = false;
            this.f2055r = -1;
            F();
            if (this.f2041d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            T(0);
        } else {
            int y11 = (int) motionEvent.getY();
            if (!t((int) motionEvent.getX(), y11)) {
                if (!S(motionEvent) && this.f2041d.isFinished()) {
                    z10 = false;
                }
                this.f2048k = z10;
                F();
            } else {
                this.f2044g = y11;
                this.f2055r = motionEvent.getPointerId(0);
                u();
                this.f2049l.addMovement(motionEvent);
                this.f2041d.computeScrollOffset();
                if (!S(motionEvent) && this.f2041d.isFinished()) {
                    z10 = false;
                }
                this.f2048k = z10;
                R(2, 0);
            }
        }
        return this.f2048k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        int i14 = 0;
        this.f2045h = false;
        View view = this.f2047j;
        if (view != null && z(view, this)) {
            K(this.f2047j);
        }
        this.f2047j = null;
        if (!this.f2046i) {
            if (this.f2060w != null) {
                scrollTo(getScrollX(), this.f2060w.f2065a);
                this.f2060w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i14 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int f10 = f(scrollY, paddingTop, i14);
            if (f10 != scrollY) {
                scrollTo(getScrollX(), f10);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f2046i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f2050m && View.MeasureSpec.getMode(i11) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!z10) {
            dispatchNestedFling(0.0f, f11, true);
            p((int) f11);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return dispatchNestedPreFling(f10, f11);
    }

    @Override // d0.e0
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        i(i10, i11, iArr, null, i12);
    }

    @Override // d0.f0
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        B(i13, i14, iArr);
    }

    @Override // d0.e0
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        this.f2061x.c(view, view2, i10, i11);
        R(2, i11);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        super.scrollTo(i10, i11);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        View findNextFocusFromRect;
        if (i10 == 2) {
            i10 = 130;
        } else if (i10 == 1) {
            i10 = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i10);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        }
        if (findNextFocusFromRect == null || y(findNextFocusFromRect)) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i10, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        this.f2060w = fVar;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        fVar.f2065a = getScrollY();
        return fVar;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        e eVar = this.A;
        if (eVar != null) {
            eVar.a(this, i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && A(findFocus, 0, i13)) {
            findFocus.getDrawingRect(this.f2040c);
            offsetDescendantRectToMyCoords(findFocus, this.f2040c);
            k(g(this.f2040c));
        }
    }

    @Override // d0.e0
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return (i10 & 2) != 0;
    }

    @Override // d0.e0
    public void onStopNestedScroll(View view, int i10) {
        this.f2061x.e(view, i10);
        T(i10);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        w();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2058u = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f2058u);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                C(motionEvent);
                                this.f2044g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f2055r));
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            this.f2044g = (int) motionEvent.getY(actionIndex);
                            this.f2055r = motionEvent.getPointerId(actionIndex);
                        }
                    } else {
                        if (this.f2048k && getChildCount() > 0 && this.f2041d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                            postInvalidateOnAnimation();
                        }
                        m();
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f2055r);
                    if (findPointerIndex == -1) {
                        Log.e("NestedScrollView", "Invalid pointerId=" + this.f2055r + " in onTouchEvent");
                    } else {
                        int y10 = (int) motionEvent.getY(findPointerIndex);
                        int i10 = this.f2044g - y10;
                        int G = i10 - G(i10, motionEvent.getX(findPointerIndex));
                        if (!this.f2048k && Math.abs(G) > this.f2052o) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f2048k = true;
                            G = G > 0 ? G - this.f2052o : G + this.f2052o;
                        }
                        if (this.f2048k) {
                            int J = J(G, (int) motionEvent.getX(findPointerIndex), 0, false);
                            this.f2044g = y10 - J;
                            this.f2058u += J;
                        }
                    }
                }
            } else {
                VelocityTracker velocityTracker = this.f2049l;
                velocityTracker.computeCurrentVelocity(1000, this.f2054q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f2055r);
                if (Math.abs(yVelocity) >= this.f2053p) {
                    if (!l(yVelocity)) {
                        int i11 = -yVelocity;
                        float f10 = i11;
                        if (!dispatchNestedPreFling(0.0f, f10)) {
                            dispatchNestedFling(0.0f, f10, true);
                            p(i11);
                        }
                    }
                } else if (this.f2041d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                m();
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            if (this.f2048k && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f2041d.isFinished()) {
                a();
            }
            x((int) motionEvent.getY(), motionEvent.getPointerId(0));
        }
        VelocityTracker velocityTracker2 = this.f2049l;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public void p(int i10) {
        if (getChildCount() > 0) {
            this.f2041d.fling(getScrollX(), getScrollY(), 0, i10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            H(true);
            if (z.a.c()) {
                c.a(this, Math.abs(this.f2041d.getCurrVelocity()));
            }
        }
    }

    public boolean q(int i10) {
        boolean z10;
        int childCount;
        if (i10 == 130) {
            z10 = true;
        } else {
            z10 = false;
        }
        int height = getHeight();
        Rect rect = this.f2040c;
        rect.top = 0;
        rect.bottom = height;
        if (z10 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f2040c.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f2040c;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f2040c;
        return I(i10, rect3.top, rect3.bottom);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f2045h) {
            K(view2);
        } else {
            this.f2047j = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return L(rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            F();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f2045h = true;
        super.requestLayout();
    }

    public boolean s(int i10) {
        return this.f2062y.l(i10);
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int f10 = f(i10, (getWidth() - getPaddingLeft()) - getPaddingRight(), childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
            int f11 = f(i11, (getHeight() - getPaddingTop()) - getPaddingBottom(), childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
            if (f10 != getScrollX() || f11 != getScrollY()) {
                super.scrollTo(f10, f11);
            }
        }
    }

    public void setFillViewport(boolean z10) {
        if (z10 != this.f2050m) {
            this.f2050m = z10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.f2062y.n(z10);
    }

    public void setOnScrollChangeListener(e eVar) {
        this.A = eVar;
    }

    public void setSmoothScrollingEnabled(boolean z10) {
        this.f2051n = z10;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return R(i10, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        T(0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f2040c = new Rect();
        this.f2045h = true;
        this.f2046i = false;
        this.f2047j = null;
        this.f2048k = false;
        this.f2051n = true;
        this.f2055r = -1;
        this.f2056s = new int[2];
        this.f2057t = new int[2];
        d dVar = new d();
        this.B = dVar;
        this.C = new o(getContext(), dVar);
        this.f2042e = androidx.core.widget.d.a(context, attributeSet);
        this.f2043f = androidx.core.widget.d.a(context, attributeSet);
        this.f2038a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        v();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, F, i10, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f2061x = new g0(this);
        this.f2062y = new d0(this);
        setNestedScrollingEnabled(true);
        p0.U(this, E);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override // d0.e0
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        B(i13, i14, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        B(i13, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10) {
        if (getChildCount() <= 0) {
            super.addView(view, i10);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
