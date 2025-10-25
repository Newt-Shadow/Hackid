package com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.find_interaction.FindInteractionController;
import com.pichillilorenzo.flutter_inappwebview_android.pull_to_refresh.PullToRefreshLayout;
import com.pichillilorenzo.flutter_inappwebview_android.pull_to_refresh.PullToRefreshSettings;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLRequest;
import com.pichillilorenzo.flutter_inappwebview_android.types.UserScript;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager;
import com.pichillilorenzo.flutter_inappwebview_android.webview.PlatformWebView;
import io.flutter.embedding.android.FlutterView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o1.t;
/* loaded from: classes.dex */
public class FlutterWebView implements PlatformWebView {
    static final String LOG_TAG = "IAWFlutterWebView";
    public String keepAliveId;
    public PullToRefreshLayout pullToRefreshLayout;
    public InAppWebView webView;

    public FlutterWebView(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin, Context context, Object obj, HashMap<String, Object> hashMap) {
        FlutterView flutterView;
        DisplayListenerProxy displayListenerProxy = new DisplayListenerProxy();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        displayListenerProxy.onPreWebViewInitialization(displayManager);
        this.keepAliveId = (String) hashMap.get("keepAliveId");
        Map map = (Map) hashMap.get("contextMenu");
        Integer num = (Integer) hashMap.get("windowId");
        List<Map> list = (List) hashMap.get("initialUserScripts");
        Map<String, Object> map2 = (Map) hashMap.get("pullToRefreshSettings");
        InAppWebViewSettings inAppWebViewSettings = new InAppWebViewSettings();
        inAppWebViewSettings.parse2((Map) hashMap.get("initialSettings"));
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Map map3 : list) {
                arrayList.add(UserScript.fromMap(map3));
            }
        }
        if (inAppWebViewSettings.useHybridComposition.booleanValue()) {
            flutterView = null;
        } else {
            flutterView = inAppWebViewFlutterPlugin.flutterView;
        }
        this.webView = new InAppWebView(context, inAppWebViewFlutterPlugin, obj, num, inAppWebViewSettings, map, flutterView, arrayList);
        displayListenerProxy.onPostWebViewInitialization(displayManager);
        this.webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        PullToRefreshSettings pullToRefreshSettings = new PullToRefreshSettings();
        pullToRefreshSettings.parse2(map2);
        PullToRefreshLayout pullToRefreshLayout = new PullToRefreshLayout(context, inAppWebViewFlutterPlugin, obj, pullToRefreshSettings);
        this.pullToRefreshLayout = pullToRefreshLayout;
        pullToRefreshLayout.addView(this.webView);
        this.pullToRefreshLayout.prepare();
        FindInteractionController findInteractionController = new FindInteractionController(this.webView, inAppWebViewFlutterPlugin, obj, null);
        this.webView.findInteractionController = findInteractionController;
        findInteractionController.prepare();
        this.webView.prepare();
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        InAppWebView inAppWebView;
        if (this.keepAliveId == null && (inAppWebView = this.webView) != null) {
            inAppWebView.dispose();
            this.webView = null;
            PullToRefreshLayout pullToRefreshLayout = this.pullToRefreshLayout;
            if (pullToRefreshLayout != null) {
                pullToRefreshLayout.dispose();
                this.pullToRefreshLayout = null;
            }
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        PullToRefreshLayout pullToRefreshLayout = this.pullToRefreshLayout;
        if (pullToRefreshLayout == null) {
            return this.webView;
        }
        return pullToRefreshLayout;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.PlatformWebView
    @SuppressLint({"RestrictedApi"})
    public void makeInitialLoad(HashMap<String, Object> hashMap) {
        URLRequest fromMap;
        InAppWebViewManager inAppWebViewManager;
        Message message;
        if (this.webView == null) {
            return;
        }
        Integer num = (Integer) hashMap.get("windowId");
        Map map = (Map) hashMap.get("initialUrlRequest");
        String str = (String) hashMap.get("initialFile");
        Map map2 = (Map) hashMap.get("initialData");
        if (num != null) {
            InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.webView.plugin;
            if (inAppWebViewFlutterPlugin != null && (inAppWebViewManager = inAppWebViewFlutterPlugin.inAppWebViewManager) != null && (message = inAppWebViewManager.windowWebViewMessages.get(num)) != null) {
                ((WebView.WebViewTransport) message.obj).setWebView(this.webView);
                message.sendToTarget();
                if (t.a("DOCUMENT_START_SCRIPT")) {
                    this.webView.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.FlutterWebView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            InAppWebView inAppWebView = FlutterWebView.this.webView;
                            if (inAppWebView != null) {
                                inAppWebView.prepareAndAddUserScripts();
                            }
                        }
                    });
                }
            }
        } else if (str != null) {
            try {
                this.webView.loadFile(str);
            } catch (IOException e10) {
                Log.e(LOG_TAG, str + " asset file cannot be found!", e10);
            }
        } else if (map2 != null) {
            this.webView.loadDataWithBaseURL((String) map2.get("baseUrl"), (String) map2.get("data"), (String) map2.get("mimeType"), (String) map2.get("encoding"), (String) map2.get("historyUrl"));
        } else if (map != null && (fromMap = URLRequest.fromMap(map)) != null) {
            this.webView.loadUrl(fromMap);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewAttached(View view) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && !inAppWebView.customSettings.useHybridComposition.booleanValue()) {
            this.webView.setContainerView(view);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewDetached() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && !inAppWebView.customSettings.useHybridComposition.booleanValue()) {
            this.webView.setContainerView(null);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onInputConnectionLocked() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && inAppWebView.inAppBrowserDelegate == null && !inAppWebView.customSettings.useHybridComposition.booleanValue()) {
            this.webView.lockInputConnection();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onInputConnectionUnlocked() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null && inAppWebView.inAppBrowserDelegate == null && !inAppWebView.customSettings.useHybridComposition.booleanValue()) {
            this.webView.unlockInputConnection();
        }
    }
}
