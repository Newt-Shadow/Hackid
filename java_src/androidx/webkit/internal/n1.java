package androidx.webkit.internal;

import android.net.Uri;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import o1.s;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes.dex */
public class n1 {

    /* renamed from: a  reason: collision with root package name */
    WebViewProviderBoundaryInterface f3603a;

    public n1(WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.f3603a = webViewProviderBoundaryInterface;
    }

    public x0 a(String str, String[] strArr) {
        return x0.a(this.f3603a.addDocumentStartJavaScript(str, strArr));
    }

    public void b(String str, String[] strArr, s.b bVar) {
        this.f3603a.addWebMessageListener(str, strArr, kf.a.c(new f1(bVar)));
    }

    public o1.n[] c() {
        InvocationHandler[] createWebMessageChannel = this.f3603a.createWebMessageChannel();
        o1.n[] nVarArr = new o1.n[createWebMessageChannel.length];
        for (int i10 = 0; i10 < createWebMessageChannel.length; i10++) {
            nVarArr[i10] = new h1(createWebMessageChannel[i10]);
        }
        return nVarArr;
    }

    public void d(o1.m mVar, Uri uri) {
        this.f3603a.postMessageToMainFrame(kf.a.c(new d1(mVar)), uri);
    }

    public void e(Executor executor, o1.v vVar) {
        InvocationHandler invocationHandler;
        if (vVar != null) {
            invocationHandler = kf.a.c(new q1(executor, vVar));
        } else {
            invocationHandler = null;
        }
        this.f3603a.setWebViewRendererClient(invocationHandler);
    }
}
