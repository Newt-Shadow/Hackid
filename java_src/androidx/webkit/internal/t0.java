package androidx.webkit.internal;

import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
/* loaded from: classes.dex */
public class t0 extends o1.b {

    /* renamed from: a  reason: collision with root package name */
    private JsReplyProxyBoundaryInterface f3621a;

    /* loaded from: classes.dex */
    class a implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JsReplyProxyBoundaryInterface f3622a;

        a(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
            this.f3622a = jsReplyProxyBoundaryInterface;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new t0(this.f3622a);
        }
    }

    public t0(JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        this.f3621a = jsReplyProxyBoundaryInterface;
    }

    public static t0 c(InvocationHandler invocationHandler) {
        JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) kf.a.a(JsReplyProxyBoundaryInterface.class, invocationHandler);
        return (t0) jsReplyProxyBoundaryInterface.getOrCreatePeer(new a(jsReplyProxyBoundaryInterface));
    }

    @Override // o1.b
    public void a(String str) {
        if (l1.U.d()) {
            this.f3621a.postMessage(str);
            return;
        }
        throw l1.a();
    }

    @Override // o1.b
    public void b(byte[] bArr) {
        Objects.requireNonNull(bArr, "ArrayBuffer must be non-null");
        if (l1.C.d()) {
            this.f3621a.postMessageWithPayload(kf.a.c(new g1(bArr)));
            return;
        }
        throw l1.a();
    }
}
