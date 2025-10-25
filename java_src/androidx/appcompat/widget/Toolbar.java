package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements d0.w {
    private ColorStateList A;
    private boolean B;
    private boolean C;
    private final ArrayList D;
    private final ArrayList E;
    private final int[] F;
    final d0.z G;
    private ArrayList H;
    h I;
    private final ActionMenuView.e J;
    private j1 K;
    private androidx.appcompat.widget.c L;
    private f M;
    private m.a N;
    g.a O;
    private boolean P;
    private OnBackInvokedCallback Q;
    private OnBackInvokedDispatcher R;
    private boolean S;
    private final Runnable T;

    /* renamed from: a  reason: collision with root package name */
    ActionMenuView f1294a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f1295b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f1296c;

    /* renamed from: d  reason: collision with root package name */
    private ImageButton f1297d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f1298e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1299f;

    /* renamed from: g  reason: collision with root package name */
    private CharSequence f1300g;

    /* renamed from: h  reason: collision with root package name */
    ImageButton f1301h;

    /* renamed from: i  reason: collision with root package name */
    View f1302i;

    /* renamed from: j  reason: collision with root package name */
    private Context f1303j;

    /* renamed from: k  reason: collision with root package name */
    private int f1304k;

    /* renamed from: l  reason: collision with root package name */
    private int f1305l;

    /* renamed from: m  reason: collision with root package name */
    private int f1306m;

    /* renamed from: n  reason: collision with root package name */
    int f1307n;

    /* renamed from: o  reason: collision with root package name */
    private int f1308o;

    /* renamed from: p  reason: collision with root package name */
    private int f1309p;

    /* renamed from: q  reason: collision with root package name */
    private int f1310q;

    /* renamed from: r  reason: collision with root package name */
    private int f1311r;

    /* renamed from: s  reason: collision with root package name */
    private int f1312s;

    /* renamed from: t  reason: collision with root package name */
    private y0 f1313t;

    /* renamed from: u  reason: collision with root package name */
    private int f1314u;

    /* renamed from: v  reason: collision with root package name */
    private int f1315v;

    /* renamed from: w  reason: collision with root package name */
    private int f1316w;

    /* renamed from: x  reason: collision with root package name */
    private CharSequence f1317x;

    /* renamed from: y  reason: collision with root package name */
    private CharSequence f1318y;

    /* renamed from: z  reason: collision with root package name */
    private ColorStateList f1319z;

    /* loaded from: classes.dex */
    class a implements ActionMenuView.e {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.G.j(menuItem)) {
                return true;
            }
            h hVar = Toolbar.this.I;
            if (hVar != null) {
                return hVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements g.a {
        c() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            g.a aVar = Toolbar.this.O;
            if (aVar != null && aVar.a(gVar, menuItem)) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            if (!Toolbar.this.f1294a.H()) {
                Toolbar.this.G.k(gVar);
            }
            g.a aVar = Toolbar.this.O;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {
        static OnBackInvokedDispatcher a(View view) {
            return view.findOnBackInvokedDispatcher();
        }

        static OnBackInvokedCallback b(final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: androidx.appcompat.widget.i1
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        static void c(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        static void d(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements androidx.appcompat.view.menu.m {

        /* renamed from: a  reason: collision with root package name */
        androidx.appcompat.view.menu.g f1324a;

        /* renamed from: b  reason: collision with root package name */
        androidx.appcompat.view.menu.i f1325b;

        f() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.m
        public void c(boolean z10) {
            if (this.f1325b != null) {
                androidx.appcompat.view.menu.g gVar = this.f1324a;
                boolean z11 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            break;
                        } else if (this.f1324a.getItem(i10) == this.f1325b) {
                            z11 = true;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z11) {
                    e(this.f1324a, this.f1325b);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean e(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            View view = Toolbar.this.f1302i;
            if (view instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) view).d();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1302i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1301h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1302i = null;
            toolbar3.a();
            this.f1325b = null;
            Toolbar.this.requestLayout();
            iVar.r(false);
            Toolbar.this.R();
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean f(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            Toolbar.this.g();
            ViewParent parent = Toolbar.this.f1301h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1301h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1301h);
            }
            Toolbar.this.f1302i = iVar.getActionView();
            this.f1325b = iVar;
            ViewParent parent2 = Toolbar.this.f1302i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1302i);
                }
                g generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f668a = (toolbar4.f1307n & 112) | 8388611;
                generateDefaultLayoutParams.f1327b = 2;
                toolbar4.f1302i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1302i);
            }
            Toolbar.this.I();
            Toolbar.this.requestLayout();
            iVar.r(true);
            View view = Toolbar.this.f1302i;
            if (view instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) view).c();
            }
            Toolbar.this.R();
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public void h(Context context, androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.i iVar;
            androidx.appcompat.view.menu.g gVar2 = this.f1324a;
            if (gVar2 != null && (iVar = this.f1325b) != null) {
                gVar2.f(iVar);
            }
            this.f1324a = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean i(androidx.appcompat.view.menu.r rVar) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface h {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.K);
    }

    private int C(View view, int i10, int[] iArr, int i11) {
        g gVar = (g) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) gVar).leftMargin - iArr[0];
        int max = i10 + Math.max(0, i12);
        iArr[0] = Math.max(0, -i12);
        int q10 = q(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, q10, max + measuredWidth, view.getMeasuredHeight() + q10);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) gVar).rightMargin;
    }

    private int D(View view, int i10, int[] iArr, int i11) {
        g gVar = (g) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) gVar).rightMargin - iArr[1];
        int max = i10 - Math.max(0, i12);
        iArr[1] = Math.max(0, -i12);
        int q10 = q(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, q10, max, view.getMeasuredHeight() + q10);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) gVar).leftMargin);
    }

    private int E(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i14) + Math.max(0, i15);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + max + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private void F(View view, int i10, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i14 >= 0) {
            if (mode != 0) {
                i14 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i14);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void G() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.G.h(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    private void H() {
        removeCallbacks(this.T);
        post(this.T);
    }

    private boolean O() {
        if (!this.P) {
            return false;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (P(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean P(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    private void b(List list, int i10) {
        boolean z10;
        if (d0.p0.t(this) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        int childCount = getChildCount();
        int a10 = d0.s.a(i10, d0.p0.t(this));
        list.clear();
        if (z10) {
            for (int i11 = childCount - 1; i11 >= 0; i11--) {
                View childAt = getChildAt(i11);
                g gVar = (g) childAt.getLayoutParams();
                if (gVar.f1327b == 0 && P(childAt) && p(gVar.f668a) == a10) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            g gVar2 = (g) childAt2.getLayoutParams();
            if (gVar2.f1327b == 0 && P(childAt2) && p(gVar2.f668a) == a10) {
                list.add(childAt2);
            }
        }
    }

    private void c(View view, boolean z10) {
        g gVar;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            gVar = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            gVar = generateLayoutParams(layoutParams);
        } else {
            gVar = (g) layoutParams;
        }
        gVar.f1327b = 1;
        if (z10 && this.f1302i != null) {
            view.setLayoutParams(gVar);
            this.E.add(view);
            return;
        }
        addView(view, gVar);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i10 = 0; i10 < menu.size(); i10++) {
            arrayList.add(menu.getItem(i10));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private void h() {
        if (this.f1313t == null) {
            this.f1313t = new y0();
        }
    }

    private void i() {
        if (this.f1298e == null) {
            this.f1298e = new r(getContext());
        }
    }

    private void j() {
        k();
        if (this.f1294a.L() == null) {
            androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) this.f1294a.getMenu();
            if (this.M == null) {
                this.M = new f();
            }
            this.f1294a.setExpandedActionViewsExclusive(true);
            gVar.c(this.M, this.f1303j);
            R();
        }
    }

    private void k() {
        if (this.f1294a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1294a = actionMenuView;
            actionMenuView.setPopupTheme(this.f1304k);
            this.f1294a.setOnMenuItemClickListener(this.J);
            this.f1294a.M(this.N, new c());
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f668a = (this.f1307n & 112) | 8388613;
            this.f1294a.setLayoutParams(generateDefaultLayoutParams);
            c(this.f1294a, false);
        }
    }

    private void l() {
        if (this.f1297d == null) {
            this.f1297d = new p(getContext(), null, h.a.J);
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f668a = (this.f1307n & 112) | 8388611;
            this.f1297d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    private int p(int i10) {
        int t10 = d0.p0.t(this);
        int a10 = d0.s.a(i10, t10) & 7;
        if (a10 != 1 && a10 != 3 && a10 != 5) {
            if (t10 != 1) {
                return 3;
            }
            return 5;
        }
        return a10;
    }

    private int q(View view, int i10) {
        int i11;
        g gVar = (g) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i10 > 0) {
            i11 = (measuredHeight - i10) / 2;
        } else {
            i11 = 0;
        }
        int r10 = r(gVar.f668a);
        if (r10 != 48) {
            if (r10 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i12 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i13 = ((ViewGroup.MarginLayoutParams) gVar).topMargin;
                if (i12 < i13) {
                    i12 = i13;
                } else {
                    int i14 = (((height - paddingBottom) - measuredHeight) - i12) - paddingTop;
                    int i15 = ((ViewGroup.MarginLayoutParams) gVar).bottomMargin;
                    if (i14 < i15) {
                        i12 = Math.max(0, i12 - (i15 - i14));
                    }
                }
                return paddingTop + i12;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) gVar).bottomMargin) - i11;
        }
        return getPaddingTop() - i11;
    }

    private int r(int i10) {
        int i11 = i10 & 112;
        if (i11 != 16 && i11 != 48 && i11 != 80) {
            return this.f1316w & 112;
        }
        return i11;
    }

    private int s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return d0.v.b(marginLayoutParams) + d0.v.a(marginLayoutParams);
    }

    private int t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int u(List list, int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int size = list.size();
        int i12 = 0;
        int i13 = 0;
        while (i12 < size) {
            View view = (View) list.get(i12);
            g gVar = (g) view.getLayoutParams();
            int i14 = ((ViewGroup.MarginLayoutParams) gVar).leftMargin - i10;
            int i15 = ((ViewGroup.MarginLayoutParams) gVar).rightMargin - i11;
            int max = Math.max(0, i14);
            int max2 = Math.max(0, i15);
            int max3 = Math.max(0, -i14);
            int max4 = Math.max(0, -i15);
            i13 += max + view.getMeasuredWidth() + max2;
            i12++;
            i11 = max4;
            i10 = max3;
        }
        return i13;
    }

    private boolean z(View view) {
        if (view.getParent() != this && !this.E.contains(view)) {
            return false;
        }
        return true;
    }

    public boolean A() {
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null && actionMenuView.G()) {
            return true;
        }
        return false;
    }

    public boolean B() {
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null && actionMenuView.H()) {
            return true;
        }
        return false;
    }

    void I() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((g) childAt.getLayoutParams()).f1327b != 2 && childAt != this.f1294a) {
                removeViewAt(childCount);
                this.E.add(childAt);
            }
        }
    }

    public void J(int i10, int i11) {
        h();
        this.f1313t.g(i10, i11);
    }

    public void K(androidx.appcompat.view.menu.g gVar, androidx.appcompat.widget.c cVar) {
        if (gVar == null && this.f1294a == null) {
            return;
        }
        k();
        androidx.appcompat.view.menu.g L = this.f1294a.L();
        if (L == gVar) {
            return;
        }
        if (L != null) {
            L.O(this.L);
            L.O(this.M);
        }
        if (this.M == null) {
            this.M = new f();
        }
        cVar.G(true);
        if (gVar != null) {
            gVar.c(cVar, this.f1303j);
            gVar.c(this.M, this.f1303j);
        } else {
            cVar.h(this.f1303j, null);
            this.M.h(this.f1303j, null);
            cVar.c(true);
            this.M.c(true);
        }
        this.f1294a.setPopupTheme(this.f1304k);
        this.f1294a.setPresenter(cVar);
        this.L = cVar;
        R();
    }

    public void L(m.a aVar, g.a aVar2) {
        this.N = aVar;
        this.O = aVar2;
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null) {
            actionMenuView.M(aVar, aVar2);
        }
    }

    public void M(Context context, int i10) {
        this.f1306m = i10;
        TextView textView = this.f1296c;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public void N(Context context, int i10) {
        this.f1305l = i10;
        TextView textView = this.f1295b;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public boolean Q() {
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null && actionMenuView.N()) {
            return true;
        }
        return false;
    }

    void R() {
        boolean z10;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a10 = e.a(this);
            if (v() && a10 != null && d0.p0.E(this) && this.S) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && this.R == null) {
                if (this.Q == null) {
                    this.Q = e.b(new Runnable() { // from class: androidx.appcompat.widget.h1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Toolbar.this.e();
                        }
                    });
                }
                e.c(a10, this.Q);
                this.R = a10;
            } else if (!z10 && (onBackInvokedDispatcher = this.R) != null) {
                e.d(onBackInvokedDispatcher, this.Q);
                this.R = null;
            }
        }
    }

    void a() {
        for (int size = this.E.size() - 1; size >= 0; size--) {
            addView((View) this.E.get(size));
        }
        this.E.clear();
    }

    @Override // d0.w
    public void addMenuProvider(d0.b0 b0Var) {
        this.G.c(b0Var);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && (layoutParams instanceof g)) {
            return true;
        }
        return false;
    }

    public boolean d() {
        ActionMenuView actionMenuView;
        if (getVisibility() == 0 && (actionMenuView = this.f1294a) != null && actionMenuView.I()) {
            return true;
        }
        return false;
    }

    public void e() {
        androidx.appcompat.view.menu.i iVar;
        f fVar = this.M;
        if (fVar == null) {
            iVar = null;
        } else {
            iVar = fVar.f1325b;
        }
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public void f() {
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null) {
            actionMenuView.z();
        }
    }

    void g() {
        if (this.f1301h == null) {
            p pVar = new p(getContext(), null, h.a.J);
            this.f1301h = pVar;
            pVar.setImageDrawable(this.f1299f);
            this.f1301h.setContentDescription(this.f1300g);
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f668a = (this.f1307n & 112) | 8388611;
            generateDefaultLayoutParams.f1327b = 2;
            this.f1301h.setLayoutParams(generateDefaultLayoutParams);
            this.f1301h.setOnClickListener(new d());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f1301h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f1301h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        y0 y0Var = this.f1313t;
        if (y0Var != null) {
            return y0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i10 = this.f1315v;
        if (i10 == Integer.MIN_VALUE) {
            return getContentInsetEnd();
        }
        return i10;
    }

    public int getContentInsetLeft() {
        y0 y0Var = this.f1313t;
        if (y0Var != null) {
            return y0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        y0 y0Var = this.f1313t;
        if (y0Var != null) {
            return y0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        y0 y0Var = this.f1313t;
        if (y0Var != null) {
            return y0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i10 = this.f1314u;
        if (i10 == Integer.MIN_VALUE) {
            return getContentInsetStart();
        }
        return i10;
    }

    public int getCurrentContentInsetEnd() {
        boolean z10;
        androidx.appcompat.view.menu.g L;
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null && (L = actionMenuView.L()) != null && L.hasVisibleItems()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return Math.max(getContentInsetEnd(), Math.max(this.f1315v, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (d0.p0.t(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (d0.p0.t(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.f1314u, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1298e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1298e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        j();
        return this.f1294a.getMenu();
    }

    View getNavButtonView() {
        return this.f1297d;
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1297d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1297d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.L;
    }

    public Drawable getOverflowIcon() {
        j();
        return this.f1294a.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1303j;
    }

    public int getPopupTheme() {
        return this.f1304k;
    }

    public CharSequence getSubtitle() {
        return this.f1318y;
    }

    final TextView getSubtitleTextView() {
        return this.f1296c;
    }

    public CharSequence getTitle() {
        return this.f1317x;
    }

    public int getTitleMarginBottom() {
        return this.f1312s;
    }

    public int getTitleMarginEnd() {
        return this.f1310q;
    }

    public int getTitleMarginStart() {
        return this.f1309p;
    }

    public int getTitleMarginTop() {
        return this.f1311r;
    }

    final TextView getTitleTextView() {
        return this.f1295b;
    }

    public j0 getWrapper() {
        if (this.K == null) {
            this.K = new j1(this, true);
        }
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: m */
    public g generateDefaultLayoutParams() {
        return new g(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: n */
    public g generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: o */
    public g generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof g) {
            return new g((g) layoutParams);
        }
        if (layoutParams instanceof a.C0013a) {
            return new g((a.C0013a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new g((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new g(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        R();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
        R();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x029f A[LOOP:0: B:104:0x029d->B:105:0x029f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c1 A[LOOP:1: B:107:0x02bf->B:108:0x02c1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fa A[LOOP:2: B:116:0x02f8->B:117:0x02fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int[] iArr = this.F;
        boolean b10 = q1.b(this);
        int i19 = 0;
        int i20 = !b10 ? 1 : 0;
        if (P(this.f1297d)) {
            F(this.f1297d, i10, 0, i11, 0, this.f1308o);
            i12 = this.f1297d.getMeasuredWidth() + s(this.f1297d);
            i13 = Math.max(0, this.f1297d.getMeasuredHeight() + t(this.f1297d));
            i14 = View.combineMeasuredStates(0, this.f1297d.getMeasuredState());
        } else {
            i12 = 0;
            i13 = 0;
            i14 = 0;
        }
        if (P(this.f1301h)) {
            F(this.f1301h, i10, 0, i11, 0, this.f1308o);
            i12 = this.f1301h.getMeasuredWidth() + s(this.f1301h);
            i13 = Math.max(i13, this.f1301h.getMeasuredHeight() + t(this.f1301h));
            i14 = View.combineMeasuredStates(i14, this.f1301h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i12);
        iArr[b10 ? 1 : 0] = Math.max(0, currentContentInsetStart - i12);
        if (P(this.f1294a)) {
            F(this.f1294a, i10, max, i11, 0, this.f1308o);
            i15 = this.f1294a.getMeasuredWidth() + s(this.f1294a);
            i13 = Math.max(i13, this.f1294a.getMeasuredHeight() + t(this.f1294a));
            i14 = View.combineMeasuredStates(i14, this.f1294a.getMeasuredState());
        } else {
            i15 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i15);
        iArr[i20] = Math.max(0, currentContentInsetEnd - i15);
        if (P(this.f1302i)) {
            max2 += E(this.f1302i, i10, max2, i11, 0, iArr);
            i13 = Math.max(i13, this.f1302i.getMeasuredHeight() + t(this.f1302i));
            i14 = View.combineMeasuredStates(i14, this.f1302i.getMeasuredState());
        }
        if (P(this.f1298e)) {
            max2 += E(this.f1298e, i10, max2, i11, 0, iArr);
            i13 = Math.max(i13, this.f1298e.getMeasuredHeight() + t(this.f1298e));
            i14 = View.combineMeasuredStates(i14, this.f1298e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt = getChildAt(i21);
            if (((g) childAt.getLayoutParams()).f1327b == 0 && P(childAt)) {
                max2 += E(childAt, i10, max2, i11, 0, iArr);
                i13 = Math.max(i13, childAt.getMeasuredHeight() + t(childAt));
                i14 = View.combineMeasuredStates(i14, childAt.getMeasuredState());
            }
        }
        int i22 = this.f1311r + this.f1312s;
        int i23 = this.f1309p + this.f1310q;
        if (P(this.f1295b)) {
            E(this.f1295b, i10, max2 + i23, i11, i22, iArr);
            int measuredWidth = this.f1295b.getMeasuredWidth() + s(this.f1295b);
            i16 = this.f1295b.getMeasuredHeight() + t(this.f1295b);
            i17 = View.combineMeasuredStates(i14, this.f1295b.getMeasuredState());
            i18 = measuredWidth;
        } else {
            i16 = 0;
            i17 = i14;
            i18 = 0;
        }
        if (P(this.f1296c)) {
            i18 = Math.max(i18, E(this.f1296c, i10, max2 + i23, i11, i16 + i22, iArr));
            i16 += this.f1296c.getMeasuredHeight() + t(this.f1296c);
            i17 = View.combineMeasuredStates(i17, this.f1296c.getMeasuredState());
        }
        int max3 = Math.max(i13, i16);
        int paddingLeft = max2 + i18 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, (-16777216) & i17);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, i17 << 16);
        if (!O()) {
            i19 = resolveSizeAndState2;
        }
        setMeasuredDimension(resolveSizeAndState, i19);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        androidx.appcompat.view.menu.g gVar;
        MenuItem findItem;
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.a());
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null) {
            gVar = actionMenuView.L();
        } else {
            gVar = null;
        }
        int i10 = iVar.f1328c;
        if (i10 != 0 && this.M != null && gVar != null && (findItem = gVar.findItem(i10)) != null) {
            findItem.expandActionView();
        }
        if (iVar.f1329d) {
            H();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        h();
        y0 y0Var = this.f1313t;
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        y0Var.f(z10);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.i iVar;
        i iVar2 = new i(super.onSaveInstanceState());
        f fVar = this.M;
        if (fVar != null && (iVar = fVar.f1325b) != null) {
            iVar2.f1328c = iVar.getItemId();
        }
        iVar2.f1329d = B();
        return iVar2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    @Override // d0.w
    public void removeMenuProvider(d0.b0 b0Var) {
        this.G.l(b0Var);
    }

    public void setBackInvokedCallbackEnabled(boolean z10) {
        if (this.S != z10) {
            this.S = z10;
            R();
        }
    }

    public void setCollapseContentDescription(int i10) {
        setCollapseContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setCollapseIcon(int i10) {
        setCollapseIcon(i.a.b(getContext(), i10));
    }

    public void setCollapsible(boolean z10) {
        this.P = z10;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1315v) {
            this.f1315v = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1314u) {
            this.f1314u = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i10) {
        setLogo(i.a.b(getContext(), i10));
    }

    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setNavigationIcon(int i10) {
        setNavigationIcon(i.a.b(getContext(), i10));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        l();
        this.f1297d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(h hVar) {
        this.I = hVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        j();
        this.f1294a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i10) {
        if (this.f1304k != i10) {
            this.f1304k = i10;
            if (i10 == 0) {
                this.f1303j = getContext();
            } else {
                this.f1303j = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    public void setSubtitleTextColor(int i10) {
        setSubtitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    public void setTitleMarginBottom(int i10) {
        this.f1312s = i10;
        requestLayout();
    }

    public void setTitleMarginEnd(int i10) {
        this.f1310q = i10;
        requestLayout();
    }

    public void setTitleMarginStart(int i10) {
        this.f1309p = i10;
        requestLayout();
    }

    public void setTitleMarginTop(int i10) {
        this.f1311r = i10;
        requestLayout();
    }

    public void setTitleTextColor(int i10) {
        setTitleTextColor(ColorStateList.valueOf(i10));
    }

    public boolean v() {
        f fVar = this.M;
        if (fVar != null && fVar.f1325b != null) {
            return true;
        }
        return false;
    }

    public boolean w() {
        ActionMenuView actionMenuView = this.f1294a;
        if (actionMenuView != null && actionMenuView.F()) {
            return true;
        }
        return false;
    }

    public void x(int i10) {
        getMenuInflater().inflate(i10, getMenu());
    }

    public void y() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        G();
    }

    /* loaded from: classes.dex */
    public static class g extends a.C0013a {

        /* renamed from: b  reason: collision with root package name */
        int f1327b;

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1327b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public g(int i10, int i11) {
            super(i10, i11);
            this.f1327b = 0;
            this.f668a = 8388627;
        }

        public g(g gVar) {
            super((a.C0013a) gVar);
            this.f1327b = 0;
            this.f1327b = gVar.f1327b;
        }

        public g(a.C0013a c0013a) {
            super(c0013a);
            this.f1327b = 0;
        }

        public g(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1327b = 0;
            a(marginLayoutParams);
        }

        public g(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1327b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1316w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new d0.z(new Runnable() { // from class: androidx.appcompat.widget.g1
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.y();
            }
        });
        this.H = new ArrayList();
        this.J = new a();
        this.T = new b();
        f1 u10 = f1.u(getContext(), attributeSet, h.j.f16599d3, i10, 0);
        d0.p0.S(this, context, h.j.f16599d3, attributeSet, u10.q(), i10, 0);
        this.f1305l = u10.m(h.j.F3, 0);
        this.f1306m = u10.m(h.j.f16694w3, 0);
        this.f1316w = u10.k(h.j.f16604e3, this.f1316w);
        this.f1307n = u10.k(h.j.f16609f3, 48);
        int d10 = u10.d(h.j.f16709z3, 0);
        d10 = u10.r(h.j.E3) ? u10.d(h.j.E3, d10) : d10;
        this.f1312s = d10;
        this.f1311r = d10;
        this.f1310q = d10;
        this.f1309p = d10;
        int d11 = u10.d(h.j.C3, -1);
        if (d11 >= 0) {
            this.f1309p = d11;
        }
        int d12 = u10.d(h.j.B3, -1);
        if (d12 >= 0) {
            this.f1310q = d12;
        }
        int d13 = u10.d(h.j.D3, -1);
        if (d13 >= 0) {
            this.f1311r = d13;
        }
        int d14 = u10.d(h.j.A3, -1);
        if (d14 >= 0) {
            this.f1312s = d14;
        }
        this.f1308o = u10.e(h.j.f16664q3, -1);
        int d15 = u10.d(h.j.f16644m3, Integer.MIN_VALUE);
        int d16 = u10.d(h.j.f16624i3, Integer.MIN_VALUE);
        int e10 = u10.e(h.j.f16634k3, 0);
        int e11 = u10.e(h.j.f16639l3, 0);
        h();
        this.f1313t.e(e10, e11);
        if (d15 != Integer.MIN_VALUE || d16 != Integer.MIN_VALUE) {
            this.f1313t.g(d15, d16);
        }
        this.f1314u = u10.d(h.j.f16649n3, Integer.MIN_VALUE);
        this.f1315v = u10.d(h.j.f16629j3, Integer.MIN_VALUE);
        this.f1299f = u10.f(h.j.f16619h3);
        this.f1300g = u10.o(h.j.f16614g3);
        CharSequence o10 = u10.o(h.j.f16704y3);
        if (!TextUtils.isEmpty(o10)) {
            setTitle(o10);
        }
        CharSequence o11 = u10.o(h.j.f16689v3);
        if (!TextUtils.isEmpty(o11)) {
            setSubtitle(o11);
        }
        this.f1303j = getContext();
        setPopupTheme(u10.m(h.j.f16684u3, 0));
        Drawable f10 = u10.f(h.j.f16679t3);
        if (f10 != null) {
            setNavigationIcon(f10);
        }
        CharSequence o12 = u10.o(h.j.f16674s3);
        if (!TextUtils.isEmpty(o12)) {
            setNavigationContentDescription(o12);
        }
        Drawable f11 = u10.f(h.j.f16654o3);
        if (f11 != null) {
            setLogo(f11);
        }
        CharSequence o13 = u10.o(h.j.f16659p3);
        if (!TextUtils.isEmpty(o13)) {
            setLogoDescription(o13);
        }
        if (u10.r(h.j.G3)) {
            setTitleTextColor(u10.c(h.j.G3));
        }
        if (u10.r(h.j.f16699x3)) {
            setSubtitleTextColor(u10.c(h.j.f16699x3));
        }
        if (u10.r(h.j.f16669r3)) {
            x(u10.m(h.j.f16669r3, 0));
        }
        u10.v();
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageButton imageButton = this.f1301h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            this.f1301h.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f1301h;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.f1299f);
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            i();
            if (!z(this.f1298e)) {
                c(this.f1298e, true);
            }
        } else {
            ImageView imageView = this.f1298e;
            if (imageView != null && z(imageView)) {
                removeView(this.f1298e);
                this.E.remove(this.f1298e);
            }
        }
        ImageView imageView2 = this.f1298e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageView imageView = this.f1298e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            l();
        }
        ImageButton imageButton = this.f1297d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            k1.a(this.f1297d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            l();
            if (!z(this.f1297d)) {
                c(this.f1297d, true);
            }
        } else {
            ImageButton imageButton = this.f1297d;
            if (imageButton != null && z(imageButton)) {
                removeView(this.f1297d);
                this.E.remove(this.f1297d);
            }
        }
        ImageButton imageButton2 = this.f1297d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1296c == null) {
                Context context = getContext();
                d0 d0Var = new d0(context);
                this.f1296c = d0Var;
                d0Var.setSingleLine();
                this.f1296c.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1306m;
                if (i10 != 0) {
                    this.f1296c.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f1296c.setTextColor(colorStateList);
                }
            }
            if (!z(this.f1296c)) {
                c(this.f1296c, true);
            }
        } else {
            TextView textView = this.f1296c;
            if (textView != null && z(textView)) {
                removeView(this.f1296c);
                this.E.remove(this.f1296c);
            }
        }
        TextView textView2 = this.f1296c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1318y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f1296c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1295b == null) {
                Context context = getContext();
                d0 d0Var = new d0(context);
                this.f1295b = d0Var;
                d0Var.setSingleLine();
                this.f1295b.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1305l;
                if (i10 != 0) {
                    this.f1295b.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.f1319z;
                if (colorStateList != null) {
                    this.f1295b.setTextColor(colorStateList);
                }
            }
            if (!z(this.f1295b)) {
                c(this.f1295b, true);
            }
        } else {
            TextView textView = this.f1295b;
            if (textView != null && z(textView)) {
                removeView(this.f1295b);
                this.E.remove(this.f1295b);
            }
        }
        TextView textView2 = this.f1295b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1317x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f1319z = colorStateList;
        TextView textView = this.f1295b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* loaded from: classes.dex */
    public static class i extends h0.a {
        public static final Parcelable.Creator<i> CREATOR = new a();

        /* renamed from: c  reason: collision with root package name */
        int f1328c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1329d;

        /* loaded from: classes.dex */
        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public i createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new i(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public i[] newArray(int i10) {
                return new i[i10];
            }
        }

        public i(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1328c = parcel.readInt();
            this.f1329d = parcel.readInt() != 0;
        }

        @Override // h0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f1328c);
            parcel.writeInt(this.f1329d ? 1 : 0);
        }

        public i(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
