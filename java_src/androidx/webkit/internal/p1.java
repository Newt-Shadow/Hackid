package androidx.webkit.internal;

import android.webkit.WebView;
import org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;
/* loaded from: classes.dex */
public class p1 implements o1 {

    /* renamed from: a  reason: collision with root package name */
    final WebViewProviderFactoryBoundaryInterface f3605a;

    public p1(WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.f3605a = webViewProviderFactoryBoundaryInterface;
    }

    @Override // androidx.webkit.internal.o1
    public String[] a() {
        return this.f3605a.getSupportedFeatures();
    }

    @Override // androidx.webkit.internal.o1
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) kf.a.a(WebViewProviderBoundaryInterface.class, this.f3605a.createWebView(webView));
    }

    @Override // androidx.webkit.internal.o1
    public ProxyControllerBoundaryInterface getProxyController() {
        return (ProxyControllerBoundaryInterface) kf.a.a(ProxyControllerBoundaryInterface.class, this.f3605a.getProxyController());
    }

    @Override // androidx.webkit.internal.o1
    public ServiceWorkerControllerBoundaryInterface getServiceWorkerController() {
        return (ServiceWorkerControllerBoundaryInterface) kf.a.a(ServiceWorkerControllerBoundaryInterface.class, this.f3605a.getServiceWorkerController());
    }

    @Override // androidx.webkit.internal.o1
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) kf.a.a(StaticsBoundaryInterface.class, this.f3605a.getStatics());
    }

    @Override // androidx.webkit.internal.o1
    public TracingControllerBoundaryInterface getTracingController() {
        return (TracingControllerBoundaryInterface) kf.a.a(TracingControllerBoundaryInterface.class, this.f3605a.getTracingController());
    }

    @Override // androidx.webkit.internal.o1
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) kf.a.a(WebkitToCompatConverterBoundaryInterface.class, this.f3605a.getWebkitToCompatConverter());
    }
}
