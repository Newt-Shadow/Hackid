package com.pichillilorenzo.flutter_inappwebview_android.credential_database;

import android.content.Context;
import android.webkit.WebViewDatabase;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLCredentialContract;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLCredential;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLProtectionSpace;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CredentialDatabaseHandler extends ChannelDelegateImpl {
    protected static final String LOG_TAG = "CredentialDatabaseHandler";
    public static final String METHOD_CHANNEL_NAME = "com.pichillilorenzo/flutter_inappwebview_credential_database";
    public static CredentialDatabase credentialDatabase;
    public InAppWebViewFlutterPlugin plugin;

    public CredentialDatabaseHandler(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        super(new MethodChannel(inAppWebViewFlutterPlugin.messenger, METHOD_CHANNEL_NAME));
        this.plugin = inAppWebViewFlutterPlugin;
    }

    public static void init(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        if (credentialDatabase == null) {
            credentialDatabase = CredentialDatabase.getInstance(inAppWebViewFlutterPlugin.applicationContext);
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.plugin = null;
        credentialDatabase = null;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Context context;
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null) {
            init(inAppWebViewFlutterPlugin);
        }
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1851697792:
                if (str.equals("clearAllAuthCredentials")) {
                    c10 = 0;
                    break;
                }
                break;
            case -410271914:
                if (str.equals("getHttpAuthCredentials")) {
                    c10 = 1;
                    break;
                }
                break;
            case 589173355:
                if (str.equals("removeHttpAuthCredential")) {
                    c10 = 2;
                    break;
                }
                break;
            case 998955721:
                if (str.equals("setHttpAuthCredential")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1084504936:
                if (str.equals("removeHttpAuthCredentials")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1930845769:
                if (str.equals("getAllAuthCredentials")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                CredentialDatabase credentialDatabase2 = credentialDatabase;
                if (credentialDatabase2 != null) {
                    credentialDatabase2.clearAllAuthCredentials();
                    InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin2 = this.plugin;
                    if (inAppWebViewFlutterPlugin2 != null && (context = inAppWebViewFlutterPlugin2.applicationContext) != null) {
                        WebViewDatabase.getInstance(context).clearHttpAuthUsernamePassword();
                    }
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 1:
                ArrayList arrayList = new ArrayList();
                if (credentialDatabase != null) {
                    for (URLCredential uRLCredential : credentialDatabase.getHttpAuthCredentials((String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT))) {
                        arrayList.add(uRLCredential.toMap());
                    }
                }
                result.success(arrayList);
                return;
            case 2:
                if (credentialDatabase != null) {
                    credentialDatabase.removeHttpAuthCredential((String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT), (String) methodCall.argument(URLCredentialContract.FeedEntry.COLUMN_NAME_USERNAME), (String) methodCall.argument(URLCredentialContract.FeedEntry.COLUMN_NAME_PASSWORD));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 3:
                if (credentialDatabase != null) {
                    credentialDatabase.setHttpAuthCredential((String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT), (String) methodCall.argument(URLCredentialContract.FeedEntry.COLUMN_NAME_USERNAME), (String) methodCall.argument(URLCredentialContract.FeedEntry.COLUMN_NAME_PASSWORD));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 4:
                if (credentialDatabase != null) {
                    credentialDatabase.removeHttpAuthCredentials((String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PROTOCOL), (String) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM), (Integer) methodCall.argument(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT));
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            case 5:
                ArrayList arrayList2 = new ArrayList();
                CredentialDatabase credentialDatabase3 = credentialDatabase;
                if (credentialDatabase3 != null) {
                    for (URLProtectionSpace uRLProtectionSpace : credentialDatabase3.protectionSpaceDao.getAll()) {
                        ArrayList arrayList3 = new ArrayList();
                        for (URLCredential uRLCredential2 : credentialDatabase.credentialDao.getAllByProtectionSpaceId(uRLProtectionSpace.getId())) {
                            arrayList3.add(uRLCredential2.toMap());
                        }
                        HashMap hashMap = new HashMap();
                        hashMap.put("protectionSpace", uRLProtectionSpace.toMap());
                        hashMap.put("credentials", arrayList3);
                        arrayList2.add(hashMap);
                    }
                }
                result.success(arrayList2);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
