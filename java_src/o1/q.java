package o1;

import android.webkit.WebSettings;
import androidx.webkit.internal.a;
import androidx.webkit.internal.k0;
import androidx.webkit.internal.k1;
import androidx.webkit.internal.l1;
import androidx.webkit.internal.m1;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class q {
    private static k1 a(WebSettings webSettings) {
        return m1.c().f(webSettings);
    }

    public static int b(WebSettings webSettings) {
        a.c cVar = l1.f3574d;
        if (cVar.c()) {
            return androidx.webkit.internal.c.f(webSettings);
        }
        if (cVar.d()) {
            return a(webSettings).a();
        }
        throw l1.a();
    }

    public static boolean c(WebSettings webSettings) {
        if (l1.Y.d()) {
            return a(webSettings).b();
        }
        throw l1.a();
    }

    public static int d(WebSettings webSettings) {
        a.h hVar = l1.S;
        if (hVar.c()) {
            return k0.a(webSettings);
        }
        if (hVar.d()) {
            return a(webSettings).c();
        }
        throw l1.a();
    }

    public static int e(WebSettings webSettings) {
        if (l1.T.d()) {
            return a(webSettings).c();
        }
        throw l1.a();
    }

    public static boolean f(WebSettings webSettings) {
        a.b bVar = l1.f3570b;
        if (bVar.c()) {
            return androidx.webkit.internal.b.g(webSettings);
        }
        if (bVar.d()) {
            return a(webSettings).d();
        }
        throw l1.a();
    }

    public static Set g(WebSettings webSettings) {
        if (l1.f3569a0.d()) {
            return a(webSettings).e();
        }
        throw l1.a();
    }

    public static boolean h(WebSettings webSettings) {
        a.e eVar = l1.f3572c;
        if (eVar.c()) {
            return androidx.webkit.internal.i.b(webSettings);
        }
        if (eVar.d()) {
            return a(webSettings).f();
        }
        throw l1.a();
    }

    public static boolean i(WebSettings webSettings) {
        if (l1.P.d()) {
            return a(webSettings).g();
        }
        throw l1.a();
    }

    public static void j(WebSettings webSettings, boolean z10) {
        if (l1.P.d()) {
            a(webSettings).h(z10);
            return;
        }
        throw l1.a();
    }

    public static void k(WebSettings webSettings, int i10) {
        a.c cVar = l1.f3574d;
        if (cVar.c()) {
            androidx.webkit.internal.c.o(webSettings, i10);
        } else if (cVar.d()) {
            a(webSettings).i(i10);
        } else {
            throw l1.a();
        }
    }

    public static void l(WebSettings webSettings, boolean z10) {
        if (l1.Y.d()) {
            a(webSettings).j(z10);
            return;
        }
        throw l1.a();
    }

    public static void m(WebSettings webSettings, int i10) {
        a.h hVar = l1.S;
        if (hVar.c()) {
            k0.d(webSettings, i10);
        } else if (hVar.d()) {
            a(webSettings).k(i10);
        } else {
            throw l1.a();
        }
    }

    public static void n(WebSettings webSettings, int i10) {
        if (l1.T.d()) {
            a(webSettings).l(i10);
            return;
        }
        throw l1.a();
    }

    public static void o(WebSettings webSettings, boolean z10) {
        a.b bVar = l1.f3570b;
        if (bVar.c()) {
            androidx.webkit.internal.b.k(webSettings, z10);
        } else if (bVar.d()) {
            a(webSettings).m(z10);
        } else {
            throw l1.a();
        }
    }

    public static void p(WebSettings webSettings, Set set) {
        if (l1.f3569a0.d()) {
            a(webSettings).n(set);
            return;
        }
        throw l1.a();
    }

    public static void q(WebSettings webSettings, boolean z10) {
        a.e eVar = l1.f3572c;
        if (eVar.c()) {
            androidx.webkit.internal.i.e(webSettings, z10);
        } else if (eVar.d()) {
            a(webSettings).o(z10);
        } else {
            throw l1.a();
        }
    }
}
