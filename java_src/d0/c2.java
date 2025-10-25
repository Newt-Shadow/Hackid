package d0;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
/* loaded from: classes.dex */
public final class c2 {

    /* renamed from: a  reason: collision with root package name */
    private final g f14317a;

    /* loaded from: classes.dex */
    private static class a extends g {

        /* renamed from: a  reason: collision with root package name */
        protected final Window f14318a;

        /* renamed from: b  reason: collision with root package name */
        private final l0 f14319b;

        a(Window window, l0 l0Var) {
            this.f14318a = window;
            this.f14319b = l0Var;
        }

        protected void c(int i10) {
            View decorView = this.f14318a.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void d(int i10) {
            this.f14318a.addFlags(i10);
        }

        protected void e(int i10) {
            View decorView = this.f14318a.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        protected void f(int i10) {
            this.f14318a.clearFlags(i10);
        }
    }

    /* loaded from: classes.dex */
    private static class b extends a {
        b(Window window, l0 l0Var) {
            super(window, l0Var);
        }

        @Override // d0.c2.g
        public void b(boolean z10) {
            if (z10) {
                f(67108864);
                d(Integer.MIN_VALUE);
                c(8192);
                return;
            }
            e(8192);
        }
    }

    /* loaded from: classes.dex */
    private static class c extends b {
        c(Window window, l0 l0Var) {
            super(window, l0Var);
        }

        @Override // d0.c2.g
        public void a(boolean z10) {
            if (z10) {
                f(134217728);
                d(Integer.MIN_VALUE);
                c(16);
                return;
            }
            e(16);
        }
    }

    /* loaded from: classes.dex */
    private static class e extends d {
        e(Window window, c2 c2Var, l0 l0Var) {
            super(window, c2Var, l0Var);
        }
    }

    /* loaded from: classes.dex */
    private static class f extends e {
        f(Window window, c2 c2Var, l0 l0Var) {
            super(window, c2Var, l0Var);
        }
    }

    /* loaded from: classes.dex */
    private static class g {
        g() {
        }

        public void a(boolean z10) {
        }

        public abstract void b(boolean z10);
    }

    public c2(Window window, View view) {
        l0 l0Var = new l0(view);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 35) {
            this.f14317a = new f(window, this, l0Var);
        } else if (i10 >= 30) {
            this.f14317a = new d(window, this, l0Var);
        } else if (i10 >= 26) {
            this.f14317a = new c(window, l0Var);
        } else {
            this.f14317a = new b(window, l0Var);
        }
    }

    public void a(boolean z10) {
        this.f14317a.a(z10);
    }

    public void b(boolean z10) {
        this.f14317a.b(z10);
    }

    /* loaded from: classes.dex */
    private static class d extends g {

        /* renamed from: a  reason: collision with root package name */
        final c2 f14320a;

        /* renamed from: b  reason: collision with root package name */
        final WindowInsetsController f14321b;

        /* renamed from: c  reason: collision with root package name */
        final l0 f14322c;

        /* renamed from: d  reason: collision with root package name */
        private final r.i f14323d;

        /* renamed from: e  reason: collision with root package name */
        protected Window f14324e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        d(android.view.Window r2, d0.c2 r3, d0.l0 r4) {
            /*
                r1 = this;
                android.view.WindowInsetsController r0 = d0.d2.a(r2)
                r1.<init>(r0, r3, r4)
                r1.f14324e = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: d0.c2.d.<init>(android.view.Window, d0.c2, d0.l0):void");
        }

        @Override // d0.c2.g
        public void a(boolean z10) {
            if (z10) {
                if (this.f14324e != null) {
                    c(16);
                }
                this.f14321b.setSystemBarsAppearance(16, 16);
                return;
            }
            if (this.f14324e != null) {
                d(16);
            }
            this.f14321b.setSystemBarsAppearance(0, 16);
        }

        @Override // d0.c2.g
        public void b(boolean z10) {
            if (z10) {
                if (this.f14324e != null) {
                    c(8192);
                }
                this.f14321b.setSystemBarsAppearance(8, 8);
                return;
            }
            if (this.f14324e != null) {
                d(8192);
            }
            this.f14321b.setSystemBarsAppearance(0, 8);
        }

        protected void c(int i10) {
            View decorView = this.f14324e.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void d(int i10) {
            View decorView = this.f14324e.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        d(WindowInsetsController windowInsetsController, c2 c2Var, l0 l0Var) {
            this.f14323d = new r.i();
            this.f14321b = windowInsetsController;
            this.f14320a = c2Var;
            this.f14322c = l0Var;
        }
    }
}
