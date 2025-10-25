package androidx.webkit.internal;

import android.webkit.ServiceWorkerController;
import androidx.webkit.internal.a;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
/* loaded from: classes.dex */
public class z0 extends o1.i {

    /* renamed from: a  reason: collision with root package name */
    private ServiceWorkerController f3633a;

    /* renamed from: b  reason: collision with root package name */
    private ServiceWorkerControllerBoundaryInterface f3634b;

    /* renamed from: c  reason: collision with root package name */
    private final o1.j f3635c;

    public z0() {
        a.c cVar = l1.f3584k;
        if (cVar.c()) {
            this.f3633a = c.g();
            this.f3634b = null;
            this.f3635c = c.i(e());
        } else if (cVar.d()) {
            this.f3633a = null;
            ServiceWorkerControllerBoundaryInterface serviceWorkerController = m1.d().getServiceWorkerController();
            this.f3634b = serviceWorkerController;
            this.f3635c = new a1(serviceWorkerController.getServiceWorkerWebSettings());
        } else {
            throw l1.a();
        }
    }

    private ServiceWorkerControllerBoundaryInterface d() {
        if (this.f3634b == null) {
            this.f3634b = m1.d().getServiceWorkerController();
        }
        return this.f3634b;
    }

    private ServiceWorkerController e() {
        if (this.f3633a == null) {
            this.f3633a = c.g();
        }
        return this.f3633a;
    }

    @Override // o1.i
    public o1.j b() {
        return this.f3635c;
    }

    @Override // o1.i
    public void c(o1.h hVar) {
        a.c cVar = l1.f3584k;
        if (cVar.c()) {
            if (hVar == null) {
                c.p(e(), null);
            } else {
                c.q(e(), hVar);
            }
        } else if (cVar.d()) {
            if (hVar == null) {
                d().setServiceWorkerClient(null);
            } else {
                d().setServiceWorkerClient(kf.a.c(new y0(hVar)));
            }
        } else {
            throw l1.a();
        }
    }
}
