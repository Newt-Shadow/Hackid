package androidx.webkit.internal;

import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.webkit.internal.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import o1.n;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;
/* loaded from: classes.dex */
public class h1 extends o1.n {

    /* renamed from: a  reason: collision with root package name */
    private WebMessagePort f3562a;

    /* renamed from: b  reason: collision with root package name */
    private WebMessagePortBoundaryInterface f3563b;

    public h1(WebMessagePort webMessagePort) {
        this.f3562a = webMessagePort;
    }

    public static WebMessage f(o1.m mVar) {
        return b.b(mVar);
    }

    public static WebMessagePort[] g(o1.n[] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        int length = nVarArr.length;
        WebMessagePort[] webMessagePortArr = new WebMessagePort[length];
        for (int i10 = 0; i10 < length; i10++) {
            webMessagePortArr[i10] = nVarArr[i10].b();
        }
        return webMessagePortArr;
    }

    public static o1.m h(WebMessage webMessage) {
        return b.d(webMessage);
    }

    private WebMessagePortBoundaryInterface i() {
        if (this.f3563b == null) {
            this.f3563b = (WebMessagePortBoundaryInterface) kf.a.a(WebMessagePortBoundaryInterface.class, m1.c().h(this.f3562a));
        }
        return this.f3563b;
    }

    private WebMessagePort j() {
        if (this.f3562a == null) {
            this.f3562a = m1.c().g(Proxy.getInvocationHandler(this.f3563b));
        }
        return this.f3562a;
    }

    public static o1.n[] k(WebMessagePort[] webMessagePortArr) {
        if (webMessagePortArr == null) {
            return null;
        }
        o1.n[] nVarArr = new o1.n[webMessagePortArr.length];
        for (int i10 = 0; i10 < webMessagePortArr.length; i10++) {
            nVarArr[i10] = new h1(webMessagePortArr[i10]);
        }
        return nVarArr;
    }

    @Override // o1.n
    public void a() {
        a.b bVar = l1.B;
        if (bVar.c()) {
            b.a(j());
        } else if (bVar.d()) {
            i().close();
        } else {
            throw l1.a();
        }
    }

    @Override // o1.n
    public WebMessagePort b() {
        return j();
    }

    @Override // o1.n
    public InvocationHandler c() {
        return Proxy.getInvocationHandler(i());
    }

    @Override // o1.n
    public void d(o1.m mVar) {
        a.b bVar = l1.A;
        if (bVar.c() && mVar.e() == 0) {
            b.h(j(), f(mVar));
        } else if (bVar.d() && d1.a(mVar.e())) {
            i().postMessage(kf.a.c(new d1(mVar)));
        } else {
            throw l1.a();
        }
    }

    @Override // o1.n
    public void e(n.a aVar) {
        a.b bVar = l1.D;
        if (bVar.d()) {
            i().setWebMessageCallback(kf.a.c(new e1(aVar)));
        } else if (bVar.c()) {
            b.l(j(), aVar);
        } else {
            throw l1.a();
        }
    }

    public h1(InvocationHandler invocationHandler) {
        this.f3563b = (WebMessagePortBoundaryInterface) kf.a.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }
}
