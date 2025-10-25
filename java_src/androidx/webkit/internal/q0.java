package androidx.webkit.internal;

import java.util.List;
import org.chromium.support_lib_boundary.WebViewCookieManagerBoundaryInterface;
/* loaded from: classes.dex */
public class q0 {

    /* renamed from: a  reason: collision with root package name */
    private final WebViewCookieManagerBoundaryInterface f3606a;

    public q0(WebViewCookieManagerBoundaryInterface webViewCookieManagerBoundaryInterface) {
        this.f3606a = webViewCookieManagerBoundaryInterface;
    }

    public List a(String str) {
        return this.f3606a.getCookieInfo(str);
    }
}
