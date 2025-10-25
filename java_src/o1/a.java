package o1;

import android.webkit.CookieManager;
import androidx.webkit.internal.l1;
import androidx.webkit.internal.m1;
import androidx.webkit.internal.q0;
import java.util.List;
/* loaded from: classes.dex */
public abstract class a {
    private static q0 a(CookieManager cookieManager) {
        return m1.c().a(cookieManager);
    }

    public static List b(CookieManager cookieManager, String str) {
        if (l1.Z.d()) {
            return a(cookieManager).a(str);
        }
        throw l1.a();
    }
}
