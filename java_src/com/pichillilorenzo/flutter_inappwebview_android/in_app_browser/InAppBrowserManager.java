package com.pichillilorenzo.flutter_inappwebview_android.in_app_browser;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class InAppBrowserManager extends ChannelDelegateImpl {
    protected static final String LOG_TAG = "InAppBrowserManager";
    public static final String METHOD_CHANNEL_NAME = "com.pichillilorenzo/flutter_inappbrowser";
    public static final Map<String, InAppBrowserManager> shared = new HashMap();

    /* renamed from: id  reason: collision with root package name */
    public String f9458id;
    public InAppWebViewFlutterPlugin plugin;

    public InAppBrowserManager(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        super(new MethodChannel(inAppWebViewFlutterPlugin.messenger, METHOD_CHANNEL_NAME));
        String uuid = UUID.randomUUID().toString();
        this.f9458id = uuid;
        this.plugin = inAppWebViewFlutterPlugin;
        shared.put(uuid, this);
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        shared.remove(this.f9458id);
        this.plugin = null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Activity activity;
        String str = methodCall.method;
        str.hashCode();
        if (!str.equals("openWithSystemBrowser")) {
            if (!str.equals("open")) {
                result.notImplemented();
                return;
            }
            InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
            if (inAppWebViewFlutterPlugin != null && (activity = inAppWebViewFlutterPlugin.activity) != null) {
                open(activity, (Map) methodCall.arguments());
                result.success(Boolean.TRUE);
                return;
            }
            result.success(Boolean.FALSE);
            return;
        }
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin2 = this.plugin;
        if (inAppWebViewFlutterPlugin2 != null && inAppWebViewFlutterPlugin2.activity != null) {
            openWithSystemBrowser(this.plugin.activity, (String) methodCall.argument("url"), result);
        } else {
            result.success(Boolean.FALSE);
        }
    }

    public void open(Activity activity, Map<String, Object> map) {
        int i10;
        Integer num = (Integer) map.get("windowId");
        List list = (List) map.get("initialUserScripts");
        Map map2 = (Map) map.get("pullToRefreshSettings");
        List list2 = (List) map.get("menuItems");
        Bundle bundle = new Bundle();
        bundle.putString("fromActivity", activity.getClass().getName());
        bundle.putSerializable("initialUrlRequest", (Serializable) ((Map) map.get("urlRequest")));
        bundle.putString("initialFile", (String) map.get("assetFilePath"));
        bundle.putString("initialData", (String) map.get("data"));
        bundle.putString("initialMimeType", (String) map.get("mimeType"));
        bundle.putString("initialEncoding", (String) map.get("encoding"));
        bundle.putString("initialBaseUrl", (String) map.get("baseUrl"));
        bundle.putString("initialHistoryUrl", (String) map.get("historyUrl"));
        bundle.putString(Chapter.KEY_ID, (String) map.get(Chapter.KEY_ID));
        bundle.putString("managerId", this.f9458id);
        bundle.putSerializable("settings", (Serializable) ((Map) map.get("settings")));
        bundle.putSerializable("contextMenu", (Serializable) ((Map) map.get("contextMenu")));
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = -1;
        }
        bundle.putInt("windowId", i10);
        bundle.putSerializable("initialUserScripts", (Serializable) list);
        bundle.putSerializable("pullToRefreshInitialSettings", (Serializable) map2);
        bundle.putSerializable("menuItems", (Serializable) list2);
        startInAppBrowserActivity(activity, bundle);
    }

    public void openExternalExcludeCurrentApp(Activity activity, Intent intent) {
        String packageName = activity.getPackageName();
        List<ResolveInfo> queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (!packageName.equals(resolveInfo.activityInfo.packageName)) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                arrayList.add(intent2);
            } else {
                z10 = true;
            }
        }
        if (z10 && arrayList.size() != 0) {
            if (arrayList.size() == 1) {
                activity.startActivity((Intent) arrayList.get(0));
                return;
            } else if (arrayList.size() > 0) {
                Intent createChooser = Intent.createChooser((Intent) arrayList.remove(arrayList.size() - 1), null);
                createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                activity.startActivity(createChooser);
                return;
            } else {
                return;
            }
        }
        activity.startActivity(intent);
    }

    public void openWithSystemBrowser(Activity activity, String str, MethodChannel.Result result) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri parse = Uri.parse(str);
            if (Constants.FILE.equals(parse.getScheme())) {
                intent.setDataAndType(parse, getMimeType(str));
            } else {
                intent.setData(parse);
            }
            intent.putExtra("com.android.browser.application_id", activity.getPackageName());
            openExternalExcludeCurrentApp(activity, intent);
            result.success(Boolean.TRUE);
        } catch (RuntimeException e10) {
            Log.d(LOG_TAG, str + " cannot be opened: " + e10.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" cannot be opened!");
            result.error(LOG_TAG, sb2.toString(), null);
        }
    }

    public void startInAppBrowserActivity(Activity activity, Bundle bundle) {
        Intent intent = new Intent(activity, InAppBrowserActivity.class);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        activity.startActivity(intent);
    }
}
