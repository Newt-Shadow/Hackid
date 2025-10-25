package com.pichillilorenzo.flutter_inappwebview_android.webview.web_message;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.Util;
import com.pichillilorenzo.flutter_inappwebview_android.plugin_scripts_js.JavaScriptBridgeJS;
import com.pichillilorenzo.flutter_inappwebview_android.types.Disposable;
import com.pichillilorenzo.flutter_inappwebview_android.types.PluginScript;
import com.pichillilorenzo.flutter_inappwebview_android.types.UserScriptInjectionTime;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessageCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o1.b;
import o1.m;
import o1.s;
import o1.t;
/* loaded from: classes.dex */
public class WebMessageListener implements Disposable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final String LOG_TAG = "WebMessageListener";
    public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_inappwebview_web_message_listener_";
    public Set<String> allowedOriginRules;
    public WebMessageListenerChannelDelegate channelDelegate;

    /* renamed from: id  reason: collision with root package name */
    public String f9470id;
    public String jsObjectName;
    public s.b listener;
    public b replyProxy;
    public InAppWebViewInterface webView;

    public WebMessageListener(String str, InAppWebViewInterface inAppWebViewInterface, BinaryMessenger binaryMessenger, String str2, Set<String> set) {
        this.f9470id = str;
        this.webView = inAppWebViewInterface;
        this.jsObjectName = str2;
        this.allowedOriginRules = set;
        this.channelDelegate = new WebMessageListenerChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + this.f9470id + "_" + this.jsObjectName));
        if (this.webView instanceof InAppWebView) {
            this.listener = new s.b() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageListener.1
                @Override // o1.s.b
                public void onPostMessage(WebView webView, m mVar, Uri uri, boolean z10, b bVar) {
                    String uri2;
                    WebMessageListener webMessageListener = WebMessageListener.this;
                    webMessageListener.replyProxy = bVar;
                    WebMessageListenerChannelDelegate webMessageListenerChannelDelegate = webMessageListener.channelDelegate;
                    if (webMessageListenerChannelDelegate != null) {
                        WebMessageCompatExt fromMapWebMessageCompat = WebMessageCompatExt.fromMapWebMessageCompat(mVar);
                        if (uri.toString().equals("null")) {
                            uri2 = null;
                        } else {
                            uri2 = uri.toString();
                        }
                        webMessageListenerChannelDelegate.onPostMessage(fromMapWebMessageCompat, uri2, z10);
                    }
                }
            };
        }
    }

    public static WebMessageListener fromMap(InAppWebViewInterface inAppWebViewInterface, BinaryMessenger binaryMessenger, Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new WebMessageListener((String) map.get(Chapter.KEY_ID), inAppWebViewInterface, binaryMessenger, (String) map.get("jsObjectName"), new HashSet((List) map.get("allowedOriginRules")));
    }

    public void assertOriginRulesValid() {
        int i10 = 0;
        for (String str : this.allowedOriginRules) {
            if (str != null) {
                if (!str.isEmpty()) {
                    if (!"*".equals(str)) {
                        Uri parse = Uri.parse(str);
                        String scheme = parse.getScheme();
                        String host = parse.getHost();
                        String path = parse.getPath();
                        int port = parse.getPort();
                        if (scheme != null) {
                            if ((!"http".equals(scheme) && !"https".equals(scheme)) || (host != null && !host.isEmpty())) {
                                if (!"http".equals(scheme) && !"https".equals(scheme) && (host != null || port != -1)) {
                                    throw new Exception("allowedOriginRules " + str + " is invalid");
                                } else if ((host != null && !host.isEmpty()) || port == -1) {
                                    if (path.isEmpty()) {
                                        if (host != null) {
                                            int indexOf = host.indexOf("*");
                                            if (indexOf == 0 && (indexOf != 0 || host.startsWith("*."))) {
                                                if (host.startsWith("[")) {
                                                    if (host.endsWith("]")) {
                                                        if (!Util.isIPv6(host.substring(1, host.length() - 1))) {
                                                            throw new Exception("allowedOriginRules " + str + " is invalid");
                                                        }
                                                    } else {
                                                        throw new Exception("allowedOriginRules " + str + " is invalid");
                                                    }
                                                }
                                            } else {
                                                throw new Exception("allowedOriginRules " + str + " is invalid");
                                            }
                                        }
                                        i10++;
                                    } else {
                                        throw new Exception("allowedOriginRules " + str + " is invalid");
                                    }
                                } else {
                                    throw new Exception("allowedOriginRules " + str + " is invalid");
                                }
                            } else {
                                throw new Exception("allowedOriginRules " + str + " is invalid");
                            }
                        } else {
                            throw new Exception("allowedOriginRules " + str + " is invalid");
                        }
                    }
                } else {
                    throw new Exception("allowedOriginRules[" + i10 + "] is empty");
                }
            } else {
                throw new Exception("allowedOriginRules[" + i10 + "] is null");
            }
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        WebMessageListenerChannelDelegate webMessageListenerChannelDelegate = this.channelDelegate;
        if (webMessageListenerChannelDelegate != null) {
            webMessageListenerChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        this.listener = null;
        this.replyProxy = null;
        this.webView = null;
    }

    public void initJsInstance() {
        String str;
        if (this.webView != null) {
            String replaceAll = Util.replaceAll(this.jsObjectName, "'", "\\'");
            ArrayList arrayList = new ArrayList();
            for (String str2 : this.allowedOriginRules) {
                if ("*".equals(str2)) {
                    arrayList.add("'*'");
                } else {
                    Uri parse = Uri.parse(str2);
                    Object obj = "null";
                    if (parse.getHost() == null) {
                        str = "null";
                    } else {
                        str = "'" + Util.replaceAll(parse.getHost(), "'", "\\'") + "'";
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("{scheme: '");
                    sb2.append(parse.getScheme());
                    sb2.append("', host: ");
                    sb2.append(str);
                    sb2.append(", port: ");
                    if (parse.getPort() != -1) {
                        obj = Integer.valueOf(parse.getPort());
                    }
                    sb2.append(obj);
                    sb2.append("}");
                    arrayList.add(sb2.toString());
                }
            }
            String str3 = "(function() {  var allowedOriginRules = [" + TextUtils.join(", ", arrayList) + "];  var isPageBlank = window.location.href === 'about:blank';  var scheme = !isPageBlank ? window.location.protocol.replace(':', '') : null;  var host = !isPageBlank ? window.location.hostname : null;  var port = !isPageBlank ? window.location.port : null;  if (window." + JavaScriptBridgeJS.JAVASCRIPT_BRIDGE_NAME + "._isOriginAllowed(allowedOriginRules, scheme, host, port)) {      window['" + replaceAll + "'] = new FlutterInAppWebViewWebMessageListener('" + replaceAll + "');  }})();";
            this.webView.getUserContentController().addPluginScript(new PluginScript("WebMessageListener-" + this.jsObjectName, str3, UserScriptInjectionTime.AT_DOCUMENT_START, null, false, null));
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:17|(2:72|(1:74)(1:75))(1:21)|(2:69|(1:71))(1:24)|25|(8:29|30|31|32|33|(1:63)(1:48)|(1:50)|(2:56|57))|68|31|32|33|(1:35)|63|(0)|(1:62)(4:52|54|56|57)) */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isOriginAllowed(java.lang.String r12, java.lang.String r13, int r14) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageListener.isOriginAllowed(java.lang.String, java.lang.String, int):boolean");
    }

    public void postMessageForInAppWebView(WebMessageCompatExt webMessageCompatExt, MethodChannel.Result result) {
        Object data;
        if (this.replyProxy != null && t.a("WEB_MESSAGE_LISTENER") && (data = webMessageCompatExt.getData()) != null) {
            if (t.a("WEB_MESSAGE_ARRAY_BUFFER") && webMessageCompatExt.getType() == 1) {
                this.replyProxy.b((byte[]) data);
            } else {
                this.replyProxy.a(data.toString());
            }
        }
        result.success(Boolean.TRUE);
    }
}
