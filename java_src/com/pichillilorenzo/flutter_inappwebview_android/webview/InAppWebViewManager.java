package com.pichillilorenzo.flutter_inappwebview_android.webview;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.FlutterWebView;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import o1.s;
import o1.t;
/* loaded from: classes.dex */
public class InAppWebViewManager extends ChannelDelegateImpl {
    protected static final String LOG_TAG = "InAppWebViewManager";
    public static final String METHOD_CHANNEL_NAME = "com.pichillilorenzo/flutter_inappwebview_manager";
    public final Map<String, FlutterWebView> keepAliveWebViews;
    public InAppWebViewFlutterPlugin plugin;
    public int windowAutoincrementId;
    public final Map<Integer, Message> windowWebViewMessages;

    public InAppWebViewManager(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        super(new MethodChannel(inAppWebViewFlutterPlugin.messenger, METHOD_CHANNEL_NAME));
        this.keepAliveWebViews = new HashMap();
        this.windowWebViewMessages = new HashMap();
        this.windowAutoincrementId = 0;
        this.plugin = inAppWebViewFlutterPlugin;
    }

    public void clearAllCache(Context context, boolean z10) {
        WebView webView = new WebView(context);
        webView.clearCache(z10);
        webView.destroy();
    }

    public Map<String, Object> convertWebViewPackageToMap(PackageInfo packageInfo) {
        HashMap hashMap = new HashMap();
        hashMap.put("versionName", packageInfo.versionName);
        hashMap.put("packageName", packageInfo.packageName);
        return hashMap;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        for (FlutterWebView flutterWebView : this.keepAliveWebViews.values()) {
            String str = flutterWebView.keepAliveId;
            if (str != null) {
                disposeKeepAlive(str);
            }
        }
        this.keepAliveWebViews.clear();
        this.windowWebViewMessages.clear();
        this.plugin = null;
    }

    public void disposeKeepAlive(String str) {
        ViewGroup viewGroup;
        FlutterWebView flutterWebView = this.keepAliveWebViews.get(str);
        if (flutterWebView != null) {
            flutterWebView.keepAliveId = null;
            View view = flutterWebView.getView();
            if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                viewGroup.removeView(view);
            }
            flutterWebView.dispose();
        }
        if (this.keepAliveWebViews.containsKey(str)) {
            this.keepAliveWebViews.put(str, null);
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        Context context;
        PackageInfo packageInfo;
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1496477679:
                if (str.equals("disableWebView")) {
                    c10 = 0;
                    break;
                }
                break;
            case -910403233:
                if (str.equals("setWebContentsDebuggingEnabled")) {
                    c10 = 1;
                    break;
                }
                break;
            case -633518365:
                if (str.equals("getVariationsHeader")) {
                    c10 = 2;
                    break;
                }
                break;
            case -436220260:
                if (str.equals("clearClientCertPreferences")) {
                    c10 = 3;
                    break;
                }
                break;
            case 258673215:
                if (str.equals("getSafeBrowsingPrivacyPolicyUrl")) {
                    c10 = 4;
                    break;
                }
                break;
            case 426229521:
                if (str.equals("setSafeBrowsingAllowlist")) {
                    c10 = 5;
                    break;
                }
                break;
            case 643643439:
                if (str.equals("getDefaultUserAgent")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1033609166:
                if (str.equals("clearAllCache")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1586319888:
                if (str.equals("getCurrentWebViewPackage")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1667434977:
                if (str.equals("isMultiProcessEnabled")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1867011305:
                if (str.equals("disposeKeepAlive")) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        Map<String, Object> map = null;
        switch (c10) {
            case 0:
                if (Build.VERSION.SDK_INT >= 28) {
                    WebView.disableWebView();
                }
                result.success(Boolean.TRUE);
                return;
            case 1:
                WebView.setWebContentsDebuggingEnabled(((Boolean) methodCall.argument("debuggingEnabled")).booleanValue());
                result.success(Boolean.TRUE);
                return;
            case 2:
                if (t.a("GET_VARIATIONS_HEADER")) {
                    result.success(s.l());
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case 3:
                WebView.clearClientCertPreferences(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        result.success(Boolean.TRUE);
                    }
                });
                return;
            case 4:
                if (t.a("SAFE_BROWSING_PRIVACY_POLICY_URL")) {
                    result.success(s.k().toString());
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case 5:
                if (t.a("SAFE_BROWSING_ALLOWLIST")) {
                    s.o(new HashSet((List) methodCall.argument("hosts")), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager.2
                        @Override // android.webkit.ValueCallback
                        public void onReceiveValue(Boolean bool) {
                            result.success(bool);
                        }
                    });
                    return;
                } else if (t.a("SAFE_BROWSING_WHITELIST")) {
                    s.p((List) methodCall.argument("hosts"), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager.3
                        @Override // android.webkit.ValueCallback
                        public void onReceiveValue(Boolean bool) {
                            result.success(bool);
                        }
                    });
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 6:
                InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
                if (inAppWebViewFlutterPlugin != null) {
                    result.success(WebSettings.getDefaultUserAgent(inAppWebViewFlutterPlugin.applicationContext));
                    return;
                } else {
                    result.success(null);
                    return;
                }
            case 7:
                InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin2 = this.plugin;
                if (inAppWebViewFlutterPlugin2 != null) {
                    Context context2 = inAppWebViewFlutterPlugin2.activity;
                    if (context2 == null) {
                        context2 = inAppWebViewFlutterPlugin2.applicationContext;
                    }
                    if (context2 != null) {
                        clearAllCache(context2, ((Boolean) methodCall.argument("includeDiskFiles")).booleanValue());
                    }
                }
                result.success(Boolean.TRUE);
                return;
            case '\b':
                InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin3 = this.plugin;
                if (inAppWebViewFlutterPlugin3 != null) {
                    context = inAppWebViewFlutterPlugin3.activity;
                    if (context == null) {
                        context = inAppWebViewFlutterPlugin3.applicationContext;
                    }
                } else {
                    context = null;
                }
                if (context != null) {
                    packageInfo = s.f(context);
                } else {
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    map = convertWebViewPackageToMap(packageInfo);
                }
                result.success(map);
                return;
            case '\t':
                if (t.a("MULTI_PROCESS")) {
                    result.success(Boolean.valueOf(s.m()));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case '\n':
                String str2 = (String) methodCall.argument("keepAliveId");
                if (str2 != null) {
                    disposeKeepAlive(str2);
                }
                result.success(Boolean.TRUE);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
