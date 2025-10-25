package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import d0.c1;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class x extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final List f2875a;

    /* renamed from: b  reason: collision with root package name */
    private final List f2876b;

    /* renamed from: c  reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f2877c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2878d;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2879a = new a();

        private a() {
        }

        public final WindowInsets a(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, View v10, WindowInsets insets) {
            kotlin.jvm.internal.m.e(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
            kotlin.jvm.internal.m.e(v10, "v");
            kotlin.jvm.internal.m.e(insets, "insets");
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v10, insets);
            kotlin.jvm.internal.m.d(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            return onApplyWindowInsets;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Context context, AttributeSet attrs, i0 fm) {
        super(context, attrs);
        String str;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(attrs, "attrs");
        kotlin.jvm.internal.m.e(fm, "fm");
        this.f2875a = new ArrayList();
        this.f2876b = new ArrayList();
        this.f2878d = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = s0.c.f29233e;
        kotlin.jvm.internal.m.d(FragmentContainerView, "FragmentContainerView");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(s0.c.f29234f) : classAttribute;
        String string = obtainStyledAttributes.getString(s0.c.f29235g);
        obtainStyledAttributes.recycle();
        int id2 = getId();
        p i02 = fm.i0(id2);
        if (classAttribute != null && i02 == null) {
            if (id2 == -1) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            p a10 = fm.u0().a(context.getClassLoader(), classAttribute);
            kotlin.jvm.internal.m.d(a10, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            a10.mFragmentId = id2;
            a10.mContainerId = id2;
            a10.mTag = string;
            a10.mFragmentManager = fm;
            a10.mHost = fm.w0();
            a10.onInflate(context, attrs, (Bundle) null);
            fm.o().m(true).c(this, a10, string).i();
        }
        fm.b1(this);
    }

    private final void a(View view) {
        if (this.f2876b.contains(view)) {
            this.f2875a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int i10, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.m.e(child, "child");
        if (i0.D0(child) != null) {
            super.addView(child, i10, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        c1 L;
        kotlin.jvm.internal.m.e(insets, "insets");
        c1 v10 = c1.v(insets);
        kotlin.jvm.internal.m.d(v10, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f2877c;
        if (onApplyWindowInsetsListener != null) {
            a aVar = a.f2879a;
            kotlin.jvm.internal.m.b(onApplyWindowInsetsListener);
            L = c1.v(aVar.a(onApplyWindowInsetsListener, this, insets));
        } else {
            L = d0.p0.L(this, v10);
        }
        kotlin.jvm.internal.m.d(L, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!L.n()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                d0.p0.e(getChildAt(i10), L);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        kotlin.jvm.internal.m.e(canvas, "canvas");
        if (this.f2878d) {
            for (View view : this.f2875a) {
                super.drawChild(canvas, view, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View child, long j10) {
        kotlin.jvm.internal.m.e(canvas, "canvas");
        kotlin.jvm.internal.m.e(child, "child");
        if (this.f2878d && (!this.f2875a.isEmpty()) && this.f2875a.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j10);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        kotlin.jvm.internal.m.e(view, "view");
        this.f2876b.remove(view);
        if (this.f2875a.remove(view)) {
            this.f2878d = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends p> F getFragment() {
        return (F) i0.l0(this).i0(getId());
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        kotlin.jvm.internal.m.e(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 < childCount) {
                View view = getChildAt(childCount);
                kotlin.jvm.internal.m.d(view, "view");
                a(view);
            } else {
                super.removeAllViewsInLayout();
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        kotlin.jvm.internal.m.e(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        View view = getChildAt(i10);
        kotlin.jvm.internal.m.d(view, "view");
        a(view);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        kotlin.jvm.internal.m.e(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            kotlin.jvm.internal.m.d(view, "view");
            a(view);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            kotlin.jvm.internal.m.d(view, "view");
            a(view);
        }
        super.removeViewsInLayout(i10, i11);
    }

    public final void setDrawDisappearingViewsLast(boolean z10) {
        this.f2878d = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.f2877c = listener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        kotlin.jvm.internal.m.e(view, "view");
        if (view.getParent() == this) {
            this.f2876b.add(view);
        }
        super.startViewTransition(view);
    }
}
