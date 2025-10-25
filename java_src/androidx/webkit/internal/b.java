package androidx.webkit.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceError;
import android.webkit.WebSettings;
import android.webkit.WebView;
import o1.n;
import o1.s;
/* loaded from: classes.dex */
public abstract class b {

    /* loaded from: classes.dex */
    class a extends WebMessagePort.WebMessageCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n.a f3548a;

        a(n.a aVar) {
            this.f3548a = aVar;
        }

        @Override // android.webkit.WebMessagePort.WebMessageCallback
        public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
            this.f3548a.onMessage(new h1(webMessagePort), h1.h(webMessage));
        }
    }

    /* renamed from: androidx.webkit.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0064b extends WebMessagePort.WebMessageCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n.a f3549a;

        C0064b(n.a aVar) {
            this.f3549a = aVar;
        }

        @Override // android.webkit.WebMessagePort.WebMessageCallback
        public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
            this.f3549a.onMessage(new h1(webMessagePort), h1.h(webMessage));
        }
    }

    /* loaded from: classes.dex */
    class c extends WebView.VisualStateCallback {
        c(s.a aVar) {
        }

        @Override // android.webkit.WebView.VisualStateCallback
        public void onComplete(long j10) {
            throw null;
        }
    }

    public static void a(WebMessagePort webMessagePort) {
        webMessagePort.close();
    }

    public static WebMessage b(o1.m mVar) {
        return new WebMessage(mVar.c(), h1.g(mVar.d()));
    }

    public static WebMessagePort[] c(WebView webView) {
        return webView.createWebMessageChannel();
    }

    public static o1.m d(WebMessage webMessage) {
        return new o1.m(webMessage.getData(), h1.k(webMessage.getPorts()));
    }

    public static CharSequence e(WebResourceError webResourceError) {
        return webResourceError.getDescription();
    }

    public static int f(WebResourceError webResourceError) {
        return webResourceError.getErrorCode();
    }

    public static boolean g(WebSettings webSettings) {
        return webSettings.getOffscreenPreRaster();
    }

    public static void h(WebMessagePort webMessagePort, WebMessage webMessage) {
        webMessagePort.postMessage(webMessage);
    }

    public static void i(WebView webView, long j10, s.a aVar) {
        webView.postVisualStateCallback(j10, new c(aVar));
    }

    public static void j(WebView webView, WebMessage webMessage, Uri uri) {
        webView.postWebMessage(webMessage, uri);
    }

    public static void k(WebSettings webSettings, boolean z10) {
        webSettings.setOffscreenPreRaster(z10);
    }

    public static void l(WebMessagePort webMessagePort, n.a aVar) {
        webMessagePort.setWebMessageCallback(new a(aVar));
    }

    public static void m(WebMessagePort webMessagePort, n.a aVar, Handler handler) {
        webMessagePort.setWebMessageCallback(new C0064b(aVar), handler);
    }
}
