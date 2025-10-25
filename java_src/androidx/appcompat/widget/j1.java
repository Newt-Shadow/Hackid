package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
/* loaded from: classes.dex */
public class j1 implements j0 {

    /* renamed from: a  reason: collision with root package name */
    Toolbar f1521a;

    /* renamed from: b  reason: collision with root package name */
    private int f1522b;

    /* renamed from: c  reason: collision with root package name */
    private View f1523c;

    /* renamed from: d  reason: collision with root package name */
    private View f1524d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f1525e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1526f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f1527g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1528h;

    /* renamed from: i  reason: collision with root package name */
    CharSequence f1529i;

    /* renamed from: j  reason: collision with root package name */
    private CharSequence f1530j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f1531k;

    /* renamed from: l  reason: collision with root package name */
    Window.Callback f1532l;

    /* renamed from: m  reason: collision with root package name */
    boolean f1533m;

    /* renamed from: n  reason: collision with root package name */
    private c f1534n;

    /* renamed from: o  reason: collision with root package name */
    private int f1535o;

    /* renamed from: p  reason: collision with root package name */
    private int f1536p;

    /* renamed from: q  reason: collision with root package name */
    private Drawable f1537q;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final androidx.appcompat.view.menu.a f1538a;

        a() {
            this.f1538a = new androidx.appcompat.view.menu.a(j1.this.f1521a.getContext(), 0, 16908332, 0, 0, j1.this.f1529i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1 j1Var = j1.this;
            Window.Callback callback = j1Var.f1532l;
            if (callback != null && j1Var.f1533m) {
                callback.onMenuItemSelected(0, this.f1538a);
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends d0.y0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1540a = false;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f1541b;

        b(int i10) {
            this.f1541b = i10;
        }

        @Override // d0.y0, d0.x0
        public void a(View view) {
            this.f1540a = true;
        }

        @Override // d0.x0
        public void b(View view) {
            if (!this.f1540a) {
                j1.this.f1521a.setVisibility(this.f1541b);
            }
        }

        @Override // d0.y0, d0.x0
        public void c(View view) {
            j1.this.f1521a.setVisibility(0);
        }
    }

    public j1(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, h.h.f16561a, h.e.f16502n);
    }

    private void G(CharSequence charSequence) {
        this.f1529i = charSequence;
        if ((this.f1522b & 8) != 0) {
            this.f1521a.setTitle(charSequence);
            if (this.f1528h) {
                d0.p0.W(this.f1521a.getRootView(), charSequence);
            }
        }
    }

    private void H() {
        if ((this.f1522b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1531k)) {
                this.f1521a.setNavigationContentDescription(this.f1536p);
            } else {
                this.f1521a.setNavigationContentDescription(this.f1531k);
            }
        }
    }

    private void I() {
        if ((this.f1522b & 4) != 0) {
            Toolbar toolbar = this.f1521a;
            Drawable drawable = this.f1527g;
            if (drawable == null) {
                drawable = this.f1537q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1521a.setNavigationIcon((Drawable) null);
    }

    private void J() {
        Drawable drawable;
        int i10 = this.f1522b;
        if ((i10 & 2) != 0) {
            if ((i10 & 1) != 0) {
                drawable = this.f1526f;
                if (drawable == null) {
                    drawable = this.f1525e;
                }
            } else {
                drawable = this.f1525e;
            }
        } else {
            drawable = null;
        }
        this.f1521a.setLogo(drawable);
    }

    private int y() {
        if (this.f1521a.getNavigationIcon() != null) {
            this.f1537q = this.f1521a.getNavigationIcon();
            return 15;
        }
        return 11;
    }

    public void A(int i10) {
        if (i10 == this.f1536p) {
            return;
        }
        this.f1536p = i10;
        if (TextUtils.isEmpty(this.f1521a.getNavigationContentDescription())) {
            C(this.f1536p);
        }
    }

    public void B(Drawable drawable) {
        this.f1526f = drawable;
        J();
    }

    public void C(int i10) {
        String string;
        if (i10 == 0) {
            string = null;
        } else {
            string = getContext().getString(i10);
        }
        D(string);
    }

    public void D(CharSequence charSequence) {
        this.f1531k = charSequence;
        H();
    }

    public void E(Drawable drawable) {
        this.f1527g = drawable;
        I();
    }

    public void F(CharSequence charSequence) {
        this.f1530j = charSequence;
        if ((this.f1522b & 8) != 0) {
            this.f1521a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.j0
    public void a(Menu menu, m.a aVar) {
        if (this.f1534n == null) {
            c cVar = new c(this.f1521a.getContext());
            this.f1534n = cVar;
            cVar.p(h.f.f16521g);
        }
        this.f1534n.g(aVar);
        this.f1521a.K((androidx.appcompat.view.menu.g) menu, this.f1534n);
    }

    @Override // androidx.appcompat.widget.j0
    public boolean b() {
        return this.f1521a.B();
    }

    @Override // androidx.appcompat.widget.j0
    public void c() {
        this.f1533m = true;
    }

    @Override // androidx.appcompat.widget.j0
    public void collapseActionView() {
        this.f1521a.e();
    }

    @Override // androidx.appcompat.widget.j0
    public boolean d() {
        return this.f1521a.d();
    }

    @Override // androidx.appcompat.widget.j0
    public void e(Drawable drawable) {
        d0.p0.X(this.f1521a, drawable);
    }

    @Override // androidx.appcompat.widget.j0
    public boolean f() {
        return this.f1521a.A();
    }

    @Override // androidx.appcompat.widget.j0
    public boolean g() {
        return this.f1521a.w();
    }

    @Override // androidx.appcompat.widget.j0
    public Context getContext() {
        return this.f1521a.getContext();
    }

    @Override // androidx.appcompat.widget.j0
    public CharSequence getTitle() {
        return this.f1521a.getTitle();
    }

    @Override // androidx.appcompat.widget.j0
    public int getVisibility() {
        return this.f1521a.getVisibility();
    }

    @Override // androidx.appcompat.widget.j0
    public boolean h() {
        return this.f1521a.Q();
    }

    @Override // androidx.appcompat.widget.j0
    public void i() {
        this.f1521a.f();
    }

    @Override // androidx.appcompat.widget.j0
    public void j(z0 z0Var) {
        View view = this.f1523c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1521a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1523c);
            }
        }
        this.f1523c = z0Var;
    }

    @Override // androidx.appcompat.widget.j0
    public boolean k() {
        return this.f1521a.v();
    }

    @Override // androidx.appcompat.widget.j0
    public void l(int i10) {
        View view;
        int i11 = this.f1522b ^ i10;
        this.f1522b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    H();
                }
                I();
            }
            if ((i11 & 3) != 0) {
                J();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f1521a.setTitle(this.f1529i);
                    this.f1521a.setSubtitle(this.f1530j);
                } else {
                    this.f1521a.setTitle((CharSequence) null);
                    this.f1521a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) != 0 && (view = this.f1524d) != null) {
                if ((i10 & 16) != 0) {
                    this.f1521a.addView(view);
                } else {
                    this.f1521a.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.j0
    public Menu m() {
        return this.f1521a.getMenu();
    }

    @Override // androidx.appcompat.widget.j0
    public void n(int i10) {
        Drawable drawable;
        if (i10 != 0) {
            drawable = i.a.b(getContext(), i10);
        } else {
            drawable = null;
        }
        B(drawable);
    }

    @Override // androidx.appcompat.widget.j0
    public int o() {
        return this.f1535o;
    }

    @Override // androidx.appcompat.widget.j0
    public d0.w0 p(int i10, long j10) {
        float f10;
        d0.w0 c10 = d0.p0.c(this.f1521a);
        if (i10 == 0) {
            f10 = 1.0f;
        } else {
            f10 = 0.0f;
        }
        return c10.b(f10).f(j10).h(new b(i10));
    }

    @Override // androidx.appcompat.widget.j0
    public void q(m.a aVar, g.a aVar2) {
        this.f1521a.L(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.j0
    public void r(int i10) {
        this.f1521a.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.j0
    public ViewGroup s() {
        return this.f1521a;
    }

    @Override // androidx.appcompat.widget.j0
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? i.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.j0
    public void setTitle(CharSequence charSequence) {
        this.f1528h = true;
        G(charSequence);
    }

    @Override // androidx.appcompat.widget.j0
    public void setWindowCallback(Window.Callback callback) {
        this.f1532l = callback;
    }

    @Override // androidx.appcompat.widget.j0
    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f1528h) {
            G(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.j0
    public void t(boolean z10) {
    }

    @Override // androidx.appcompat.widget.j0
    public int u() {
        return this.f1522b;
    }

    @Override // androidx.appcompat.widget.j0
    public void v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.j0
    public void w() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.j0
    public void x(boolean z10) {
        this.f1521a.setCollapsible(z10);
    }

    public void z(View view) {
        View view2 = this.f1524d;
        if (view2 != null && (this.f1522b & 16) != 0) {
            this.f1521a.removeView(view2);
        }
        this.f1524d = view;
        if (view != null && (this.f1522b & 16) != 0) {
            this.f1521a.addView(view);
        }
    }

    public j1(Toolbar toolbar, boolean z10, int i10, int i11) {
        Drawable drawable;
        this.f1535o = 0;
        this.f1536p = 0;
        this.f1521a = toolbar;
        this.f1529i = toolbar.getTitle();
        this.f1530j = toolbar.getSubtitle();
        this.f1528h = this.f1529i != null;
        this.f1527g = toolbar.getNavigationIcon();
        f1 u10 = f1.u(toolbar.getContext(), null, h.j.f16580a, h.a.f16443c, 0);
        this.f1537q = u10.f(h.j.f16635l);
        if (z10) {
            CharSequence o10 = u10.o(h.j.f16665r);
            if (!TextUtils.isEmpty(o10)) {
                setTitle(o10);
            }
            CharSequence o11 = u10.o(h.j.f16655p);
            if (!TextUtils.isEmpty(o11)) {
                F(o11);
            }
            Drawable f10 = u10.f(h.j.f16645n);
            if (f10 != null) {
                B(f10);
            }
            Drawable f11 = u10.f(h.j.f16640m);
            if (f11 != null) {
                setIcon(f11);
            }
            if (this.f1527g == null && (drawable = this.f1537q) != null) {
                E(drawable);
            }
            l(u10.j(h.j.f16615h, 0));
            int m10 = u10.m(h.j.f16610g, 0);
            if (m10 != 0) {
                z(LayoutInflater.from(this.f1521a.getContext()).inflate(m10, (ViewGroup) this.f1521a, false));
                l(this.f1522b | 16);
            }
            int l10 = u10.l(h.j.f16625j, 0);
            if (l10 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1521a.getLayoutParams();
                layoutParams.height = l10;
                this.f1521a.setLayoutParams(layoutParams);
            }
            int d10 = u10.d(h.j.f16605f, -1);
            int d11 = u10.d(h.j.f16600e, -1);
            if (d10 >= 0 || d11 >= 0) {
                this.f1521a.J(Math.max(d10, 0), Math.max(d11, 0));
            }
            int m11 = u10.m(h.j.f16670s, 0);
            if (m11 != 0) {
                Toolbar toolbar2 = this.f1521a;
                toolbar2.N(toolbar2.getContext(), m11);
            }
            int m12 = u10.m(h.j.f16660q, 0);
            if (m12 != 0) {
                Toolbar toolbar3 = this.f1521a;
                toolbar3.M(toolbar3.getContext(), m12);
            }
            int m13 = u10.m(h.j.f16650o, 0);
            if (m13 != 0) {
                this.f1521a.setPopupTheme(m13);
            }
        } else {
            this.f1522b = y();
        }
        u10.v();
        A(i10);
        this.f1531k = this.f1521a.getNavigationContentDescription();
        this.f1521a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.j0
    public void setIcon(Drawable drawable) {
        this.f1525e = drawable;
        J();
    }
}
