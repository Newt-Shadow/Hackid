package androidx.webkit.internal;

import org.chromium.support_lib_boundary.WebResourceRequestBoundaryInterface;
/* loaded from: classes.dex */
public class j1 {

    /* renamed from: a  reason: collision with root package name */
    private final WebResourceRequestBoundaryInterface f3566a;

    public j1(WebResourceRequestBoundaryInterface webResourceRequestBoundaryInterface) {
        this.f3566a = webResourceRequestBoundaryInterface;
    }

    public boolean a() {
        return this.f3566a.isRedirect();
    }
}
