package androidx.webkit.internal;

import android.webkit.ServiceWorkerClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
/* loaded from: classes.dex */
public class r0 extends ServiceWorkerClient {

    /* renamed from: a  reason: collision with root package name */
    private final o1.h f3618a;

    public r0(o1.h hVar) {
        this.f3618a = hVar;
    }

    @Override // android.webkit.ServiceWorkerClient
    public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
        return this.f3618a.shouldInterceptRequest(webResourceRequest);
    }
}
