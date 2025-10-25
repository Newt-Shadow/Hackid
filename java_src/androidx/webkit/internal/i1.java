package androidx.webkit.internal;

import android.webkit.WebResourceError;
import androidx.webkit.internal.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;
/* loaded from: classes.dex */
public class i1 extends o1.o {

    /* renamed from: a  reason: collision with root package name */
    private WebResourceError f3564a;

    /* renamed from: b  reason: collision with root package name */
    private WebResourceErrorBoundaryInterface f3565b;

    public i1(InvocationHandler invocationHandler) {
        this.f3565b = (WebResourceErrorBoundaryInterface) kf.a.a(WebResourceErrorBoundaryInterface.class, invocationHandler);
    }

    private WebResourceErrorBoundaryInterface c() {
        if (this.f3565b == null) {
            this.f3565b = (WebResourceErrorBoundaryInterface) kf.a.a(WebResourceErrorBoundaryInterface.class, m1.c().j(this.f3564a));
        }
        return this.f3565b;
    }

    private WebResourceError d() {
        if (this.f3564a == null) {
            this.f3564a = m1.c().i(Proxy.getInvocationHandler(this.f3565b));
        }
        return this.f3564a;
    }

    @Override // o1.o
    public CharSequence a() {
        a.b bVar = l1.f3595v;
        if (bVar.c()) {
            return b.e(d());
        }
        if (bVar.d()) {
            return c().getDescription();
        }
        throw l1.a();
    }

    @Override // o1.o
    public int b() {
        a.b bVar = l1.f3596w;
        if (bVar.c()) {
            return b.f(d());
        }
        if (bVar.d()) {
            return c().getErrorCode();
        }
        throw l1.a();
    }

    public i1(WebResourceError webResourceError) {
        this.f3564a = webResourceError;
    }
}
