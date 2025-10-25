package androidx.webkit.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.webkit.internal.a;
import androidx.webkit.internal.b1;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class l1 {

    /* renamed from: a  reason: collision with root package name */
    public static final a.b f3568a = new a.b("VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK");

    /* renamed from: b  reason: collision with root package name */
    public static final a.b f3570b = new a.b("OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER");

    /* renamed from: c  reason: collision with root package name */
    public static final a.e f3572c = new a.e("SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE");

    /* renamed from: d  reason: collision with root package name */
    public static final a.c f3574d = new a.c("DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS");

    /* renamed from: e  reason: collision with root package name */
    public static final a.f f3576e = new a.f("START_SAFE_BROWSING", "START_SAFE_BROWSING");

    /* renamed from: f  reason: collision with root package name */
    public static final a.f f3578f = new a.f("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST");

    /* renamed from: g  reason: collision with root package name */
    public static final a.f f3580g = new a.f("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_ALLOWLIST");

    /* renamed from: h  reason: collision with root package name */
    public static final a.f f3581h = new a.f("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_WHITELIST");

    /* renamed from: i  reason: collision with root package name */
    public static final a.f f3582i = new a.f("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_ALLOWLIST");

    /* renamed from: j  reason: collision with root package name */
    public static final a.f f3583j = new a.f("SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL");

    /* renamed from: k  reason: collision with root package name */
    public static final a.c f3584k = new a.c("SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE");

    /* renamed from: l  reason: collision with root package name */
    public static final a.c f3585l = new a.c("SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE");

    /* renamed from: m  reason: collision with root package name */
    public static final a.c f3586m = new a.c("SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS");

    /* renamed from: n  reason: collision with root package name */
    public static final a.c f3587n = new a.c("SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS");

    /* renamed from: o  reason: collision with root package name */
    public static final a.c f3588o = new a.c("SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS");

    /* renamed from: p  reason: collision with root package name */
    public static final a.c f3589p = new a.c("SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST");

    /* renamed from: q  reason: collision with root package name */
    public static final a.b f3590q = new a.b("RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR");

    /* renamed from: r  reason: collision with root package name */
    public static final a.b f3591r = new a.b("RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR");

    /* renamed from: s  reason: collision with root package name */
    public static final a.c f3592s = new a.c("SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS");

    /* renamed from: t  reason: collision with root package name */
    public static final a.f f3593t = new a.f("SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT");

    /* renamed from: u  reason: collision with root package name */
    public static final a.c f3594u = new a.c("WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT");

    /* renamed from: v  reason: collision with root package name */
    public static final a.b f3595v = new a.b("WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION");

    /* renamed from: w  reason: collision with root package name */
    public static final a.b f3596w = new a.b("WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE");

    /* renamed from: x  reason: collision with root package name */
    public static final a.f f3597x = new a.f("SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY");

    /* renamed from: y  reason: collision with root package name */
    public static final a.f f3598y = new a.f("SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED");

    /* renamed from: z  reason: collision with root package name */
    public static final a.f f3599z = new a.f("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
    public static final a.b A = new a.b("WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE");
    public static final a.b B = new a.b("WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE");
    public static final a.d C = new a.d("WEB_MESSAGE_ARRAY_BUFFER", "WEB_MESSAGE_ARRAY_BUFFER");
    public static final a.b D = new a.b("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK");
    public static final a.b E = new a.b("CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL");
    public static final a.b F = new a.b("POST_WEB_MESSAGE", "POST_WEB_MESSAGE");
    public static final a.b G = new a.b("WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE");
    public static final a.e H = new a.e("GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT");
    public static final a.e I = new a.e("GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT");
    public static final a.h J = new a.h("GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER");
    public static final a.h K = new a.h("WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE");
    public static final a.g L = new a.g("TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE");
    public static final b1.b M = new b1.b("STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX", "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX");
    public static final b1.a N = new b1.a("STARTUP_FEATURE_SET_DIRECTORY_BASE_PATHS", "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH");
    public static final a.h O = new a.h("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
    public static final a.i P = new a("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING");
    public static final a.d Q = new a.d("PROXY_OVERRIDE", "PROXY_OVERRIDE:3");
    public static final a.d R = new a.d("MULTI_PROCESS", "MULTI_PROCESS_QUERY");
    public static final a.h S = new a.h("FORCE_DARK", "FORCE_DARK");
    public static final a.d T = new a.d("FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR");
    public static final a.d U = new a.d("WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");
    public static final a.d V = new a.d("DOCUMENT_START_SCRIPT", "DOCUMENT_START_SCRIPT:1");
    public static final a.d W = new a.d("PROXY_OVERRIDE_REVERSE_BYPASS", "PROXY_OVERRIDE_REVERSE_BYPASS");
    public static final a.d X = new a.d("GET_VARIATIONS_HEADER", "GET_VARIATIONS_HEADER");
    public static final a.d Y = new a.d("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY", "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY");
    public static final a.d Z = new a.d("GET_COOKIE_INFO", "GET_COOKIE_INFO");

    /* renamed from: a0  reason: collision with root package name */
    public static final a.d f3569a0 = new a.d("REQUESTED_WITH_HEADER_ALLOW_LIST", "REQUESTED_WITH_HEADER_ALLOW_LIST");

    /* renamed from: b0  reason: collision with root package name */
    public static final a.d f3571b0 = new a.d("USER_AGENT_METADATA", "USER_AGENT_METADATA");

    /* renamed from: c0  reason: collision with root package name */
    public static final a.d f3573c0 = new b("MULTI_PROFILE", "MULTI_PROFILE");

    /* renamed from: d0  reason: collision with root package name */
    public static final a.d f3575d0 = new a.d("ATTRIBUTION_REGISTRATION_BEHAVIOR", "ATTRIBUTION_BEHAVIOR");

    /* renamed from: e0  reason: collision with root package name */
    public static final a.d f3577e0 = new a.d("WEBVIEW_MEDIA_INTEGRITY_API_STATUS", "WEBVIEW_INTEGRITY_API_STATUS");

    /* renamed from: f0  reason: collision with root package name */
    public static final a.d f3579f0 = new a.d("MUTE_AUDIO", "MUTE_AUDIO");

    /* loaded from: classes.dex */
    class a extends a.i {

        /* renamed from: d  reason: collision with root package name */
        private final Pattern f3600d;

        a(String str, String str2) {
            super(str, str2);
            this.f3600d = Pattern.compile("\\A\\d+");
        }

        @Override // androidx.webkit.internal.a
        public boolean d() {
            boolean d10 = super.d();
            if (d10 && Build.VERSION.SDK_INT < 29) {
                PackageInfo e10 = o1.s.e();
                if (e10 == null) {
                    return false;
                }
                Matcher matcher = this.f3600d.matcher(e10.versionName);
                if (!matcher.find() || Integer.parseInt(e10.versionName.substring(matcher.start(), matcher.end())) < 105) {
                    return false;
                }
                return true;
            }
            return d10;
        }
    }

    /* loaded from: classes.dex */
    class b extends a.d {
        b(String str, String str2) {
            super(str, str2);
        }

        @Override // androidx.webkit.internal.a
        public boolean d() {
            if (!super.d() || !o1.t.a("MULTI_PROCESS")) {
                return false;
            }
            return o1.s.m();
        }
    }

    public static UnsupportedOperationException a() {
        return new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }

    public static boolean b(String str, Context context) {
        return c(str, b1.g(), context);
    }

    public static boolean c(String str, Collection collection, Context context) {
        HashSet<b1> hashSet = new HashSet();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b1 b1Var = (b1) it.next();
            if (b1Var.b().equals(str)) {
                hashSet.add(b1Var);
            }
        }
        if (!hashSet.isEmpty()) {
            for (b1 b1Var2 : hashSet) {
                if (b1Var2.d(context)) {
                    return true;
                }
            }
            return false;
        }
        throw new RuntimeException("Unknown feature " + str);
    }

    public static boolean d(String str) {
        return e(str, androidx.webkit.internal.a.e());
    }

    public static boolean e(String str, Collection collection) {
        HashSet<p0> hashSet = new HashSet();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            p0 p0Var = (p0) it.next();
            if (p0Var.b().equals(str)) {
                hashSet.add(p0Var);
            }
        }
        if (!hashSet.isEmpty()) {
            for (p0 p0Var2 : hashSet) {
                if (p0Var2.a()) {
                    return true;
                }
            }
            return false;
        }
        throw new RuntimeException("Unknown feature " + str);
    }
}
