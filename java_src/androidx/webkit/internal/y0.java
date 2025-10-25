package androidx.webkit.internal;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import org.chromium.support_lib_boundary.ServiceWorkerClientBoundaryInterface;
/* loaded from: classes.dex */
public class y0 implements ServiceWorkerClientBoundaryInterface {

    /* renamed from: a  reason: collision with root package name */
    private final o1.h f3632a;

    public y0(o1.h hVar) {
        this.f3632a = hVar;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{"SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"};
    }

    @Override // org.chromium.support_lib_boundary.ServiceWorkerClientBoundaryInterface
    public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
        return this.f3632a.shouldInterceptRequest(webResourceRequest);
    }
}
