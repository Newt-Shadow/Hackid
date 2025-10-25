package androidx.webkit.internal;

import android.webkit.CookieManager;
import android.webkit.SafeBrowsingResponse;
import android.webkit.ServiceWorkerWebSettings;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebResourceRequestBoundaryInterface;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewCookieManagerBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;
/* loaded from: classes.dex */
public class v1 {

    /* renamed from: a  reason: collision with root package name */
    private final WebkitToCompatConverterBoundaryInterface f3628a;

    public v1(WebkitToCompatConverterBoundaryInterface webkitToCompatConverterBoundaryInterface) {
        this.f3628a = webkitToCompatConverterBoundaryInterface;
    }

    public q0 a(CookieManager cookieManager) {
        return new q0((WebViewCookieManagerBoundaryInterface) kf.a.a(WebViewCookieManagerBoundaryInterface.class, this.f3628a.convertCookieManager(cookieManager)));
    }

    public SafeBrowsingResponse b(InvocationHandler invocationHandler) {
        return u1.a(this.f3628a.convertSafeBrowsingResponse(invocationHandler));
    }

    public InvocationHandler c(SafeBrowsingResponse safeBrowsingResponse) {
        return this.f3628a.convertSafeBrowsingResponse(safeBrowsingResponse);
    }

    public ServiceWorkerWebSettings d(InvocationHandler invocationHandler) {
        return (ServiceWorkerWebSettings) this.f3628a.convertServiceWorkerSettings(invocationHandler);
    }

    public InvocationHandler e(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        return this.f3628a.convertServiceWorkerSettings(serviceWorkerWebSettings);
    }

    public k1 f(WebSettings webSettings) {
        return new k1((WebSettingsBoundaryInterface) kf.a.a(WebSettingsBoundaryInterface.class, this.f3628a.convertSettings(webSettings)));
    }

    public WebMessagePort g(InvocationHandler invocationHandler) {
        return (WebMessagePort) this.f3628a.convertWebMessagePort(invocationHandler);
    }

    public InvocationHandler h(WebMessagePort webMessagePort) {
        return this.f3628a.convertWebMessagePort(webMessagePort);
    }

    public WebResourceError i(InvocationHandler invocationHandler) {
        return (WebResourceError) this.f3628a.convertWebResourceError(invocationHandler);
    }

    public InvocationHandler j(WebResourceError webResourceError) {
        return this.f3628a.convertWebResourceError(webResourceError);
    }

    public j1 k(WebResourceRequest webResourceRequest) {
        return new j1((WebResourceRequestBoundaryInterface) kf.a.a(WebResourceRequestBoundaryInterface.class, this.f3628a.convertWebResourceRequest(webResourceRequest)));
    }
}
