package com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.MimeTypeMap;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.c;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFileProvider;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.in_app_browser.ActivityResultListener;
import com.pichillilorenzo.flutter_inappwebview_android.in_app_browser.InAppBrowserDelegate;
import com.pichillilorenzo.flutter_inappwebview_android.types.CreateWindowAction;
import com.pichillilorenzo.flutter_inappwebview_android.types.GeolocationPermissionShowPromptResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsAlertResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsBeforeUnloadResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsConfirmResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsPromptResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.PermissionResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLRequest;
import com.pichillilorenzo.flutter_inappwebview_android.webview.InAppWebViewManager;
import com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.PluginRegistry;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class InAppWebViewChromeClient extends WebChromeClient implements PluginRegistry.ActivityResultListener, ActivityResultListener {
    protected static final FrameLayout.LayoutParams FULLSCREEN_LAYOUT_PARAMS = new FrameLayout.LayoutParams(-1, -1, 17);
    protected static final int FULLSCREEN_SYSTEM_UI_VISIBILITY = 1798;
    protected static final int FULLSCREEN_SYSTEM_UI_VISIBILITY_KITKAT = 7942;
    protected static final String LOG_TAG = "IABWebChromeClient";
    private static final int PICKER = 1;
    private static final int PICKER_LEGACY = 3;
    final String DEFAULT_MIME_TYPES = "*/*";
    final Map<DialogInterface, JsResult> dialogs = new HashMap();
    private ValueCallback<Uri[]> filePathCallback;
    private ValueCallback<Uri> filePathCallbackLegacy;
    private Uri imageOutputFileUri;
    private InAppBrowserDelegate inAppBrowserDelegate;
    public InAppWebView inAppWebView;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private int mOriginalOrientation;
    private int mOriginalSystemUiVisibility;
    public InAppWebViewFlutterPlugin plugin;
    private Uri videoOutputFileUri;

    public InAppWebViewChromeClient(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin, InAppWebView inAppWebView, InAppBrowserDelegate inAppBrowserDelegate) {
        this.plugin = inAppWebViewFlutterPlugin;
        this.inAppWebView = inAppWebView;
        this.inAppBrowserDelegate = inAppBrowserDelegate;
        if (inAppBrowserDelegate != null) {
            inAppBrowserDelegate.getActivityResultListeners().add(this);
        }
        ActivityPluginBinding activityPluginBinding = inAppWebViewFlutterPlugin.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.addActivityResultListener(this);
        }
    }

    private Boolean acceptsAny(String[] strArr) {
        if (isArrayEmpty(strArr).booleanValue()) {
            return Boolean.TRUE;
        }
        for (String str : strArr) {
            if (str.equals("*/*")) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
    }

    private Boolean acceptsImages(String str) {
        if (str.matches("\\.\\w+")) {
            str = getMimeTypeFromExtension(str.replace(".", ""));
        }
        return Boolean.valueOf(str.isEmpty() || str.toLowerCase().contains("image"));
    }

    private Boolean acceptsVideo(String str) {
        if (str.matches("\\.\\w+")) {
            str = getMimeTypeFromExtension(str.replace(".", ""));
        }
        return Boolean.valueOf(str.isEmpty() || str.toLowerCase().contains("video"));
    }

    private Boolean arrayContainsString(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2 != null && str2.contains(str)) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
    }

    private String[] getAcceptedMimeType(String[] strArr) {
        if (isArrayEmpty(strArr).booleanValue()) {
            return new String[]{"*/*"};
        }
        String[] strArr2 = new String[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            if (str.matches("\\.\\w+")) {
                strArr2[i10] = getMimeTypeFromExtension(str.replace(".", ""));
            } else {
                strArr2[i10] = str;
            }
        }
        return strArr2;
    }

    private Activity getActivity() {
        InAppBrowserDelegate inAppBrowserDelegate = this.inAppBrowserDelegate;
        if (inAppBrowserDelegate != null) {
            return inAppBrowserDelegate.getActivity();
        }
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null) {
            return inAppWebViewFlutterPlugin.activity;
        }
        return null;
    }

    private File getCapturedFile(String str) {
        String str2;
        String str3;
        if (str.equals("android.media.action.IMAGE_CAPTURE")) {
            String str4 = Environment.DIRECTORY_PICTURES;
            str2 = "image";
            str3 = ".jpg";
        } else if (str.equals("android.media.action.VIDEO_CAPTURE")) {
            String str5 = Environment.DIRECTORY_MOVIES;
            str2 = "video";
            str3 = ".mp4";
        } else {
            str2 = "";
            str3 = "";
        }
        Activity activity = getActivity();
        if (activity == null) {
            return null;
        }
        return File.createTempFile(str2, str3, activity.getApplicationContext().getExternalFilesDir(null));
    }

    private Uri getCapturedMediaFile() {
        Uri uri = this.imageOutputFileUri;
        if (uri != null && isFileNotEmpty(uri)) {
            return this.imageOutputFileUri;
        }
        Uri uri2 = this.videoOutputFileUri;
        if (uri2 != null && isFileNotEmpty(uri2)) {
            return this.videoOutputFileUri;
        }
        return null;
    }

    private Intent getFileChooserIntent(String str) {
        String str2 = str.isEmpty() ? "*/*" : str;
        if (str.matches("\\.\\w+")) {
            str2 = getMimeTypeFromExtension(str.replace(".", ""));
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType(str2);
        return intent;
    }

    private String getMimeTypeFromExtension(String str) {
        if (str != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        }
        return null;
    }

    private Uri getOutputUri(String str) {
        File file;
        Activity activity;
        try {
            file = getCapturedFile(str);
        } catch (IOException e10) {
            Log.e(LOG_TAG, "Error occurred while creating the File", e10);
            file = null;
        }
        if (file == null || (activity = getActivity()) == null) {
            return null;
        }
        try {
            return androidx.core.content.b.getUriForFile(activity.getApplicationContext(), activity.getApplicationContext().getPackageName() + "." + InAppWebViewFileProvider.fileProviderAuthorityExtension, file);
        } catch (Exception e11) {
            Log.e(LOG_TAG, "", e11);
            return null;
        }
    }

    private Intent getPhotoIntent() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri outputUri = getOutputUri("android.media.action.IMAGE_CAPTURE");
        this.imageOutputFileUri = outputUri;
        intent.putExtra("output", outputUri);
        return intent;
    }

    private Uri[] getSelectedFiles(Intent intent, int i10) {
        if (intent != null && intent.getData() != null) {
            if (i10 != -1) {
                return null;
            }
            return WebChromeClient.FileChooserParams.parseResult(i10, intent);
        } else if (intent != null && intent.getClipData() != null) {
            int itemCount = intent.getClipData().getItemCount();
            Uri[] uriArr = new Uri[itemCount];
            for (int i11 = 0; i11 < itemCount; i11++) {
                uriArr[i11] = intent.getClipData().getItemAt(i11).getUri();
            }
            return uriArr;
        } else {
            Uri capturedMediaFile = getCapturedMediaFile();
            if (capturedMediaFile == null) {
                return null;
            }
            return new Uri[]{capturedMediaFile};
        }
    }

    private Intent getVideoIntent() {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        Uri outputUri = getOutputUri("android.media.action.VIDEO_CAPTURE");
        this.videoOutputFileUri = outputUri;
        intent.putExtra("output", outputUri);
        return intent;
    }

    private Boolean isArrayEmpty(String[] strArr) {
        boolean z10 = true;
        if (strArr.length != 0 && (strArr.length != 1 || strArr[0].length() != 0)) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    private boolean isFileNotEmpty(Uri uri) {
        Activity activity = getActivity();
        if (activity == null) {
            return false;
        }
        try {
            AssetFileDescriptor openAssetFileDescriptor = activity.getContentResolver().openAssetFileDescriptor(uri, "r");
            long length = openAssetFileDescriptor.getLength();
            openAssetFileDescriptor.close();
            if (length <= 0) {
                return false;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void createAlertDialog(String str, final JsResult jsResult, String str2, String str3) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsResult.confirm();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        c.a aVar = new c.a(activity, h.i.f16577c);
        aVar.f(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.l(str3, onClickListener);
        } else {
            aVar.k(17039370, onClickListener);
        }
        aVar.i(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        });
        androidx.appcompat.app.c a10 = aVar.a();
        this.dialogs.put(a10, jsResult);
        a10.show();
    }

    public void createBeforeUnloadDialog(String str, final JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsResult.confirm();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        c.a aVar = new c.a(activity, h.i.f16577c);
        aVar.f(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.l(str3, onClickListener);
        } else {
            aVar.k(17039370, onClickListener);
        }
        if (str4 != null && !str4.isEmpty()) {
            aVar.h(str4, onClickListener2);
        } else {
            aVar.g(17039360, onClickListener2);
        }
        aVar.i(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.15
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        });
        androidx.appcompat.app.c a10 = aVar.a();
        this.dialogs.put(a10, jsResult);
        a10.show();
    }

    public void createConfirmDialog(String str, final JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsResult.confirm();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        c.a aVar = new c.a(activity, h.i.f16577c);
        aVar.f(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.l(str3, onClickListener);
        } else {
            aVar.k(17039370, onClickListener);
        }
        if (str4 != null && !str4.isEmpty()) {
            aVar.h(str4, onClickListener2);
        } else {
            aVar.g(17039360, onClickListener2);
        }
        aVar.i(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        });
        androidx.appcompat.app.c a10 = aVar.a();
        this.dialogs.put(a10, jsResult);
        a10.show();
    }

    public void createPromptDialog(WebView webView, String str, String str2, final JsPromptResult jsPromptResult, String str3, String str4, final String str5, String str6, String str7) {
        FrameLayout frameLayout = new FrameLayout(webView.getContext());
        final EditText editText = new EditText(webView.getContext());
        editText.setMaxLines(1);
        if (str4 != null && !str4.isEmpty()) {
            str2 = str4;
        }
        editText.setText(str2);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        frameLayout.setPaddingRelative(45, 15, 45, 0);
        frameLayout.addView(editText);
        if (str3 != null && !str3.isEmpty()) {
            str = str3;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                String obj = editText.getText().toString();
                JsPromptResult jsPromptResult2 = jsPromptResult;
                String str8 = str5;
                if (str8 != null) {
                    obj = str8;
                }
                jsPromptResult2.confirm(obj);
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                jsPromptResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        };
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        c.a aVar = new c.a(activity, h.i.f16577c);
        aVar.f(str);
        if (str7 != null && !str7.isEmpty()) {
            aVar.l(str7, onClickListener);
        } else {
            aVar.k(17039370, onClickListener);
        }
        if (str6 != null && !str6.isEmpty()) {
            aVar.h(str6, onClickListener2);
        } else {
            aVar.g(17039360, onClickListener2);
        }
        aVar.i(new DialogInterface.OnCancelListener() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.11
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsPromptResult.cancel();
                dialogInterface.dismiss();
                InAppWebViewChromeClient.this.dialogs.remove(dialogInterface);
            }
        });
        androidx.appcompat.app.c a10 = aVar.a();
        a10.k(frameLayout);
        this.dialogs.put(a10, jsPromptResult);
        a10.show();
    }

    public void dispose() {
        ActivityPluginBinding activityPluginBinding;
        for (Map.Entry<DialogInterface, JsResult> entry : this.dialogs.entrySet()) {
            entry.getValue().cancel();
            entry.getKey().dismiss();
        }
        this.dialogs.clear();
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null && (activityPluginBinding = inAppWebViewFlutterPlugin.activityPluginBinding) != null) {
            activityPluginBinding.removeActivityResultListener(this);
        }
        InAppBrowserDelegate inAppBrowserDelegate = this.inAppBrowserDelegate;
        if (inAppBrowserDelegate != null) {
            inAppBrowserDelegate.getActivityResultListeners().clear();
            this.inAppBrowserDelegate = null;
        }
        this.filePathCallbackLegacy = null;
        this.filePathCallback = null;
        this.videoOutputFileUri = null;
        this.imageOutputFileUri = null;
        this.inAppWebView = null;
        this.plugin = null;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        byte[] bArr;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (bArr = inAppWebView.customSettings.defaultVideoPoster) != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inMutable = true;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }
        return Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
    }

    protected ViewGroup getRootView() {
        Activity activity = getActivity();
        if (activity == null) {
            return null;
        }
        return (ViewGroup) activity.findViewById(16908290);
    }

    protected boolean needsCameraPermission() {
        Activity activity = getActivity();
        if (activity == null) {
            return true;
        }
        try {
            if (Arrays.asList(activity.getPackageManager().getPackageInfo(activity.getApplicationContext().getPackageName(), Base64Utils.IO_BUFFER_SIZE).requestedPermissions).contains("android.permission.CAMERA")) {
                if (androidx.core.content.a.a(activity, "android.permission.CAMERA") != 0) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        Uri[] uriArr;
        Uri uri;
        if (this.filePathCallback == null && this.filePathCallbackLegacy == null) {
            return true;
        }
        if (i10 != 1) {
            if (i10 == 3) {
                if (i11 == -1) {
                    if (intent != null) {
                        uri = intent.getData();
                    } else {
                        uri = getCapturedMediaFile();
                    }
                } else {
                    uri = null;
                }
                ValueCallback<Uri> valueCallback = this.filePathCallbackLegacy;
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(uri);
                }
            }
        } else {
            if (i11 == -1) {
                uriArr = getSelectedFiles(intent, i11);
            } else {
                uriArr = null;
            }
            ValueCallback<Uri[]> valueCallback2 = this.filePathCallback;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(uriArr);
            }
        }
        this.filePathCallback = null;
        this.filePathCallbackLegacy = null;
        this.imageOutputFileUri = null;
        this.videoOutputFileUri = null;
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onCloseWindow();
        }
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onConsoleMessage(consoleMessage.message(), consoleMessage.messageLevel().ordinal());
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
        final int i10;
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebViewManager inAppWebViewManager;
        String string;
        InAppWebViewManager inAppWebViewManager2;
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin = this.plugin;
        if (inAppWebViewFlutterPlugin != null && (inAppWebViewManager2 = inAppWebViewFlutterPlugin.inAppWebViewManager) != null) {
            i10 = inAppWebViewManager2.windowAutoincrementId + 1;
            inAppWebViewManager2.windowAutoincrementId = i10;
        } else {
            i10 = 0;
        }
        WebView.HitTestResult hitTestResult = webView.getHitTestResult();
        String extra = hitTestResult.getExtra();
        if (hitTestResult.getType() == 8) {
            Message obtainMessage = webView.getHandler().obtainMessage();
            webView.requestFocusNodeHref(obtainMessage);
            Bundle data = obtainMessage.getData();
            if (data != null && (string = data.getString("url")) != null && !string.isEmpty()) {
                extra = string;
            }
        }
        CreateWindowAction createWindowAction = new CreateWindowAction(new URLRequest(extra, "GET", null, null), true, z11, false, i10, z10);
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin2 = this.plugin;
        if (inAppWebViewFlutterPlugin2 != null && (inAppWebViewManager = inAppWebViewFlutterPlugin2.inAppWebViewManager) != null) {
            inAppWebViewManager.windowWebViewMessages.put(Integer.valueOf(i10), message);
        }
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView == null || (webViewChannelDelegate = inAppWebView.channelDelegate) == null) {
            return false;
        }
        webViewChannelDelegate.onCreateWindow(createWindowAction, new WebViewChannelDelegate.CreateWindowCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.16
            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(", ");
                if (str2 == null) {
                    str2 = "";
                }
                sb2.append(str2);
                Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                defaultBehaviour((Boolean) null);
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public void defaultBehaviour(Boolean bool) {
                InAppWebViewManager inAppWebViewManager3;
                InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin3 = InAppWebViewChromeClient.this.plugin;
                if (inAppWebViewFlutterPlugin3 == null || (inAppWebViewManager3 = inAppWebViewFlutterPlugin3.inAppWebViewManager) == null) {
                    return;
                }
                inAppWebViewManager3.windowWebViewMessages.remove(Integer.valueOf(i10));
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public boolean nonNullSuccess(Boolean bool) {
                return !bool.booleanValue();
            }
        });
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onGeolocationPermissionsHidePrompt();
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        WebViewChannelDelegate webViewChannelDelegate;
        WebViewChannelDelegate.GeolocationPermissionsShowPromptCallback geolocationPermissionsShowPromptCallback = new WebViewChannelDelegate.GeolocationPermissionsShowPromptCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.17
            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
            public void error(String str2, String str3, Object obj) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(", ");
                if (str3 == null) {
                    str3 = "";
                }
                sb2.append(str3);
                Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                defaultBehaviour((GeolocationPermissionShowPromptResponse) null);
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public void defaultBehaviour(GeolocationPermissionShowPromptResponse geolocationPermissionShowPromptResponse) {
                callback.invoke(str, false, false);
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public boolean nonNullSuccess(GeolocationPermissionShowPromptResponse geolocationPermissionShowPromptResponse) {
                callback.invoke(geolocationPermissionShowPromptResponse.getOrigin(), geolocationPermissionShowPromptResponse.isAllow(), geolocationPermissionShowPromptResponse.isRetain());
                return false;
            }
        };
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onGeolocationPermissionsShowPrompt(str, geolocationPermissionsShowPromptCallback);
        } else {
            geolocationPermissionsShowPromptCallback.defaultBehaviour(null);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        ViewGroup rootView;
        Activity activity = getActivity();
        if (activity == null || (rootView = getRootView()) == null) {
            return;
        }
        View view = this.mCustomView;
        if (view != null) {
            ((FrameLayout) rootView).removeView(view);
        }
        this.mCustomView = null;
        rootView.setSystemUiVisibility(this.mOriginalSystemUiVisibility);
        activity.setRequestedOrientation(this.mOriginalOrientation);
        WebChromeClient.CustomViewCallback customViewCallback = this.mCustomViewCallback;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        this.mCustomViewCallback = null;
        activity.getWindow().clearFlags(512);
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null) {
            WebViewChannelDelegate webViewChannelDelegate = inAppWebView.channelDelegate;
            if (webViewChannelDelegate != null) {
                webViewChannelDelegate.onExitFullscreen();
            }
            this.inAppWebView.setInFullscreen(false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, final String str2, final JsResult jsResult) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onJsAlert(str, str2, null, new WebViewChannelDelegate.JsAlertCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.1
                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
                public void error(String str3, String str4, Object obj) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str3);
                    sb2.append(", ");
                    if (str4 == null) {
                        str4 = "";
                    }
                    sb2.append(str4);
                    Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                    jsResult.cancel();
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public void defaultBehaviour(JsAlertResponse jsAlertResponse) {
                    String str3;
                    String str4;
                    if (jsAlertResponse != null) {
                        str3 = jsAlertResponse.getMessage();
                        str4 = jsAlertResponse.getConfirmButtonTitle();
                    } else {
                        str3 = null;
                        str4 = null;
                    }
                    InAppWebViewChromeClient.this.createAlertDialog(str2, jsResult, str3, str4);
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public boolean nonNullSuccess(JsAlertResponse jsAlertResponse) {
                    if (jsAlertResponse.isHandledByClient()) {
                        Integer action = jsAlertResponse.getAction();
                        if (Integer.valueOf(action != null ? action.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return false;
                        }
                        jsResult.confirm();
                        return false;
                    }
                    return true;
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, final String str2, final JsResult jsResult) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onJsBeforeUnload(str, str2, new WebViewChannelDelegate.JsBeforeUnloadCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.12
                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
                public void error(String str3, String str4, Object obj) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str3);
                    sb2.append(", ");
                    if (str4 == null) {
                        str4 = "";
                    }
                    sb2.append(str4);
                    Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                    jsResult.cancel();
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public void defaultBehaviour(JsBeforeUnloadResponse jsBeforeUnloadResponse) {
                    String str3;
                    String str4;
                    String str5;
                    if (jsBeforeUnloadResponse != null) {
                        String message = jsBeforeUnloadResponse.getMessage();
                        String confirmButtonTitle = jsBeforeUnloadResponse.getConfirmButtonTitle();
                        str5 = jsBeforeUnloadResponse.getCancelButtonTitle();
                        str3 = message;
                        str4 = confirmButtonTitle;
                    } else {
                        str3 = null;
                        str4 = null;
                        str5 = null;
                    }
                    InAppWebViewChromeClient.this.createBeforeUnloadDialog(str2, jsResult, str3, str4, str5);
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public boolean nonNullSuccess(JsBeforeUnloadResponse jsBeforeUnloadResponse) {
                    if (jsBeforeUnloadResponse.isHandledByClient()) {
                        Integer action = jsBeforeUnloadResponse.getAction();
                        if (Integer.valueOf(action != null ? action.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return false;
                        }
                        jsResult.confirm();
                        return false;
                    }
                    return true;
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, final String str2, final JsResult jsResult) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onJsConfirm(str, str2, null, new WebViewChannelDelegate.JsConfirmCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.4
                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
                public void error(String str3, String str4, Object obj) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str3);
                    sb2.append(", ");
                    if (str4 == null) {
                        str4 = "";
                    }
                    sb2.append(str4);
                    Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                    jsResult.cancel();
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public void defaultBehaviour(JsConfirmResponse jsConfirmResponse) {
                    String str3;
                    String str4;
                    String str5;
                    if (jsConfirmResponse != null) {
                        String message = jsConfirmResponse.getMessage();
                        String confirmButtonTitle = jsConfirmResponse.getConfirmButtonTitle();
                        str5 = jsConfirmResponse.getCancelButtonTitle();
                        str3 = message;
                        str4 = confirmButtonTitle;
                    } else {
                        str3 = null;
                        str4 = null;
                        str5 = null;
                    }
                    InAppWebViewChromeClient.this.createConfirmDialog(str2, jsResult, str3, str4, str5);
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public boolean nonNullSuccess(JsConfirmResponse jsConfirmResponse) {
                    if (jsConfirmResponse.isHandledByClient()) {
                        Integer action = jsConfirmResponse.getAction();
                        if (Integer.valueOf(action != null ? action.intValue() : 1).intValue() != 0) {
                            jsResult.cancel();
                            return false;
                        }
                        jsResult.confirm();
                        return false;
                    }
                    return true;
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(final WebView webView, String str, final String str2, final String str3, final JsPromptResult jsPromptResult) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onJsPrompt(str, str2, str3, null, new WebViewChannelDelegate.JsPromptCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.8
                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
                public void error(String str4, String str5, Object obj) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(", ");
                    if (str5 == null) {
                        str5 = "";
                    }
                    sb2.append(str5);
                    Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                    jsPromptResult.cancel();
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public void defaultBehaviour(JsPromptResponse jsPromptResponse) {
                    String str4;
                    String str5;
                    String str6;
                    String str7;
                    String str8;
                    if (jsPromptResponse != null) {
                        String message = jsPromptResponse.getMessage();
                        String defaultValue = jsPromptResponse.getDefaultValue();
                        String value = jsPromptResponse.getValue();
                        String confirmButtonTitle = jsPromptResponse.getConfirmButtonTitle();
                        str7 = jsPromptResponse.getCancelButtonTitle();
                        str4 = message;
                        str5 = defaultValue;
                        str6 = value;
                        str8 = confirmButtonTitle;
                    } else {
                        str4 = null;
                        str5 = null;
                        str6 = null;
                        str7 = null;
                        str8 = null;
                    }
                    InAppWebViewChromeClient.this.createPromptDialog(webView, str2, str3, jsPromptResult, str4, str5, str6, str7, str8);
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
                public boolean nonNullSuccess(JsPromptResponse jsPromptResponse) {
                    if (jsPromptResponse.isHandledByClient()) {
                        Integer action = jsPromptResponse.getAction();
                        if (Integer.valueOf(action != null ? action.intValue() : 1).intValue() != 0) {
                            jsPromptResult.cancel();
                            return false;
                        }
                        jsPromptResult.confirm(jsPromptResponse.getValue());
                        return false;
                    }
                    return true;
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(final PermissionRequest permissionRequest) {
        WebViewChannelDelegate webViewChannelDelegate;
        WebViewChannelDelegate.PermissionRequestCallback permissionRequestCallback = new WebViewChannelDelegate.PermissionRequestCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.18
            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(", ");
                if (str2 == null) {
                    str2 = "";
                }
                sb2.append(str2);
                Log.e(InAppWebViewChromeClient.LOG_TAG, sb2.toString());
                defaultBehaviour((PermissionResponse) null);
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public void defaultBehaviour(PermissionResponse permissionResponse) {
                permissionRequest.deny();
            }

            @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
            public boolean nonNullSuccess(PermissionResponse permissionResponse) {
                Integer action = permissionResponse.getAction();
                if (action != null) {
                    if (action.intValue() != 1) {
                        permissionRequest.deny();
                        return false;
                    }
                    List<String> resources = permissionResponse.getResources();
                    permissionRequest.grant((String[]) resources.toArray(new String[permissionResponse.getResources().size()]));
                    return false;
                }
                return true;
            }
        };
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onPermissionRequest(permissionRequest.getOrigin().toString(), Arrays.asList(permissionRequest.getResources()), null, permissionRequestCallback);
        } else {
            permissionRequestCallback.defaultBehaviour(null);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onPermissionRequestCanceled(permissionRequest.getOrigin().toString(), Arrays.asList(permissionRequest.getResources()));
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i10) {
        super.onProgressChanged(webView, i10);
        InAppBrowserDelegate inAppBrowserDelegate = this.inAppBrowserDelegate;
        if (inAppBrowserDelegate != null) {
            inAppBrowserDelegate.didChangeProgress(i10);
        }
        InAppWebView inAppWebView = (InAppWebView) webView;
        InAppWebViewClientCompat inAppWebViewClientCompat = inAppWebView.inAppWebViewClientCompat;
        if (inAppWebViewClientCompat != null) {
            inAppWebViewClientCompat.loadCustomJavaScriptOnPageStarted(webView);
        } else {
            InAppWebViewClient inAppWebViewClient = inAppWebView.inAppWebViewClient;
            if (inAppWebViewClient != null) {
                inAppWebViewClient.loadCustomJavaScriptOnPageStarted(webView);
            }
        }
        WebViewChannelDelegate webViewChannelDelegate = inAppWebView.channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onProgressChanged(i10);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        super.onReceivedIcon(webView, bitmap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        try {
            byteArrayOutputStream.close();
        } catch (IOException e10) {
            Log.e(LOG_TAG, "", e10);
        }
        bitmap.recycle();
        WebViewChannelDelegate webViewChannelDelegate = ((InAppWebView) webView).channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onReceivedIcon(byteArrayOutputStream.toByteArray());
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        InAppBrowserDelegate inAppBrowserDelegate = this.inAppBrowserDelegate;
        if (inAppBrowserDelegate != null) {
            inAppBrowserDelegate.didChangeTitle(str);
        }
        WebViewChannelDelegate webViewChannelDelegate = ((InAppWebView) webView).channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onTitleChanged(str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z10) {
        super.onReceivedTouchIconUrl(webView, str, z10);
        WebViewChannelDelegate webViewChannelDelegate = ((InAppWebView) webView).channelDelegate;
        if (webViewChannelDelegate != null) {
            webViewChannelDelegate.onReceivedTouchIconUrl(str, z10);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        WebViewChannelDelegate webViewChannelDelegate;
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null && (webViewChannelDelegate = inAppWebView.channelDelegate) != null) {
            webViewChannelDelegate.onRequestFocus();
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        ViewGroup rootView;
        if (this.mCustomView != null) {
            onHideCustomView();
            return;
        }
        Activity activity = getActivity();
        if (activity == null || (rootView = getRootView()) == null) {
            return;
        }
        this.mCustomView = view;
        this.mOriginalSystemUiVisibility = rootView.getSystemUiVisibility();
        this.mOriginalOrientation = activity.getRequestedOrientation();
        this.mCustomViewCallback = customViewCallback;
        View view2 = this.mCustomView;
        if (view2 != null) {
            view2.setBackgroundColor(-16777216);
        }
        rootView.setSystemUiVisibility(FULLSCREEN_SYSTEM_UI_VISIBILITY_KITKAT);
        activity.getWindow().setFlags(512, 512);
        ((FrameLayout) rootView).addView(this.mCustomView, FULLSCREEN_LAYOUT_PARAMS);
        InAppWebView inAppWebView = this.inAppWebView;
        if (inAppWebView != null) {
            WebViewChannelDelegate webViewChannelDelegate = inAppWebView.channelDelegate;
            if (webViewChannelDelegate != null) {
                webViewChannelDelegate.onEnterFullscreen();
            }
            this.inAppWebView.setInFullscreen(true);
        }
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        String[] acceptTypes = fileChooserParams.getAcceptTypes();
        boolean z10 = true;
        if (fileChooserParams.getMode() != 1) {
            z10 = false;
        }
        return startPickerIntent(valueCallback, acceptTypes, z10, fileChooserParams.isCaptureEnabled());
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        startPickerIntent(valueCallback, str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startPickerIntent(android.webkit.ValueCallback<android.net.Uri> r3, java.lang.String r4, java.lang.String r5) {
        /*
            r2 = this;
            r2.filePathCallbackLegacy = r3
            java.lang.Boolean r3 = r2.acceptsImages(r4)
            boolean r3 = r3.booleanValue()
            java.lang.Boolean r0 = r2.acceptsVideo(r4)
            boolean r0 = r0.booleanValue()
            if (r5 == 0) goto L28
            boolean r5 = r2.needsCameraPermission()
            if (r5 != 0) goto L28
            if (r3 == 0) goto L21
            android.content.Intent r5 = r2.getPhotoIntent()
            goto L29
        L21:
            if (r0 == 0) goto L28
            android.content.Intent r5 = r2.getVideoIntent()
            goto L29
        L28:
            r5 = 0
        L29:
            if (r5 != 0) goto L60
            android.content.Intent r4 = r2.getFileChooserIntent(r4)
            java.lang.String r5 = ""
            android.content.Intent r5 = android.content.Intent.createChooser(r4, r5)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r1 = r2.needsCameraPermission()
            if (r1 != 0) goto L52
            if (r3 == 0) goto L49
            android.content.Intent r3 = r2.getPhotoIntent()
            r4.add(r3)
        L49:
            if (r0 == 0) goto L52
            android.content.Intent r3 = r2.getVideoIntent()
            r4.add(r3)
        L52:
            r3 = 0
            android.os.Parcelable[] r3 = new android.os.Parcelable[r3]
            java.lang.Object[] r3 = r4.toArray(r3)
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            java.lang.String r4 = "android.intent.extra.INITIAL_INTENTS"
            r5.putExtra(r4, r3)
        L60:
            android.app.Activity r3 = r2.getActivity()
            if (r3 == 0) goto L75
            android.content.pm.PackageManager r4 = r3.getPackageManager()
            android.content.ComponentName r4 = r5.resolveActivity(r4)
            if (r4 == 0) goto L75
            r4 = 3
            r3.startActivityForResult(r5, r4)
            goto L7c
        L75:
            java.lang.String r3 = "IABWebChromeClient"
            java.lang.String r4 = "there is no Activity to handle this Intent"
            android.util.Log.d(r3, r4)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.startPickerIntent(android.webkit.ValueCallback, java.lang.String, java.lang.String):void");
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback) {
        startPickerIntent(valueCallback, "", null);
    }

    protected void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        startPickerIntent(valueCallback, str, str2);
    }

    private Boolean acceptsImages(String[] strArr) {
        return Boolean.valueOf(acceptsAny(strArr).booleanValue() || arrayContainsString(getAcceptedMimeType(strArr), "image").booleanValue());
    }

    private Boolean acceptsVideo(String[] strArr) {
        return Boolean.valueOf(acceptsAny(strArr).booleanValue() || arrayContainsString(getAcceptedMimeType(strArr), "video").booleanValue());
    }

    private Intent getFileChooserIntent(String[] strArr, boolean z10) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", getAcceptedMimeType(strArr));
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z10);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean startPickerIntent(android.webkit.ValueCallback<android.net.Uri[]> r3, java.lang.String[] r4, boolean r5, boolean r6) {
        /*
            r2 = this;
            r2.filePathCallback = r3
            java.lang.Boolean r3 = r2.acceptsImages(r4)
            boolean r3 = r3.booleanValue()
            java.lang.Boolean r0 = r2.acceptsVideo(r4)
            boolean r0 = r0.booleanValue()
            if (r6 == 0) goto L28
            boolean r6 = r2.needsCameraPermission()
            if (r6 != 0) goto L28
            if (r3 == 0) goto L21
            android.content.Intent r6 = r2.getPhotoIntent()
            goto L29
        L21:
            if (r0 == 0) goto L28
            android.content.Intent r6 = r2.getVideoIntent()
            goto L29
        L28:
            r6 = 0
        L29:
            if (r6 != 0) goto L67
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            boolean r1 = r2.needsCameraPermission()
            if (r1 != 0) goto L48
            if (r3 == 0) goto L3f
            android.content.Intent r3 = r2.getPhotoIntent()
            r6.add(r3)
        L3f:
            if (r0 == 0) goto L48
            android.content.Intent r3 = r2.getVideoIntent()
            r6.add(r3)
        L48:
            android.content.Intent r3 = r2.getFileChooserIntent(r4, r5)
            android.content.Intent r4 = new android.content.Intent
            java.lang.String r5 = "android.intent.action.CHOOSER"
            r4.<init>(r5)
            java.lang.String r5 = "android.intent.extra.INTENT"
            r4.putExtra(r5, r3)
            r3 = 0
            android.os.Parcelable[] r3 = new android.os.Parcelable[r3]
            java.lang.Object[] r3 = r6.toArray(r3)
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            java.lang.String r5 = "android.intent.extra.INITIAL_INTENTS"
            r4.putExtra(r5, r3)
            r6 = r4
        L67:
            android.app.Activity r3 = r2.getActivity()
            r4 = 1
            if (r3 == 0) goto L7c
            android.content.pm.PackageManager r5 = r3.getPackageManager()
            android.content.ComponentName r5 = r6.resolveActivity(r5)
            if (r5 == 0) goto L7c
            r3.startActivityForResult(r6, r4)
            goto L83
        L7c:
            java.lang.String r3 = "IABWebChromeClient"
            java.lang.String r5 = "there is no Activity to handle this Intent"
            android.util.Log.d(r3, r5)
        L83:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewChromeClient.startPickerIntent(android.webkit.ValueCallback, java.lang.String[], boolean, boolean):boolean");
    }
}
