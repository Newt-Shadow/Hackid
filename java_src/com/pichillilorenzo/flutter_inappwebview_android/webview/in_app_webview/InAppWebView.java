package com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.print.PrintAttributes;
import android.print.PrintJob;
import android.print.PrintManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.R;
import com.pichillilorenzo.flutter_inappwebview_android.Util;
import com.pichillilorenzo.flutter_inappwebview_android.content_blocker.ContentBlocker;
import com.pichillilorenzo.flutter_inappwebview_android.content_blocker.ContentBlockerAction;
import com.pichillilorenzo.flutter_inappwebview_android.content_blocker.ContentBlockerHandler;
import com.pichillilorenzo.flutter_inappwebview_android.content_blocker.ContentBlockerTrigger;
import com.pichillilorenzo.flutter_inappwebview_android.find_interaction.FindInteractionChannelDelegate;
import com.pichillilorenzo.flutter_inappwebview_android.find_interaction.FindInteractionController;
import com.pichillilorenzo.flutter_inappwebview_android.in_app_browser.InAppBrowserDelegate;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.InterceptAjaxRequestJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.InterceptFetchRequestJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.JavaScriptBridgeJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.OnLoadResourceJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.OnWindowBlurEventJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.OnWindowFocusEventJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.PluginScriptsUtil;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.PrintJS;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.PromisePolyfillJS;
import com.pichillilorenzo.flutter_inappwebview_android.print_job.PrintJobController;
import com.pichillilorenzo.flutter_inappwebview_android.print_job.PrintJobSettings;
import com.pichillilorenzo.flutter_inappwebview_android.pull_to_refresh.PullToRefreshLayout;
import com.pichillilorenzo.flutter_inappwebview_android.types.ContentWorld;
import com.pichillilorenzo.flutter_inappwebview_android.types.DownloadStartRequest;
import com.pichillilorenzo.flutter_inappwebview_android.types.HitTestResult;
import com.pichillilorenzo.flutter_inappwebview_android.types.MediaSizeExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.PluginScript;
import com.pichillilorenzo.flutter_inappwebview_android.types.PreferredContentModeOptionType;
import com.pichillilorenzo.flutter_inappwebview_android.types.ResolutionExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLRequest;
import com.pichillilorenzo.flutter_inappwebview_android.types.UserContentController;
import com.pichillilorenzo.flutter_inappwebview_android.types.UserScript;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessage;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebViewAssetLoaderExt;
import com.pichillilorenzo.flutter_inappwebview_android.webview.ContextMenuSettings;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager;
import com.pichillilorenzo.flutter_inappwebview_android.webview.JavaScriptBridgeInterface;
import com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate;
import com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageChannel;
import com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageListener;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Pattern;
import o1.q;
import o1.s;
import o1.t;
import org.apache.tika.utils.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class InAppWebView extends InputAwareWebView implements InAppWebViewInterface {
    protected static final String LOG_TAG = "InAppWebView";
    public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_inappwebview_";
    static Handler mHandler = new Handler();
    public Map<String, ValueCallback<String>> callAsyncJavaScriptCallbacks;
    public WebViewChannelDelegate channelDelegate;
    public Runnable checkContextMenuShouldBeClosedTask;
    public Runnable checkScrollStoppedTask;
    public ContentBlockerHandler contentBlockerHandler;
    public Map<String, Object> contextMenu;
    private Point contextMenuPoint;
    public InAppWebViewSettings customSettings;
    public Map<String, ValueCallback<String>> evaluateJavaScriptContentWorldCallbacks;
    public FindInteractionController findInteractionController;
    public LinearLayout floatingContextMenu;
    public GestureDetector gestureDetector;

    /* renamed from: id  reason: collision with root package name */
    public Object f9468id;
    public InAppBrowserDelegate inAppBrowserDelegate;
    public InAppWebViewChromeClient inAppWebViewChromeClient;
    public InAppWebViewClient inAppWebViewClient;
    public InAppWebViewClientCompat inAppWebViewClientCompat;
    public InAppWebViewRenderProcessClient inAppWebViewRenderProcessClient;
    private boolean inFullscreen;
    public int initialPositionScrollStoppedTask;
    private List<UserScript> initialUserOnlyScripts;
    private PluginScript interceptOnlyAsyncAjaxRequestsPluginScript;
    public boolean isLoading;
    public JavaScriptBridgeInterface javaScriptBridgeInterface;
    private Point lastTouch;
    public Handler mainLooperHandler;
    public int newCheckContextMenuShouldBeClosedTaskTask;
    public int newCheckScrollStoppedTask;
    public InAppWebViewFlutterPlugin plugin;
    public Pattern regexToCancelSubFramesLoadingCompiled;
    public UserContentController userContentController;
    public Map<String, WebMessageChannel> webMessageChannels;
    public List<WebMessageListener> webMessageListeners;
    public WebViewAssetLoaderExt webViewAssetLoaderExt;
    public Integer windowId;
    public float zoomScale;

    /* renamed from: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView$21  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass21 {
        static final /* synthetic */ int[] $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType;

        static {
            int[] iArr = new int[PreferredContentModeOptionType.values().length];
            $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType = iArr;
            try {
                iArr[PreferredContentModeOptionType.DESKTOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType[PreferredContentModeOptionType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType[PreferredContentModeOptionType.RECOMMENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    class DownloadStartListener implements DownloadListener {
        DownloadStartListener() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
            DownloadStartRequest downloadStartRequest = new DownloadStartRequest(str, str2, str3, str4, j10, URLUtil.guessFileName(str, str3, str4), null);
            WebViewChannelDelegate webViewChannelDelegate = InAppWebView.this.channelDelegate;
            if (webViewChannelDelegate != null) {
                webViewChannelDelegate.onDownloadStartRequest(downloadStartRequest);
            }
        }
    }

    public InAppWebView(Context context) {
        super(context);
        this.customSettings = new InAppWebViewSettings();
        this.isLoading = false;
        this.inFullscreen = false;
        this.zoomScale = 1.0f;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.mainLooperHandler = new Handler(getWebViewLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.userContentController = new UserContentController(this);
        this.callAsyncJavaScriptCallbacks = new HashMap();
        this.evaluateJavaScriptContentWorldCallbacks = new HashMap();
        this.webMessageChannels = new HashMap();
        this.webMessageListeners = new ArrayList();
        this.initialUserOnlyScripts = new ArrayList();
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    @Deprecated
    private void clearCookies() {
        CookieManager.getInstance().removeAllCookies(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.7
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool) {
            }
        });
    }

    private void sendOnCreateContextMenuEvent() {
        HitTestResult fromWebViewHitTestResult = HitTestResult.fromWebViewHitTestResult(getHitTestResult());
        WebViewChannelDelegate webViewChannelDelegate = this.channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onCreateContextMenu(fromWebViewHitTestResult);
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void addWebMessageListener(WebMessageListener webMessageListener) {
        if (t.a("WEB_MESSAGE_LISTENER")) {
            s.b(this, webMessageListener.jsObjectName, webMessageListener.allowedOriginRules, webMessageListener.listener);
            this.webMessageListeners.add(webMessageListener);
        }
    }

    public void adjustFloatingContextMenuPosition() {
        evaluateJavascript("(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement != null && document.activeElement.tagName.toLowerCase() !== 'iframe') {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();", new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.16
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
                if (InAppWebView.this.floatingContextMenu != null) {
                    if (str != null && !str.equalsIgnoreCase("null")) {
                        int i10 = InAppWebView.this.contextMenuPoint.x;
                        int parseFloat = (int) ((Float.parseFloat(str) * Util.getPixelDensity(InAppWebView.this.getContext())) + (InAppWebView.this.floatingContextMenu.getHeight() / 3.5d));
                        InAppWebView.this.contextMenuPoint.y = parseFloat;
                        InAppWebView.this.onFloatingActionGlobalLayout(i10, parseFloat);
                        return;
                    }
                    InAppWebView.this.floatingContextMenu.setVisibility(0);
                    InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100L).setListener(null);
                    InAppWebView inAppWebView = InAppWebView.this;
                    inAppWebView.onFloatingActionGlobalLayout(inAppWebView.contextMenuPoint.x, InAppWebView.this.contextMenuPoint.y);
                }
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void callAsyncJavaScript(String str, Map<String, Object> map, ContentWorld contentWorld, ValueCallback<String> valueCallback) {
        String uuid = UUID.randomUUID().toString();
        if (valueCallback != null) {
            this.callAsyncJavaScriptCallbacks.put(uuid, valueCallback);
        }
        Iterator<String> keys = new JSONObject(map).keys();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (keys.hasNext()) {
            String next = keys.next();
            arrayList.add(next);
            arrayList2.add("obj." + next);
        }
        String join = TextUtils.join(", ", arrayList);
        String join2 = TextUtils.join(", ", arrayList2);
        evaluateJavascript(this.userContentController.generateCodeForScriptEvaluation(PluginScriptsUtil.CALL_ASYNC_JAVA_SCRIPT_WRAPPER_JS_SOURCE.replace(PluginScriptsUtil.VAR_FUNCTION_ARGUMENT_NAMES, join).replace(PluginScriptsUtil.VAR_FUNCTION_ARGUMENT_VALUES, join2).replace(PluginScriptsUtil.VAR_FUNCTION_ARGUMENTS_OBJ, Util.JSONStringify(map)).replace(PluginScriptsUtil.VAR_FUNCTION_BODY, str).replace(PluginScriptsUtil.VAR_RESULT_UUID, uuid).replace(PluginScriptsUtil.VAR_RESULT_UUID, uuid), contentWorld), null);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public boolean canScrollHorizontally() {
        if (computeHorizontalScrollRange() > computeHorizontalScrollExtent()) {
            return true;
        }
        return false;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public boolean canScrollVertically() {
        if (computeVerticalScrollRange() > computeVerticalScrollExtent()) {
            return true;
        }
        return false;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    @Deprecated
    public void clearAllCache() {
        clearCache(true);
        clearCookies();
        clearFormData();
        WebStorage.getInstance().deleteAllData();
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public WebMessageChannel createCompatWebMessageChannel() {
        String uuid = UUID.randomUUID().toString();
        WebMessageChannel webMessageChannel = new WebMessageChannel(uuid, this);
        this.webMessageChannels.put(uuid, webMessageChannel);
        return webMessageChannel;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public WebMessageChannel createWebMessageChannel(ValueCallback<WebMessageChannel> valueCallback) {
        WebMessageChannel createCompatWebMessageChannel = createCompatWebMessageChannel();
        valueCallback.onReceiveValue(createCompatWebMessageChannel);
        return createCompatWebMessageChannel;
    }

    public WebViewClient createWebViewClient(InAppBrowserDelegate inAppBrowserDelegate) {
        boolean z10;
        int i10;
        PackageInfo f10 = s.f(getContext());
        if (f10 == null) {
            Log.d(LOG_TAG, "Using InAppWebViewClient implementation");
            return new InAppWebViewClient(inAppBrowserDelegate);
        }
        boolean z11 = true;
        boolean z12 = false;
        if (!"com.android.webview".equals(f10.packageName) && !"com.google.android.webview".equals(f10.packageName) && !"com.android.chrome".equals(f10.packageName)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            String str = f10.versionName;
            if (str == null) {
                str = "";
            }
            try {
                if (str.contains(".")) {
                    i10 = Integer.parseInt(str.split("\\.")[0]);
                } else {
                    i10 = 0;
                }
                if (i10 < 73) {
                    z11 = false;
                }
                z12 = z11;
            } catch (NumberFormatException unused) {
            }
        }
        if (!z12 && z10) {
            Log.d(LOG_TAG, "Using InAppWebViewClient implementation");
            return new InAppWebViewClient(inAppBrowserDelegate);
        }
        Log.d(LOG_TAG, "Using InAppWebViewClientCompat implementation");
        return new InAppWebViewClientCompat(inAppBrowserDelegate);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InputAwareWebView
    public void dispose() {
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin;
        InAppWebViewManager inAppWebViewManager;
        WebViewChannelDelegate webViewChannelDelegate = this.channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        super.dispose();
        getSettings().setJavaScriptEnabled(false);
        removeJavascriptInterface(JavaScriptBridgeJS.JAVASCRIPT_BRIDGE_NAME);
        if (Build.VERSION.SDK_INT >= 29 && t.a("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE")) {
            s.q(this, null);
        }
        setWebChromeClient(new WebChromeClient());
        setWebViewClient(new WebViewClient() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.20
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                InAppWebView.this.destroy();
            }
        });
        this.interceptOnlyAsyncAjaxRequestsPluginScript = null;
        this.userContentController.dispose();
        FindInteractionController findInteractionController = this.findInteractionController;
        if (findInteractionController != null) {
            findInteractionController.dispose();
            this.findInteractionController = null;
        }
        WebViewAssetLoaderExt webViewAssetLoaderExt = this.webViewAssetLoaderExt;
        if (webViewAssetLoaderExt != null) {
            webViewAssetLoaderExt.dispose();
            this.webViewAssetLoaderExt = null;
        }
        Integer num = this.windowId;
        if (num != null && (inAppWebViewFlutterPlugin = this.plugin) != null && (inAppWebViewManager = inAppWebViewFlutterPlugin.inAppWebViewManager) != null) {
            inAppWebViewManager.windowWebViewMessages.remove(num);
        }
        this.mainLooperHandler.removeCallbacksAndMessages(null);
        mHandler.removeCallbacksAndMessages(null);
        disposeWebMessageChannels();
        disposeWebMessageListeners();
        removeAllViews();
        Runnable runnable = this.checkContextMenuShouldBeClosedTask;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.checkScrollStoppedTask;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        this.callAsyncJavaScriptCallbacks.clear();
        this.evaluateJavaScriptContentWorldCallbacks.clear();
        this.inAppBrowserDelegate = null;
        InAppWebViewRenderProcessClient inAppWebViewRenderProcessClient = this.inAppWebViewRenderProcessClient;
        if (inAppWebViewRenderProcessClient != null) {
            inAppWebViewRenderProcessClient.dispose();
            this.inAppWebViewRenderProcessClient = null;
        }
        InAppWebViewChromeClient inAppWebViewChromeClient = this.inAppWebViewChromeClient;
        if (inAppWebViewChromeClient != null) {
            inAppWebViewChromeClient.dispose();
            this.inAppWebViewChromeClient = null;
        }
        InAppWebViewClientCompat inAppWebViewClientCompat = this.inAppWebViewClientCompat;
        if (inAppWebViewClientCompat != null) {
            inAppWebViewClientCompat.dispose();
            this.inAppWebViewClientCompat = null;
        }
        InAppWebViewClient inAppWebViewClient = this.inAppWebViewClient;
        if (inAppWebViewClient != null) {
            inAppWebViewClient.dispose();
            this.inAppWebViewClient = null;
        }
        JavaScriptBridgeInterface javaScriptBridgeInterface = this.javaScriptBridgeInterface;
        if (javaScriptBridgeInterface != null) {
            javaScriptBridgeInterface.dispose();
            this.javaScriptBridgeInterface = null;
        }
        this.plugin = null;
        loadUrl("about:blank");
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void disposeWebMessageChannels() {
        for (WebMessageChannel webMessageChannel : this.webMessageChannels.values()) {
            webMessageChannel.dispose();
        }
        this.webMessageChannels.clear();
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void disposeWebMessageListeners() {
        for (WebMessageListener webMessageListener : this.webMessageListeners) {
            webMessageListener.dispose();
        }
        this.webMessageListeners.clear();
    }

    public void enablePluginScriptAtRuntime(final String str, final boolean z10, final PluginScript pluginScript) {
        evaluateJavascript("window." + str, null, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.9
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str2) {
                if ((str2 == null || str2.equalsIgnoreCase("null")) ? false : true) {
                    InAppWebView.this.evaluateJavascript("window." + str + " = " + z10 + ";", null, null);
                    if (z10) {
                        return;
                    }
                    InAppWebView.this.userContentController.removePluginScript(pluginScript);
                } else if (z10) {
                    InAppWebView.this.evaluateJavascript(pluginScript.getSource(), null, null);
                    InAppWebView.this.userContentController.addPluginScript(pluginScript);
                }
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void evaluateJavascript(String str, ContentWorld contentWorld, ValueCallback<String> valueCallback) {
        injectDeferredObject(str, contentWorld, null, valueCallback);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public WebViewChannelDelegate getChannelDelegate() {
        return this.channelDelegate;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void getContentHeight(ValueCallback<Integer> valueCallback) {
        valueCallback.onReceiveValue(Integer.valueOf(getContentHeight()));
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void getContentWidth(final ValueCallback<Integer> valueCallback) {
        evaluateJavascript("document.documentElement.scrollWidth;", new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.19
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
                valueCallback.onReceiveValue((str == null || str.equalsIgnoreCase("null")) ? null : Integer.valueOf(Integer.parseInt(str)));
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Map<String, Object> getContextMenu() {
        return this.contextMenu;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public HashMap<String, Object> getCopyBackForwardList() {
        WebBackForwardList copyBackForwardList = copyBackForwardList();
        int size = copyBackForwardList.getSize();
        int currentIndex = copyBackForwardList.getCurrentIndex();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            WebHistoryItem itemAtIndex = copyBackForwardList.getItemAtIndex(i10);
            HashMap hashMap = new HashMap();
            hashMap.put("originalUrl", itemAtIndex.getOriginalUrl());
            hashMap.put("title", itemAtIndex.getTitle());
            hashMap.put("url", itemAtIndex.getUrl());
            arrayList.add(hashMap);
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("list", arrayList);
        hashMap2.put("currentIndex", Integer.valueOf(currentIndex));
        return hashMap2;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Map<String, Object> getCustomSettings() {
        InAppWebViewSettings inAppWebViewSettings = this.customSettings;
        if (inAppWebViewSettings != null) {
            return inAppWebViewSettings.getRealSettings((InAppWebViewInterface) this);
        }
        return null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void getHitTestResult(ValueCallback<HitTestResult> valueCallback) {
        valueCallback.onReceiveValue(HitTestResult.fromWebViewHitTestResult(getHitTestResult()));
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public InAppBrowserDelegate getInAppBrowserDelegate() {
        return this.inAppBrowserDelegate;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public InAppWebViewFlutterPlugin getPlugin() {
        return this.plugin;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void getSelectedText(final ValueCallback<String> valueCallback) {
        evaluateJavascript(PluginScriptsUtil.GET_SELECTED_TEXT_JS_SOURCE, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.17
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
                valueCallback.onReceiveValue((str == null || str.equalsIgnoreCase("null")) ? null : str.substring(1, str.length() - 1));
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public UserContentController getUserContentController() {
        return this.userContentController;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Map<String, WebMessageChannel> getWebMessageChannels() {
        return this.webMessageChannels;
    }

    @Override // android.webkit.WebView, com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Looper getWebViewLooper() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getWebViewLooper();
        }
        return Looper.getMainLooper();
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public float getZoomScale() {
        return this.zoomScale;
    }

    public void hideContextMenu() {
        removeView(this.floatingContextMenu);
        this.floatingContextMenu = null;
        WebViewChannelDelegate webViewChannelDelegate = this.channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onHideContextMenu();
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void injectCSSCode(String str) {
        injectDeferredObject(str, null, "(function(d) { var style = d.createElement('style'); style.innerHTML = %s; if (d.head != null) { d.head.appendChild(style); } })(document);", null);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void injectCSSFileFromUrl(String str, Map<String, Object> map) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10 = "";
        if (map == null) {
            str2 = "";
        } else {
            if (((String) map.get(Chapter.KEY_ID)) == null) {
                str4 = "";
            } else {
                str4 = " link.id = '" + str3.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("media")) != null) {
                str4 = str4 + " link.media = '" + str5.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("crossOrigin")) != null) {
                str4 = str4 + " link.crossOrigin = '" + str6.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("integrity")) != null) {
                str4 = str4 + " link.integrity = '" + str7.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("referrerPolicy")) != null) {
                str4 = str4 + " link.referrerPolicy = '" + str8.replaceAll("'", "\\\\'") + "'; ";
            }
            Boolean bool = (Boolean) map.get("disabled");
            if (bool != null && bool.booleanValue()) {
                str4 = str4 + " link.disabled = true; ";
            }
            Boolean bool2 = (Boolean) map.get("alternate");
            if (bool2 != null && bool2.booleanValue()) {
                str10 = "alternate ";
            }
            if (((String) map.get("title")) != null) {
                str2 = str4 + " link.title = '" + str9.replaceAll("'", "\\\\'") + "'; ";
            } else {
                str2 = str4;
            }
        }
        injectDeferredObject(str, null, "(function(d) { var link = d.createElement('link'); link.rel='" + str10 + "stylesheet'; link.type='text/css'; " + str2 + " link.href = %s; if (d.head != null) { d.head.appendChild(link); } })(document);", null);
    }

    public void injectDeferredObject(String str, final ContentWorld contentWorld, String str2, final ValueCallback<String> valueCallback) {
        String str3;
        String str4;
        final String str5;
        if (contentWorld != null && !contentWorld.equals(ContentWorld.PAGE)) {
            str3 = UUID.randomUUID().toString();
        } else {
            str3 = null;
        }
        final String str6 = str3;
        if (str2 != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            String jSONArray2 = jSONArray.toString();
            str4 = String.format(str2, jSONArray2.substring(1, jSONArray2.length() - 1));
        } else {
            str4 = str;
        }
        if (str6 != null && valueCallback != null) {
            this.evaluateJavaScriptContentWorldCallbacks.put(str6, valueCallback);
            str5 = Util.replaceAll(PluginScriptsUtil.EVALUATE_JAVASCRIPT_WITH_CONTENT_WORLD_WRAPPER_JS_SOURCE, PluginScriptsUtil.VAR_RANDOM_NAME, "_flutter_inappwebview_" + Math.round(Math.random() * 1000000.0d)).replace(PluginScriptsUtil.VAR_PLACEHOLDER_VALUE, UserContentController.escapeCode(str)).replace(PluginScriptsUtil.VAR_RESULT_UUID, str6);
        } else {
            str5 = str4;
        }
        this.mainLooperHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.10
            @Override // java.lang.Runnable
            public void run() {
                InAppWebView.this.evaluateJavascript(InAppWebView.this.userContentController.generateCodeForScriptEvaluation(str5, contentWorld), new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.10.1
                    @Override // android.webkit.ValueCallback
                    public void onReceiveValue(String str7) {
                        ValueCallback valueCallback2;
                        AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                        if (str6 != null || (valueCallback2 = valueCallback) == null) {
                            return;
                        }
                        valueCallback2.onReceiveValue(str7);
                    }
                });
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void injectJavascriptFileFromUrl(String str, Map<String, Object> map) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = "";
        if (map != null) {
            if (((String) map.get("type")) != null) {
                str7 = " script.type = '" + str2.replaceAll("'", "\\\\'") + "'; ";
            }
            String str8 = (String) map.get(Chapter.KEY_ID);
            if (str8 != null) {
                String replaceAll = str8.replaceAll("'", "\\\\'");
                str7 = ((str7 + " script.id = '" + replaceAll + "'; ") + " script.onload = function() {  if (window.flutter_inappwebview != null) {    window.flutter_inappwebview.callHandler('onInjectedScriptLoaded', '" + replaceAll + "');  }};") + " script.onerror = function() {  if (window.flutter_inappwebview != null) {    window.flutter_inappwebview.callHandler('onInjectedScriptError', '" + replaceAll + "');  }};";
            }
            Boolean bool = (Boolean) map.get("async");
            if (bool != null && bool.booleanValue()) {
                str7 = str7 + " script.async = true; ";
            }
            Boolean bool2 = (Boolean) map.get("defer");
            if (bool2 != null && bool2.booleanValue()) {
                str7 = str7 + " script.defer = true; ";
            }
            if (((String) map.get("crossOrigin")) != null) {
                str7 = str7 + " script.crossOrigin = '" + str3.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("integrity")) != null) {
                str7 = str7 + " script.integrity = '" + str4.replaceAll("'", "\\\\'") + "'; ";
            }
            Boolean bool3 = (Boolean) map.get("noModule");
            if (bool3 != null && bool3.booleanValue()) {
                str7 = str7 + " script.noModule = true; ";
            }
            if (((String) map.get("nonce")) != null) {
                str7 = str7 + " script.nonce = '" + str5.replaceAll("'", "\\\\'") + "'; ";
            }
            if (((String) map.get("referrerPolicy")) != null) {
                str7 = str7 + " script.referrerPolicy = '" + str6.replaceAll("'", "\\\\'") + "'; ";
            }
        }
        injectDeferredObject(str, null, "(function(d) { var script = d.createElement('script'); " + str7 + " script.src = %s; if (d.body != null) { d.body.appendChild(script); } })(document);", null);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public boolean isInFullscreen() {
        return this.inFullscreen;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public boolean isLoading() {
        return this.isLoading;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    @TargetApi(21)
    public void isSecureContext(final ValueCallback<Boolean> valueCallback) {
        evaluateJavascript("window.isSecureContext", new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.18
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
                if (str != null && !str.isEmpty() && !str.equalsIgnoreCase("null") && !str.equalsIgnoreCase("false")) {
                    valueCallback.onReceiveValue(Boolean.TRUE);
                } else {
                    valueCallback.onReceiveValue(Boolean.FALSE);
                }
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void loadFile(String str) {
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin == null) {
            return;
        }
        loadUrl(Util.getUrlAsset(inAppWebViewFlutterPlugin, str));
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void loadUrl(URLRequest uRLRequest) {
        String url = uRLRequest.getUrl();
        String method = uRLRequest.getMethod();
        if (method != null && method.equals("POST")) {
            postUrl(url, uRLRequest.getBody());
            return;
        }
        Map<String, String> headers = uRLRequest.getHeaders();
        if (headers != null) {
            loadUrl(url, headers);
        } else {
            loadUrl(url);
        }
    }

    @Override // android.view.View
    public void onCreateContextMenu(ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        sendOnCreateContextMenuEvent();
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        View view;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection == null && !this.customSettings.useHybridComposition.booleanValue() && (view = this.containerView) != null) {
            view.getHandler().postDelayed(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.11
                @Override // java.lang.Runnable
                public void run() {
                    boolean isAcceptingText;
                    View view2;
                    InputMethodManager inputMethodManager = (InputMethodManager) InAppWebView.this.getContext().getSystemService("input_method");
                    if (inputMethodManager != null) {
                        try {
                            isAcceptingText = inputMethodManager.isAcceptingText();
                        } catch (Exception unused) {
                        }
                        view2 = InAppWebView.this.containerView;
                        if (view2 == null && inputMethodManager != null && !isAcceptingText) {
                            inputMethodManager.hideSoftInputFromWindow(view2.getWindowToken(), 2);
                            return;
                        }
                        return;
                    }
                    isAcceptingText = false;
                    view2 = InAppWebView.this.containerView;
                    if (view2 == null) {
                    }
                }
            }, 128L);
        }
        return onCreateInputConnection;
    }

    public void onFloatingActionGlobalLayout(int i10, int i11) {
        int width = getWidth();
        getHeight();
        int width2 = this.floatingContextMenu.getWidth();
        int height = this.floatingContextMenu.getHeight();
        int i12 = i10 - (width2 / 2);
        if (i12 < 0) {
            i12 = 0;
        } else if (i12 + width2 > width) {
            i12 = width - width2;
        }
        float f10 = i11 - (height * 1.5f);
        if (f10 < 0.0f) {
            f10 = i11 + height;
        }
        updateViewLayout(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i12 + getScrollX(), ((int) f10) + getScrollY()));
        this.mainLooperHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.15
            @Override // java.lang.Runnable
            public void run() {
                LinearLayout linearLayout = InAppWebView.this.floatingContextMenu;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                    InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100L).setListener(null);
                }
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        boolean z12;
        WebViewChannelDelegate webViewChannelDelegate;
        super.onOverScrolled(i10, i11, z10, z11);
        boolean z13 = true;
        if (canScrollHorizontally() && z10) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!canScrollVertically() || !z11) {
            z13 = false;
        }
        ViewParent parent = getParent();
        if ((parent instanceof PullToRefreshLayout) && z13 && i11 <= 10) {
            PullToRefreshLayout pullToRefreshLayout = (PullToRefreshLayout) parent;
            setOverScrollMode(2);
            pullToRefreshLayout.setEnabled(pullToRefreshLayout.settings.enabled.booleanValue());
            setOverScrollMode(this.customSettings.overScrollMode.intValue());
        }
        if ((z12 || z13) && (webViewChannelDelegate = this.channelDelegate) != null) {
            webViewChannelDelegate.onOverScrolled(i10, i11, z12, z13);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        LinearLayout linearLayout = this.floatingContextMenu;
        if (linearLayout != null) {
            linearLayout.setAlpha(0.0f);
            this.floatingContextMenu.setVisibility(8);
        }
        WebViewChannelDelegate webViewChannelDelegate = this.channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onScrollChanged(i10, i11);
        }
    }

    public void onScrollStopped() {
        if (this.floatingContextMenu != null) {
            adjustFloatingContextMenuPosition();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.lastTouch = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        ViewParent parent = getParent();
        if (parent instanceof PullToRefreshLayout) {
            PullToRefreshLayout pullToRefreshLayout = (PullToRefreshLayout) parent;
            if (motionEvent.getActionMasked() == 0) {
                pullToRefreshLayout.setEnabled(false);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        if (this.customSettings.allowBackgroundAudioPlaying.booleanValue()) {
            if (i10 != 8) {
                super.onWindowVisibilityChanged(0);
                return;
            }
            return;
        }
        super.onWindowVisibilityChanged(i10);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void postWebMessage(WebMessage webMessage, Uri uri, ValueCallback<String> valueCallback) {
        throw new UnsupportedOperationException();
    }

    @SuppressLint({"RestrictedApi"})
    public void prepare() {
        boolean z10;
        boolean z11;
        String defaultUserAgent;
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null) {
            this.webViewAssetLoaderExt = WebViewAssetLoaderExt.fromMap(this.customSettings.webViewAssetLoader, inAppWebViewFlutterPlugin, getContext());
        }
        JavaScriptBridgeInterface javaScriptBridgeInterface = new JavaScriptBridgeInterface(this);
        this.javaScriptBridgeInterface = javaScriptBridgeInterface;
        addJavascriptInterface(javaScriptBridgeInterface, JavaScriptBridgeJS.JAVASCRIPT_BRIDGE_NAME);
        InAppWebViewChromeClient inAppWebViewChromeClient = new InAppWebViewChromeClient(this.plugin, this, this.inAppBrowserDelegate);
        this.inAppWebViewChromeClient = inAppWebViewChromeClient;
        setWebChromeClient(inAppWebViewChromeClient);
        WebViewClient createWebViewClient = createWebViewClient(this.inAppBrowserDelegate);
        if (createWebViewClient instanceof InAppWebViewClientCompat) {
            InAppWebViewClientCompat inAppWebViewClientCompat = (InAppWebViewClientCompat) createWebViewClient;
            this.inAppWebViewClientCompat = inAppWebViewClientCompat;
            setWebViewClient(inAppWebViewClientCompat);
        } else if (createWebViewClient instanceof InAppWebViewClient) {
            InAppWebViewClient inAppWebViewClient = (InAppWebViewClient) createWebViewClient;
            this.inAppWebViewClient = inAppWebViewClient;
            setWebViewClient(inAppWebViewClient);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29 && t.a("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE")) {
            InAppWebViewRenderProcessClient inAppWebViewRenderProcessClient = new InAppWebViewRenderProcessClient();
            this.inAppWebViewRenderProcessClient = inAppWebViewRenderProcessClient;
            s.q(this, inAppWebViewRenderProcessClient);
        }
        if (this.windowId == null || !t.a("DOCUMENT_START_SCRIPT")) {
            prepareAndAddUserScripts();
        }
        if (this.customSettings.useOnDownloadStart.booleanValue()) {
            setDownloadListener(new DownloadStartListener());
        }
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(this.customSettings.javaScriptEnabled.booleanValue());
        settings.setJavaScriptCanOpenWindowsAutomatically(this.customSettings.javaScriptCanOpenWindowsAutomatically.booleanValue());
        settings.setBuiltInZoomControls(this.customSettings.builtInZoomControls.booleanValue());
        settings.setDisplayZoomControls(this.customSettings.displayZoomControls.booleanValue());
        settings.setSupportMultipleWindows(this.customSettings.supportMultipleWindows.booleanValue());
        if (t.a("SAFE_BROWSING_ENABLE")) {
            q.q(settings, this.customSettings.safeBrowsingEnabled.booleanValue());
        } else if (i10 >= 26) {
            settings.setSafeBrowsingEnabled(this.customSettings.safeBrowsingEnabled.booleanValue());
        }
        settings.setMediaPlaybackRequiresUserGesture(this.customSettings.mediaPlaybackRequiresUserGesture.booleanValue());
        settings.setDatabaseEnabled(this.customSettings.databaseEnabled.booleanValue());
        settings.setDomStorageEnabled(this.customSettings.domStorageEnabled.booleanValue());
        String str = this.customSettings.userAgent;
        if (str != null && !str.isEmpty()) {
            settings.setUserAgentString(this.customSettings.userAgent);
        } else {
            settings.setUserAgentString(WebSettings.getDefaultUserAgent(getContext()));
        }
        String str2 = this.customSettings.applicationNameForUserAgent;
        if (str2 != null && !str2.isEmpty()) {
            String str3 = this.customSettings.userAgent;
            if (str3 != null && !str3.isEmpty()) {
                defaultUserAgent = this.customSettings.userAgent;
            } else {
                defaultUserAgent = WebSettings.getDefaultUserAgent(getContext());
            }
            settings.setUserAgentString(defaultUserAgent + StringUtils.SPACE + this.customSettings.applicationNameForUserAgent);
        }
        if (this.customSettings.clearCache.booleanValue()) {
            clearAllCache();
        } else if (this.customSettings.clearSessionCache.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, this.customSettings.thirdPartyCookiesEnabled.booleanValue());
        settings.setLoadWithOverviewMode(this.customSettings.loadWithOverviewMode.booleanValue());
        settings.setUseWideViewPort(this.customSettings.useWideViewPort.booleanValue());
        settings.setSupportZoom(this.customSettings.supportZoom.booleanValue());
        settings.setTextZoom(this.customSettings.textZoom.intValue());
        if (!this.customSettings.disableVerticalScroll.booleanValue() && this.customSettings.verticalScrollBarEnabled.booleanValue()) {
            z10 = true;
        } else {
            z10 = false;
        }
        setVerticalScrollBarEnabled(z10);
        if (!this.customSettings.disableHorizontalScroll.booleanValue() && this.customSettings.horizontalScrollBarEnabled.booleanValue()) {
            z11 = true;
        } else {
            z11 = false;
        }
        setHorizontalScrollBarEnabled(z11);
        if (this.customSettings.transparentBackground.booleanValue()) {
            setBackgroundColor(0);
        }
        Integer num = this.customSettings.mixedContentMode;
        if (num != null) {
            settings.setMixedContentMode(num.intValue());
        }
        settings.setAllowContentAccess(this.customSettings.allowContentAccess.booleanValue());
        settings.setAllowFileAccess(this.customSettings.allowFileAccess.booleanValue());
        settings.setAllowFileAccessFromFileURLs(this.customSettings.allowFileAccessFromFileURLs.booleanValue());
        settings.setAllowUniversalAccessFromFileURLs(this.customSettings.allowUniversalAccessFromFileURLs.booleanValue());
        setCacheEnabled(this.customSettings.cacheEnabled.booleanValue());
        String str4 = this.customSettings.appCachePath;
        if (str4 != null && !str4.isEmpty() && this.customSettings.cacheEnabled.booleanValue()) {
            Util.invokeMethodIfExists(settings, "setAppCachePath", this.customSettings.appCachePath);
        }
        settings.setBlockNetworkImage(this.customSettings.blockNetworkImage.booleanValue());
        settings.setBlockNetworkLoads(this.customSettings.blockNetworkLoads.booleanValue());
        Integer num2 = this.customSettings.cacheMode;
        if (num2 != null) {
            settings.setCacheMode(num2.intValue());
        }
        settings.setCursiveFontFamily(this.customSettings.cursiveFontFamily);
        settings.setDefaultFixedFontSize(this.customSettings.defaultFixedFontSize.intValue());
        settings.setDefaultFontSize(this.customSettings.defaultFontSize.intValue());
        settings.setDefaultTextEncodingName(this.customSettings.defaultTextEncodingName);
        if (this.customSettings.disabledActionModeMenuItems != null) {
            if (t.a("DISABLED_ACTION_MODE_MENU_ITEMS")) {
                q.k(settings, this.customSettings.disabledActionModeMenuItems.intValue());
            } else {
                settings.setDisabledActionModeMenuItems(this.customSettings.disabledActionModeMenuItems.intValue());
            }
        }
        settings.setFantasyFontFamily(this.customSettings.fantasyFontFamily);
        settings.setFixedFontFamily(this.customSettings.fixedFontFamily);
        if (this.customSettings.forceDark != null) {
            if (t.a("FORCE_DARK")) {
                q.m(settings, this.customSettings.forceDark.intValue());
            } else if (i10 >= 29) {
                settings.setForceDark(this.customSettings.forceDark.intValue());
            }
        }
        if (this.customSettings.forceDarkStrategy != null && t.a("FORCE_DARK_STRATEGY")) {
            q.n(settings, this.customSettings.forceDarkStrategy.intValue());
        }
        settings.setGeolocationEnabled(this.customSettings.geolocationEnabled.booleanValue());
        WebSettings.LayoutAlgorithm layoutAlgorithm = this.customSettings.layoutAlgorithm;
        if (layoutAlgorithm != null) {
            if (layoutAlgorithm.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                settings.setLayoutAlgorithm(this.customSettings.layoutAlgorithm);
            } else {
                settings.setLayoutAlgorithm(this.customSettings.layoutAlgorithm);
            }
        }
        settings.setLoadsImagesAutomatically(this.customSettings.loadsImagesAutomatically.booleanValue());
        settings.setMinimumFontSize(this.customSettings.minimumFontSize.intValue());
        settings.setMinimumLogicalFontSize(this.customSettings.minimumLogicalFontSize.intValue());
        setInitialScale(this.customSettings.initialScale.intValue());
        settings.setNeedInitialFocus(this.customSettings.needInitialFocus.booleanValue());
        if (t.a("OFF_SCREEN_PRERASTER")) {
            q.o(settings, this.customSettings.offscreenPreRaster.booleanValue());
        } else {
            settings.setOffscreenPreRaster(this.customSettings.offscreenPreRaster.booleanValue());
        }
        settings.setSansSerifFontFamily(this.customSettings.sansSerifFontFamily);
        settings.setSerifFontFamily(this.customSettings.serifFontFamily);
        settings.setStandardFontFamily(this.customSettings.standardFontFamily);
        Integer num3 = this.customSettings.preferredContentMode;
        if (num3 != null && num3.intValue() == PreferredContentModeOptionType.DESKTOP.toValue()) {
            setDesktopMode(true);
        }
        settings.setSaveFormData(this.customSettings.saveFormData.booleanValue());
        if (this.customSettings.incognito.booleanValue()) {
            setIncognito(true);
        }
        if (this.customSettings.useHybridComposition.booleanValue()) {
            if (this.customSettings.hardwareAcceleration.booleanValue()) {
                setLayerType(2, null);
            } else {
                setLayerType(0, null);
            }
        }
        String str5 = this.customSettings.regexToCancelSubFramesLoading;
        if (str5 != null) {
            this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(str5);
        }
        setScrollBarStyle(this.customSettings.scrollBarStyle.intValue());
        InAppWebViewSettings inAppWebViewSettings = this.customSettings;
        Integer num4 = inAppWebViewSettings.scrollBarDefaultDelayBeforeFade;
        if (num4 != null) {
            setScrollBarDefaultDelayBeforeFade(num4.intValue());
        } else {
            inAppWebViewSettings.scrollBarDefaultDelayBeforeFade = Integer.valueOf(getScrollBarDefaultDelayBeforeFade());
        }
        setScrollbarFadingEnabled(this.customSettings.scrollbarFadingEnabled.booleanValue());
        InAppWebViewSettings inAppWebViewSettings2 = this.customSettings;
        Integer num5 = inAppWebViewSettings2.scrollBarFadeDuration;
        if (num5 != null) {
            setScrollBarFadeDuration(num5.intValue());
        } else {
            inAppWebViewSettings2.scrollBarFadeDuration = Integer.valueOf(getScrollBarFadeDuration());
        }
        setVerticalScrollbarPosition(this.customSettings.verticalScrollbarPosition.intValue());
        if (i10 >= 29) {
            if (this.customSettings.verticalScrollbarThumbColor != null) {
                setVerticalScrollbarThumbDrawable(new ColorDrawable(Color.parseColor(this.customSettings.verticalScrollbarThumbColor)));
            }
            if (this.customSettings.verticalScrollbarTrackColor != null) {
                setVerticalScrollbarTrackDrawable(new ColorDrawable(Color.parseColor(this.customSettings.verticalScrollbarTrackColor)));
            }
            if (this.customSettings.horizontalScrollbarThumbColor != null) {
                setHorizontalScrollbarThumbDrawable(new ColorDrawable(Color.parseColor(this.customSettings.horizontalScrollbarThumbColor)));
            }
            if (this.customSettings.horizontalScrollbarTrackColor != null) {
                setHorizontalScrollbarTrackDrawable(new ColorDrawable(Color.parseColor(this.customSettings.horizontalScrollbarTrackColor)));
            }
        }
        setOverScrollMode(this.customSettings.overScrollMode.intValue());
        Boolean bool = this.customSettings.networkAvailable;
        if (bool != null) {
            setNetworkAvailable(bool.booleanValue());
        }
        Map<String, Object> map = this.customSettings.rendererPriorityPolicy;
        if (map != null && !map.isEmpty() && i10 >= 26) {
            setRendererPriorityPolicy(((Integer) this.customSettings.rendererPriorityPolicy.get("rendererRequestedPriority")).intValue(), ((Boolean) this.customSettings.rendererPriorityPolicy.get("waivedWhenNotVisible")).booleanValue());
        }
        if (t.a("ALGORITHMIC_DARKENING") && i10 >= 29) {
            q.j(settings, this.customSettings.algorithmicDarkeningAllowed.booleanValue());
        }
        if (t.a("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY")) {
            q.l(settings, this.customSettings.enterpriseAuthenticationAppLinkPolicyEnabled.booleanValue());
        }
        if (this.customSettings.requestedWithHeaderOriginAllowList != null && t.a("REQUESTED_WITH_HEADER_ALLOW_LIST")) {
            q.p(settings, this.customSettings.requestedWithHeaderOriginAllowList);
        }
        this.contentBlockerHandler.getRuleList().clear();
        for (Map<String, Map<String, Object>> map2 : this.customSettings.contentBlockers) {
            this.contentBlockerHandler.getRuleList().add(new ContentBlocker(ContentBlockerTrigger.fromMap(map2.get("trigger")), ContentBlockerAction.fromMap(map2.get("action"))));
        }
        setFindListener(new WebView.FindListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.1
            @Override // android.webkit.WebView.FindListener
            public void onFindResultReceived(int i11, int i12, boolean z12) {
                FindInteractionChannelDelegate findInteractionChannelDelegate;
                FindInteractionController findInteractionController = InAppWebView.this.findInteractionController;
                if (findInteractionController != null && (findInteractionChannelDelegate = findInteractionController.channelDelegate) != null) {
                    findInteractionChannelDelegate.onFindResultReceived(i11, i12, z12);
                }
                WebViewChannelDelegate webViewChannelDelegate = InAppWebView.this.channelDelegate;
                if (webViewChannelDelegate != null) {
                    webViewChannelDelegate.onFindResultReceived(i11, i12, z12);
                }
            }
        });
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                InAppWebView inAppWebView = InAppWebView.this;
                if (inAppWebView.floatingContextMenu != null) {
                    inAppWebView.hideContextMenu();
                }
                return super.onSingleTapUp(motionEvent);
            }
        });
        this.checkScrollStoppedTask = new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.3
            @Override // java.lang.Runnable
            public void run() {
                int scrollY = InAppWebView.this.getScrollY();
                InAppWebView inAppWebView = InAppWebView.this;
                if (inAppWebView.initialPositionScrollStoppedTask - scrollY == 0) {
                    inAppWebView.onScrollStopped();
                    return;
                }
                inAppWebView.initialPositionScrollStoppedTask = inAppWebView.getScrollY();
                InAppWebView inAppWebView2 = InAppWebView.this;
                inAppWebView2.mainLooperHandler.postDelayed(inAppWebView2.checkScrollStoppedTask, inAppWebView2.newCheckScrollStoppedTask);
            }
        };
        if (!this.customSettings.useHybridComposition.booleanValue()) {
            this.checkContextMenuShouldBeClosedTask = new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    InAppWebView inAppWebView = InAppWebView.this;
                    if (inAppWebView.floatingContextMenu != null) {
                        inAppWebView.evaluateJavascript(PluginScriptsUtil.CHECK_CONTEXT_MENU_SHOULD_BE_HIDDEN_JS_SOURCE, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.4.1
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(String str6) {
                                if (str6 != null && !str6.equals("true")) {
                                    InAppWebView inAppWebView2 = InAppWebView.this;
                                    inAppWebView2.mainLooperHandler.postDelayed(inAppWebView2.checkContextMenuShouldBeClosedTask, inAppWebView2.newCheckContextMenuShouldBeClosedTaskTask);
                                    return;
                                }
                                InAppWebView inAppWebView3 = InAppWebView.this;
                                if (inAppWebView3.floatingContextMenu != null) {
                                    inAppWebView3.hideContextMenu();
                                }
                            }
                        });
                    }
                }
            };
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.5
            float m_downX;
            float m_downY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                InAppWebView.this.gestureDetector.onTouchEvent(motionEvent);
                if (motionEvent.getAction() == 1) {
                    InAppWebView.this.checkScrollStoppedTask.run();
                }
                if (InAppWebView.this.customSettings.disableHorizontalScroll.booleanValue() && InAppWebView.this.customSettings.disableVerticalScroll.booleanValue()) {
                    if (motionEvent.getAction() == 2) {
                        return true;
                    }
                    return false;
                }
                if (InAppWebView.this.customSettings.disableHorizontalScroll.booleanValue() || InAppWebView.this.customSettings.disableVerticalScroll.booleanValue()) {
                    int action = motionEvent.getAction();
                    if (action != 0) {
                        if (action == 1 || action == 2 || action == 3) {
                            if (InAppWebView.this.customSettings.disableHorizontalScroll.booleanValue()) {
                                motionEvent.setLocation(this.m_downX, motionEvent.getY());
                            } else {
                                motionEvent.setLocation(motionEvent.getX(), this.m_downY);
                            }
                        }
                    } else {
                        this.m_downX = motionEvent.getX();
                        this.m_downY = motionEvent.getY();
                    }
                }
                return false;
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.6
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                HitTestResult fromWebViewHitTestResult = HitTestResult.fromWebViewHitTestResult(InAppWebView.this.getHitTestResult());
                WebViewChannelDelegate webViewChannelDelegate = InAppWebView.this.channelDelegate;
                if (webViewChannelDelegate != null) {
                    webViewChannelDelegate.onLongPressHitTestResult(fromWebViewHitTestResult);
                    return false;
                }
                return false;
            }
        });
    }

    public void prepareAndAddUserScripts() {
        this.userContentController.addPluginScript(PromisePolyfillJS.PROMISE_POLYFILL_JS_PLUGIN_SCRIPT);
        this.userContentController.addPluginScript(JavaScriptBridgeJS.JAVASCRIPT_BRIDGE_JS_PLUGIN_SCRIPT);
        this.userContentController.addPluginScript(PrintJS.PRINT_JS_PLUGIN_SCRIPT);
        this.userContentController.addPluginScript(OnWindowBlurEventJS.ON_WINDOW_BLUR_EVENT_JS_PLUGIN_SCRIPT);
        this.userContentController.addPluginScript(OnWindowFocusEventJS.ON_WINDOW_FOCUS_EVENT_JS_PLUGIN_SCRIPT);
        this.interceptOnlyAsyncAjaxRequestsPluginScript = InterceptAjaxRequestJS.createInterceptOnlyAsyncAjaxRequestsPluginScript(this.customSettings.interceptOnlyAsyncAjaxRequests.booleanValue());
        if (this.customSettings.useShouldInterceptAjaxRequest.booleanValue()) {
            this.userContentController.addPluginScript(this.interceptOnlyAsyncAjaxRequestsPluginScript);
            this.userContentController.addPluginScript(InterceptAjaxRequestJS.INTERCEPT_AJAX_REQUEST_JS_PLUGIN_SCRIPT);
        }
        if (this.customSettings.useShouldInterceptFetchRequest.booleanValue()) {
            this.userContentController.addPluginScript(InterceptFetchRequestJS.INTERCEPT_FETCH_REQUEST_JS_PLUGIN_SCRIPT);
        }
        if (this.customSettings.useOnLoadResource.booleanValue()) {
            this.userContentController.addPluginScript(OnLoadResourceJS.ON_LOAD_RESOURCE_JS_PLUGIN_SCRIPT);
        }
        if (!this.customSettings.useHybridComposition.booleanValue()) {
            this.userContentController.addPluginScript(PluginScriptsUtil.CHECK_GLOBAL_KEY_DOWN_EVENT_TO_HIDE_CONTEXT_MENU_JS_PLUGIN_SCRIPT);
        }
        this.userContentController.addUserOnlyScripts(this.initialUserOnlyScripts);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public String printCurrentPage(PrintJobSettings printJobSettings) {
        Activity activity;
        String url;
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null && (activity = inAppWebViewFlutterPlugin.activity) != null) {
            PrintManager printManager = (PrintManager) activity.getSystemService("print");
            if (printManager != null) {
                PrintAttributes.Builder builder = new PrintAttributes.Builder();
                StringBuilder sb2 = new StringBuilder();
                if (getTitle() != null) {
                    url = getTitle();
                } else {
                    url = getUrl();
                }
                sb2.append(url);
                sb2.append(" Document");
                String sb3 = sb2.toString();
                if (printJobSettings != null) {
                    String str = printJobSettings.jobName;
                    if (str != null && !str.isEmpty()) {
                        sb3 = printJobSettings.jobName;
                    }
                    Integer num = printJobSettings.orientation;
                    if (num != null) {
                        int intValue = num.intValue();
                        if (intValue != 0) {
                            if (intValue == 1) {
                                builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
                            }
                        } else {
                            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
                        }
                    }
                    MediaSizeExt mediaSizeExt = printJobSettings.mediaSize;
                    if (mediaSizeExt != null) {
                        builder.setMediaSize(mediaSizeExt.toMediaSize());
                    }
                    Integer num2 = printJobSettings.colorMode;
                    if (num2 != null) {
                        builder.setColorMode(num2.intValue());
                    }
                    Integer num3 = printJobSettings.duplexMode;
                    if (num3 != null) {
                        builder.setDuplexMode(num3.intValue());
                    }
                    ResolutionExt resolutionExt = printJobSettings.resolution;
                    if (resolutionExt != null) {
                        builder.setResolution(resolutionExt.toResolution());
                    }
                }
                PrintJob print = printManager.print(sb3, createPrintDocumentAdapter(sb3), builder.build());
                if (printJobSettings != null && printJobSettings.handledByClient.booleanValue() && this.plugin.printJobManager != null) {
                    String uuid = UUID.randomUUID().toString();
                    PrintJobController printJobController = new PrintJobController(uuid, print, printJobSettings, this.plugin);
                    this.plugin.printJobManager.jobs.put(printJobController.f9459id, printJobController);
                    return uuid;
                }
                return null;
            }
            Log.e(LOG_TAG, "No PrintManager available");
            return null;
        }
        return null;
    }

    public ActionMode rebuildActionMode(final ActionMode actionMode, final ActionMode.Callback callback) {
        boolean z10;
        final int i10;
        View view;
        if (!this.customSettings.useHybridComposition.booleanValue() && (view = this.containerView) != null) {
            onWindowFocusChanged(view.isFocused());
        }
        final int i11 = 0;
        if (this.floatingContextMenu != null) {
            hideContextMenu();
            z10 = true;
        } else {
            z10 = false;
        }
        if (actionMode == null) {
            return null;
        }
        Menu menu = actionMode.getMenu();
        actionMode.hide(3000L);
        ArrayList<MenuItem> arrayList = new ArrayList();
        for (int i12 = 0; i12 < menu.size(); i12++) {
            arrayList.add(menu.getItem(i12));
        }
        menu.clear();
        actionMode.finish();
        if (this.customSettings.disableContextMenu.booleanValue()) {
            return actionMode;
        }
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode, (ViewGroup) this, false);
        this.floatingContextMenu = linearLayout;
        LinearLayout linearLayout2 = (LinearLayout) ((HorizontalScrollView) linearLayout.getChildAt(0)).getChildAt(0);
        List arrayList2 = new ArrayList();
        ContextMenuSettings contextMenuSettings = new ContextMenuSettings();
        Map<String, Object> map = this.contextMenu;
        if (map != null) {
            arrayList2 = (List) map.get("menuItems");
            Map<String, Object> map2 = (Map) this.contextMenu.get("settings");
            if (map2 != null) {
                contextMenuSettings.parse2(map2);
            }
        }
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
        }
        List<Map> list = arrayList2;
        Boolean bool = contextMenuSettings.hideDefaultSystemContextMenuItems;
        if (bool == null || !bool.booleanValue()) {
            for (final MenuItem menuItem : arrayList) {
                final int itemId = menuItem.getItemId();
                final String charSequence = menuItem.getTitle().toString();
                TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode_item, (ViewGroup) this, false);
                textView.setText(charSequence);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.12
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        InAppWebView.this.hideContextMenu();
                        callback.onActionItemClicked(actionMode, menuItem);
                        WebViewChannelDelegate webViewChannelDelegate = InAppWebView.this.channelDelegate;
                        if (webViewChannelDelegate != null) {
                            webViewChannelDelegate.onContextMenuActionItemClicked(itemId, charSequence);
                        }
                    }
                });
                if (this.floatingContextMenu != null) {
                    linearLayout2.addView(textView);
                }
            }
        }
        for (Map map3 : list) {
            final int intValue = ((Integer) map3.get(Chapter.KEY_ID)).intValue();
            final String str = (String) map3.get("title");
            TextView textView2 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.floating_action_mode_item, (ViewGroup) this, false);
            textView2.setText(str);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    InAppWebView.this.hideContextMenu();
                    WebViewChannelDelegate webViewChannelDelegate = InAppWebView.this.channelDelegate;
                    if (webViewChannelDelegate != null) {
                        webViewChannelDelegate.onContextMenuActionItemClicked(intValue, str);
                    }
                }
            });
            if (this.floatingContextMenu != null) {
                linearLayout2.addView(textView2);
            }
        }
        Point point = this.lastTouch;
        if (point != null) {
            i10 = point.x;
        } else {
            i10 = 0;
        }
        if (point != null) {
            i11 = point.y;
        }
        this.contextMenuPoint = new Point(i10, i11);
        LinearLayout linearLayout3 = this.floatingContextMenu;
        if (linearLayout3 != null) {
            linearLayout3.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.14
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    LinearLayout linearLayout4 = InAppWebView.this.floatingContextMenu;
                    if (linearLayout4 != null) {
                        linearLayout4.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        if (InAppWebView.this.getSettings().getJavaScriptEnabled()) {
                            InAppWebView.this.onScrollStopped();
                        } else {
                            InAppWebView.this.onFloatingActionGlobalLayout(i10, i11);
                        }
                    }
                }
            });
            addView(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i10, i11));
            if (z10) {
                sendOnCreateContextMenuEvent();
            }
            Runnable runnable = this.checkContextMenuShouldBeClosedTask;
            if (runnable != null) {
                runnable.run();
            }
        }
        return actionMode;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Map<String, Object> requestFocusNodeHref() {
        Message obtainMessage = mHandler.obtainMessage();
        requestFocusNodeHref(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put("src", peekData.getString("src"));
        hashMap.put("url", peekData.getString("url"));
        hashMap.put("title", peekData.getString("title"));
        return hashMap;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public Map<String, Object> requestImageRef() {
        Message obtainMessage = mHandler.obtainMessage();
        requestImageRef(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put("url", peekData.getString("url"));
        return hashMap;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void scrollBy(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", getScrollX() + num.intValue()), PropertyValuesHolder.ofInt("scrollY", getScrollY() + num2.intValue())).setDuration(300L).start();
        } else {
            scrollBy(num.intValue(), num2.intValue());
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void scrollTo(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", num.intValue()), PropertyValuesHolder.ofInt("scrollY", num2.intValue())).setDuration(300L).start();
        } else {
            scrollTo(num.intValue(), num2.intValue());
        }
    }

    public void setCacheEnabled(boolean z10) {
        WebSettings settings = getSettings();
        if (z10) {
            Context context = getContext();
            if (context != null) {
                Util.invokeMethodIfExists(settings, "setAppCachePath", context.getCacheDir().getAbsolutePath());
                settings.setCacheMode(-1);
                Util.invokeMethodIfExists(settings, "setAppCacheEnabled", Boolean.TRUE);
                return;
            }
            return;
        }
        settings.setCacheMode(2);
        Util.invokeMethodIfExists(settings, "setAppCacheEnabled", Boolean.FALSE);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setChannelDelegate(WebViewChannelDelegate webViewChannelDelegate) {
        this.channelDelegate = webViewChannelDelegate;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setContextMenu(Map<String, Object> map) {
        this.contextMenu = map;
    }

    public void setDesktopMode(boolean z10) {
        String replace;
        WebSettings settings = getSettings();
        if (z10) {
            replace = settings.getUserAgentString().replace("Mobile", "eliboM").replace("Android", "diordnA");
        } else {
            replace = settings.getUserAgentString().replace("eliboM", "Mobile").replace("diordnA", "Android");
        }
        settings.setUserAgentString(replace);
        settings.setUseWideViewPort(z10);
        settings.setLoadWithOverviewMode(z10);
        settings.setSupportZoom(z10);
        settings.setBuiltInZoomControls(z10);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setInAppBrowserDelegate(InAppBrowserDelegate inAppBrowserDelegate) {
        this.inAppBrowserDelegate = inAppBrowserDelegate;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setInFullscreen(boolean z10) {
        this.inFullscreen = z10;
    }

    public void setIncognito(boolean z10) {
        WebSettings settings = getSettings();
        if (z10) {
            CookieManager.getInstance().removeAllCookies(null);
            settings.setCacheMode(2);
            Util.invokeMethodIfExists(settings, "setAppCacheEnabled", Boolean.FALSE);
            clearHistory();
            clearCache(true);
            clearFormData();
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            return;
        }
        settings.setCacheMode(-1);
        Util.invokeMethodIfExists(settings, "setAppCacheEnabled", Boolean.TRUE);
        settings.setSavePassword(true);
        settings.setSaveFormData(true);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setPlugin(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        this.plugin = inAppWebViewFlutterPlugin;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    @SuppressLint({"RestrictedApi"})
    public void setSettings(InAppWebViewSettings inAppWebViewSettings, HashMap<String, Object> hashMap) {
        Map<String, Object> map;
        boolean z10;
        Integer num;
        Integer num2;
        String str;
        Integer num3;
        String str2;
        Integer num4;
        String defaultUserAgent;
        WebSettings settings = getSettings();
        if (hashMap.get("javaScriptEnabled") != null) {
            Boolean bool = this.customSettings.javaScriptEnabled;
            Boolean bool2 = inAppWebViewSettings.javaScriptEnabled;
            if (bool != bool2) {
                settings.setJavaScriptEnabled(bool2.booleanValue());
            }
        }
        if (hashMap.get("useShouldInterceptAjaxRequest") != null) {
            Boolean bool3 = this.customSettings.useShouldInterceptAjaxRequest;
            Boolean bool4 = inAppWebViewSettings.useShouldInterceptAjaxRequest;
            if (bool3 != bool4) {
                enablePluginScriptAtRuntime(InterceptAjaxRequestJS.FLAG_VARIABLE_FOR_SHOULD_INTERCEPT_AJAX_REQUEST_JS_SOURCE, bool4.booleanValue(), InterceptAjaxRequestJS.INTERCEPT_AJAX_REQUEST_JS_PLUGIN_SCRIPT);
            }
        }
        if (hashMap.get("interceptOnlyAsyncAjaxRequests") != null) {
            Boolean bool5 = this.customSettings.interceptOnlyAsyncAjaxRequests;
            Boolean bool6 = inAppWebViewSettings.interceptOnlyAsyncAjaxRequests;
            if (bool5 != bool6) {
                enablePluginScriptAtRuntime(InterceptAjaxRequestJS.FLAG_VARIABLE_FOR_INTERCEPT_ONLY_ASYNC_AJAX_REQUESTS_JS_SOURCE, bool6.booleanValue(), this.interceptOnlyAsyncAjaxRequestsPluginScript);
            }
        }
        if (hashMap.get("useShouldInterceptFetchRequest") != null) {
            Boolean bool7 = this.customSettings.useShouldInterceptFetchRequest;
            Boolean bool8 = inAppWebViewSettings.useShouldInterceptFetchRequest;
            if (bool7 != bool8) {
                enablePluginScriptAtRuntime(InterceptFetchRequestJS.FLAG_VARIABLE_FOR_SHOULD_INTERCEPT_FETCH_REQUEST_JS_SOURCE, bool8.booleanValue(), InterceptFetchRequestJS.INTERCEPT_FETCH_REQUEST_JS_PLUGIN_SCRIPT);
            }
        }
        if (hashMap.get("useOnLoadResource") != null) {
            Boolean bool9 = this.customSettings.useOnLoadResource;
            Boolean bool10 = inAppWebViewSettings.useOnLoadResource;
            if (bool9 != bool10) {
                enablePluginScriptAtRuntime(OnLoadResourceJS.FLAG_VARIABLE_FOR_ON_LOAD_RESOURCE_JS_SOURCE, bool10.booleanValue(), OnLoadResourceJS.ON_LOAD_RESOURCE_JS_PLUGIN_SCRIPT);
            }
        }
        if (hashMap.get("javaScriptCanOpenWindowsAutomatically") != null) {
            Boolean bool11 = this.customSettings.javaScriptCanOpenWindowsAutomatically;
            Boolean bool12 = inAppWebViewSettings.javaScriptCanOpenWindowsAutomatically;
            if (bool11 != bool12) {
                settings.setJavaScriptCanOpenWindowsAutomatically(bool12.booleanValue());
            }
        }
        if (hashMap.get("builtInZoomControls") != null) {
            Boolean bool13 = this.customSettings.builtInZoomControls;
            Boolean bool14 = inAppWebViewSettings.builtInZoomControls;
            if (bool13 != bool14) {
                settings.setBuiltInZoomControls(bool14.booleanValue());
            }
        }
        if (hashMap.get("displayZoomControls") != null) {
            Boolean bool15 = this.customSettings.displayZoomControls;
            Boolean bool16 = inAppWebViewSettings.displayZoomControls;
            if (bool15 != bool16) {
                settings.setDisplayZoomControls(bool16.booleanValue());
            }
        }
        if (hashMap.get("safeBrowsingEnabled") != null && this.customSettings.safeBrowsingEnabled != inAppWebViewSettings.safeBrowsingEnabled) {
            if (t.a("SAFE_BROWSING_ENABLE")) {
                q.q(settings, inAppWebViewSettings.safeBrowsingEnabled.booleanValue());
            } else if (Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(inAppWebViewSettings.safeBrowsingEnabled.booleanValue());
            }
        }
        if (hashMap.get("mediaPlaybackRequiresUserGesture") != null) {
            Boolean bool17 = this.customSettings.mediaPlaybackRequiresUserGesture;
            Boolean bool18 = inAppWebViewSettings.mediaPlaybackRequiresUserGesture;
            if (bool17 != bool18) {
                settings.setMediaPlaybackRequiresUserGesture(bool18.booleanValue());
            }
        }
        if (hashMap.get("databaseEnabled") != null) {
            Boolean bool19 = this.customSettings.databaseEnabled;
            Boolean bool20 = inAppWebViewSettings.databaseEnabled;
            if (bool19 != bool20) {
                settings.setDatabaseEnabled(bool20.booleanValue());
            }
        }
        if (hashMap.get("domStorageEnabled") != null) {
            Boolean bool21 = this.customSettings.domStorageEnabled;
            Boolean bool22 = inAppWebViewSettings.domStorageEnabled;
            if (bool21 != bool22) {
                settings.setDomStorageEnabled(bool22.booleanValue());
            }
        }
        if (hashMap.get("userAgent") != null && !this.customSettings.userAgent.equals(inAppWebViewSettings.userAgent) && !inAppWebViewSettings.userAgent.isEmpty()) {
            settings.setUserAgentString(inAppWebViewSettings.userAgent);
        }
        if (hashMap.get("applicationNameForUserAgent") != null && !this.customSettings.applicationNameForUserAgent.equals(inAppWebViewSettings.applicationNameForUserAgent) && !inAppWebViewSettings.applicationNameForUserAgent.isEmpty()) {
            String str3 = inAppWebViewSettings.userAgent;
            if (str3 != null && !str3.isEmpty()) {
                defaultUserAgent = inAppWebViewSettings.userAgent;
            } else {
                defaultUserAgent = WebSettings.getDefaultUserAgent(getContext());
            }
            settings.setUserAgentString(defaultUserAgent + StringUtils.SPACE + this.customSettings.applicationNameForUserAgent);
        }
        if (hashMap.get("clearCache") != null && inAppWebViewSettings.clearCache.booleanValue()) {
            clearAllCache();
        } else if (hashMap.get("clearSessionCache") != null && inAppWebViewSettings.clearSessionCache.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        if (hashMap.get("thirdPartyCookiesEnabled") != null && this.customSettings.thirdPartyCookiesEnabled != inAppWebViewSettings.thirdPartyCookiesEnabled) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, inAppWebViewSettings.thirdPartyCookiesEnabled.booleanValue());
        }
        if (hashMap.get("useWideViewPort") != null) {
            Boolean bool23 = this.customSettings.useWideViewPort;
            Boolean bool24 = inAppWebViewSettings.useWideViewPort;
            if (bool23 != bool24) {
                settings.setUseWideViewPort(bool24.booleanValue());
            }
        }
        if (hashMap.get("supportZoom") != null) {
            Boolean bool25 = this.customSettings.supportZoom;
            Boolean bool26 = inAppWebViewSettings.supportZoom;
            if (bool25 != bool26) {
                settings.setSupportZoom(bool26.booleanValue());
            }
        }
        if (hashMap.get("textZoom") != null && !this.customSettings.textZoom.equals(inAppWebViewSettings.textZoom)) {
            settings.setTextZoom(inAppWebViewSettings.textZoom.intValue());
        }
        if (hashMap.get("verticalScrollBarEnabled") != null) {
            Boolean bool27 = this.customSettings.verticalScrollBarEnabled;
            Boolean bool28 = inAppWebViewSettings.verticalScrollBarEnabled;
            if (bool27 != bool28) {
                setVerticalScrollBarEnabled(bool28.booleanValue());
            }
        }
        if (hashMap.get("horizontalScrollBarEnabled") != null) {
            Boolean bool29 = this.customSettings.horizontalScrollBarEnabled;
            Boolean bool30 = inAppWebViewSettings.horizontalScrollBarEnabled;
            if (bool29 != bool30) {
                setHorizontalScrollBarEnabled(bool30.booleanValue());
            }
        }
        boolean z11 = false;
        if (hashMap.get("transparentBackground") != null) {
            Boolean bool31 = this.customSettings.transparentBackground;
            Boolean bool32 = inAppWebViewSettings.transparentBackground;
            if (bool31 != bool32) {
                if (bool32.booleanValue()) {
                    setBackgroundColor(0);
                } else {
                    setBackgroundColor(Color.parseColor("#FFFFFF"));
                }
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (hashMap.get("mixedContentMode") != null && ((num4 = this.customSettings.mixedContentMode) == null || !num4.equals(inAppWebViewSettings.mixedContentMode))) {
            settings.setMixedContentMode(inAppWebViewSettings.mixedContentMode.intValue());
        }
        if (hashMap.get("supportMultipleWindows") != null) {
            Boolean bool33 = this.customSettings.supportMultipleWindows;
            Boolean bool34 = inAppWebViewSettings.supportMultipleWindows;
            if (bool33 != bool34) {
                settings.setSupportMultipleWindows(bool34.booleanValue());
            }
        }
        if (hashMap.get("useOnDownloadStart") != null) {
            Boolean bool35 = this.customSettings.useOnDownloadStart;
            Boolean bool36 = inAppWebViewSettings.useOnDownloadStart;
            if (bool35 != bool36) {
                if (bool36.booleanValue()) {
                    setDownloadListener(new DownloadStartListener());
                } else {
                    setDownloadListener(null);
                }
            }
        }
        if (hashMap.get("allowContentAccess") != null) {
            Boolean bool37 = this.customSettings.allowContentAccess;
            Boolean bool38 = inAppWebViewSettings.allowContentAccess;
            if (bool37 != bool38) {
                settings.setAllowContentAccess(bool38.booleanValue());
            }
        }
        if (hashMap.get("allowFileAccess") != null) {
            Boolean bool39 = this.customSettings.allowFileAccess;
            Boolean bool40 = inAppWebViewSettings.allowFileAccess;
            if (bool39 != bool40) {
                settings.setAllowFileAccess(bool40.booleanValue());
            }
        }
        if (hashMap.get("allowFileAccessFromFileURLs") != null) {
            Boolean bool41 = this.customSettings.allowFileAccessFromFileURLs;
            Boolean bool42 = inAppWebViewSettings.allowFileAccessFromFileURLs;
            if (bool41 != bool42) {
                settings.setAllowFileAccessFromFileURLs(bool42.booleanValue());
            }
        }
        if (hashMap.get("allowUniversalAccessFromFileURLs") != null) {
            Boolean bool43 = this.customSettings.allowUniversalAccessFromFileURLs;
            Boolean bool44 = inAppWebViewSettings.allowUniversalAccessFromFileURLs;
            if (bool43 != bool44) {
                settings.setAllowUniversalAccessFromFileURLs(bool44.booleanValue());
            }
        }
        if (hashMap.get("cacheEnabled") != null) {
            Boolean bool45 = this.customSettings.cacheEnabled;
            Boolean bool46 = inAppWebViewSettings.cacheEnabled;
            if (bool45 != bool46) {
                setCacheEnabled(bool46.booleanValue());
            }
        }
        if (hashMap.get("appCachePath") != null && ((str2 = this.customSettings.appCachePath) == null || !str2.equals(inAppWebViewSettings.appCachePath))) {
            Util.invokeMethodIfExists(settings, "setAppCachePath", inAppWebViewSettings.appCachePath);
        }
        if (hashMap.get("blockNetworkImage") != null) {
            Boolean bool47 = this.customSettings.blockNetworkImage;
            Boolean bool48 = inAppWebViewSettings.blockNetworkImage;
            if (bool47 != bool48) {
                settings.setBlockNetworkImage(bool48.booleanValue());
            }
        }
        if (hashMap.get("blockNetworkLoads") != null) {
            Boolean bool49 = this.customSettings.blockNetworkLoads;
            Boolean bool50 = inAppWebViewSettings.blockNetworkLoads;
            if (bool49 != bool50) {
                settings.setBlockNetworkLoads(bool50.booleanValue());
            }
        }
        if (hashMap.get("cacheMode") != null && !this.customSettings.cacheMode.equals(inAppWebViewSettings.cacheMode)) {
            settings.setCacheMode(inAppWebViewSettings.cacheMode.intValue());
        }
        if (hashMap.get("cursiveFontFamily") != null && !this.customSettings.cursiveFontFamily.equals(inAppWebViewSettings.cursiveFontFamily)) {
            settings.setCursiveFontFamily(inAppWebViewSettings.cursiveFontFamily);
        }
        if (hashMap.get("defaultFixedFontSize") != null && !this.customSettings.defaultFixedFontSize.equals(inAppWebViewSettings.defaultFixedFontSize)) {
            settings.setDefaultFixedFontSize(inAppWebViewSettings.defaultFixedFontSize.intValue());
        }
        if (hashMap.get("defaultFontSize") != null && !this.customSettings.defaultFontSize.equals(inAppWebViewSettings.defaultFontSize)) {
            settings.setDefaultFontSize(inAppWebViewSettings.defaultFontSize.intValue());
        }
        if (hashMap.get("defaultTextEncodingName") != null && !this.customSettings.defaultTextEncodingName.equals(inAppWebViewSettings.defaultTextEncodingName)) {
            settings.setDefaultTextEncodingName(inAppWebViewSettings.defaultTextEncodingName);
        }
        if (hashMap.get("disabledActionModeMenuItems") != null && ((num3 = this.customSettings.disabledActionModeMenuItems) == null || !num3.equals(inAppWebViewSettings.disabledActionModeMenuItems))) {
            if (t.a("DISABLED_ACTION_MODE_MENU_ITEMS")) {
                q.k(settings, inAppWebViewSettings.disabledActionModeMenuItems.intValue());
            } else {
                settings.setDisabledActionModeMenuItems(inAppWebViewSettings.disabledActionModeMenuItems.intValue());
            }
        }
        if (hashMap.get("fantasyFontFamily") != null && !this.customSettings.fantasyFontFamily.equals(inAppWebViewSettings.fantasyFontFamily)) {
            settings.setFantasyFontFamily(inAppWebViewSettings.fantasyFontFamily);
        }
        if (hashMap.get("fixedFontFamily") != null && !this.customSettings.fixedFontFamily.equals(inAppWebViewSettings.fixedFontFamily)) {
            settings.setFixedFontFamily(inAppWebViewSettings.fixedFontFamily);
        }
        if (hashMap.get("forceDark") != null && !this.customSettings.forceDark.equals(inAppWebViewSettings.forceDark)) {
            if (t.a("FORCE_DARK")) {
                q.m(settings, inAppWebViewSettings.forceDark.intValue());
            } else if (i10 >= 29) {
                settings.setForceDark(inAppWebViewSettings.forceDark.intValue());
            }
        }
        if (hashMap.get("forceDarkStrategy") != null && !this.customSettings.forceDarkStrategy.equals(inAppWebViewSettings.forceDarkStrategy) && t.a("FORCE_DARK_STRATEGY")) {
            q.n(settings, inAppWebViewSettings.forceDarkStrategy.intValue());
        }
        if (hashMap.get("geolocationEnabled") != null) {
            Boolean bool51 = this.customSettings.geolocationEnabled;
            Boolean bool52 = inAppWebViewSettings.geolocationEnabled;
            if (bool51 != bool52) {
                settings.setGeolocationEnabled(bool52.booleanValue());
            }
        }
        if (hashMap.get("layoutAlgorithm") != null) {
            WebSettings.LayoutAlgorithm layoutAlgorithm = this.customSettings.layoutAlgorithm;
            WebSettings.LayoutAlgorithm layoutAlgorithm2 = inAppWebViewSettings.layoutAlgorithm;
            if (layoutAlgorithm != layoutAlgorithm2) {
                if (layoutAlgorithm2.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                    settings.setLayoutAlgorithm(inAppWebViewSettings.layoutAlgorithm);
                } else {
                    settings.setLayoutAlgorithm(inAppWebViewSettings.layoutAlgorithm);
                }
            }
        }
        if (hashMap.get("loadWithOverviewMode") != null) {
            Boolean bool53 = this.customSettings.loadWithOverviewMode;
            Boolean bool54 = inAppWebViewSettings.loadWithOverviewMode;
            if (bool53 != bool54) {
                settings.setLoadWithOverviewMode(bool54.booleanValue());
            }
        }
        if (hashMap.get("loadsImagesAutomatically") != null) {
            Boolean bool55 = this.customSettings.loadsImagesAutomatically;
            Boolean bool56 = inAppWebViewSettings.loadsImagesAutomatically;
            if (bool55 != bool56) {
                settings.setLoadsImagesAutomatically(bool56.booleanValue());
            }
        }
        if (hashMap.get("minimumFontSize") != null && !this.customSettings.minimumFontSize.equals(inAppWebViewSettings.minimumFontSize)) {
            settings.setMinimumFontSize(inAppWebViewSettings.minimumFontSize.intValue());
        }
        if (hashMap.get("minimumLogicalFontSize") != null && !this.customSettings.minimumLogicalFontSize.equals(inAppWebViewSettings.minimumLogicalFontSize)) {
            settings.setMinimumLogicalFontSize(inAppWebViewSettings.minimumLogicalFontSize.intValue());
        }
        if (hashMap.get("initialScale") != null && !this.customSettings.initialScale.equals(inAppWebViewSettings.initialScale)) {
            setInitialScale(inAppWebViewSettings.initialScale.intValue());
        }
        if (hashMap.get("needInitialFocus") != null) {
            Boolean bool57 = this.customSettings.needInitialFocus;
            Boolean bool58 = inAppWebViewSettings.needInitialFocus;
            if (bool57 != bool58) {
                settings.setNeedInitialFocus(bool58.booleanValue());
            }
        }
        if (hashMap.get("offscreenPreRaster") != null && this.customSettings.offscreenPreRaster != inAppWebViewSettings.offscreenPreRaster) {
            if (t.a("OFF_SCREEN_PRERASTER")) {
                q.o(settings, inAppWebViewSettings.offscreenPreRaster.booleanValue());
            } else {
                settings.setOffscreenPreRaster(inAppWebViewSettings.offscreenPreRaster.booleanValue());
            }
        }
        if (hashMap.get("sansSerifFontFamily") != null && !this.customSettings.sansSerifFontFamily.equals(inAppWebViewSettings.sansSerifFontFamily)) {
            settings.setSansSerifFontFamily(inAppWebViewSettings.sansSerifFontFamily);
        }
        if (hashMap.get("serifFontFamily") != null && !this.customSettings.serifFontFamily.equals(inAppWebViewSettings.serifFontFamily)) {
            settings.setSerifFontFamily(inAppWebViewSettings.serifFontFamily);
        }
        if (hashMap.get("standardFontFamily") != null && !this.customSettings.standardFontFamily.equals(inAppWebViewSettings.standardFontFamily)) {
            settings.setStandardFontFamily(inAppWebViewSettings.standardFontFamily);
        }
        if (hashMap.get("preferredContentMode") != null && !this.customSettings.preferredContentMode.equals(inAppWebViewSettings.preferredContentMode)) {
            int i11 = AnonymousClass21.$SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$types$PreferredContentModeOptionType[PreferredContentModeOptionType.fromValue(inAppWebViewSettings.preferredContentMode.intValue()).ordinal()];
            if (i11 != 1) {
                if (i11 == 2 || i11 == 3) {
                    setDesktopMode(false);
                }
            } else {
                setDesktopMode(true);
            }
        }
        if (hashMap.get("saveFormData") != null) {
            Boolean bool59 = this.customSettings.saveFormData;
            Boolean bool60 = inAppWebViewSettings.saveFormData;
            if (bool59 != bool60) {
                settings.setSaveFormData(bool60.booleanValue());
            }
        }
        if (hashMap.get("incognito") != null) {
            Boolean bool61 = this.customSettings.incognito;
            Boolean bool62 = inAppWebViewSettings.incognito;
            if (bool61 != bool62) {
                setIncognito(bool62.booleanValue());
            }
        }
        if (this.customSettings.useHybridComposition.booleanValue() && hashMap.get("hardwareAcceleration") != null) {
            Boolean bool63 = this.customSettings.hardwareAcceleration;
            Boolean bool64 = inAppWebViewSettings.hardwareAcceleration;
            if (bool63 != bool64) {
                if (bool64.booleanValue()) {
                    setLayerType(2, null);
                } else {
                    setLayerType(0, null);
                }
            }
        }
        if (hashMap.get("regexToCancelSubFramesLoading") != null && ((str = this.customSettings.regexToCancelSubFramesLoading) == null || !str.equals(inAppWebViewSettings.regexToCancelSubFramesLoading))) {
            if (inAppWebViewSettings.regexToCancelSubFramesLoading == null) {
                this.regexToCancelSubFramesLoadingCompiled = null;
            } else {
                this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(this.customSettings.regexToCancelSubFramesLoading);
            }
        }
        if (inAppWebViewSettings.contentBlockers != null) {
            this.contentBlockerHandler.getRuleList().clear();
            for (Map<String, Map<String, Object>> map2 : inAppWebViewSettings.contentBlockers) {
                this.contentBlockerHandler.getRuleList().add(new ContentBlocker(ContentBlockerTrigger.fromMap(map2.get("trigger")), ContentBlockerAction.fromMap(map2.get("action"))));
            }
        }
        if (hashMap.get("scrollBarStyle") != null && !this.customSettings.scrollBarStyle.equals(inAppWebViewSettings.scrollBarStyle)) {
            setScrollBarStyle(inAppWebViewSettings.scrollBarStyle.intValue());
        }
        if (hashMap.get("scrollBarDefaultDelayBeforeFade") != null && ((num2 = this.customSettings.scrollBarDefaultDelayBeforeFade) == null || !num2.equals(inAppWebViewSettings.scrollBarDefaultDelayBeforeFade))) {
            setScrollBarDefaultDelayBeforeFade(inAppWebViewSettings.scrollBarDefaultDelayBeforeFade.intValue());
        }
        if (hashMap.get("scrollbarFadingEnabled") != null && !this.customSettings.scrollbarFadingEnabled.equals(inAppWebViewSettings.scrollbarFadingEnabled)) {
            setScrollbarFadingEnabled(inAppWebViewSettings.scrollbarFadingEnabled.booleanValue());
        }
        if (hashMap.get("scrollBarFadeDuration") != null && ((num = this.customSettings.scrollBarFadeDuration) == null || !num.equals(inAppWebViewSettings.scrollBarFadeDuration))) {
            setScrollBarFadeDuration(inAppWebViewSettings.scrollBarFadeDuration.intValue());
        }
        if (hashMap.get("verticalScrollbarPosition") != null && !this.customSettings.verticalScrollbarPosition.equals(inAppWebViewSettings.verticalScrollbarPosition)) {
            setVerticalScrollbarPosition(inAppWebViewSettings.verticalScrollbarPosition.intValue());
        }
        if (hashMap.get("disableVerticalScroll") != null) {
            Boolean bool65 = this.customSettings.disableVerticalScroll;
            Boolean bool66 = inAppWebViewSettings.disableVerticalScroll;
            if (bool65 != bool66) {
                if (!bool66.booleanValue() && inAppWebViewSettings.verticalScrollBarEnabled.booleanValue()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                setVerticalScrollBarEnabled(z10);
            }
        }
        if (hashMap.get("disableHorizontalScroll") != null) {
            Boolean bool67 = this.customSettings.disableHorizontalScroll;
            Boolean bool68 = inAppWebViewSettings.disableHorizontalScroll;
            if (bool67 != bool68) {
                if (!bool68.booleanValue() && inAppWebViewSettings.horizontalScrollBarEnabled.booleanValue()) {
                    z11 = true;
                }
                setHorizontalScrollBarEnabled(z11);
            }
        }
        if (hashMap.get("overScrollMode") != null && !this.customSettings.overScrollMode.equals(inAppWebViewSettings.overScrollMode)) {
            setOverScrollMode(inAppWebViewSettings.overScrollMode.intValue());
        }
        if (hashMap.get("networkAvailable") != null) {
            Boolean bool69 = this.customSettings.networkAvailable;
            Boolean bool70 = inAppWebViewSettings.networkAvailable;
            if (bool69 != bool70) {
                setNetworkAvailable(bool70.booleanValue());
            }
        }
        if (hashMap.get("rendererPriorityPolicy") != null && (((map = this.customSettings.rendererPriorityPolicy) == null || map.get("rendererRequestedPriority") != inAppWebViewSettings.rendererPriorityPolicy.get("rendererRequestedPriority") || this.customSettings.rendererPriorityPolicy.get("waivedWhenNotVisible") != inAppWebViewSettings.rendererPriorityPolicy.get("waivedWhenNotVisible")) && Build.VERSION.SDK_INT >= 26)) {
            setRendererPriorityPolicy(((Integer) inAppWebViewSettings.rendererPriorityPolicy.get("rendererRequestedPriority")).intValue(), ((Boolean) inAppWebViewSettings.rendererPriorityPolicy.get("waivedWhenNotVisible")).booleanValue());
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 29) {
            if (hashMap.get("verticalScrollbarThumbColor") != null && !Util.objEquals(this.customSettings.verticalScrollbarThumbColor, inAppWebViewSettings.verticalScrollbarThumbColor)) {
                setVerticalScrollbarThumbDrawable(new ColorDrawable(Color.parseColor(inAppWebViewSettings.verticalScrollbarThumbColor)));
            }
            if (hashMap.get("verticalScrollbarTrackColor") != null && !Util.objEquals(this.customSettings.verticalScrollbarTrackColor, inAppWebViewSettings.verticalScrollbarTrackColor)) {
                setVerticalScrollbarTrackDrawable(new ColorDrawable(Color.parseColor(inAppWebViewSettings.verticalScrollbarTrackColor)));
            }
            if (hashMap.get("horizontalScrollbarThumbColor") != null && !Util.objEquals(this.customSettings.horizontalScrollbarThumbColor, inAppWebViewSettings.horizontalScrollbarThumbColor)) {
                setHorizontalScrollbarThumbDrawable(new ColorDrawable(Color.parseColor(inAppWebViewSettings.horizontalScrollbarThumbColor)));
            }
            if (hashMap.get("horizontalScrollbarTrackColor") != null && !Util.objEquals(this.customSettings.horizontalScrollbarTrackColor, inAppWebViewSettings.horizontalScrollbarTrackColor)) {
                setHorizontalScrollbarTrackDrawable(new ColorDrawable(Color.parseColor(inAppWebViewSettings.horizontalScrollbarTrackColor)));
            }
        }
        if (hashMap.get("algorithmicDarkeningAllowed") != null && !Util.objEquals(this.customSettings.algorithmicDarkeningAllowed, inAppWebViewSettings.algorithmicDarkeningAllowed) && t.a("ALGORITHMIC_DARKENING") && i12 >= 29) {
            q.j(settings, inAppWebViewSettings.algorithmicDarkeningAllowed.booleanValue());
        }
        if (hashMap.get("enterpriseAuthenticationAppLinkPolicyEnabled") != null && !Util.objEquals(this.customSettings.enterpriseAuthenticationAppLinkPolicyEnabled, inAppWebViewSettings.enterpriseAuthenticationAppLinkPolicyEnabled) && t.a("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY")) {
            q.l(settings, inAppWebViewSettings.enterpriseAuthenticationAppLinkPolicyEnabled.booleanValue());
        }
        if (hashMap.get("requestedWithHeaderOriginAllowList") != null && !Util.objEquals(this.customSettings.requestedWithHeaderOriginAllowList, inAppWebViewSettings.requestedWithHeaderOriginAllowList) && t.a("REQUESTED_WITH_HEADER_ALLOW_LIST")) {
            q.p(settings, inAppWebViewSettings.requestedWithHeaderOriginAllowList);
        }
        if (this.plugin != null) {
            WebViewAssetLoaderExt webViewAssetLoaderExt = this.webViewAssetLoaderExt;
            if (webViewAssetLoaderExt != null) {
                webViewAssetLoaderExt.dispose();
            }
            this.webViewAssetLoaderExt = WebViewAssetLoaderExt.fromMap(this.customSettings.webViewAssetLoader, this.plugin, getContext());
        }
        this.customSettings = inAppWebViewSettings;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setUserContentController(UserContentController userContentController) {
        this.userContentController = userContentController;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void setWebMessageChannels(Map<String, WebMessageChannel> map) {
        this.webMessageChannels = map;
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        Map<String, Object> map;
        if (this.customSettings.useHybridComposition.booleanValue() && !this.customSettings.disableContextMenu.booleanValue() && ((map = this.contextMenu) == null || map.keySet().size() == 0)) {
            return super.startActionMode(callback);
        }
        return rebuildActionMode(super.startActionMode(callback), callback);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void takeScreenshot(final Map<String, Object> map, final MethodChannel.Result result) {
        final float pixelDensity = Util.getPixelDensity(getContext());
        this.mainLooperHandler.post(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView.8
            @Override // java.lang.Runnable
            public void run() {
                Bitmap.CompressFormat compressFormat;
                Bitmap bitmap;
                int i10;
                try {
                    Bitmap createBitmap = Bitmap.createBitmap(InAppWebView.this.getMeasuredWidth(), InAppWebView.this.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    canvas.translate(-InAppWebView.this.getScrollX(), -InAppWebView.this.getScrollY());
                    InAppWebView.this.draw(canvas);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Bitmap.CompressFormat compressFormat2 = Bitmap.CompressFormat.PNG;
                    Map map2 = map;
                    if (map2 != null) {
                        Map map3 = (Map) map2.get("rect");
                        if (map3 != null) {
                            compressFormat = compressFormat2;
                            createBitmap = Bitmap.createBitmap(createBitmap, (int) Math.floor((((Double) map3.get("x")).doubleValue() * pixelDensity) + 0.5d), (int) Math.floor((((Double) map3.get("y")).doubleValue() * pixelDensity) + 0.5d), Math.min(createBitmap.getWidth(), (int) Math.floor((((Double) map3.get(StreamInformation.KEY_WIDTH)).doubleValue() * pixelDensity) + 0.5d)), Math.min(createBitmap.getHeight(), (int) Math.floor((((Double) map3.get(StreamInformation.KEY_HEIGHT)).doubleValue() * pixelDensity) + 0.5d)));
                        } else {
                            compressFormat = compressFormat2;
                        }
                        Double d10 = (Double) map.get("snapshotWidth");
                        if (d10 != null) {
                            int floor = (int) Math.floor((d10.doubleValue() * pixelDensity) + 0.5d);
                            createBitmap = Bitmap.createScaledBitmap(createBitmap, floor, (int) (floor / (createBitmap.getWidth() / createBitmap.getHeight())), true);
                        }
                        bitmap = createBitmap;
                        try {
                            compressFormat = Bitmap.CompressFormat.valueOf((String) map.get("compressFormat"));
                        } catch (IllegalArgumentException e10) {
                            Log.e(InAppWebView.LOG_TAG, "", e10);
                        }
                        i10 = ((Integer) map.get("quality")).intValue();
                    } else {
                        compressFormat = compressFormat2;
                        bitmap = createBitmap;
                        i10 = 100;
                    }
                    bitmap.compress(compressFormat, i10, byteArrayOutputStream);
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e11) {
                        Log.e(InAppWebView.LOG_TAG, "", e11);
                    }
                    bitmap.recycle();
                    result.success(byteArrayOutputStream.toByteArray());
                } catch (IllegalArgumentException e12) {
                    Log.e(InAppWebView.LOG_TAG, "", e12);
                    result.success(null);
                }
            }
        });
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface
    public void getZoomScale(ValueCallback<Float> valueCallback) {
        valueCallback.onReceiveValue(Float.valueOf(this.zoomScale));
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i10) {
        Map<String, Object> map;
        if (this.customSettings.useHybridComposition.booleanValue() && !this.customSettings.disableContextMenu.booleanValue() && ((map = this.contextMenu) == null || map.keySet().size() == 0)) {
            return super.startActionMode(callback, i10);
        }
        return rebuildActionMode(super.startActionMode(callback, i10), callback);
    }

    public InAppWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.customSettings = new InAppWebViewSettings();
        this.isLoading = false;
        this.inFullscreen = false;
        this.zoomScale = 1.0f;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.mainLooperHandler = new Handler(getWebViewLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.userContentController = new UserContentController(this);
        this.callAsyncJavaScriptCallbacks = new HashMap();
        this.evaluateJavaScriptContentWorldCallbacks = new HashMap();
        this.webMessageChannels = new HashMap();
        this.webMessageListeners = new ArrayList();
        this.initialUserOnlyScripts = new ArrayList();
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    public InAppWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.customSettings = new InAppWebViewSettings();
        this.isLoading = false;
        this.inFullscreen = false;
        this.zoomScale = 1.0f;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.mainLooperHandler = new Handler(getWebViewLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.userContentController = new UserContentController(this);
        this.callAsyncJavaScriptCallbacks = new HashMap();
        this.evaluateJavaScriptContentWorldCallbacks = new HashMap();
        this.webMessageChannels = new HashMap();
        this.webMessageListeners = new ArrayList();
        this.initialUserOnlyScripts = new ArrayList();
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
    }

    public InAppWebView(Context context, InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin, Object obj, Integer num, InAppWebViewSettings inAppWebViewSettings, Map<String, Object> map, View view, List<UserScript> list) {
        super(context, view, inAppWebViewSettings.useHybridComposition);
        this.customSettings = new InAppWebViewSettings();
        this.isLoading = false;
        this.inFullscreen = false;
        this.zoomScale = 1.0f;
        this.contentBlockerHandler = new ContentBlockerHandler();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.mainLooperHandler = new Handler(getWebViewLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.userContentController = new UserContentController(this);
        this.callAsyncJavaScriptCallbacks = new HashMap();
        this.evaluateJavaScriptContentWorldCallbacks = new HashMap();
        this.webMessageChannels = new HashMap();
        this.webMessageListeners = new ArrayList();
        this.initialUserOnlyScripts = new ArrayList();
        this.contextMenuPoint = new Point(0, 0);
        this.lastTouch = new Point(0, 0);
        this.plugin = inAppWebViewFlutterPlugin;
        this.f9468id = obj;
        BinaryMessenger binaryMessenger = inAppWebViewFlutterPlugin.messenger;
        this.channelDelegate = new WebViewChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + obj));
        this.windowId = num;
        this.customSettings = inAppWebViewSettings;
        this.contextMenu = map;
        this.initialUserOnlyScripts = list;
        Activity activity = inAppWebViewFlutterPlugin.activity;
        if (activity != null) {
            activity.registerForContextMenu(this);
        }
    }
}
