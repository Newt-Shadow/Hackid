package io.flutter.plugins.urllauncher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.d;
import io.flutter.plugins.urllauncher.Messages;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
final class UrlLauncher implements Messages.UrlLauncherApi {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "UrlLauncher";
    private Activity activity;
    private final Context applicationContext;
    private final IntentResolver intentResolver;

    /* loaded from: classes2.dex */
    interface IntentResolver {
        String getHandlerComponentName(Intent intent);
    }

    UrlLauncher(Context context, IntentResolver intentResolver) {
        this.applicationContext = context;
        this.intentResolver = intentResolver;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0056 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean containsRestrictedHeader(java.util.Map<java.lang.String, java.lang.String> r5) {
        /*
            java.util.Set r5 = r5.keySet()
            java.util.Iterator r5 = r5.iterator()
        L8:
            boolean r0 = r5.hasNext()
            r1 = 0
            if (r0 == 0) goto L57
            java.lang.Object r0 = r5.next()
            java.lang.String r0 = (java.lang.String) r0
            java.util.Locale r2 = java.util.Locale.US
            java.lang.String r0 = r0.toLowerCase(r2)
            r0.hashCode()
            int r2 = r0.hashCode()
            r3 = 1
            r4 = -1
            switch(r2) {
                case -1423461112: goto L4a;
                case -1229727188: goto L3f;
                case 785670158: goto L34;
                case 802785917: goto L29;
                default: goto L27;
            }
        L27:
            r1 = r4
            goto L53
        L29:
            java.lang.String r1 = "accept-language"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L32
            goto L27
        L32:
            r1 = 3
            goto L53
        L34:
            java.lang.String r1 = "content-type"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3d
            goto L27
        L3d:
            r1 = 2
            goto L53
        L3f:
            java.lang.String r1 = "content-language"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L48
            goto L27
        L48:
            r1 = r3
            goto L53
        L4a:
            java.lang.String r2 = "accept"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L53
            goto L27
        L53:
            switch(r1) {
                case 0: goto L8;
                case 1: goto L8;
                case 2: goto L8;
                case 3: goto L8;
                default: goto L56;
            }
        L56:
            return r3
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.urllauncher.UrlLauncher.containsRestrictedHeader(java.util.Map):boolean");
    }

    private void ensureActivity() {
        if (this.activity != null) {
            return;
        }
        throw new Messages.FlutterError("NO_ACTIVITY", "Launching a URL requires a foreground activity.", null);
    }

    private static Bundle extractBundle(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, map.get(str));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$new$0(Context context, Intent intent) {
        ComponentName resolveActivity = intent.resolveActivity(context.getPackageManager());
        if (resolveActivity == null) {
            return null;
        }
        return resolveActivity.toShortString();
    }

    private static boolean openCustomTab(Context context, Uri uri, Bundle bundle, Messages.BrowserOptions browserOptions) {
        androidx.browser.customtabs.d b10 = new d.C0021d().m(browserOptions.getShowTitle().booleanValue()).b();
        b10.f1780a.putExtra("com.android.browser.headers", bundle);
        try {
            b10.b(context, uri);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    @Override // io.flutter.plugins.urllauncher.Messages.UrlLauncherApi
    public Boolean canLaunchUrl(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        String handlerComponentName = this.intentResolver.getHandlerComponentName(intent);
        if (handlerComponentName == null) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!"{com.android.fallback/com.android.fallback.Fallback}".equals(handlerComponentName));
    }

    @Override // io.flutter.plugins.urllauncher.Messages.UrlLauncherApi
    public void closeWebView() {
        this.applicationContext.sendBroadcast(new Intent(WebViewActivity.ACTION_CLOSE));
    }

    @Override // io.flutter.plugins.urllauncher.Messages.UrlLauncherApi
    public Boolean launchUrl(String str, Map<String, String> map) {
        ensureActivity();
        try {
            this.activity.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(str)).putExtra("com.android.browser.headers", extractBundle(map)));
            return Boolean.TRUE;
        } catch (ActivityNotFoundException unused) {
            return Boolean.FALSE;
        }
    }

    @Override // io.flutter.plugins.urllauncher.Messages.UrlLauncherApi
    public Boolean openUrlInApp(String str, Boolean bool, Messages.WebViewOptions webViewOptions, Messages.BrowserOptions browserOptions) {
        ensureActivity();
        Bundle extractBundle = extractBundle(webViewOptions.getHeaders());
        if (bool.booleanValue() && !containsRestrictedHeader(webViewOptions.getHeaders())) {
            if (openCustomTab(this.activity, Uri.parse(str), extractBundle, browserOptions)) {
                return Boolean.TRUE;
            }
        }
        try {
            this.activity.startActivity(WebViewActivity.createIntent(this.activity, str, webViewOptions.getEnableJavaScript().booleanValue(), webViewOptions.getEnableDomStorage().booleanValue(), extractBundle));
            return Boolean.TRUE;
        } catch (ActivityNotFoundException unused) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // io.flutter.plugins.urllauncher.Messages.UrlLauncherApi
    public Boolean supportsCustomTabs() {
        boolean z10;
        if (androidx.browser.customtabs.c.c(this.applicationContext, Collections.emptyList()) != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UrlLauncher(final Context context) {
        this(context, new IntentResolver() { // from class: io.flutter.plugins.urllauncher.f
            @Override // io.flutter.plugins.urllauncher.UrlLauncher.IntentResolver
            public final String getHandlerComponentName(Intent intent) {
                String lambda$new$0;
                lambda$new$0 = UrlLauncher.lambda$new$0(context, intent);
                return lambda$new$0;
            }
        });
    }
}
