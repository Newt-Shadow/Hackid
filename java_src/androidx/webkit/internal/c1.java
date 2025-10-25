package androidx.webkit.internal;

import android.webkit.TracingController;
import androidx.webkit.internal.a;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
/* loaded from: classes.dex */
public class c1 extends o1.l {

    /* renamed from: a  reason: collision with root package name */
    private TracingController f3553a;

    /* renamed from: b  reason: collision with root package name */
    private TracingControllerBoundaryInterface f3554b;

    public c1() {
        a.g gVar = l1.L;
        if (gVar.c()) {
            this.f3553a = c0.a();
            this.f3554b = null;
        } else if (gVar.d()) {
            this.f3553a = null;
            this.f3554b = m1.d().getTracingController();
        } else {
            throw l1.a();
        }
    }

    private TracingControllerBoundaryInterface e() {
        if (this.f3554b == null) {
            this.f3554b = m1.d().getTracingController();
        }
        return this.f3554b;
    }

    private TracingController f() {
        if (this.f3553a == null) {
            this.f3553a = c0.a();
        }
        return this.f3553a;
    }

    @Override // o1.l
    public boolean b() {
        a.g gVar = l1.L;
        if (gVar.c()) {
            return c0.d(f());
        }
        if (gVar.d()) {
            return e().isTracing();
        }
        throw l1.a();
    }

    @Override // o1.l
    public void c(o1.k kVar) {
        if (kVar != null) {
            a.g gVar = l1.L;
            if (gVar.c()) {
                c0.f(f(), kVar);
                return;
            } else if (gVar.d()) {
                e().start(kVar.b(), kVar.a(), kVar.c());
                return;
            } else {
                throw l1.a();
            }
        }
        throw new IllegalArgumentException("Tracing config must be non null");
    }

    @Override // o1.l
    public boolean d(OutputStream outputStream, Executor executor) {
        a.g gVar = l1.L;
        if (gVar.c()) {
            return c0.g(f(), outputStream, executor);
        }
        if (gVar.d()) {
            return e().stop(outputStream, executor);
        }
        throw l1.a();
    }
}
