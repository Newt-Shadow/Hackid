package androidx.webkit.internal;

import android.net.Uri;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import o1.s;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;
/* loaded from: classes.dex */
public class f1 implements WebMessageListenerBoundaryInterface {

    /* renamed from: a  reason: collision with root package name */
    private s.b f3558a;

    public f1(s.b bVar) {
        this.f3558a = bVar;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_LISTENER", "WEB_MESSAGE_ARRAY_BUFFER"};
    }

    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    public void onPostMessage(WebView webView, InvocationHandler invocationHandler, Uri uri, boolean z10, InvocationHandler invocationHandler2) {
        o1.m c10 = d1.c((WebMessageBoundaryInterface) kf.a.a(WebMessageBoundaryInterface.class, invocationHandler));
        if (c10 != null) {
            this.f3558a.onPostMessage(webView, c10, uri, z10, t0.c(invocationHandler2));
        }
    }
}
