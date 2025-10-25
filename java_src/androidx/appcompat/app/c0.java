package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.j0;
import d0.p0;
import d0.w0;
import d0.x0;
import d0.y0;
import d0.z0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class c0 extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator D = new AccelerateInterpolator();
    private static final Interpolator E = new DecelerateInterpolator();

    /* renamed from: a  reason: collision with root package name */
    Context f682a;

    /* renamed from: b  reason: collision with root package name */
    private Context f683b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f684c;

    /* renamed from: d  reason: collision with root package name */
    ActionBarOverlayLayout f685d;

    /* renamed from: e  reason: collision with root package name */
    ActionBarContainer f686e;

    /* renamed from: f  reason: collision with root package name */
    j0 f687f;

    /* renamed from: g  reason: collision with root package name */
    ActionBarContextView f688g;

    /* renamed from: h  reason: collision with root package name */
    View f689h;

    /* renamed from: k  reason: collision with root package name */
    private boolean f692k;

    /* renamed from: l  reason: collision with root package name */
    d f693l;

    /* renamed from: m  reason: collision with root package name */
    androidx.appcompat.view.b f694m;

    /* renamed from: n  reason: collision with root package name */
    b.a f695n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f696o;

    /* renamed from: q  reason: collision with root package name */
    private boolean f698q;

    /* renamed from: t  reason: collision with root package name */
    boolean f701t;

    /* renamed from: u  reason: collision with root package name */
    boolean f702u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f703v;

    /* renamed from: x  reason: collision with root package name */
    androidx.appcompat.view.h f705x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f706y;

    /* renamed from: z  reason: collision with root package name */
    boolean f707z;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f690i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private int f691j = -1;

    /* renamed from: p  reason: collision with root package name */
    private ArrayList f697p = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    private int f699r = 0;

    /* renamed from: s  reason: collision with root package name */
    boolean f700s = true;

    /* renamed from: w  reason: collision with root package name */
    private boolean f704w = true;
    final x0 A = new a();
    final x0 B = new b();
    final z0 C = new c();

    /* loaded from: classes.dex */
    class a extends y0 {
        a() {
        }

        @Override // d0.x0
        public void b(View view) {
            View view2;
            c0 c0Var = c0.this;
            if (c0Var.f700s && (view2 = c0Var.f689h) != null) {
                view2.setTranslationY(0.0f);
                c0.this.f686e.setTranslationY(0.0f);
            }
            c0.this.f686e.setVisibility(8);
            c0.this.f686e.setTransitioning(false);
            c0 c0Var2 = c0.this;
            c0Var2.f705x = null;
            c0Var2.D();
            ActionBarOverlayLayout actionBarOverlayLayout = c0.this.f685d;
            if (actionBarOverlayLayout != null) {
                p0.R(actionBarOverlayLayout);
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends y0 {
        b() {
        }

        @Override // d0.x0
        public void b(View view) {
            c0 c0Var = c0.this;
            c0Var.f705x = null;
            c0Var.f686e.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    class c implements z0 {
        c() {
        }

        @Override // d0.z0
        public void a(View view) {
            ((View) c0.this.f686e.getParent()).invalidate();
        }
    }

    /* loaded from: classes.dex */
    public class d extends androidx.appcompat.view.b implements g.a {

        /* renamed from: c  reason: collision with root package name */
        private final Context f711c;

        /* renamed from: d  reason: collision with root package name */
        private final androidx.appcompat.view.menu.g f712d;

        /* renamed from: e  reason: collision with root package name */
        private b.a f713e;

        /* renamed from: f  reason: collision with root package name */
        private WeakReference f714f;

        public d(Context context, b.a aVar) {
            this.f711c = context;
            this.f713e = aVar;
            androidx.appcompat.view.menu.g S = new androidx.appcompat.view.menu.g(context).S(1);
            this.f712d = S;
            S.R(this);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            b.a aVar = this.f713e;
            if (aVar != null) {
                return aVar.d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            if (this.f713e == null) {
                return;
            }
            k();
            c0.this.f688g.l();
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            c0 c0Var = c0.this;
            if (c0Var.f693l != this) {
                return;
            }
            if (!c0.C(c0Var.f701t, c0Var.f702u, false)) {
                c0 c0Var2 = c0.this;
                c0Var2.f694m = this;
                c0Var2.f695n = this.f713e;
            } else {
                this.f713e.a(this);
            }
            this.f713e = null;
            c0.this.B(false);
            c0.this.f688g.g();
            c0 c0Var3 = c0.this;
            c0Var3.f685d.setHideOnContentScrollEnabled(c0Var3.f707z);
            c0.this.f693l = null;
        }

        @Override // androidx.appcompat.view.b
        public View d() {
            WeakReference weakReference = this.f714f;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.b
        public Menu e() {
            return this.f712d;
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater f() {
            return new androidx.appcompat.view.g(this.f711c);
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return c0.this.f688g.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence i() {
            return c0.this.f688g.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public void k() {
            if (c0.this.f693l != this) {
                return;
            }
            this.f712d.e0();
            try {
                this.f713e.c(this, this.f712d);
            } finally {
                this.f712d.d0();
            }
        }

        @Override // androidx.appcompat.view.b
        public boolean l() {
            return c0.this.f688g.j();
        }

        @Override // androidx.appcompat.view.b
        public void m(View view) {
            c0.this.f688g.setCustomView(view);
            this.f714f = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.b
        public void n(int i10) {
            o(c0.this.f682a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.b
        public void o(CharSequence charSequence) {
            c0.this.f688g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void q(int i10) {
            r(c0.this.f682a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.b
        public void r(CharSequence charSequence) {
            c0.this.f688g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void s(boolean z10) {
            super.s(z10);
            c0.this.f688g.setTitleOptional(z10);
        }

        public boolean t() {
            this.f712d.e0();
            try {
                return this.f713e.b(this, this.f712d);
            } finally {
                this.f712d.d0();
            }
        }
    }

    public c0(Activity activity, boolean z10) {
        this.f684c = activity;
        View decorView = activity.getWindow().getDecorView();
        L(decorView);
        if (z10) {
            return;
        }
        this.f689h = decorView.findViewById(16908290);
    }

    static boolean C(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    private j0 G(View view) {
        String str;
        if (view instanceof j0) {
            return (j0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't make a decor toolbar out of ");
        if (view != null) {
            str = view.getClass().getSimpleName();
        } else {
            str = "null";
        }
        sb2.append(str);
        throw new IllegalStateException(sb2.toString());
    }

    private void K() {
        if (this.f703v) {
            this.f703v = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f685d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            U(false);
        }
    }

    private void L(View view) {
        boolean z10;
        boolean z11;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(h.f.f16530p);
        this.f685d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f687f = G(view.findViewById(h.f.f16515a));
        this.f688g = (ActionBarContextView) view.findViewById(h.f.f16520f);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(h.f.f16517c);
        this.f686e = actionBarContainer;
        j0 j0Var = this.f687f;
        if (j0Var != null && this.f688g != null && actionBarContainer != null) {
            this.f682a = j0Var.getContext();
            if ((this.f687f.u() & 4) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                this.f692k = true;
            }
            androidx.appcompat.view.a b10 = androidx.appcompat.view.a.b(this.f682a);
            if (!b10.a() && !z10) {
                z11 = false;
            } else {
                z11 = true;
            }
            R(z11);
            P(b10.e());
            TypedArray obtainStyledAttributes = this.f682a.obtainStyledAttributes(null, h.j.f16580a, h.a.f16443c, 0);
            if (obtainStyledAttributes.getBoolean(h.j.f16630k, false)) {
                Q(true);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(h.j.f16620i, 0);
            if (dimensionPixelSize != 0) {
                O(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }

    private void P(boolean z10) {
        boolean z11;
        boolean z12;
        this.f698q = z10;
        if (!z10) {
            this.f687f.j(null);
            this.f686e.setTabContainer(null);
        } else {
            this.f686e.setTabContainer(null);
            this.f687f.j(null);
        }
        boolean z13 = true;
        if (J() == 2) {
            z11 = true;
        } else {
            z11 = false;
        }
        j0 j0Var = this.f687f;
        if (!this.f698q && z11) {
            z12 = true;
        } else {
            z12 = false;
        }
        j0Var.x(z12);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f685d;
        if (this.f698q || !z11) {
            z13 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z13);
    }

    private boolean S() {
        return p0.F(this.f686e);
    }

    private void T() {
        if (!this.f703v) {
            this.f703v = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f685d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            U(false);
        }
    }

    private void U(boolean z10) {
        if (C(this.f701t, this.f702u, this.f703v)) {
            if (!this.f704w) {
                this.f704w = true;
                F(z10);
            }
        } else if (this.f704w) {
            this.f704w = false;
            E(z10);
        }
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b A(b.a aVar) {
        d dVar = this.f693l;
        if (dVar != null) {
            dVar.c();
        }
        this.f685d.setHideOnContentScrollEnabled(false);
        this.f688g.k();
        d dVar2 = new d(this.f688g.getContext(), aVar);
        if (dVar2.t()) {
            this.f693l = dVar2;
            dVar2.k();
            this.f688g.h(dVar2);
            B(true);
            return dVar2;
        }
        return null;
    }

    public void B(boolean z10) {
        w0 p10;
        w0 f10;
        if (z10) {
            T();
        } else {
            K();
        }
        if (S()) {
            if (z10) {
                f10 = this.f687f.p(4, 100L);
                p10 = this.f688g.f(0, 200L);
            } else {
                p10 = this.f687f.p(0, 200L);
                f10 = this.f688g.f(8, 100L);
            }
            androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
            hVar.d(f10, p10);
            hVar.h();
        } else if (z10) {
            this.f687f.r(4);
            this.f688g.setVisibility(0);
        } else {
            this.f687f.r(0);
            this.f688g.setVisibility(8);
        }
    }

    void D() {
        b.a aVar = this.f695n;
        if (aVar != null) {
            aVar.a(this.f694m);
            this.f694m = null;
            this.f695n = null;
        }
    }

    public void E(boolean z10) {
        View view;
        int[] iArr;
        androidx.appcompat.view.h hVar = this.f705x;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f699r == 0 && (this.f706y || z10)) {
            this.f686e.setAlpha(1.0f);
            this.f686e.setTransitioning(true);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            float f10 = -this.f686e.getHeight();
            if (z10) {
                this.f686e.getLocationInWindow(new int[]{0, 0});
                f10 -= iArr[1];
            }
            w0 m10 = p0.c(this.f686e).m(f10);
            m10.k(this.C);
            hVar2.c(m10);
            if (this.f700s && (view = this.f689h) != null) {
                hVar2.c(p0.c(view).m(f10));
            }
            hVar2.f(D);
            hVar2.e(250L);
            hVar2.g(this.A);
            this.f705x = hVar2;
            hVar2.h();
            return;
        }
        this.A.b(null);
    }

    public void F(boolean z10) {
        View view;
        View view2;
        int[] iArr;
        androidx.appcompat.view.h hVar = this.f705x;
        if (hVar != null) {
            hVar.a();
        }
        this.f686e.setVisibility(0);
        if (this.f699r == 0 && (this.f706y || z10)) {
            this.f686e.setTranslationY(0.0f);
            float f10 = -this.f686e.getHeight();
            if (z10) {
                this.f686e.getLocationInWindow(new int[]{0, 0});
                f10 -= iArr[1];
            }
            this.f686e.setTranslationY(f10);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            w0 m10 = p0.c(this.f686e).m(0.0f);
            m10.k(this.C);
            hVar2.c(m10);
            if (this.f700s && (view2 = this.f689h) != null) {
                view2.setTranslationY(f10);
                hVar2.c(p0.c(this.f689h).m(0.0f));
            }
            hVar2.f(E);
            hVar2.e(250L);
            hVar2.g(this.B);
            this.f705x = hVar2;
            hVar2.h();
        } else {
            this.f686e.setAlpha(1.0f);
            this.f686e.setTranslationY(0.0f);
            if (this.f700s && (view = this.f689h) != null) {
                view.setTranslationY(0.0f);
            }
            this.B.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f685d;
        if (actionBarOverlayLayout != null) {
            p0.R(actionBarOverlayLayout);
        }
    }

    public int H() {
        return this.f686e.getHeight();
    }

    public int I() {
        return this.f685d.getActionBarHideOffset();
    }

    public int J() {
        return this.f687f.o();
    }

    public void M(boolean z10) {
        int i10;
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        N(i10, 4);
    }

    public void N(int i10, int i11) {
        int u10 = this.f687f.u();
        if ((i11 & 4) != 0) {
            this.f692k = true;
        }
        this.f687f.l((i10 & i11) | ((~i11) & u10));
    }

    public void O(float f10) {
        p0.b0(this.f686e, f10);
    }

    public void Q(boolean z10) {
        if (z10 && !this.f685d.q()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f707z = z10;
        this.f685d.setHideOnContentScrollEnabled(z10);
    }

    public void R(boolean z10) {
        this.f687f.t(z10);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.f702u) {
            this.f702u = false;
            U(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c(boolean z10) {
        this.f700s = z10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
        if (!this.f702u) {
            this.f702u = true;
            U(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e() {
        androidx.appcompat.view.h hVar = this.f705x;
        if (hVar != null) {
            hVar.a();
            this.f705x = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f(int i10) {
        this.f699r = i10;
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        j0 j0Var = this.f687f;
        if (j0Var != null && j0Var.k()) {
            this.f687f.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f696o) {
            return;
        }
        this.f696o = z10;
        if (this.f697p.size() <= 0) {
            return;
        }
        android.support.v4.media.session.b.a(this.f697p.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f687f.u();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.f683b == null) {
            TypedValue typedValue = new TypedValue();
            this.f682a.getTheme().resolveAttribute(h.a.f16445e, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f683b = new ContextThemeWrapper(this.f682a, i10);
            } else {
                this.f683b = this.f682a;
            }
        }
        return this.f683b;
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        if (!this.f701t) {
            this.f701t = true;
            U(false);
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean n() {
        int H = H();
        if (this.f704w && (H == 0 || I() < H)) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.a
    public void o(Configuration configuration) {
        P(androidx.appcompat.view.a.b(this.f682a).e());
    }

    @Override // androidx.appcompat.app.a
    public boolean q(int i10, KeyEvent keyEvent) {
        Menu e10;
        int i11;
        d dVar = this.f693l;
        if (dVar == null || (e10 = dVar.e()) == null) {
            return false;
        }
        if (keyEvent != null) {
            i11 = keyEvent.getDeviceId();
        } else {
            i11 = -1;
        }
        boolean z10 = true;
        if (KeyCharacterMap.load(i11).getKeyboardType() == 1) {
            z10 = false;
        }
        e10.setQwertyMode(z10);
        return e10.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void t(Drawable drawable) {
        this.f686e.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void u(boolean z10) {
        if (!this.f692k) {
            M(z10);
        }
    }

    @Override // androidx.appcompat.app.a
    public void v(boolean z10) {
        int i10;
        if (z10) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        N(i10, 8);
    }

    @Override // androidx.appcompat.app.a
    public void w(boolean z10) {
        androidx.appcompat.view.h hVar;
        this.f706y = z10;
        if (!z10 && (hVar = this.f705x) != null) {
            hVar.a();
        }
    }

    @Override // androidx.appcompat.app.a
    public void x(CharSequence charSequence) {
        this.f687f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void y(CharSequence charSequence) {
        this.f687f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void z() {
        if (this.f701t) {
            this.f701t = false;
            U(false);
        }
    }

    public c0(Dialog dialog) {
        L(dialog.getWindow().getDecorView());
    }
}
