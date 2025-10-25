package androidx.webkit.internal;

import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface;
/* loaded from: classes.dex */
public class q1 implements WebViewRendererClientBoundaryInterface {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f3607c = {"WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"};

    /* renamed from: a  reason: collision with root package name */
    private final Executor f3608a;

    /* renamed from: b  reason: collision with root package name */
    private final o1.v f3609b;

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o1.v f3610a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WebView f3611b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ o1.u f3612c;

        a(o1.v vVar, WebView webView, o1.u uVar) {
            this.f3610a = vVar;
            this.f3611b = webView;
            this.f3612c = uVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3610a.onRenderProcessUnresponsive(this.f3611b, this.f3612c);
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o1.v f3614a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WebView f3615b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ o1.u f3616c;

        b(o1.v vVar, WebView webView, o1.u uVar) {
            this.f3614a = vVar;
            this.f3615b = webView;
            this.f3616c = uVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3614a.onRenderProcessResponsive(this.f3615b, this.f3616c);
        }
    }

    public q1(Executor executor, o1.v vVar) {
        this.f3608a = executor;
        this.f3609b = vVar;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return f3607c;
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererResponsive(WebView webView, InvocationHandler invocationHandler) {
        t1 c10 = t1.c(invocationHandler);
        o1.v vVar = this.f3609b;
        Executor executor = this.f3608a;
        if (executor == null) {
            vVar.onRenderProcessResponsive(webView, c10);
        } else {
            executor.execute(new b(vVar, webView, c10));
        }
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererUnresponsive(WebView webView, InvocationHandler invocationHandler) {
        t1 c10 = t1.c(invocationHandler);
        o1.v vVar = this.f3609b;
        Executor executor = this.f3608a;
        if (executor == null) {
            vVar.onRenderProcessUnresponsive(webView, c10);
        } else {
            executor.execute(new a(vVar, webView, c10));
        }
    }
}
