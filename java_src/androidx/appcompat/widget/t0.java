package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class t0 implements androidx.appcompat.view.menu.p {
    private static Method G;
    private static Method H;
    private Runnable A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    /* renamed from: a  reason: collision with root package name */
    private Context f1660a;

    /* renamed from: b  reason: collision with root package name */
    private ListAdapter f1661b;

    /* renamed from: c  reason: collision with root package name */
    p0 f1662c;

    /* renamed from: d  reason: collision with root package name */
    private int f1663d;

    /* renamed from: e  reason: collision with root package name */
    private int f1664e;

    /* renamed from: f  reason: collision with root package name */
    private int f1665f;

    /* renamed from: g  reason: collision with root package name */
    private int f1666g;

    /* renamed from: h  reason: collision with root package name */
    private int f1667h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1668i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1669j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f1670k;

    /* renamed from: l  reason: collision with root package name */
    private int f1671l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f1672m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1673n;

    /* renamed from: o  reason: collision with root package name */
    int f1674o;

    /* renamed from: p  reason: collision with root package name */
    private View f1675p;

    /* renamed from: q  reason: collision with root package name */
    private int f1676q;

    /* renamed from: r  reason: collision with root package name */
    private DataSetObserver f1677r;

    /* renamed from: s  reason: collision with root package name */
    private View f1678s;

    /* renamed from: t  reason: collision with root package name */
    private Drawable f1679t;

    /* renamed from: u  reason: collision with root package name */
    private AdapterView.OnItemClickListener f1680u;

    /* renamed from: v  reason: collision with root package name */
    private AdapterView.OnItemSelectedListener f1681v;

    /* renamed from: w  reason: collision with root package name */
    final i f1682w;

    /* renamed from: x  reason: collision with root package name */
    private final h f1683x;

    /* renamed from: y  reason: collision with root package name */
    private final g f1684y;

    /* renamed from: z  reason: collision with root package name */
    private final e f1685z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View s10 = t0.this.s();
            if (s10 != null && s10.getWindowToken() != null) {
                t0.this.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            p0 p0Var;
            if (i10 != -1 && (p0Var = t0.this.f1662c) != null) {
                p0Var.setListSelectionHidden(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static int a(PopupWindow popupWindow, View view, int i10, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i10, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {
        static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.q();
        }
    }

    /* loaded from: classes.dex */
    private class f extends DataSetObserver {
        f() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (t0.this.a()) {
                t0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            t0.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements AbsListView.OnScrollListener {
        g() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 == 1 && !t0.this.v() && t0.this.F.getContentView() != null) {
                t0 t0Var = t0.this;
                t0Var.B.removeCallbacks(t0Var.f1682w);
                t0.this.f1682w.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class h implements View.OnTouchListener {
        h() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = t0.this.F) != null && popupWindow.isShowing() && x10 >= 0 && x10 < t0.this.F.getWidth() && y10 >= 0 && y10 < t0.this.F.getHeight()) {
                t0 t0Var = t0.this;
                t0Var.B.postDelayed(t0Var.f1682w, 250L);
                return false;
            } else if (action == 1) {
                t0 t0Var2 = t0.this;
                t0Var2.B.removeCallbacks(t0Var2.f1682w);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0 p0Var = t0.this.f1662c;
            if (p0Var != null && d0.p0.E(p0Var) && t0.this.f1662c.getCount() > t0.this.f1662c.getChildCount()) {
                int childCount = t0.this.f1662c.getChildCount();
                t0 t0Var = t0.this;
                if (childCount <= t0Var.f1674o) {
                    t0Var.F.setInputMethodMode(2);
                    t0.this.show();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                H = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public t0(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    private void I(boolean z10) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = G;
            if (method != null) {
                try {
                    method.invoke(this.F, Boolean.valueOf(z10));
                    return;
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        d.b(this.F, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int d() {
        int i10;
        int i11;
        int makeMeasureSpec;
        int i12;
        boolean z10 = true;
        if (this.f1662c == null) {
            Context context = this.f1660a;
            this.A = new a();
            p0 r10 = r(context, !this.E);
            this.f1662c = r10;
            Drawable drawable = this.f1679t;
            if (drawable != null) {
                r10.setSelector(drawable);
            }
            this.f1662c.setAdapter(this.f1661b);
            this.f1662c.setOnItemClickListener(this.f1680u);
            this.f1662c.setFocusable(true);
            this.f1662c.setFocusableInTouchMode(true);
            this.f1662c.setOnItemSelectedListener(new b());
            this.f1662c.setOnScrollListener(this.f1684y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1681v;
            if (onItemSelectedListener != null) {
                this.f1662c.setOnItemSelectedListener(onItemSelectedListener);
            }
            p0 p0Var = this.f1662c;
            View view = this.f1675p;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i13 = this.f1676q;
                if (i13 != 0) {
                    if (i13 != 1) {
                        Log.e("ListPopupWindow", "Invalid hint position " + this.f1676q);
                    } else {
                        linearLayout.addView(p0Var, layoutParams);
                        linearLayout.addView(view);
                    }
                } else {
                    linearLayout.addView(view);
                    linearLayout.addView(p0Var, layoutParams);
                }
                int i14 = this.f1664e;
                if (i14 >= 0) {
                    i12 = Integer.MIN_VALUE;
                } else {
                    i14 = 0;
                    i12 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i14, i12), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i10 = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                p0Var = linearLayout;
            } else {
                i10 = 0;
            }
            this.F.setContentView(p0Var);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.F.getContentView();
            View view2 = this.f1675p;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i10 = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i10 = 0;
            }
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i15 = rect.top;
            i11 = rect.bottom + i15;
            if (!this.f1668i) {
                this.f1666g = -i15;
            }
        } else {
            this.C.setEmpty();
            i11 = 0;
        }
        if (this.F.getInputMethodMode() != 2) {
            z10 = false;
        }
        int t10 = t(s(), this.f1666g, z10);
        if (!this.f1672m && this.f1663d != -1) {
            int i16 = this.f1664e;
            if (i16 != -2) {
                if (i16 != -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16, 1073741824);
                } else {
                    int i17 = this.f1660a.getResources().getDisplayMetrics().widthPixels;
                    Rect rect2 = this.C;
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect2.left + rect2.right), 1073741824);
                }
            } else {
                int i18 = this.f1660a.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.C;
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i18 - (rect3.left + rect3.right), Integer.MIN_VALUE);
            }
            int d10 = this.f1662c.d(makeMeasureSpec, 0, -1, t10 - i10, -1);
            if (d10 > 0) {
                i10 += i11 + this.f1662c.getPaddingTop() + this.f1662c.getPaddingBottom();
            }
            return d10 + i10;
        }
        return t10 + i11;
    }

    private int t(View view, int i10, boolean z10) {
        return c.a(this.F, view, i10, z10);
    }

    private void x() {
        View view = this.f1675p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1675p);
            }
        }
    }

    public void A(int i10) {
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            this.f1664e = rect.left + rect.right + i10;
            return;
        }
        L(i10);
    }

    public void B(int i10) {
        this.f1671l = i10;
    }

    public void C(Rect rect) {
        Rect rect2;
        if (rect != null) {
            rect2 = new Rect(rect);
        } else {
            rect2 = null;
        }
        this.D = rect2;
    }

    public void D(int i10) {
        this.F.setInputMethodMode(i10);
    }

    public void E(boolean z10) {
        this.E = z10;
        this.F.setFocusable(z10);
    }

    public void F(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void G(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1680u = onItemClickListener;
    }

    public void H(boolean z10) {
        this.f1670k = true;
        this.f1669j = z10;
    }

    public void J(int i10) {
        this.f1676q = i10;
    }

    public void K(int i10) {
        p0 p0Var = this.f1662c;
        if (a() && p0Var != null) {
            p0Var.setListSelectionHidden(false);
            p0Var.setSelection(i10);
            if (p0Var.getChoiceMode() != 0) {
                p0Var.setItemChecked(i10, true);
            }
        }
    }

    public void L(int i10) {
        this.f1664e = i10;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.F.isShowing();
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.F.dismiss();
        x();
        this.F.setContentView(null);
        this.f1662c = null;
        this.B.removeCallbacks(this.f1682w);
    }

    public void e(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public int f() {
        return this.f1665f;
    }

    public void g(int i10) {
        this.f1665f = i10;
    }

    public Drawable i() {
        return this.F.getBackground();
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        return this.f1662c;
    }

    public void l(int i10) {
        this.f1666g = i10;
        this.f1668i = true;
    }

    public int o() {
        if (!this.f1668i) {
            return 0;
        }
        return this.f1666g;
    }

    public void p(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1677r;
        if (dataSetObserver == null) {
            this.f1677r = new f();
        } else {
            ListAdapter listAdapter2 = this.f1661b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1661b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1677r);
        }
        p0 p0Var = this.f1662c;
        if (p0Var != null) {
            p0Var.setAdapter(this.f1661b);
        }
    }

    public void q() {
        p0 p0Var = this.f1662c;
        if (p0Var != null) {
            p0Var.setListSelectionHidden(true);
            p0Var.requestLayout();
        }
    }

    p0 r(Context context, boolean z10) {
        return new p0(context, z10);
    }

    public View s() {
        return this.f1678s;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        boolean z10;
        int i10;
        int i11;
        int i12;
        int i13;
        int d10 = d();
        boolean v10 = v();
        androidx.core.widget.h.b(this.F, this.f1667h);
        boolean z11 = true;
        if (this.F.isShowing()) {
            if (!d0.p0.E(s())) {
                return;
            }
            int i14 = this.f1664e;
            if (i14 == -1) {
                i14 = -1;
            } else if (i14 == -2) {
                i14 = s().getWidth();
            }
            int i15 = this.f1663d;
            if (i15 == -1) {
                if (!v10) {
                    d10 = -1;
                }
                if (v10) {
                    PopupWindow popupWindow = this.F;
                    if (this.f1664e == -1) {
                        i13 = -1;
                    } else {
                        i13 = 0;
                    }
                    popupWindow.setWidth(i13);
                    this.F.setHeight(0);
                } else {
                    PopupWindow popupWindow2 = this.F;
                    if (this.f1664e == -1) {
                        i12 = -1;
                    } else {
                        i12 = 0;
                    }
                    popupWindow2.setWidth(i12);
                    this.F.setHeight(-1);
                }
            } else if (i15 != -2) {
                d10 = i15;
            }
            PopupWindow popupWindow3 = this.F;
            if (this.f1673n || this.f1672m) {
                z11 = false;
            }
            popupWindow3.setOutsideTouchable(z11);
            PopupWindow popupWindow4 = this.F;
            View s10 = s();
            int i16 = this.f1665f;
            int i17 = this.f1666g;
            if (i14 < 0) {
                i10 = -1;
            } else {
                i10 = i14;
            }
            if (d10 < 0) {
                i11 = -1;
            } else {
                i11 = d10;
            }
            popupWindow4.update(s10, i16, i17, i10, i11);
            return;
        }
        int i18 = this.f1664e;
        if (i18 == -1) {
            i18 = -1;
        } else if (i18 == -2) {
            i18 = s().getWidth();
        }
        int i19 = this.f1663d;
        if (i19 == -1) {
            d10 = -1;
        } else if (i19 != -2) {
            d10 = i19;
        }
        this.F.setWidth(i18);
        this.F.setHeight(d10);
        I(true);
        PopupWindow popupWindow5 = this.F;
        if (!this.f1673n && !this.f1672m) {
            z10 = true;
        } else {
            z10 = false;
        }
        popupWindow5.setOutsideTouchable(z10);
        this.F.setTouchInterceptor(this.f1683x);
        if (this.f1670k) {
            androidx.core.widget.h.a(this.F, this.f1669j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = H;
            if (method != null) {
                try {
                    method.invoke(this.F, this.D);
                } catch (Exception e10) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e10);
                }
            }
        } else {
            d.a(this.F, this.D);
        }
        androidx.core.widget.h.c(this.F, s(), this.f1665f, this.f1666g, this.f1671l);
        this.f1662c.setSelection(-1);
        if (!this.E || this.f1662c.isInTouchMode()) {
            q();
        }
        if (!this.E) {
            this.B.post(this.f1685z);
        }
    }

    public int u() {
        return this.f1664e;
    }

    public boolean v() {
        if (this.F.getInputMethodMode() == 2) {
            return true;
        }
        return false;
    }

    public boolean w() {
        return this.E;
    }

    public void y(View view) {
        this.f1678s = view;
    }

    public void z(int i10) {
        this.F.setAnimationStyle(i10);
    }

    public t0(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f1663d = -2;
        this.f1664e = -2;
        this.f1667h = 1002;
        this.f1671l = 0;
        this.f1672m = false;
        this.f1673n = false;
        this.f1674o = Integer.MAX_VALUE;
        this.f1676q = 0;
        this.f1682w = new i();
        this.f1683x = new h();
        this.f1684y = new g();
        this.f1685z = new e();
        this.C = new Rect();
        this.f1660a = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.f16637l1, i10, i11);
        this.f1665f = obtainStyledAttributes.getDimensionPixelOffset(h.j.f16642m1, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(h.j.f16647n1, 0);
        this.f1666g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1668i = true;
        }
        obtainStyledAttributes.recycle();
        t tVar = new t(context, attributeSet, i10, i11);
        this.F = tVar;
        tVar.setInputMethodMode(1);
    }
}
