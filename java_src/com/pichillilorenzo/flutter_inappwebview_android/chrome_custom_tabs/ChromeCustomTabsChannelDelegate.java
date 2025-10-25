package com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.i;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.CustomTabsSecondaryToolbar;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ChromeCustomTabsChannelDelegate extends ChannelDelegateImpl {
    private ChromeCustomTabsActivity chromeCustomTabsActivity;

    public ChromeCustomTabsChannelDelegate(ChromeCustomTabsActivity chromeCustomTabsActivity, MethodChannel methodChannel) {
        super(methodChannel);
        this.chromeCustomTabsActivity = chromeCustomTabsActivity;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.chromeCustomTabsActivity = null;
    }

    public void onClosed() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onClosed", new HashMap());
    }

    public void onCompletedInitialLoad() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onCompletedInitialLoad", new HashMap());
    }

    public void onGreatestScrollPercentageIncreased(int i10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("scrollPercentage", Integer.valueOf(i10));
        channel.invokeMethod("onGreatestScrollPercentageIncreased", hashMap);
    }

    public void onItemActionPerform(int i10, String str, String str2) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Chapter.KEY_ID, Integer.valueOf(i10));
        hashMap.put("url", str);
        hashMap.put("title", str2);
        channel.invokeMethod("onItemActionPerform", hashMap);
    }

    public void onMessageChannelReady() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onMessageChannelReady", new HashMap());
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        i iVar;
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin;
        Activity activity;
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1526944655:
                if (str.equals("isEngagementSignalsApiAvailable")) {
                    c10 = 0;
                    break;
                }
                break;
            case -675108676:
                if (str.equals("launchUrl")) {
                    c10 = 1;
                    break;
                }
                break;
            case -334843312:
                if (str.equals("updateSecondaryToolbar")) {
                    c10 = 2;
                    break;
                }
                break;
            case 50870385:
                if (str.equals("updateActionButton")) {
                    c10 = 3;
                    break;
                }
                break;
            case 94756344:
                if (str.equals("close")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1256059502:
                if (str.equals("validateRelationship")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1392239787:
                if (str.equals("requestPostMessageChannel")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1490029383:
                if (str.equals("postMessage")) {
                    c10 = 7;
                    break;
                }
                break;
            case 2000053463:
                if (str.equals("mayLaunchUrl")) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        Uri uri = null;
        switch (c10) {
            case 0:
                ChromeCustomTabsActivity chromeCustomTabsActivity = this.chromeCustomTabsActivity;
                if (chromeCustomTabsActivity != null && (iVar = chromeCustomTabsActivity.customTabsSession) != null) {
                    try {
                        result.success(Boolean.valueOf(iVar.h(new Bundle())));
                        return;
                    } catch (Throwable unused) {
                        result.success(Boolean.FALSE);
                        return;
                    }
                }
                result.success(Boolean.FALSE);
                return;
            case 1:
                if (this.chromeCustomTabsActivity != null) {
                    String str2 = (String) methodCall.argument("url");
                    if (str2 != null) {
                        this.chromeCustomTabsActivity.launchUrl(str2, (Map) methodCall.argument("headers"), (String) methodCall.argument("referrer"), (List) methodCall.argument("otherLikelyURLs"));
                        result.success(Boolean.TRUE);
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 2:
                if (this.chromeCustomTabsActivity != null) {
                    this.chromeCustomTabsActivity.updateSecondaryToolbar(CustomTabsSecondaryToolbar.fromMap((Map) methodCall.argument("secondaryToolbar")));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 3:
                if (this.chromeCustomTabsActivity != null) {
                    this.chromeCustomTabsActivity.updateActionButton((byte[]) methodCall.argument("icon"), (String) methodCall.argument("description"));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 4:
                ChromeCustomTabsActivity chromeCustomTabsActivity2 = this.chromeCustomTabsActivity;
                if (chromeCustomTabsActivity2 != null) {
                    chromeCustomTabsActivity2.onStop();
                    this.chromeCustomTabsActivity.onDestroy();
                    this.chromeCustomTabsActivity.close();
                    ChromeSafariBrowserManager chromeSafariBrowserManager = this.chromeCustomTabsActivity.manager;
                    if (chromeSafariBrowserManager != null && (inAppWebViewFlutterPlugin = chromeSafariBrowserManager.plugin) != null && (activity = inAppWebViewFlutterPlugin.activity) != null) {
                        Intent intent = new Intent(activity, activity.getClass());
                        intent.addFlags(67108864);
                        intent.addFlags(536870912);
                        activity.startActivity(intent);
                    }
                    this.chromeCustomTabsActivity.dispose();
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 5:
                ChromeCustomTabsActivity chromeCustomTabsActivity3 = this.chromeCustomTabsActivity;
                if (chromeCustomTabsActivity3 != null && chromeCustomTabsActivity3.customTabsSession != null) {
                    result.success(Boolean.valueOf(this.chromeCustomTabsActivity.customTabsSession.o(((Integer) methodCall.argument("relation")).intValue(), Uri.parse((String) methodCall.argument("origin")), null)));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            case 6:
                ChromeCustomTabsActivity chromeCustomTabsActivity4 = this.chromeCustomTabsActivity;
                if (chromeCustomTabsActivity4 != null && chromeCustomTabsActivity4.customTabsSession != null) {
                    String str3 = (String) methodCall.argument("targetOrigin");
                    i iVar2 = this.chromeCustomTabsActivity.customTabsSession;
                    Uri parse = Uri.parse((String) methodCall.argument("sourceOrigin"));
                    if (str3 != null) {
                        uri = Uri.parse(str3);
                    }
                    result.success(Boolean.valueOf(iVar2.k(parse, uri, new Bundle())));
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 7:
                ChromeCustomTabsActivity chromeCustomTabsActivity5 = this.chromeCustomTabsActivity;
                if (chromeCustomTabsActivity5 != null && chromeCustomTabsActivity5.customTabsSession != null) {
                    result.success(Integer.valueOf(this.chromeCustomTabsActivity.customTabsSession.j((String) methodCall.argument("message"), new Bundle())));
                    return;
                } else {
                    result.success(-3);
                    return;
                }
            case '\b':
                if (this.chromeCustomTabsActivity != null) {
                    result.success(Boolean.valueOf(this.chromeCustomTabsActivity.mayLaunchUrl((String) methodCall.argument("url"), (List) methodCall.argument("otherLikelyURLs"))));
                    return;
                } else {
                    result.success(Boolean.FALSE);
                    return;
                }
            default:
                result.notImplemented();
                return;
        }
    }

    public void onNavigationEvent(int i10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("navigationEvent", Integer.valueOf(i10));
        channel.invokeMethod("onNavigationEvent", hashMap);
    }

    public void onOpened() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onOpened", new HashMap());
    }

    public void onPostMessage(String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("message", str);
        channel.invokeMethod("onPostMessage", hashMap);
    }

    public void onRelationshipValidationResult(int i10, Uri uri, boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("relation", Integer.valueOf(i10));
        hashMap.put("requestedOrigin", uri.toString());
        hashMap.put("result", Boolean.valueOf(z10));
        channel.invokeMethod("onRelationshipValidationResult", hashMap);
    }

    public void onSecondaryItemActionPerform(String str, String str2) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Constants.NAME, str);
        hashMap.put("url", str2);
        channel.invokeMethod("onSecondaryItemActionPerform", hashMap);
    }

    public void onServiceConnected() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onServiceConnected", new HashMap());
    }

    public void onSessionEnded(boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("didUserInteract", Boolean.valueOf(z10));
        channel.invokeMethod("onSessionEnded", hashMap);
    }

    public void onVerticalScrollEvent(boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("isDirectionUp", Boolean.valueOf(z10));
        channel.invokeMethod("onVerticalScrollEvent", hashMap);
    }
}
