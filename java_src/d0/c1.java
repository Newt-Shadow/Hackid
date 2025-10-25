package d0;

import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes.dex */
public class c1 {

    /* renamed from: b  reason: collision with root package name */
    public static final c1 f14288b;

    /* renamed from: a  reason: collision with root package name */
    private final k f14289a;

    /* loaded from: classes.dex */
    private static class d extends c {
        d() {
        }

        d(c1 c1Var) {
            super(c1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final c1 f14298a;

        /* renamed from: b  reason: collision with root package name */
        v.b[] f14299b;

        e() {
            this(new c1((c1) null));
        }

        protected final void a() {
            v.b[] bVarArr = this.f14299b;
            if (bVarArr != null) {
                v.b bVar = bVarArr[l.d(1)];
                v.b bVar2 = this.f14299b[l.d(2)];
                if (bVar2 == null) {
                    bVar2 = this.f14298a.f(2);
                }
                if (bVar == null) {
                    bVar = this.f14298a.f(1);
                }
                f(v.b.a(bVar, bVar2));
                v.b bVar3 = this.f14299b[l.d(16)];
                if (bVar3 != null) {
                    e(bVar3);
                }
                v.b bVar4 = this.f14299b[l.d(32)];
                if (bVar4 != null) {
                    c(bVar4);
                }
                v.b bVar5 = this.f14299b[l.d(64)];
                if (bVar5 != null) {
                    g(bVar5);
                }
            }
        }

        abstract c1 b();

        void c(v.b bVar) {
        }

        abstract void d(v.b bVar);

        void e(v.b bVar) {
        }

        abstract void f(v.b bVar);

        void g(v.b bVar) {
        }

        e(c1 c1Var) {
            this.f14298a = c1Var;
        }
    }

    /* loaded from: classes.dex */
    private static class h extends g {
        h(c1 c1Var, WindowInsets windowInsets) {
            super(c1Var, windowInsets);
        }

        @Override // d0.c1.k
        c1 a() {
            WindowInsets consumeDisplayCutout;
            consumeDisplayCutout = this.f14305c.consumeDisplayCutout();
            return c1.v(consumeDisplayCutout);
        }

        @Override // d0.c1.f, d0.c1.k
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (Objects.equals(this.f14305c, hVar.f14305c) && Objects.equals(this.f14309g, hVar.f14309g)) {
                return true;
            }
            return false;
        }

        @Override // d0.c1.k
        r f() {
            DisplayCutout displayCutout;
            displayCutout = this.f14305c.getDisplayCutout();
            return r.e(displayCutout);
        }

        @Override // d0.c1.k
        public int hashCode() {
            return this.f14305c.hashCode();
        }

        h(c1 c1Var, h hVar) {
            super(c1Var, hVar);
        }
    }

    /* loaded from: classes.dex */
    private static class j extends i {

        /* renamed from: q  reason: collision with root package name */
        static final c1 f14314q;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            f14314q = c1.v(windowInsets);
        }

        j(c1 c1Var, WindowInsets windowInsets) {
            super(c1Var, windowInsets);
        }

        @Override // d0.c1.f, d0.c1.k
        final void d(View view) {
        }

        @Override // d0.c1.f, d0.c1.k
        public v.b g(int i10) {
            Insets insets;
            insets = this.f14305c.getInsets(m.a(i10));
            return v.b.d(insets);
        }

        @Override // d0.c1.f, d0.c1.k
        public boolean p(int i10) {
            boolean isVisible;
            isVisible = this.f14305c.isVisible(m.a(i10));
            return isVisible;
        }

        j(c1 c1Var, j jVar) {
            super(c1Var, jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class k {

        /* renamed from: b  reason: collision with root package name */
        static final c1 f14315b = new a().a().a().b().c();

        /* renamed from: a  reason: collision with root package name */
        final c1 f14316a;

        k(c1 c1Var) {
            this.f14316a = c1Var;
        }

        c1 a() {
            return this.f14316a;
        }

        c1 b() {
            return this.f14316a;
        }

        c1 c() {
            return this.f14316a;
        }

        void d(View view) {
        }

        void e(c1 c1Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            if (o() == kVar.o() && n() == kVar.n() && c0.b.a(k(), kVar.k()) && c0.b.a(i(), kVar.i()) && c0.b.a(f(), kVar.f())) {
                return true;
            }
            return false;
        }

        r f() {
            return null;
        }

        v.b g(int i10) {
            return v.b.f31126e;
        }

        v.b h() {
            return k();
        }

        public int hashCode() {
            return c0.b.b(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
        }

        v.b i() {
            return v.b.f31126e;
        }

        v.b j() {
            return k();
        }

        v.b k() {
            return v.b.f31126e;
        }

        v.b l() {
            return k();
        }

        c1 m(int i10, int i11, int i12, int i13) {
            return f14315b;
        }

        boolean n() {
            return false;
        }

        boolean o() {
            return false;
        }

        boolean p(int i10) {
            return true;
        }

        public void q(v.b[] bVarArr) {
        }

        void r(v.b bVar) {
        }

        void s(c1 c1Var) {
        }

        public void t(v.b bVar) {
        }
    }

    /* loaded from: classes.dex */
    public static final class l {
        public static int a() {
            return 4;
        }

        public static int b() {
            return 128;
        }

        public static int c() {
            return 8;
        }

        static int d(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return 1;
                }
                if (i10 == 4) {
                    return 2;
                }
                if (i10 != 8) {
                    if (i10 == 16) {
                        return 4;
                    }
                    if (i10 != 32) {
                        if (i10 != 64) {
                            if (i10 != 128) {
                                if (i10 == 256) {
                                    return 8;
                                }
                                throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 3;
            }
            return 0;
        }

        public static int e() {
            return 32;
        }

        public static int f() {
            return 2;
        }

        public static int g() {
            return 1;
        }

        public static int h() {
            return 16;
        }

        public static int i() {
            return 64;
        }
    }

    /* loaded from: classes.dex */
    private static final class m {
        static int a(int i10) {
            int statusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 256; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= statusBars;
                }
            }
            return i11;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f14288b = j.f14314q;
        } else {
            f14288b = k.f14315b;
        }
    }

    private c1(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.f14289a = new j(this, windowInsets);
        } else if (i10 >= 29) {
            this.f14289a = new i(this, windowInsets);
        } else if (i10 >= 28) {
            this.f14289a = new h(this, windowInsets);
        } else {
            this.f14289a = new g(this, windowInsets);
        }
    }

    static v.b m(v.b bVar, int i10, int i11, int i12, int i13) {
        int max = Math.max(0, bVar.f31127a - i10);
        int max2 = Math.max(0, bVar.f31128b - i11);
        int max3 = Math.max(0, bVar.f31129c - i12);
        int max4 = Math.max(0, bVar.f31130d - i13);
        if (max == i10 && max2 == i11 && max3 == i12 && max4 == i13) {
            return bVar;
        }
        return v.b.b(max, max2, max3, max4);
    }

    public static c1 v(WindowInsets windowInsets) {
        return w(windowInsets, null);
    }

    public static c1 w(WindowInsets windowInsets, View view) {
        c1 c1Var = new c1((WindowInsets) c0.f.g(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            c1Var.s(p0.x(view));
            c1Var.d(view.getRootView());
        }
        return c1Var;
    }

    public c1 a() {
        return this.f14289a.a();
    }

    public c1 b() {
        return this.f14289a.b();
    }

    public c1 c() {
        return this.f14289a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(View view) {
        this.f14289a.d(view);
    }

    public r e() {
        return this.f14289a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        return c0.b.a(this.f14289a, ((c1) obj).f14289a);
    }

    public v.b f(int i10) {
        return this.f14289a.g(i10);
    }

    public v.b g() {
        return this.f14289a.i();
    }

    public int h() {
        return this.f14289a.k().f31130d;
    }

    public int hashCode() {
        k kVar = this.f14289a;
        if (kVar == null) {
            return 0;
        }
        return kVar.hashCode();
    }

    public int i() {
        return this.f14289a.k().f31127a;
    }

    public int j() {
        return this.f14289a.k().f31129c;
    }

    public int k() {
        return this.f14289a.k().f31128b;
    }

    public c1 l(int i10, int i11, int i12, int i13) {
        return this.f14289a.m(i10, i11, i12, i13);
    }

    public boolean n() {
        return this.f14289a.n();
    }

    public boolean o(int i10) {
        return this.f14289a.p(i10);
    }

    public c1 p(int i10, int i11, int i12, int i13) {
        return new a(this).c(v.b.b(i10, i11, i12, i13)).a();
    }

    void q(v.b[] bVarArr) {
        this.f14289a.q(bVarArr);
    }

    void r(v.b bVar) {
        this.f14289a.r(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(c1 c1Var) {
        this.f14289a.s(c1Var);
    }

    void t(v.b bVar) {
        this.f14289a.t(bVar);
    }

    public WindowInsets u() {
        k kVar = this.f14289a;
        if (kVar instanceof f) {
            return ((f) kVar).f14305c;
        }
        return null;
    }

    /* loaded from: classes.dex */
    private static class b extends e {

        /* renamed from: e  reason: collision with root package name */
        private static Field f14291e = null;

        /* renamed from: f  reason: collision with root package name */
        private static boolean f14292f = false;

        /* renamed from: g  reason: collision with root package name */
        private static Constructor f14293g = null;

        /* renamed from: h  reason: collision with root package name */
        private static boolean f14294h = false;

        /* renamed from: c  reason: collision with root package name */
        private WindowInsets f14295c;

        /* renamed from: d  reason: collision with root package name */
        private v.b f14296d;

        b() {
            this.f14295c = h();
        }

        private static WindowInsets h() {
            if (!f14292f) {
                try {
                    f14291e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e10) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e10);
                }
                f14292f = true;
            }
            Field field = f14291e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e11) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e11);
                }
            }
            if (!f14294h) {
                try {
                    f14293g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e12) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e12);
                }
                f14294h = true;
            }
            Constructor constructor = f14293g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e13) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e13);
                }
            }
            return null;
        }

        @Override // d0.c1.e
        c1 b() {
            a();
            c1 v10 = c1.v(this.f14295c);
            v10.q(this.f14299b);
            v10.t(this.f14296d);
            return v10;
        }

        @Override // d0.c1.e
        void d(v.b bVar) {
            this.f14296d = bVar;
        }

        @Override // d0.c1.e
        void f(v.b bVar) {
            WindowInsets windowInsets = this.f14295c;
            if (windowInsets != null) {
                this.f14295c = windowInsets.replaceSystemWindowInsets(bVar.f31127a, bVar.f31128b, bVar.f31129c, bVar.f31130d);
            }
        }

        b(c1 c1Var) {
            super(c1Var);
            this.f14295c = c1Var.u();
        }
    }

    /* loaded from: classes.dex */
    private static class c extends e {

        /* renamed from: c  reason: collision with root package name */
        final WindowInsets.Builder f14297c;

        c() {
            this.f14297c = j1.a();
        }

        @Override // d0.c1.e
        c1 b() {
            WindowInsets build;
            a();
            build = this.f14297c.build();
            c1 v10 = c1.v(build);
            v10.q(this.f14299b);
            return v10;
        }

        @Override // d0.c1.e
        void c(v.b bVar) {
            this.f14297c.setMandatorySystemGestureInsets(bVar.e());
        }

        @Override // d0.c1.e
        void d(v.b bVar) {
            this.f14297c.setStableInsets(bVar.e());
        }

        @Override // d0.c1.e
        void e(v.b bVar) {
            this.f14297c.setSystemGestureInsets(bVar.e());
        }

        @Override // d0.c1.e
        void f(v.b bVar) {
            this.f14297c.setSystemWindowInsets(bVar.e());
        }

        @Override // d0.c1.e
        void g(v.b bVar) {
            this.f14297c.setTappableElementInsets(bVar.e());
        }

        c(c1 c1Var) {
            super(c1Var);
            WindowInsets.Builder a10;
            WindowInsets u10 = c1Var.u();
            if (u10 != null) {
                a10 = k1.a(u10);
            } else {
                a10 = j1.a();
            }
            this.f14297c = a10;
        }
    }

    /* loaded from: classes.dex */
    private static class g extends f {

        /* renamed from: m  reason: collision with root package name */
        private v.b f14310m;

        g(c1 c1Var, WindowInsets windowInsets) {
            super(c1Var, windowInsets);
            this.f14310m = null;
        }

        @Override // d0.c1.k
        c1 b() {
            return c1.v(this.f14305c.consumeStableInsets());
        }

        @Override // d0.c1.k
        c1 c() {
            return c1.v(this.f14305c.consumeSystemWindowInsets());
        }

        @Override // d0.c1.k
        final v.b i() {
            if (this.f14310m == null) {
                this.f14310m = v.b.b(this.f14305c.getStableInsetLeft(), this.f14305c.getStableInsetTop(), this.f14305c.getStableInsetRight(), this.f14305c.getStableInsetBottom());
            }
            return this.f14310m;
        }

        @Override // d0.c1.k
        boolean n() {
            return this.f14305c.isConsumed();
        }

        @Override // d0.c1.k
        public void t(v.b bVar) {
            this.f14310m = bVar;
        }

        g(c1 c1Var, g gVar) {
            super(c1Var, gVar);
            this.f14310m = null;
            this.f14310m = gVar.f14310m;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f extends k {

        /* renamed from: h  reason: collision with root package name */
        private static boolean f14300h = false;

        /* renamed from: i  reason: collision with root package name */
        private static Method f14301i;

        /* renamed from: j  reason: collision with root package name */
        private static Class f14302j;

        /* renamed from: k  reason: collision with root package name */
        private static Field f14303k;

        /* renamed from: l  reason: collision with root package name */
        private static Field f14304l;

        /* renamed from: c  reason: collision with root package name */
        final WindowInsets f14305c;

        /* renamed from: d  reason: collision with root package name */
        private v.b[] f14306d;

        /* renamed from: e  reason: collision with root package name */
        private v.b f14307e;

        /* renamed from: f  reason: collision with root package name */
        private c1 f14308f;

        /* renamed from: g  reason: collision with root package name */
        v.b f14309g;

        f(c1 c1Var, WindowInsets windowInsets) {
            super(c1Var);
            this.f14307e = null;
            this.f14305c = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        private v.b u(int i10, boolean z10) {
            v.b bVar = v.b.f31126e;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    bVar = v.b.a(bVar, v(i11, z10));
                }
            }
            return bVar;
        }

        private v.b w() {
            c1 c1Var = this.f14308f;
            if (c1Var != null) {
                return c1Var.g();
            }
            return v.b.f31126e;
        }

        private v.b x(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f14300h) {
                    z();
                }
                Method method = f14301i;
                if (method != null && f14302j != null && f14303k != null) {
                    try {
                        Object invoke = method.invoke(view, new Object[0]);
                        if (invoke == null) {
                            Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                            return null;
                        }
                        Rect rect = (Rect) f14303k.get(f14304l.get(invoke));
                        if (rect == null) {
                            return null;
                        }
                        return v.b.c(rect);
                    } catch (ReflectiveOperationException e10) {
                        Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
                    }
                }
                return null;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        private static void z() {
            try {
                f14301i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f14302j = cls;
                f14303k = cls.getDeclaredField("mVisibleInsets");
                f14304l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f14303k.setAccessible(true);
                f14304l.setAccessible(true);
            } catch (ReflectiveOperationException e10) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
            }
            f14300h = true;
        }

        @Override // d0.c1.k
        void d(View view) {
            v.b x10 = x(view);
            if (x10 == null) {
                x10 = v.b.f31126e;
            }
            r(x10);
        }

        @Override // d0.c1.k
        void e(c1 c1Var) {
            c1Var.s(this.f14308f);
            c1Var.r(this.f14309g);
        }

        @Override // d0.c1.k
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.f14309g, ((f) obj).f14309g);
        }

        @Override // d0.c1.k
        public v.b g(int i10) {
            return u(i10, false);
        }

        @Override // d0.c1.k
        final v.b k() {
            if (this.f14307e == null) {
                this.f14307e = v.b.b(this.f14305c.getSystemWindowInsetLeft(), this.f14305c.getSystemWindowInsetTop(), this.f14305c.getSystemWindowInsetRight(), this.f14305c.getSystemWindowInsetBottom());
            }
            return this.f14307e;
        }

        @Override // d0.c1.k
        c1 m(int i10, int i11, int i12, int i13) {
            a aVar = new a(c1.v(this.f14305c));
            aVar.c(c1.m(k(), i10, i11, i12, i13));
            aVar.b(c1.m(i(), i10, i11, i12, i13));
            return aVar.a();
        }

        @Override // d0.c1.k
        boolean o() {
            return this.f14305c.isRound();
        }

        @Override // d0.c1.k
        @SuppressLint({"WrongConstant"})
        boolean p(int i10) {
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0 && !y(i11)) {
                    return false;
                }
            }
            return true;
        }

        @Override // d0.c1.k
        public void q(v.b[] bVarArr) {
            this.f14306d = bVarArr;
        }

        @Override // d0.c1.k
        void r(v.b bVar) {
            this.f14309g = bVar;
        }

        @Override // d0.c1.k
        void s(c1 c1Var) {
            this.f14308f = c1Var;
        }

        protected v.b v(int i10, boolean z10) {
            int i11;
            r f10;
            if (i10 != 1) {
                v.b bVar = null;
                if (i10 != 2) {
                    if (i10 != 8) {
                        if (i10 != 16) {
                            if (i10 != 32) {
                                if (i10 != 64) {
                                    if (i10 != 128) {
                                        return v.b.f31126e;
                                    }
                                    c1 c1Var = this.f14308f;
                                    if (c1Var != null) {
                                        f10 = c1Var.e();
                                    } else {
                                        f10 = f();
                                    }
                                    if (f10 != null) {
                                        return v.b.b(f10.b(), f10.d(), f10.c(), f10.a());
                                    }
                                    return v.b.f31126e;
                                }
                                return l();
                            }
                            return h();
                        }
                        return j();
                    }
                    v.b[] bVarArr = this.f14306d;
                    if (bVarArr != null) {
                        bVar = bVarArr[l.d(8)];
                    }
                    if (bVar != null) {
                        return bVar;
                    }
                    v.b k10 = k();
                    v.b w10 = w();
                    int i12 = k10.f31130d;
                    if (i12 > w10.f31130d) {
                        return v.b.b(0, 0, 0, i12);
                    }
                    v.b bVar2 = this.f14309g;
                    if (bVar2 != null && !bVar2.equals(v.b.f31126e) && (i11 = this.f14309g.f31130d) > w10.f31130d) {
                        return v.b.b(0, 0, 0, i11);
                    }
                    return v.b.f31126e;
                } else if (z10) {
                    v.b w11 = w();
                    v.b i13 = i();
                    return v.b.b(Math.max(w11.f31127a, i13.f31127a), 0, Math.max(w11.f31129c, i13.f31129c), Math.max(w11.f31130d, i13.f31130d));
                } else {
                    v.b k11 = k();
                    c1 c1Var2 = this.f14308f;
                    if (c1Var2 != null) {
                        bVar = c1Var2.g();
                    }
                    int i14 = k11.f31130d;
                    if (bVar != null) {
                        i14 = Math.min(i14, bVar.f31130d);
                    }
                    return v.b.b(k11.f31127a, 0, k11.f31129c, i14);
                }
            } else if (z10) {
                return v.b.b(0, Math.max(w().f31128b, k().f31128b), 0, 0);
            } else {
                return v.b.b(0, k().f31128b, 0, 0);
            }
        }

        protected boolean y(int i10) {
            if (i10 != 1 && i10 != 2) {
                if (i10 == 4) {
                    return false;
                }
                if (i10 != 8 && i10 != 128) {
                    return true;
                }
            }
            return !v(i10, false).equals(v.b.f31126e);
        }

        f(c1 c1Var, f fVar) {
            this(c1Var, new WindowInsets(fVar.f14305c));
        }
    }

    /* loaded from: classes.dex */
    private static class i extends h {

        /* renamed from: n  reason: collision with root package name */
        private v.b f14311n;

        /* renamed from: o  reason: collision with root package name */
        private v.b f14312o;

        /* renamed from: p  reason: collision with root package name */
        private v.b f14313p;

        i(c1 c1Var, WindowInsets windowInsets) {
            super(c1Var, windowInsets);
            this.f14311n = null;
            this.f14312o = null;
            this.f14313p = null;
        }

        @Override // d0.c1.k
        v.b h() {
            Insets mandatorySystemGestureInsets;
            if (this.f14312o == null) {
                mandatorySystemGestureInsets = this.f14305c.getMandatorySystemGestureInsets();
                this.f14312o = v.b.d(mandatorySystemGestureInsets);
            }
            return this.f14312o;
        }

        @Override // d0.c1.k
        v.b j() {
            Insets systemGestureInsets;
            if (this.f14311n == null) {
                systemGestureInsets = this.f14305c.getSystemGestureInsets();
                this.f14311n = v.b.d(systemGestureInsets);
            }
            return this.f14311n;
        }

        @Override // d0.c1.k
        v.b l() {
            Insets tappableElementInsets;
            if (this.f14313p == null) {
                tappableElementInsets = this.f14305c.getTappableElementInsets();
                this.f14313p = v.b.d(tappableElementInsets);
            }
            return this.f14313p;
        }

        @Override // d0.c1.f, d0.c1.k
        c1 m(int i10, int i11, int i12, int i13) {
            WindowInsets inset;
            inset = this.f14305c.inset(i10, i11, i12, i13);
            return c1.v(inset);
        }

        @Override // d0.c1.g, d0.c1.k
        public void t(v.b bVar) {
        }

        i(c1 c1Var, i iVar) {
            super(c1Var, iVar);
            this.f14311n = null;
            this.f14312o = null;
            this.f14313p = null;
        }
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final e f14290a;

        public a() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f14290a = new d();
            } else if (i10 >= 29) {
                this.f14290a = new c();
            } else {
                this.f14290a = new b();
            }
        }

        public c1 a() {
            return this.f14290a.b();
        }

        public a b(v.b bVar) {
            this.f14290a.d(bVar);
            return this;
        }

        public a c(v.b bVar) {
            this.f14290a.f(bVar);
            return this;
        }

        public a(c1 c1Var) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f14290a = new d(c1Var);
            } else if (i10 >= 29) {
                this.f14290a = new c(c1Var);
            } else {
                this.f14290a = new b(c1Var);
            }
        }
    }

    public c1(c1 c1Var) {
        if (c1Var != null) {
            k kVar = c1Var.f14289a;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30 && (kVar instanceof j)) {
                this.f14289a = new j(this, (j) kVar);
            } else if (i10 >= 29 && (kVar instanceof i)) {
                this.f14289a = new i(this, (i) kVar);
            } else if (i10 >= 28 && (kVar instanceof h)) {
                this.f14289a = new h(this, (h) kVar);
            } else if (kVar instanceof g) {
                this.f14289a = new g(this, (g) kVar);
            } else if (kVar instanceof f) {
                this.f14289a = new f(this, (f) kVar);
            } else {
                this.f14289a = new k(this);
            }
            kVar.e(this);
            return;
        }
        this.f14289a = new k(this);
    }
}
