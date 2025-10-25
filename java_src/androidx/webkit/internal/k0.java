package androidx.webkit.internal;

import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class k0 {
    @Deprecated
    public static int a(WebSettings webSettings) {
        int forceDark;
        forceDark = webSettings.getForceDark();
        return forceDark;
    }

    public static WebViewRenderProcess b(WebView webView) {
        WebViewRenderProcess webViewRenderProcess;
        webViewRenderProcess = webView.getWebViewRenderProcess();
        return webViewRenderProcess;
    }

    public static WebViewRenderProcessClient c(WebView webView) {
        WebViewRenderProcessClient webViewRenderProcessClient;
        webViewRenderProcessClient = webView.getWebViewRenderProcessClient();
        return webViewRenderProcessClient;
    }

    @Deprecated
    public static void d(WebSettings webSettings, int i10) {
        webSettings.setForceDark(i10);
    }

    public static void e(WebView webView, Executor executor, o1.v vVar) {
        r1 r1Var;
        if (vVar != null) {
            r1Var = new r1(vVar);
        } else {
            r1Var = null;
        }
        webView.setWebViewRenderProcessClient(executor, r1Var);
    }

    public static void f(WebView webView, o1.v vVar) {
        r1 r1Var;
        if (vVar != null) {
            r1Var = new r1(vVar);
        } else {
            r1Var = null;
        }
        webView.setWebViewRenderProcessClient(r1Var);
    }

    public static boolean g(WebViewRenderProcess webViewRenderProcess) {
        boolean terminate;
        terminate = webViewRenderProcess.terminate();
        return terminate;
    }
}
