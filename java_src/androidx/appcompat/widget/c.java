package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import d0.b;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends androidx.appcompat.view.menu.b implements b.a {
    RunnableC0017c A;
    private b B;
    final f C;
    int D;

    /* renamed from: k  reason: collision with root package name */
    d f1401k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f1402l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f1403m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1404n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f1405o;

    /* renamed from: p  reason: collision with root package name */
    private int f1406p;

    /* renamed from: q  reason: collision with root package name */
    private int f1407q;

    /* renamed from: r  reason: collision with root package name */
    private int f1408r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1409s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f1410t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f1411u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f1412v;

    /* renamed from: w  reason: collision with root package name */
    private int f1413w;

    /* renamed from: x  reason: collision with root package name */
    private final SparseBooleanArray f1414x;

    /* renamed from: y  reason: collision with root package name */
    e f1415y;

    /* renamed from: z  reason: collision with root package name */
    a f1416z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends androidx.appcompat.view.menu.l {
        public a(Context context, androidx.appcompat.view.menu.r rVar, View view) {
            super(context, rVar, view, false, h.a.f16449i);
            if (!((androidx.appcompat.view.menu.i) rVar.getItem()).l()) {
                View view2 = c.this.f1401k;
                f(view2 == null ? (View) ((androidx.appcompat.view.menu.b) c.this).f972i : view2);
            }
            j(c.this.C);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            c cVar = c.this;
            cVar.f1416z = null;
            cVar.D = 0;
            super.e();
        }
    }

    /* loaded from: classes.dex */
    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.p a() {
            a aVar = c.this.f1416z;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0017c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private e f1419a;

        public RunnableC0017c(e eVar) {
            this.f1419a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) c.this).f966c != null) {
                ((androidx.appcompat.view.menu.b) c.this).f966c.d();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) c.this).f972i;
            if (view != null && view.getWindowToken() != null && this.f1419a.m()) {
                c.this.f1415y = this.f1419a;
            }
            c.this.A = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends r implements ActionMenuView.a {

        /* loaded from: classes.dex */
        class a extends r0 {

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ c f1422j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, c cVar) {
                super(view);
                this.f1422j = cVar;
            }

            @Override // androidx.appcompat.widget.r0
            public androidx.appcompat.view.menu.p b() {
                e eVar = c.this.f1415y;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.widget.r0
            public boolean c() {
                c.this.K();
                return true;
            }

            @Override // androidx.appcompat.widget.r0
            public boolean d() {
                c cVar = c.this;
                if (cVar.A != null) {
                    return false;
                }
                cVar.B();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, h.a.f16448h);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            k1.a(this, getContentDescription());
            setOnTouchListener(new a(this, c.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.K();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                w.a.d(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends androidx.appcompat.view.menu.l {
        public e(Context context, androidx.appcompat.view.menu.g gVar, View view, boolean z10) {
            super(context, gVar, view, z10, h.a.f16449i);
            h(8388613);
            j(c.this.C);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            if (((androidx.appcompat.view.menu.b) c.this).f966c != null) {
                ((androidx.appcompat.view.menu.b) c.this).f966c.close();
            }
            c.this.f1415y = null;
            super.e();
        }
    }

    /* loaded from: classes.dex */
    private class f implements m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            if (gVar instanceof androidx.appcompat.view.menu.r) {
                gVar.D().e(false);
            }
            m.a m10 = c.this.m();
            if (m10 != null) {
                m10.b(gVar, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            if (gVar == ((androidx.appcompat.view.menu.b) c.this).f966c) {
                return false;
            }
            c.this.D = ((androidx.appcompat.view.menu.r) gVar).getItem().getItemId();
            m.a m10 = c.this.m();
            if (m10 == null) {
                return false;
            }
            return m10.c(gVar);
        }
    }

    public c(Context context) {
        super(context, h.g.f16543c, h.g.f16542b);
        this.f1414x = new SparseBooleanArray();
        this.C = new f();
    }

    private View z(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f972i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof n.a) && ((n.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public Drawable A() {
        d dVar = this.f1401k;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f1403m) {
            return this.f1402l;
        }
        return null;
    }

    public boolean B() {
        androidx.appcompat.view.menu.n nVar;
        RunnableC0017c runnableC0017c = this.A;
        if (runnableC0017c != null && (nVar = this.f972i) != null) {
            ((View) nVar).removeCallbacks(runnableC0017c);
            this.A = null;
            return true;
        }
        e eVar = this.f1415y;
        if (eVar != null) {
            eVar.b();
            return true;
        }
        return false;
    }

    public boolean C() {
        a aVar = this.f1416z;
        if (aVar != null) {
            aVar.b();
            return true;
        }
        return false;
    }

    public boolean D() {
        if (this.A == null && !E()) {
            return false;
        }
        return true;
    }

    public boolean E() {
        e eVar = this.f1415y;
        if (eVar != null && eVar.d()) {
            return true;
        }
        return false;
    }

    public void F(Configuration configuration) {
        if (!this.f1409s) {
            this.f1408r = androidx.appcompat.view.a.b(this.f965b).d();
        }
        androidx.appcompat.view.menu.g gVar = this.f966c;
        if (gVar != null) {
            gVar.K(true);
        }
    }

    public void G(boolean z10) {
        this.f1412v = z10;
    }

    public void H(ActionMenuView actionMenuView) {
        this.f972i = actionMenuView;
        actionMenuView.b(this.f966c);
    }

    public void I(Drawable drawable) {
        d dVar = this.f1401k;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
            return;
        }
        this.f1403m = true;
        this.f1402l = drawable;
    }

    public void J(boolean z10) {
        this.f1404n = z10;
        this.f1405o = true;
    }

    public boolean K() {
        androidx.appcompat.view.menu.g gVar;
        if (this.f1404n && !E() && (gVar = this.f966c) != null && this.f972i != null && this.A == null && !gVar.z().isEmpty()) {
            RunnableC0017c runnableC0017c = new RunnableC0017c(new e(this.f965b, this.f966c, this.f1401k, true));
            this.A = runnableC0017c;
            ((View) this.f972i).post(runnableC0017c);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        y();
        super.b(gVar, z10);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        ArrayList arrayList;
        super.c(z10);
        ((View) this.f972i).requestLayout();
        androidx.appcompat.view.menu.g gVar = this.f966c;
        boolean z11 = false;
        if (gVar != null) {
            ArrayList s10 = gVar.s();
            int size = s10.size();
            for (int i10 = 0; i10 < size; i10++) {
                d0.b b10 = ((androidx.appcompat.view.menu.i) s10.get(i10)).b();
                if (b10 != null) {
                    b10.h(this);
                }
            }
        }
        androidx.appcompat.view.menu.g gVar2 = this.f966c;
        if (gVar2 != null) {
            arrayList = gVar2.z();
        } else {
            arrayList = null;
        }
        if (this.f1404n && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z11 = !((androidx.appcompat.view.menu.i) arrayList.get(0)).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f1401k == null) {
                this.f1401k = new d(this.f964a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1401k.getParent();
            if (viewGroup != this.f972i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1401k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f972i;
                actionMenuView.addView(this.f1401k, actionMenuView.D());
            }
        } else {
            d dVar = this.f1401k;
            if (dVar != null) {
                ViewParent parent = dVar.getParent();
                androidx.appcompat.view.menu.n nVar = this.f972i;
                if (parent == nVar) {
                    ((ViewGroup) nVar).removeView(this.f1401k);
                }
            }
        }
        ((ActionMenuView) this.f972i).setOverflowReserved(this.f1404n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        ArrayList arrayList;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int i13;
        boolean z11;
        boolean z12;
        c cVar = this;
        androidx.appcompat.view.menu.g gVar = cVar.f966c;
        View view = null;
        ?? r32 = 0;
        if (gVar != null) {
            arrayList = gVar.E();
            i10 = arrayList.size();
        } else {
            arrayList = null;
            i10 = 0;
        }
        int i14 = cVar.f1408r;
        int i15 = cVar.f1407q;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) cVar.f972i;
        boolean z13 = false;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < i10; i18++) {
            androidx.appcompat.view.menu.i iVar = (androidx.appcompat.view.menu.i) arrayList.get(i18);
            if (iVar.o()) {
                i16++;
            } else if (iVar.n()) {
                i17++;
            } else {
                z13 = true;
            }
            if (cVar.f1412v && iVar.isActionViewExpanded()) {
                i14 = 0;
            }
        }
        if (cVar.f1404n && (z13 || i17 + i16 > i14)) {
            i14--;
        }
        int i19 = i14 - i16;
        SparseBooleanArray sparseBooleanArray = cVar.f1414x;
        sparseBooleanArray.clear();
        if (cVar.f1410t) {
            int i20 = cVar.f1413w;
            i12 = i15 / i20;
            i11 = i20 + ((i15 % i20) / i12);
        } else {
            i11 = 0;
            i12 = 0;
        }
        int i21 = 0;
        int i22 = 0;
        while (i21 < i10) {
            androidx.appcompat.view.menu.i iVar2 = (androidx.appcompat.view.menu.i) arrayList.get(i21);
            if (iVar2.o()) {
                View n10 = cVar.n(iVar2, view, viewGroup);
                if (cVar.f1410t) {
                    i12 -= ActionMenuView.J(n10, i11, i12, makeMeasureSpec, r32);
                } else {
                    n10.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = n10.getMeasuredWidth();
                i15 -= measuredWidth;
                if (i22 == 0) {
                    i22 = measuredWidth;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                iVar2.u(true);
                z10 = r32;
                i13 = i10;
            } else if (iVar2.n()) {
                int groupId2 = iVar2.getGroupId();
                boolean z14 = sparseBooleanArray.get(groupId2);
                if ((i19 > 0 || z14) && i15 > 0 && (!cVar.f1410t || i12 > 0)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z15 = z11;
                i13 = i10;
                if (z11) {
                    View n11 = cVar.n(iVar2, null, viewGroup);
                    if (cVar.f1410t) {
                        int J = ActionMenuView.J(n11, i11, i12, makeMeasureSpec, 0);
                        i12 -= J;
                        if (J == 0) {
                            z15 = false;
                        }
                    } else {
                        n11.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z16 = z15;
                    int measuredWidth2 = n11.getMeasuredWidth();
                    i15 -= measuredWidth2;
                    if (i22 == 0) {
                        i22 = measuredWidth2;
                    }
                    if (!cVar.f1410t ? i15 + i22 > 0 : i15 >= 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    z11 = z16 & z12;
                }
                if (z11 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z14) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i23 = 0; i23 < i21; i23++) {
                        androidx.appcompat.view.menu.i iVar3 = (androidx.appcompat.view.menu.i) arrayList.get(i23);
                        if (iVar3.getGroupId() == groupId2) {
                            if (iVar3.l()) {
                                i19++;
                            }
                            iVar3.u(false);
                        }
                    }
                }
                if (z11) {
                    i19--;
                }
                iVar2.u(z11);
                z10 = false;
            } else {
                z10 = r32;
                i13 = i10;
                iVar2.u(z10);
            }
            i21++;
            r32 = z10;
            i10 = i13;
            view = null;
            cVar = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void h(Context context, androidx.appcompat.view.menu.g gVar) {
        super.h(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a b10 = androidx.appcompat.view.a.b(context);
        if (!this.f1405o) {
            this.f1404n = b10.f();
        }
        if (!this.f1411u) {
            this.f1406p = b10.c();
        }
        if (!this.f1409s) {
            this.f1408r = b10.d();
        }
        int i10 = this.f1406p;
        if (this.f1404n) {
            if (this.f1401k == null) {
                d dVar = new d(this.f964a);
                this.f1401k = dVar;
                if (this.f1403m) {
                    dVar.setImageDrawable(this.f1402l);
                    this.f1402l = null;
                    this.f1403m = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1401k.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i10 -= this.f1401k.getMeasuredWidth();
        } else {
            this.f1401k = null;
        }
        this.f1407q = i10;
        this.f1413w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public boolean i(androidx.appcompat.view.menu.r rVar) {
        boolean z10 = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.r rVar2 = rVar;
        while (rVar2.f0() != this.f966c) {
            rVar2 = (androidx.appcompat.view.menu.r) rVar2.f0();
        }
        View z11 = z(rVar2.getItem());
        if (z11 == null) {
            return false;
        }
        this.D = rVar.getItem().getItemId();
        int size = rVar.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
            i10++;
        }
        a aVar = new a(this.f965b, rVar, z11);
        this.f1416z = aVar;
        aVar.g(z10);
        this.f1416z.k();
        super.i(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public void j(androidx.appcompat.view.menu.i iVar, n.a aVar) {
        aVar.d(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f972i);
        if (this.B == null) {
            this.B = new b();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean l(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.f1401k) {
            return false;
        }
        return super.l(viewGroup, i10);
    }

    @Override // androidx.appcompat.view.menu.b
    public View n(androidx.appcompat.view.menu.i iVar, View view, ViewGroup viewGroup) {
        int i10;
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.j()) {
            actionView = super.n(iVar, view, viewGroup);
        }
        if (iVar.isActionViewExpanded()) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        actionView.setVisibility(i10);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.n o(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.n nVar = this.f972i;
        androidx.appcompat.view.menu.n o10 = super.o(viewGroup);
        if (nVar != o10) {
            ((ActionMenuView) o10).setPresenter(this);
        }
        return o10;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean q(int i10, androidx.appcompat.view.menu.i iVar) {
        return iVar.l();
    }

    public boolean y() {
        return B() | C();
    }
}
