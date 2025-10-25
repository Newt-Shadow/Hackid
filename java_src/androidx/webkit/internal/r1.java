package androidx.webkit.internal;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
/* loaded from: classes.dex */
public class r1 extends WebViewRenderProcessClient {

    /* renamed from: a  reason: collision with root package name */
    private o1.v f3619a;

    public r1(o1.v vVar) {
        this.f3619a = vVar;
    }

    public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        this.f3619a.onRenderProcessResponsive(webView, t1.b(webViewRenderProcess));
    }

    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        this.f3619a.onRenderProcessUnresponsive(webView, t1.b(webViewRenderProcess));
    }
}
