package o1;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.webkit.internal.a;
import androidx.webkit.internal.d1;
import androidx.webkit.internal.h1;
import androidx.webkit.internal.k0;
import androidx.webkit.internal.l1;
import androidx.webkit.internal.m1;
import androidx.webkit.internal.n1;
import androidx.webkit.internal.o1;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f26954a = Uri.parse("*");

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f26955b = Uri.parse("");

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public interface b {
        void onPostMessage(WebView webView, m mVar, Uri uri, boolean z10, o1.b bVar);
    }

    public static g a(WebView webView, String str, Set set) {
        if (l1.V.d()) {
            return j(webView).a(str, (String[]) set.toArray(new String[0]));
        }
        throw l1.a();
    }

    public static void b(WebView webView, String str, Set set, b bVar) {
        if (l1.U.d()) {
            j(webView).b(str, (String[]) set.toArray(new String[0]), bVar);
            return;
        }
        throw l1.a();
    }

    private static WebViewProviderBoundaryInterface c(WebView webView) {
        return g().createWebView(webView);
    }

    public static n[] d(WebView webView) {
        a.b bVar = l1.E;
        if (bVar.c()) {
            return h1.k(androidx.webkit.internal.b.c(webView));
        }
        if (bVar.d()) {
            return j(webView).c();
        }
        throw l1.a();
    }

    public static PackageInfo e() {
        if (Build.VERSION.SDK_INT >= 26) {
            return androidx.webkit.internal.i.a();
        }
        try {
            return h();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static PackageInfo f(Context context) {
        PackageInfo e10 = e();
        if (e10 != null) {
            return e10;
        }
        return i(context);
    }

    private static o1 g() {
        return m1.d();
    }

    private static PackageInfo h() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    private static PackageInfo i(Context context) {
        try {
            String str = (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            if (str == null) {
                return null;
            }
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static n1 j(WebView webView) {
        return new n1(c(webView));
    }

    public static Uri k() {
        a.f fVar = l1.f3583j;
        if (fVar.c()) {
            return androidx.webkit.internal.p.b();
        }
        if (fVar.d()) {
            return g().getStatics().getSafeBrowsingPrivacyPolicyUrl();
        }
        throw l1.a();
    }

    public static String l() {
        if (l1.X.d()) {
            return g().getStatics().getVariationsHeader();
        }
        throw l1.a();
    }

    public static boolean m() {
        if (l1.R.d()) {
            return g().getStatics().isMultiProcessEnabled();
        }
        throw l1.a();
    }

    public static void n(WebView webView, m mVar, Uri uri) {
        if (f26954a.equals(uri)) {
            uri = f26955b;
        }
        a.b bVar = l1.F;
        if (bVar.c() && mVar.e() == 0) {
            androidx.webkit.internal.b.j(webView, h1.f(mVar), uri);
        } else if (bVar.d() && d1.a(mVar.e())) {
            j(webView).d(mVar, uri);
        } else {
            throw l1.a();
        }
    }

    public static void o(Set set, ValueCallback valueCallback) {
        a.f fVar = l1.f3582i;
        a.f fVar2 = l1.f3581h;
        if (fVar.d()) {
            g().getStatics().setSafeBrowsingAllowlist(set, valueCallback);
            return;
        }
        ArrayList arrayList = new ArrayList(set);
        if (fVar2.c()) {
            androidx.webkit.internal.p.d(arrayList, valueCallback);
        } else if (fVar2.d()) {
            g().getStatics().setSafeBrowsingWhitelist(arrayList, valueCallback);
        } else {
            throw l1.a();
        }
    }

    public static void p(List list, ValueCallback valueCallback) {
        o(new HashSet(list), valueCallback);
    }

    public static void q(WebView webView, v vVar) {
        a.h hVar = l1.O;
        if (hVar.c()) {
            k0.f(webView, vVar);
        } else if (hVar.d()) {
            j(webView).e(null, vVar);
        } else {
            throw l1.a();
        }
    }

    public static void r(Context context, ValueCallback valueCallback) {
        a.f fVar = l1.f3576e;
        if (fVar.c()) {
            androidx.webkit.internal.p.f(context, valueCallback);
        } else if (fVar.d()) {
            g().getStatics().initSafeBrowsing(context, valueCallback);
        } else {
            throw l1.a();
        }
    }
}
