package o1;

import android.webkit.WebResourceRequest;
import androidx.webkit.internal.a;
import androidx.webkit.internal.j1;
import androidx.webkit.internal.l1;
import androidx.webkit.internal.m1;
/* loaded from: classes.dex */
public abstract class p {
    private static j1 a(WebResourceRequest webResourceRequest) {
        return m1.c().k(webResourceRequest);
    }

    public static boolean b(WebResourceRequest webResourceRequest) {
        a.c cVar = l1.f3594u;
        if (cVar.c()) {
            return androidx.webkit.internal.c.j(webResourceRequest);
        }
        if (cVar.d()) {
            return a(webResourceRequest).a();
        }
        throw l1.a();
    }
}
