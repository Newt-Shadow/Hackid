package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.s0;
/* loaded from: classes.dex */
public class ActionMenuView extends s0 implements g.b, androidx.appcompat.view.menu.n {
    e A;

    /* renamed from: p  reason: collision with root package name */
    private androidx.appcompat.view.menu.g f1188p;

    /* renamed from: q  reason: collision with root package name */
    private Context f1189q;

    /* renamed from: r  reason: collision with root package name */
    private int f1190r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1191s;

    /* renamed from: t  reason: collision with root package name */
    private androidx.appcompat.widget.c f1192t;

    /* renamed from: u  reason: collision with root package name */
    private m.a f1193u;

    /* renamed from: v  reason: collision with root package name */
    g.a f1194v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f1195w;

    /* renamed from: x  reason: collision with root package name */
    private int f1196x;

    /* renamed from: y  reason: collision with root package name */
    private int f1197y;

    /* renamed from: z  reason: collision with root package name */
    private int f1198z;

    /* loaded from: classes.dex */
    public interface a {
        boolean a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends s0.a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1199a;

        /* renamed from: b  reason: collision with root package name */
        public int f1200b;

        /* renamed from: c  reason: collision with root package name */
        public int f1201c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f1202d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1203e;

        /* renamed from: f  reason: collision with root package name */
        boolean f1204f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f1199a = cVar.f1199a;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f1199a = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.A;
            if (eVar != null && eVar.onMenuItemClick(menuItem)) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            g.a aVar = ActionMenuView.this.f1194v;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(View view, int i10, int i11, int i12, int i13) {
        ActionMenuItemView actionMenuItemView;
        boolean z10;
        int i14;
        c cVar = (c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12) - i13, View.MeasureSpec.getMode(i12));
        if (view instanceof ActionMenuItemView) {
            actionMenuItemView = (ActionMenuItemView) view;
        } else {
            actionMenuItemView = null;
        }
        boolean z11 = true;
        if (actionMenuItemView != null && actionMenuItemView.r()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (i11 > 0) {
            i14 = 2;
            if (!z10 || i11 >= 2) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, Integer.MIN_VALUE), makeMeasureSpec);
                int measuredWidth = view.getMeasuredWidth();
                int i15 = measuredWidth / i10;
                if (measuredWidth % i10 != 0) {
                    i15++;
                }
                if (!z10 || i15 >= 2) {
                    i14 = i15;
                }
                if (!cVar.f1199a || !z10) {
                    z11 = false;
                }
                cVar.f1202d = z11;
                cVar.f1200b = i14;
                view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, 1073741824), makeMeasureSpec);
                return i14;
            }
        }
        i14 = 0;
        if (!cVar.f1199a) {
        }
        z11 = false;
        cVar.f1202d = z11;
        cVar.f1200b = i14;
        view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, 1073741824), makeMeasureSpec);
        return i14;
    }

    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r14v14 */
    private void K(int i10, int i11) {
        boolean z10;
        int i12;
        int i13;
        boolean z11;
        int i14;
        boolean z12;
        int i15;
        boolean z13;
        int i16;
        int i17;
        boolean z14;
        int i18;
        ?? r14;
        boolean z15;
        int i19;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int i20 = size - paddingLeft;
        int i21 = this.f1197y;
        int i22 = i20 / i21;
        int i23 = i20 % i21;
        if (i22 == 0) {
            setMeasuredDimension(i20, 0);
            return;
        }
        int i24 = i21 + (i23 / i22);
        int childCount = getChildCount();
        int i25 = 0;
        int i26 = 0;
        boolean z16 = false;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        long j10 = 0;
        while (i26 < childCount) {
            View childAt = getChildAt(i26);
            int i30 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z17 = childAt instanceof ActionMenuItemView;
                int i31 = i27 + 1;
                if (z17) {
                    int i32 = this.f1198z;
                    i18 = i31;
                    r14 = 0;
                    childAt.setPadding(i32, 0, i32, 0);
                } else {
                    i18 = i31;
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f1204f = r14;
                cVar.f1201c = r14;
                cVar.f1200b = r14;
                cVar.f1202d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                if (z17 && ((ActionMenuItemView) childAt).r()) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                cVar.f1203e = z15;
                if (cVar.f1199a) {
                    i19 = 1;
                } else {
                    i19 = i22;
                }
                int J = J(childAt, i24, i19, childMeasureSpec, paddingTop);
                i28 = Math.max(i28, J);
                if (cVar.f1202d) {
                    i29++;
                }
                if (cVar.f1199a) {
                    z16 = true;
                }
                i22 -= J;
                i25 = Math.max(i25, childAt.getMeasuredHeight());
                if (J == 1) {
                    j10 |= 1 << i26;
                    i25 = i25;
                }
                i27 = i18;
            }
            i26++;
            size2 = i30;
        }
        int i33 = size2;
        if (z16 && i27 == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z18 = false;
        while (i29 > 0 && i22 > 0) {
            int i34 = Integer.MAX_VALUE;
            int i35 = 0;
            int i36 = 0;
            long j11 = 0;
            while (i36 < childCount) {
                boolean z19 = z18;
                c cVar2 = (c) getChildAt(i36).getLayoutParams();
                int i37 = i25;
                if (cVar2.f1202d) {
                    int i38 = cVar2.f1200b;
                    if (i38 < i34) {
                        j11 = 1 << i36;
                        i34 = i38;
                        i35 = 1;
                    } else if (i38 == i34) {
                        i35++;
                        j11 |= 1 << i36;
                    }
                }
                i36++;
                i25 = i37;
                z18 = z19;
            }
            z11 = z18;
            i14 = i25;
            j10 |= j11;
            if (i35 > i22) {
                i12 = mode;
                i13 = i20;
                break;
            }
            int i39 = i34 + 1;
            int i40 = 0;
            while (i40 < childCount) {
                View childAt2 = getChildAt(i40);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i41 = i20;
                int i42 = mode;
                long j12 = 1 << i40;
                if ((j11 & j12) == 0) {
                    if (cVar3.f1200b == i39) {
                        j10 |= j12;
                    }
                    z14 = z10;
                } else {
                    if (z10 && cVar3.f1203e && i22 == 1) {
                        int i43 = this.f1198z;
                        z14 = z10;
                        childAt2.setPadding(i43 + i24, 0, i43, 0);
                    } else {
                        z14 = z10;
                    }
                    cVar3.f1200b++;
                    cVar3.f1204f = true;
                    i22--;
                }
                i40++;
                mode = i42;
                i20 = i41;
                z10 = z14;
            }
            i25 = i14;
            z18 = true;
        }
        i12 = mode;
        i13 = i20;
        z11 = z18;
        i14 = i25;
        if (!z16 && i27 == 1) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (i22 > 0 && j10 != 0 && (i22 < i27 - 1 || z12 || i28 > 1)) {
            float bitCount = Long.bitCount(j10);
            if (!z12) {
                i15 = 0;
                if ((j10 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f1203e) {
                    bitCount -= 0.5f;
                }
                int i44 = childCount - 1;
                if ((j10 & (1 << i44)) != 0 && !((c) getChildAt(i44).getLayoutParams()).f1203e) {
                    bitCount -= 0.5f;
                }
            } else {
                i15 = 0;
            }
            if (bitCount > 0.0f) {
                i17 = (int) ((i22 * i24) / bitCount);
            } else {
                i17 = i15;
            }
            z13 = z11;
            for (int i45 = i15; i45 < childCount; i45++) {
                if ((j10 & (1 << i45)) != 0) {
                    View childAt3 = getChildAt(i45);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f1201c = i17;
                        cVar4.f1204f = true;
                        if (i45 == 0 && !cVar4.f1203e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i17) / 2;
                        }
                        z13 = true;
                    } else if (cVar4.f1199a) {
                        cVar4.f1201c = i17;
                        cVar4.f1204f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i17) / 2;
                        z13 = true;
                    } else {
                        if (i45 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i17 / 2;
                        }
                        if (i45 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i17 / 2;
                        }
                    }
                }
            }
        } else {
            i15 = 0;
            z13 = z11;
        }
        if (z13) {
            for (int i46 = i15; i46 < childCount; i46++) {
                View childAt4 = getChildAt(i46);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f1204f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f1200b * i24) + cVar5.f1201c, 1073741824), childMeasureSpec);
                }
            }
        }
        if (i12 != 1073741824) {
            i16 = i14;
        } else {
            i16 = i33;
        }
        setMeasuredDimension(i13, i16);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0
    /* renamed from: A */
    public c k() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.s0
    /* renamed from: B */
    public c l(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0
    /* renamed from: C */
    public c m(ViewGroup.LayoutParams layoutParams) {
        c cVar;
        if (layoutParams != null) {
            if (layoutParams instanceof c) {
                cVar = new c((c) layoutParams);
            } else {
                cVar = new c(layoutParams);
            }
            if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
                ((LinearLayout.LayoutParams) cVar).gravity = 16;
            }
            return cVar;
        }
        return k();
    }

    public c D() {
        c k10 = k();
        k10.f1199a = true;
        return k10;
    }

    protected boolean E(int i10) {
        boolean z10 = false;
        if (i10 == 0) {
            return false;
        }
        View childAt = getChildAt(i10 - 1);
        View childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof a)) {
            z10 = false | ((a) childAt).a();
        }
        if (i10 > 0 && (childAt2 instanceof a)) {
            return z10 | ((a) childAt2).b();
        }
        return z10;
    }

    public boolean F() {
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null && cVar.B()) {
            return true;
        }
        return false;
    }

    public boolean G() {
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null && cVar.D()) {
            return true;
        }
        return false;
    }

    public boolean H() {
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null && cVar.E()) {
            return true;
        }
        return false;
    }

    public boolean I() {
        return this.f1191s;
    }

    public androidx.appcompat.view.menu.g L() {
        return this.f1188p;
    }

    public void M(m.a aVar, g.a aVar2) {
        this.f1193u = aVar;
        this.f1194v = aVar2;
    }

    public boolean N() {
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null && cVar.K()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(androidx.appcompat.view.menu.i iVar) {
        return this.f1188p.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(androidx.appcompat.view.menu.g gVar) {
        this.f1188p = gVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.f1188p == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
            this.f1188p = gVar;
            gVar.R(new d());
            androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(context);
            this.f1192t = cVar;
            cVar.J(true);
            androidx.appcompat.widget.c cVar2 = this.f1192t;
            m.a aVar = this.f1193u;
            if (aVar == null) {
                aVar = new b();
            }
            cVar2.g(aVar);
            this.f1188p.c(this.f1192t, this.f1189q);
            this.f1192t.H(this);
        }
        return this.f1188p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f1192t.A();
    }

    public int getPopupTheme() {
        return this.f1190r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null) {
            cVar.c(false);
            if (this.f1192t.E()) {
                this.f1192t.B();
                this.f1192t.K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        z();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int width;
        int i15;
        if (!this.f1195w) {
            super.onLayout(z10, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i16 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i17 = i12 - i10;
        int paddingRight = (i17 - getPaddingRight()) - getPaddingLeft();
        boolean b10 = q1.b(this);
        int i18 = 0;
        int i19 = 0;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt = getChildAt(i20);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1199a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (E(i20)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b10) {
                        i15 = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = i15 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        i15 = width - measuredWidth;
                    }
                    int i21 = i16 - (measuredHeight / 2);
                    childAt.layout(i15, i21, width, measuredHeight + i21);
                    paddingRight -= measuredWidth;
                    i18 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    E(i20);
                    i19++;
                }
            }
        }
        if (childCount == 1 && i18 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i22 = (i17 / 2) - (measuredWidth2 / 2);
            int i23 = i16 - (measuredHeight2 / 2);
            childAt2.layout(i22, i23, measuredWidth2 + i22, measuredHeight2 + i23);
            return;
        }
        int i24 = i19 - (i18 ^ 1);
        if (i24 > 0) {
            i14 = paddingRight / i24;
        } else {
            i14 = 0;
        }
        int max = Math.max(0, i14);
        if (b10) {
            int width2 = getWidth() - getPaddingRight();
            for (int i25 = 0; i25 < childCount; i25++) {
                View childAt3 = getChildAt(i25);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f1199a) {
                    int i26 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i27 = i16 - (measuredHeight3 / 2);
                    childAt3.layout(i26 - measuredWidth3, i27, i26, measuredHeight3 + i27);
                    width2 = i26 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i28 = 0; i28 < childCount; i28++) {
            View childAt4 = getChildAt(i28);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f1199a) {
                int i29 = paddingLeft + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i30 = i16 - (measuredHeight4 / 2);
                childAt4.layout(i29, i30, i29 + measuredWidth4, measuredHeight4 + i30);
                paddingLeft = i29 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + max;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.s0, android.view.View
    public void onMeasure(int i10, int i11) {
        boolean z10;
        androidx.appcompat.view.menu.g gVar;
        boolean z11 = this.f1195w;
        if (View.MeasureSpec.getMode(i10) == 1073741824) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f1195w = z10;
        if (z11 != z10) {
            this.f1196x = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.f1195w && (gVar = this.f1188p) != null && size != this.f1196x) {
            this.f1196x = size;
            gVar.K(true);
        }
        int childCount = getChildCount();
        if (this.f1195w && childCount > 0) {
            K(i10, i11);
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            c cVar = (c) getChildAt(i12).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i10, i11);
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.f1192t.G(z10);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.A = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f1192t.I(drawable);
    }

    public void setOverflowReserved(boolean z10) {
        this.f1191s = z10;
    }

    public void setPopupTheme(int i10) {
        if (this.f1190r != i10) {
            this.f1190r = i10;
            if (i10 == 0) {
                this.f1189q = getContext();
            } else {
                this.f1189q = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.f1192t = cVar;
        cVar.H(this);
    }

    public void z() {
        androidx.appcompat.widget.c cVar = this.f1192t;
        if (cVar != null) {
            cVar.y();
        }
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f1197y = (int) (56.0f * f10);
        this.f1198z = (int) (f10 * 4.0f);
        this.f1189q = context;
        this.f1190r = 0;
    }
}
