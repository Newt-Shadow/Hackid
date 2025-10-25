package com.pichillilorenzo.flutter_inappwebview_android.webview.web_message;

import com.arthenica.ffmpegkit.StreamInformation;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessageCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class WebMessageChannelChannelDelegate extends ChannelDelegateImpl {
    private WebMessageChannel webMessageChannel;

    public WebMessageChannelChannelDelegate(WebMessageChannel webMessageChannel, MethodChannel methodChannel) {
        super(methodChannel);
        this.webMessageChannel = webMessageChannel;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.webMessageChannel = null;
    }

    public void onMessage(int i10, WebMessageCompatExt webMessageCompatExt) {
        Map<String, Object> map;
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(StreamInformation.KEY_INDEX, Integer.valueOf(i10));
        if (webMessageCompatExt != null) {
            map = webMessageCompatExt.toMap();
        } else {
            map = null;
        }
        hashMap.put("message", map);
        channel.invokeMethod("onMessage", hashMap);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 94756344:
                if (str.equals("close")) {
                    c10 = 0;
                    break;
                }
                break;
            case 556190586:
                if (str.equals("setWebMessageCallback")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1490029383:
                if (str.equals("postMessage")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                WebMessageChannel webMessageChannel = this.webMessageChannel;
                if (webMessageChannel != null && (webMessageChannel.webView instanceof InAppWebView)) {
                    this.webMessageChannel.closeForInAppWebView((Integer) methodCall.argument(StreamInformation.KEY_INDEX), result);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 1:
                WebMessageChannel webMessageChannel2 = this.webMessageChannel;
                if (webMessageChannel2 != null && (webMessageChannel2.webView instanceof InAppWebView)) {
                    this.webMessageChannel.setWebMessageCallbackForInAppWebView(((Integer) methodCall.argument(StreamInformation.KEY_INDEX)).intValue(), result);
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 2:
                WebMessageChannel webMessageChannel3 = this.webMessageChannel;
                if (webMessageChannel3 != null && (webMessageChannel3.webView instanceof InAppWebView)) {
                    WebMessageCompatExt fromMap = WebMessageCompatExt.fromMap((Map) methodCall.argument("message"));
                    this.webMessageChannel.postMessageForInAppWebView((Integer) methodCall.argument(StreamInformation.KEY_INDEX), fromMap, result);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
