package com.pichillilorenzo.flutter_inappwebview_android.webview.web_message;

import android.webkit.ValueCallback;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.types.Disposable;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessageCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessagePort;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessagePortCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewInterface;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o1.m;
import o1.n;
import o1.s;
import o1.t;
/* loaded from: classes.dex */
public class WebMessageChannel implements Disposable {
    protected static final String LOG_TAG = "WebMessageChannel";
    public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_inappwebview_web_message_channel_";
    public WebMessageChannelChannelDelegate channelDelegate;
    public final List<n> compatPorts;

    /* renamed from: id  reason: collision with root package name */
    public String f9469id;
    public final List<WebMessagePort> ports;
    public InAppWebViewInterface webView;

    public WebMessageChannel(String str, InAppWebViewInterface inAppWebViewInterface) {
        this.f9469id = str;
        BinaryMessenger binaryMessenger = inAppWebViewInterface.getPlugin().messenger;
        this.channelDelegate = new WebMessageChannelChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + str));
        if (inAppWebViewInterface instanceof InAppWebView) {
            this.compatPorts = new ArrayList(Arrays.asList(s.d((InAppWebView) inAppWebViewInterface)));
            this.ports = new ArrayList();
        } else {
            this.ports = Arrays.asList(new WebMessagePort("port1", this), new WebMessagePort("port2", this));
            this.compatPorts = new ArrayList();
        }
        this.webView = inAppWebViewInterface;
    }

    public void closeForInAppWebView(Integer num, MethodChannel.Result result) {
        if (this.webView != null && this.compatPorts.size() > 0 && t.a("WEB_MESSAGE_PORT_CLOSE")) {
            try {
                this.compatPorts.get(num.intValue()).a();
                result.success(Boolean.TRUE);
                return;
            } catch (Exception e10) {
                result.error(LOG_TAG, e10.getMessage(), null);
                return;
            }
        }
        result.success(Boolean.TRUE);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        if (t.a("WEB_MESSAGE_PORT_CLOSE")) {
            for (n nVar : this.compatPorts) {
                try {
                    nVar.a();
                } catch (Exception unused) {
                }
            }
        }
        WebMessageChannelChannelDelegate webMessageChannelChannelDelegate = this.channelDelegate;
        if (webMessageChannelChannelDelegate != null) {
            webMessageChannelChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        this.compatPorts.clear();
        this.webView = null;
    }

    public void initJsInstance(InAppWebViewInterface inAppWebViewInterface, final ValueCallback<WebMessageChannel> valueCallback) {
        if (inAppWebViewInterface != null) {
            inAppWebViewInterface.evaluateJavascript("(function() {window.flutter_inappwebview._webMessageChannels['" + this.f9469id + "'] = new MessageChannel();})();", null, new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageChannel.1
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(String str) {
                    valueCallback.onReceiveValue(this);
                }
            });
            return;
        }
        valueCallback.onReceiveValue(this);
    }

    public void onMessage(int i10, WebMessageCompatExt webMessageCompatExt) {
        WebMessageChannelChannelDelegate webMessageChannelChannelDelegate = this.channelDelegate;
        if (webMessageChannelChannelDelegate != null) {
            webMessageChannelChannelDelegate.onMessage(i10, webMessageCompatExt);
        }
    }

    public void postMessageForInAppWebView(Integer num, WebMessageCompatExt webMessageCompatExt, MethodChannel.Result result) {
        String str;
        if (this.webView != null && this.compatPorts.size() > 0 && t.a("WEB_MESSAGE_PORT_POST_MESSAGE")) {
            n nVar = this.compatPorts.get(num.intValue());
            ArrayList arrayList = new ArrayList();
            List<WebMessagePortCompatExt> ports = webMessageCompatExt.getPorts();
            if (ports != null) {
                for (WebMessagePortCompatExt webMessagePortCompatExt : ports) {
                    WebMessageChannel webMessageChannel = this.webView.getWebMessageChannels().get(webMessagePortCompatExt.getWebMessageChannelId());
                    if (webMessageChannel != null) {
                        arrayList.add(webMessageChannel.compatPorts.get(webMessagePortCompatExt.getIndex()));
                    }
                }
            }
            Object data = webMessageCompatExt.getData();
            try {
                if (t.a("WEB_MESSAGE_ARRAY_BUFFER") && data != null && webMessageCompatExt.getType() == 1) {
                    nVar.d(new m((byte[]) data, (n[]) arrayList.toArray(new n[0])));
                } else {
                    if (data != null) {
                        str = data.toString();
                    } else {
                        str = null;
                    }
                    nVar.d(new m(str, (n[]) arrayList.toArray(new n[0])));
                }
                result.success(Boolean.TRUE);
                return;
            } catch (Exception e10) {
                result.error(LOG_TAG, e10.getMessage(), null);
                return;
            }
        }
        result.success(Boolean.TRUE);
    }

    public void setWebMessageCallbackForInAppWebView(final int i10, MethodChannel.Result result) {
        if (this.webView != null && this.compatPorts.size() > 0 && t.a("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK")) {
            try {
                this.compatPorts.get(i10).e(new n.a() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageChannel.2
                    @Override // o1.n.a
                    public void onMessage(n nVar, m mVar) {
                        WebMessageCompatExt webMessageCompatExt;
                        super.onMessage(nVar, mVar);
                        WebMessageChannel webMessageChannel = this;
                        int i11 = i10;
                        if (mVar != null) {
                            webMessageCompatExt = WebMessageCompatExt.fromMapWebMessageCompat(mVar);
                        } else {
                            webMessageCompatExt = null;
                        }
                        webMessageChannel.onMessage(i11, webMessageCompatExt);
                    }
                });
                result.success(Boolean.TRUE);
                return;
            } catch (Exception e10) {
                result.error(LOG_TAG, e10.getMessage(), null);
                return;
            }
        }
        result.success(Boolean.TRUE);
    }

    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(Chapter.KEY_ID, this.f9469id);
        return hashMap;
    }
}
