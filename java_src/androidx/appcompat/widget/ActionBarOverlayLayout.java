package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.m;
import d0.c1;
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements i0, d0.e0, d0.f0 {
    static final int[] F = {h.a.f16442b, 16842841};
    ViewPropertyAnimator A;
    final AnimatorListenerAdapter B;
    private final Runnable C;
    private final Runnable D;
    private final d0.g0 E;

    /* renamed from: a  reason: collision with root package name */
    private int f1159a;

    /* renamed from: b  reason: collision with root package name */
    private int f1160b;

    /* renamed from: c  reason: collision with root package name */
    private ContentFrameLayout f1161c;

    /* renamed from: d  reason: collision with root package name */
    ActionBarContainer f1162d;

    /* renamed from: e  reason: collision with root package name */
    private j0 f1163e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1164f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1165g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1166h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1167i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1168j;

    /* renamed from: k  reason: collision with root package name */
    boolean f1169k;

    /* renamed from: l  reason: collision with root package name */
    private int f1170l;

    /* renamed from: m  reason: collision with root package name */
    private int f1171m;

    /* renamed from: n  reason: collision with root package name */
    private final Rect f1172n;

    /* renamed from: o  reason: collision with root package name */
    private final Rect f1173o;

    /* renamed from: p  reason: collision with root package name */
    private final Rect f1174p;

    /* renamed from: q  reason: collision with root package name */
    private final Rect f1175q;

    /* renamed from: r  reason: collision with root package name */
    private final Rect f1176r;

    /* renamed from: s  reason: collision with root package name */
    private final Rect f1177s;

    /* renamed from: t  reason: collision with root package name */
    private final Rect f1178t;

    /* renamed from: u  reason: collision with root package name */
    private d0.c1 f1179u;

    /* renamed from: v  reason: collision with root package name */
    private d0.c1 f1180v;

    /* renamed from: w  reason: collision with root package name */
    private d0.c1 f1181w;

    /* renamed from: x  reason: collision with root package name */
    private d0.c1 f1182x;

    /* renamed from: y  reason: collision with root package name */
    private d f1183y;

    /* renamed from: z  reason: collision with root package name */
    private OverScroller f1184z;

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1169k = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1169k = false;
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = actionBarOverlayLayout.f1162d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.B);
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = actionBarOverlayLayout.f1162d.animate().translationY(-ActionBarOverlayLayout.this.f1162d.getHeight()).setListener(ActionBarOverlayLayout.this.B);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a();

        void b();

        void c(boolean z10);

        void d();

        void e();

        void f(int i10);
    }

    /* loaded from: classes.dex */
    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i10, int i11) {
            super(i10, i11);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1160b = 0;
        this.f1172n = new Rect();
        this.f1173o = new Rect();
        this.f1174p = new Rect();
        this.f1175q = new Rect();
        this.f1176r = new Rect();
        this.f1177s = new Rect();
        this.f1178t = new Rect();
        d0.c1 c1Var = d0.c1.f14288b;
        this.f1179u = c1Var;
        this.f1180v = c1Var;
        this.f1181w = c1Var;
        this.f1182x = c1Var;
        this.B = new a();
        this.C = new b();
        this.D = new c();
        p(context);
        this.E = new d0.g0(this);
    }

    private void e() {
        o();
        this.D.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean k(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = r0
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = r0
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = r0
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.k(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    private j0 n(View view) {
        if (view instanceof j0) {
            return (j0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void p(Context context) {
        boolean z10;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(F);
        boolean z11 = false;
        this.f1159a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f1164f = drawable;
        if (drawable == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        setWillNotDraw(z10);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z11 = true;
        }
        this.f1165g = z11;
        this.f1184z = new OverScroller(context);
    }

    private void r() {
        o();
        postDelayed(this.D, 600L);
    }

    private void s() {
        o();
        postDelayed(this.C, 600L);
    }

    private void u() {
        o();
        this.C.run();
    }

    private boolean v(float f10) {
        this.f1184z.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f1184z.getFinalY() > this.f1162d.getHeight()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.widget.i0
    public void a(Menu menu, m.a aVar) {
        t();
        this.f1163e.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.i0
    public boolean b() {
        t();
        return this.f1163e.b();
    }

    @Override // androidx.appcompat.widget.i0
    public void c() {
        t();
        this.f1163e.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.i0
    public boolean d() {
        t();
        return this.f1163e.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i10;
        super.draw(canvas);
        if (this.f1164f != null && !this.f1165g) {
            if (this.f1162d.getVisibility() == 0) {
                i10 = (int) (this.f1162d.getBottom() + this.f1162d.getTranslationY() + 0.5f);
            } else {
                i10 = 0;
            }
            this.f1164f.setBounds(0, i10, getWidth(), this.f1164f.getIntrinsicHeight() + i10);
            this.f1164f.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.i0
    public boolean f() {
        t();
        return this.f1163e.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.i0
    public boolean g() {
        t();
        return this.f1163e.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1162d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.E.a();
    }

    public CharSequence getTitle() {
        t();
        return this.f1163e.getTitle();
    }

    @Override // androidx.appcompat.widget.i0
    public boolean h() {
        t();
        return this.f1163e.h();
    }

    @Override // androidx.appcompat.widget.i0
    public void i(int i10) {
        t();
        if (i10 != 2) {
            if (i10 != 5) {
                if (i10 == 109) {
                    setOverlayMode(true);
                    return;
                }
                return;
            }
            this.f1163e.w();
            return;
        }
        this.f1163e.v();
    }

    @Override // androidx.appcompat.widget.i0
    public void j() {
        t();
        this.f1163e.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: l */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: m */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    void o() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        t();
        d0.c1 w10 = d0.c1.w(windowInsets, this);
        boolean k10 = k(this.f1162d, new Rect(w10.i(), w10.k(), w10.j(), w10.h()), true, true, false, true);
        d0.p0.d(this, w10, this.f1172n);
        Rect rect = this.f1172n;
        d0.c1 l10 = w10.l(rect.left, rect.top, rect.right, rect.bottom);
        this.f1179u = l10;
        boolean z10 = true;
        if (!this.f1180v.equals(l10)) {
            this.f1180v = this.f1179u;
            k10 = true;
        }
        if (!this.f1173o.equals(this.f1172n)) {
            this.f1173o.set(this.f1172n);
        } else {
            z10 = k10;
        }
        if (z10) {
            requestLayout();
        }
        return w10.a().c().b().u();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        p(getContext());
        d0.p0.R(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean z10;
        int measuredHeight;
        t();
        measureChildWithMargins(this.f1162d, i10, 0, i11, 0);
        e eVar = (e) this.f1162d.getLayoutParams();
        int max = Math.max(0, this.f1162d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int max2 = Math.max(0, this.f1162d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f1162d.getMeasuredState());
        if ((d0.p0.A(this) & 256) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            measuredHeight = this.f1159a;
            if (this.f1167i && this.f1162d.getTabContainer() != null) {
                measuredHeight += this.f1159a;
            }
        } else {
            measuredHeight = this.f1162d.getVisibility() != 8 ? this.f1162d.getMeasuredHeight() : 0;
        }
        this.f1174p.set(this.f1172n);
        d0.c1 c1Var = this.f1179u;
        this.f1181w = c1Var;
        if (!this.f1166h && !z10) {
            Rect rect = this.f1174p;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.f1181w = c1Var.l(0, measuredHeight, 0, 0);
        } else {
            this.f1181w = new c1.a(this.f1181w).c(v.b.b(c1Var.i(), this.f1181w.k() + measuredHeight, this.f1181w.j(), this.f1181w.h() + 0)).a();
        }
        k(this.f1161c, this.f1174p, true, true, true, true);
        if (!this.f1182x.equals(this.f1181w)) {
            d0.c1 c1Var2 = this.f1181w;
            this.f1182x = c1Var2;
            d0.p0.e(this.f1161c, c1Var2);
        }
        measureChildWithMargins(this.f1161c, i10, 0, i11, 0);
        e eVar2 = (e) this.f1161c.getLayoutParams();
        int max3 = Math.max(max, this.f1161c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int max4 = Math.max(max2, this.f1161c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1161c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (this.f1168j && z10) {
            if (v(f11)) {
                e();
            } else {
                u();
            }
            this.f1169k = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // d0.f0
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        onNestedScroll(view, i10, i11, i12, i13, i14);
    }

    @Override // d0.e0
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // d0.e0
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // d0.e0
    public void onStopNestedScroll(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowSystemUiVisibilityChanged(i10);
        t();
        int i11 = this.f1171m ^ i10;
        this.f1171m = i10;
        boolean z11 = false;
        if ((i10 & 4) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((i10 & 256) != 0) {
            z11 = true;
        }
        d dVar = this.f1183y;
        if (dVar != null) {
            dVar.c(!z11);
            if (!z10 && z11) {
                this.f1183y.d();
            } else {
                this.f1183y.a();
            }
        }
        if ((i11 & 256) != 0 && this.f1183y != null) {
            d0.p0.R(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f1160b = i10;
        d dVar = this.f1183y;
        if (dVar != null) {
            dVar.f(i10);
        }
    }

    public boolean q() {
        return this.f1166h;
    }

    public void setActionBarHideOffset(int i10) {
        o();
        this.f1162d.setTranslationY(-Math.max(0, Math.min(i10, this.f1162d.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.f1183y = dVar;
        if (getWindowToken() != null) {
            this.f1183y.f(this.f1160b);
            int i10 = this.f1171m;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                d0.p0.R(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f1167i = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f1168j) {
            this.f1168j = z10;
            if (!z10) {
                o();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i10) {
        t();
        this.f1163e.setIcon(i10);
    }

    public void setLogo(int i10) {
        t();
        this.f1163e.n(i10);
    }

    public void setOverlayMode(boolean z10) {
        boolean z11;
        this.f1166h = z10;
        if (z10 && getContext().getApplicationInfo().targetSdkVersion < 19) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f1165g = z11;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // androidx.appcompat.widget.i0
    public void setWindowCallback(Window.Callback callback) {
        t();
        this.f1163e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.i0
    public void setWindowTitle(CharSequence charSequence) {
        t();
        this.f1163e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    void t() {
        if (this.f1161c == null) {
            this.f1161c = (ContentFrameLayout) findViewById(h.f.f16516b);
            this.f1162d = (ActionBarContainer) findViewById(h.f.f16517c);
            this.f1163e = n(findViewById(h.f.f16515a));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    @Override // d0.e0
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // d0.e0
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.E.b(view, view2, i10);
        this.f1170l = getActionBarHideOffset();
        o();
        d dVar = this.f1183y;
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f1162d.getVisibility() != 0) {
            return false;
        }
        return this.f1168j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.f1168j && !this.f1169k) {
            if (this.f1170l <= this.f1162d.getHeight()) {
                s();
            } else {
                r();
            }
        }
        d dVar = this.f1183y;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f1170l + i11;
        this.f1170l = i14;
        setActionBarHideOffset(i14);
    }

    public void setIcon(Drawable drawable) {
        t();
        this.f1163e.setIcon(drawable);
    }
}
