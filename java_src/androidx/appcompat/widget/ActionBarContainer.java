package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1135a;

    /* renamed from: b  reason: collision with root package name */
    private View f1136b;

    /* renamed from: c  reason: collision with root package name */
    private View f1137c;

    /* renamed from: d  reason: collision with root package name */
    private View f1138d;

    /* renamed from: e  reason: collision with root package name */
    Drawable f1139e;

    /* renamed from: f  reason: collision with root package name */
    Drawable f1140f;

    /* renamed from: g  reason: collision with root package name */
    Drawable f1141g;

    /* renamed from: h  reason: collision with root package name */
    boolean f1142h;

    /* renamed from: i  reason: collision with root package name */
    boolean f1143i;

    /* renamed from: j  reason: collision with root package name */
    private int f1144j;

    /* loaded from: classes.dex */
    private static class a {
        public static void a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d0.p0.X(this, new b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.f16580a);
        this.f1139e = obtainStyledAttributes.getDrawable(h.j.f16585b);
        this.f1140f = obtainStyledAttributes.getDrawable(h.j.f16595d);
        this.f1144j = obtainStyledAttributes.getDimensionPixelSize(h.j.f16625j, -1);
        boolean z10 = true;
        if (getId() == h.f.H) {
            this.f1142h = true;
            this.f1141g = obtainStyledAttributes.getDrawable(h.j.f16590c);
        }
        obtainStyledAttributes.recycle();
        if (!this.f1142h ? this.f1139e != null || this.f1140f != null : this.f1141g != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        if (view != null && view.getVisibility() != 8 && view.getMeasuredHeight() != 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1139e;
        if (drawable != null && drawable.isStateful()) {
            this.f1139e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1140f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1140f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1141g;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f1141g.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.f1136b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1139e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1140f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1141g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1137c = findViewById(h.f.f16515a);
        this.f1138d = findViewById(h.f.f16520f);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f1135a && !super.onInterceptTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        View view = this.f1136b;
        boolean z12 = true;
        boolean z13 = false;
        if (view != null && view.getVisibility() != 8) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            int i14 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i10, (measuredHeight - view.getMeasuredHeight()) - i14, i12, measuredHeight - i14);
        }
        if (this.f1142h) {
            Drawable drawable2 = this.f1141g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
            z12 = z13;
        } else {
            if (this.f1139e != null) {
                if (this.f1137c.getVisibility() == 0) {
                    this.f1139e.setBounds(this.f1137c.getLeft(), this.f1137c.getTop(), this.f1137c.getRight(), this.f1137c.getBottom());
                } else {
                    View view2 = this.f1138d;
                    if (view2 != null && view2.getVisibility() == 0) {
                        this.f1139e.setBounds(this.f1138d.getLeft(), this.f1138d.getTop(), this.f1138d.getRight(), this.f1138d.getBottom());
                    } else {
                        this.f1139e.setBounds(0, 0, 0, 0);
                    }
                }
                z13 = true;
            }
            this.f1143i = z11;
            if (z11 && (drawable = this.f1140f) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            z12 = z13;
        }
        if (z12) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (this.f1137c == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i14 = this.f1144j) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i14, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f1137c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.f1136b;
        if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
            if (!b(this.f1137c)) {
                i12 = a(this.f1137c);
            } else if (!b(this.f1138d)) {
                i12 = a(this.f1138d);
            } else {
                i12 = 0;
            }
            if (mode == Integer.MIN_VALUE) {
                i13 = View.MeasureSpec.getSize(i11);
            } else {
                i13 = Integer.MAX_VALUE;
            }
            setMeasuredDimension(getMeasuredWidth(), Math.min(i12 + a(this.f1136b), i13));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1139e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1139e);
        }
        this.f1139e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1137c;
            if (view != null) {
                this.f1139e.setBounds(view.getLeft(), this.f1137c.getTop(), this.f1137c.getRight(), this.f1137c.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f1142h ? this.f1139e != null || this.f1140f != null : this.f1141g != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1141g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1141g);
        }
        this.f1141g = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1142h && (drawable2 = this.f1141g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1142h ? !(this.f1139e != null || this.f1140f != null) : this.f1141g == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1140f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1140f);
        }
        this.f1140f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1143i && (drawable2 = this.f1140f) != null) {
                drawable2.setBounds(this.f1136b.getLeft(), this.f1136b.getTop(), this.f1136b.getRight(), this.f1136b.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f1142h ? this.f1139e != null || this.f1140f != null : this.f1141g != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setTabContainer(z0 z0Var) {
        View view = this.f1136b;
        if (view != null) {
            removeView(view);
        }
        this.f1136b = z0Var;
    }

    public void setTransitioning(boolean z10) {
        int i10;
        this.f1135a = z10;
        if (z10) {
            i10 = 393216;
        } else {
            i10 = 262144;
        }
        setDescendantFocusability(i10);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z10;
        super.setVisibility(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable = this.f1139e;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f1140f;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f1141g;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if ((drawable == this.f1139e && !this.f1142h) || ((drawable == this.f1140f && this.f1143i) || ((drawable == this.f1141g && this.f1142h) || super.verifyDrawable(drawable)))) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }
}
