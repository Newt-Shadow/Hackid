package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
/* loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f1145i;

    /* renamed from: j  reason: collision with root package name */
    private CharSequence f1146j;

    /* renamed from: k  reason: collision with root package name */
    private View f1147k;

    /* renamed from: l  reason: collision with root package name */
    private View f1148l;

    /* renamed from: m  reason: collision with root package name */
    private View f1149m;

    /* renamed from: n  reason: collision with root package name */
    private LinearLayout f1150n;

    /* renamed from: o  reason: collision with root package name */
    private TextView f1151o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f1152p;

    /* renamed from: q  reason: collision with root package name */
    private int f1153q;

    /* renamed from: r  reason: collision with root package name */
    private int f1154r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1155s;

    /* renamed from: t  reason: collision with root package name */
    private int f1156t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ androidx.appcompat.view.b f1157a;

        a(androidx.appcompat.view.b bVar) {
            this.f1157a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1157a.c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    private void i() {
        int i10;
        if (this.f1150n == null) {
            LayoutInflater.from(getContext()).inflate(h.g.f16541a, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1150n = linearLayout;
            this.f1151o = (TextView) linearLayout.findViewById(h.f.f16519e);
            this.f1152p = (TextView) this.f1150n.findViewById(h.f.f16518d);
            if (this.f1153q != 0) {
                this.f1151o.setTextAppearance(getContext(), this.f1153q);
            }
            if (this.f1154r != 0) {
                this.f1152p.setTextAppearance(getContext(), this.f1154r);
            }
        }
        this.f1151o.setText(this.f1145i);
        this.f1152p.setText(this.f1146j);
        boolean z10 = !TextUtils.isEmpty(this.f1145i);
        boolean z11 = !TextUtils.isEmpty(this.f1146j);
        TextView textView = this.f1152p;
        int i11 = 0;
        if (z11) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        textView.setVisibility(i10);
        LinearLayout linearLayout2 = this.f1150n;
        if (!z10 && !z11) {
            i11 = 8;
        }
        linearLayout2.setVisibility(i11);
        if (this.f1150n.getParent() == null) {
            addView(this.f1150n);
        }
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ d0.w0 f(int i10, long j10) {
        return super.f(i10, j10);
    }

    public void g() {
        if (this.f1147k == null) {
            k();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f1146j;
    }

    public CharSequence getTitle() {
        return this.f1145i;
    }

    public void h(androidx.appcompat.view.b bVar) {
        View view = this.f1147k;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f1156t, (ViewGroup) this, false);
            this.f1147k = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f1147k);
        }
        View findViewById = this.f1147k.findViewById(h.f.f16523i);
        this.f1148l = findViewById;
        findViewById.setOnClickListener(new a(bVar));
        androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) bVar.e();
        c cVar = this.f1337d;
        if (cVar != null) {
            cVar.y();
        }
        c cVar2 = new c(getContext());
        this.f1337d = cVar2;
        cVar2.J(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.c(this.f1337d, this.f1335b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1337d.o(this);
        this.f1336c = actionMenuView;
        d0.p0.X(actionMenuView, null);
        addView(this.f1336c, layoutParams);
    }

    public boolean j() {
        return this.f1155s;
    }

    public void k() {
        removeAllViews();
        this.f1149m = null;
        this.f1336c = null;
        this.f1337d = null;
        View view = this.f1148l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public boolean l() {
        c cVar = this.f1337d;
        if (cVar != null) {
            return cVar.K();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f1337d;
        if (cVar != null) {
            cVar.B();
            this.f1337d.C();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int paddingRight;
        int i14;
        int i15;
        boolean b10 = q1.b(this);
        if (b10) {
            paddingLeft = (i12 - i10) - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1147k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1147k.getLayoutParams();
            if (b10) {
                i14 = marginLayoutParams.rightMargin;
            } else {
                i14 = marginLayoutParams.leftMargin;
            }
            if (b10) {
                i15 = marginLayoutParams.leftMargin;
            } else {
                i15 = marginLayoutParams.rightMargin;
            }
            int d10 = androidx.appcompat.widget.a.d(paddingLeft, i14, b10);
            paddingLeft = androidx.appcompat.widget.a.d(d10 + e(this.f1147k, d10, paddingTop, paddingTop2, b10), i15, b10);
        }
        int i16 = paddingLeft;
        LinearLayout linearLayout = this.f1150n;
        if (linearLayout != null && this.f1149m == null && linearLayout.getVisibility() != 8) {
            i16 += e(this.f1150n, i16, paddingTop, paddingTop2, b10);
        }
        int i17 = i16;
        View view2 = this.f1149m;
        if (view2 != null) {
            e(view2, i17, paddingTop, paddingTop2, b10);
        }
        if (b10) {
            paddingRight = getPaddingLeft();
        } else {
            paddingRight = (i12 - i10) - getPaddingRight();
        }
        ActionMenuView actionMenuView = this.f1336c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingRight, paddingTop, paddingTop2, !b10);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        boolean z10;
        int i13;
        int i14 = 1073741824;
        if (View.MeasureSpec.getMode(i10) == 1073741824) {
            if (View.MeasureSpec.getMode(i11) != 0) {
                int size = View.MeasureSpec.getSize(i10);
                int i15 = this.f1338e;
                if (i15 <= 0) {
                    i15 = View.MeasureSpec.getSize(i11);
                }
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i16 = i15 - paddingTop;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE);
                View view = this.f1147k;
                if (view != null) {
                    int c10 = c(view, paddingLeft, makeMeasureSpec, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1147k.getLayoutParams();
                    paddingLeft = c10 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.f1336c;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = c(this.f1336c, paddingLeft, makeMeasureSpec, 0);
                }
                LinearLayout linearLayout = this.f1150n;
                if (linearLayout != null && this.f1149m == null) {
                    if (this.f1155s) {
                        this.f1150n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f1150n.getMeasuredWidth();
                        if (measuredWidth <= paddingLeft) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            paddingLeft -= measuredWidth;
                        }
                        LinearLayout linearLayout2 = this.f1150n;
                        if (z10) {
                            i13 = 0;
                        } else {
                            i13 = 8;
                        }
                        linearLayout2.setVisibility(i13);
                    } else {
                        paddingLeft = c(linearLayout, paddingLeft, makeMeasureSpec, 0);
                    }
                }
                View view2 = this.f1149m;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i17 = layoutParams.width;
                    if (i17 != -2) {
                        i12 = 1073741824;
                    } else {
                        i12 = Integer.MIN_VALUE;
                    }
                    if (i17 >= 0) {
                        paddingLeft = Math.min(i17, paddingLeft);
                    }
                    int i18 = layoutParams.height;
                    if (i18 == -2) {
                        i14 = Integer.MIN_VALUE;
                    }
                    if (i18 >= 0) {
                        i16 = Math.min(i18, i16);
                    }
                    this.f1149m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i12), View.MeasureSpec.makeMeasureSpec(i16, i14));
                }
                if (this.f1338e <= 0) {
                    int childCount = getChildCount();
                    int i19 = 0;
                    for (int i20 = 0; i20 < childCount; i20++) {
                        int measuredHeight = getChildAt(i20).getMeasuredHeight() + paddingTop;
                        if (measuredHeight > i19) {
                            i19 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i19);
                    return;
                }
                setMeasuredDimension(size, i15);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i10) {
        this.f1338e = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1149m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1149m = view;
        if (view != null && (linearLayout = this.f1150n) != null) {
            removeView(linearLayout);
            this.f1150n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1146j = charSequence;
        i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1145i = charSequence;
        i();
        d0.p0.W(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f1155s) {
            requestLayout();
        }
        this.f1155s = z10;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.f16447g);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        f1 u10 = f1.u(context, attributeSet, h.j.f16700y, i10, 0);
        d0.p0.X(this, u10.f(h.j.f16705z));
        this.f1153q = u10.m(h.j.D, 0);
        this.f1154r = u10.m(h.j.C, 0);
        this.f1338e = u10.l(h.j.B, 0);
        this.f1156t = u10.m(h.j.A, h.g.f16544d);
        u10.v();
    }
}
