package androidx.webkit.internal;

import java.lang.reflect.InvocationHandler;
import o1.n;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageCallbackBoundaryInterface;
/* loaded from: classes.dex */
public class e1 implements WebMessageCallbackBoundaryInterface {

    /* renamed from: a  reason: collision with root package name */
    private final n.a f3557a;

    public e1(n.a aVar) {
        this.f3557a = aVar;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_CALLBACK_ON_MESSAGE"};
    }

    @Override // org.chromium.support_lib_boundary.WebMessageCallbackBoundaryInterface
    public void onMessage(InvocationHandler invocationHandler, InvocationHandler invocationHandler2) {
        o1.m c10 = d1.c((WebMessageBoundaryInterface) kf.a.a(WebMessageBoundaryInterface.class, invocationHandler2));
        if (c10 != null) {
            this.f3557a.onMessage(new h1(invocationHandler), c10);
        }
    }
}
