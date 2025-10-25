package androidx.webkit.internal;

import android.webkit.ServiceWorkerWebSettings;
import androidx.webkit.internal.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.ServiceWorkerWebSettingsBoundaryInterface;
/* loaded from: classes.dex */
public class a1 extends o1.j {

    /* renamed from: a  reason: collision with root package name */
    private ServiceWorkerWebSettings f3546a;

    /* renamed from: b  reason: collision with root package name */
    private ServiceWorkerWebSettingsBoundaryInterface f3547b;

    public a1(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        this.f3546a = serviceWorkerWebSettings;
    }

    private ServiceWorkerWebSettingsBoundaryInterface i() {
        if (this.f3547b == null) {
            this.f3547b = (ServiceWorkerWebSettingsBoundaryInterface) kf.a.a(ServiceWorkerWebSettingsBoundaryInterface.class, m1.c().e(this.f3546a));
        }
        return this.f3547b;
    }

    private ServiceWorkerWebSettings j() {
        if (this.f3546a == null) {
            this.f3546a = m1.c().d(Proxy.getInvocationHandler(this.f3547b));
        }
        return this.f3546a;
    }

    @Override // o1.j
    public boolean a() {
        a.c cVar = l1.f3586m;
        if (cVar.c()) {
            return c.a(j());
        }
        if (cVar.d()) {
            return i().getAllowContentAccess();
        }
        throw l1.a();
    }

    @Override // o1.j
    public boolean b() {
        a.c cVar = l1.f3587n;
        if (cVar.c()) {
            return c.b(j());
        }
        if (cVar.d()) {
            return i().getAllowFileAccess();
        }
        throw l1.a();
    }

    @Override // o1.j
    public boolean c() {
        a.c cVar = l1.f3588o;
        if (cVar.c()) {
            return c.c(j());
        }
        if (cVar.d()) {
            return i().getBlockNetworkLoads();
        }
        throw l1.a();
    }

    @Override // o1.j
    public int d() {
        a.c cVar = l1.f3585l;
        if (cVar.c()) {
            return c.d(j());
        }
        if (cVar.d()) {
            return i().getCacheMode();
        }
        throw l1.a();
    }

    @Override // o1.j
    public void e(boolean z10) {
        a.c cVar = l1.f3586m;
        if (cVar.c()) {
            c.k(j(), z10);
        } else if (cVar.d()) {
            i().setAllowContentAccess(z10);
        } else {
            throw l1.a();
        }
    }

    @Override // o1.j
    public void f(boolean z10) {
        a.c cVar = l1.f3587n;
        if (cVar.c()) {
            c.l(j(), z10);
        } else if (cVar.d()) {
            i().setAllowFileAccess(z10);
        } else {
            throw l1.a();
        }
    }

    @Override // o1.j
    public void g(boolean z10) {
        a.c cVar = l1.f3588o;
        if (cVar.c()) {
            c.m(j(), z10);
        } else if (cVar.d()) {
            i().setBlockNetworkLoads(z10);
        } else {
            throw l1.a();
        }
    }

    @Override // o1.j
    public void h(int i10) {
        a.c cVar = l1.f3585l;
        if (cVar.c()) {
            c.n(j(), i10);
        } else if (cVar.d()) {
            i().setCacheMode(i10);
        } else {
            throw l1.a();
        }
    }

    public a1(InvocationHandler invocationHandler) {
        this.f3547b = (ServiceWorkerWebSettingsBoundaryInterface) kf.a.a(ServiceWorkerWebSettingsBoundaryInterface.class, invocationHandler);
    }
}
