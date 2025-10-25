package com.pichillilorenzo.flutter_inappwebview_android.webview;

import android.net.Uri;
import android.webkit.ValueCallback;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.Util;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import com.pichillilorenzo.flutter_inappwebview_android.in_app_browser.InAppBrowserActivity;
import com.pichillilorenzo.flutter_inappwebview_android.in_app_browser.InAppBrowserSettings;
import com.pichillilorenzo.flutter_inappwebview_android.print_job.PrintJobSettings;
import com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.ClientCertChallenge;
import com.pichillilorenzo.flutter_inappwebview_android.types.ClientCertResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.ContentWorld;
import com.pichillilorenzo.flutter_inappwebview_android.types.CreateWindowAction;
import com.pichillilorenzo.flutter_inappwebview_android.types.CustomSchemeResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.DownloadStartRequest;
import com.pichillilorenzo.flutter_inappwebview_android.types.GeolocationPermissionShowPromptResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.HitTestResult;
import com.pichillilorenzo.flutter_inappwebview_android.types.HttpAuthResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.HttpAuthenticationChallenge;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsAlertResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsBeforeUnloadResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsConfirmResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.JsPromptResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.NavigationAction;
import com.pichillilorenzo.flutter_inappwebview_android.types.NavigationActionPolicy;
import com.pichillilorenzo.flutter_inappwebview_android.types.PermissionResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.SafeBrowsingResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.ServerTrustAuthResponse;
import com.pichillilorenzo.flutter_inappwebview_android.types.ServerTrustChallenge;
import com.pichillilorenzo.flutter_inappwebview_android.types.SslCertificateExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.SyncBaseCallbackResultImpl;
import com.pichillilorenzo.flutter_inappwebview_android.types.URLRequest;
import com.pichillilorenzo.flutter_inappwebview_android.types.UserScript;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessageCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebMessagePortCompatExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceErrorExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceRequestExt;
import com.pichillilorenzo.flutter_inappwebview_android.types.WebResourceResponseExt;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview_android.webview.in_app_webview.InAppWebViewSettings;
import com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageChannel;
import com.pichillilorenzo.flutter_inappwebview_android.webview.web_message.WebMessageListener;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o1.m;
import o1.n;
import o1.s;
import o1.t;
import org.apache.tika.metadata.ClimateForcast;
import org.apache.tika.pipes.PipesConfigBase;
/* loaded from: classes.dex */
public class WebViewChannelDelegate extends ChannelDelegateImpl {
    static final String LOG_TAG = "WebViewChannelDelegate";
    private InAppWebView webView;

    /* renamed from: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate$8  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods;

        static {
            int[] iArr = new int[WebViewChannelDelegateMethods.values().length];
            $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods = iArr;
            try {
                iArr[WebViewChannelDelegateMethods.getUrl.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getTitle.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getProgress.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.loadUrl.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.postUrl.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.loadData.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.loadFile.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.evaluateJavascript.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.injectJavascriptFileFromUrl.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.injectCSSCode.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.injectCSSFileFromUrl.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.reload.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.goBack.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.canGoBack.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.goForward.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.canGoForward.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.goBackOrForward.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.canGoBackOrForward.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.stopLoading.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.isLoading.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.takeScreenshot.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.setSettings.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getSettings.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.close.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.show.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.hide.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.isHidden.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getCopyBackForwardList.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.startSafeBrowsing.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearCache.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearSslPreferences.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.findAll.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.findNext.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearMatches.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.scrollTo.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.scrollBy.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.pause.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.resume.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.pauseTimers.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.resumeTimers.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.printCurrentPage.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getContentHeight.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getContentWidth.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.zoomBy.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getOriginalUrl.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getZoomScale.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getSelectedText.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getHitTestResult.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.pageDown.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.pageUp.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.saveWebArchive.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.zoomIn.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.zoomOut.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearFocus.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.setContextMenu.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.requestFocusNodeHref.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.requestImageRef.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getScrollX.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getScrollY.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.getCertificate.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearHistory.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.addUserScript.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.removeUserScript.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.removeUserScriptsByGroupName.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.removeAllUserScripts.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.callAsyncJavaScript.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.isSecureContext.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.createWebMessageChannel.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.postWebMessage.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.addWebMessageListener.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.canScrollVertically.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.canScrollHorizontally.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.isInFullscreen.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.clearFormData.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class CallJsHandlerCallback extends BaseCallbackResultImpl<Object> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Object decodeResult(Object obj) {
            return obj;
        }
    }

    /* loaded from: classes.dex */
    public static class CreateWindowCallback extends BaseCallbackResultImpl<Boolean> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Boolean decodeResult(Object obj) {
            return Boolean.valueOf((obj instanceof Boolean) && ((Boolean) obj).booleanValue());
        }
    }

    /* loaded from: classes.dex */
    public static class FormResubmissionCallback extends BaseCallbackResultImpl<Integer> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Integer decodeResult(Object obj) {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class GeolocationPermissionsShowPromptCallback extends BaseCallbackResultImpl<GeolocationPermissionShowPromptResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public GeolocationPermissionShowPromptResponse decodeResult(Object obj) {
            return GeolocationPermissionShowPromptResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class JsAlertCallback extends BaseCallbackResultImpl<JsAlertResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public JsAlertResponse decodeResult(Object obj) {
            return JsAlertResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class JsBeforeUnloadCallback extends BaseCallbackResultImpl<JsBeforeUnloadResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public JsBeforeUnloadResponse decodeResult(Object obj) {
            return JsBeforeUnloadResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class JsConfirmCallback extends BaseCallbackResultImpl<JsConfirmResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public JsConfirmResponse decodeResult(Object obj) {
            return JsConfirmResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class JsPromptCallback extends BaseCallbackResultImpl<JsPromptResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public JsPromptResponse decodeResult(Object obj) {
            return JsPromptResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class LoadResourceWithCustomSchemeCallback extends BaseCallbackResultImpl<CustomSchemeResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public CustomSchemeResponse decodeResult(Object obj) {
            return CustomSchemeResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class PermissionRequestCallback extends BaseCallbackResultImpl<PermissionResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public PermissionResponse decodeResult(Object obj) {
            return PermissionResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class PrintRequestCallback extends BaseCallbackResultImpl<Boolean> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Boolean decodeResult(Object obj) {
            return Boolean.valueOf((obj instanceof Boolean) && ((Boolean) obj).booleanValue());
        }
    }

    /* loaded from: classes.dex */
    public static class ReceivedClientCertRequestCallback extends BaseCallbackResultImpl<ClientCertResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public ClientCertResponse decodeResult(Object obj) {
            return ClientCertResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class ReceivedHttpAuthRequestCallback extends BaseCallbackResultImpl<HttpAuthResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public HttpAuthResponse decodeResult(Object obj) {
            return HttpAuthResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class ReceivedServerTrustAuthRequestCallback extends BaseCallbackResultImpl<ServerTrustAuthResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public ServerTrustAuthResponse decodeResult(Object obj) {
            return ServerTrustAuthResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class RenderProcessResponsiveCallback extends BaseCallbackResultImpl<Integer> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Integer decodeResult(Object obj) {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class RenderProcessUnresponsiveCallback extends BaseCallbackResultImpl<Integer> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public Integer decodeResult(Object obj) {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class SafeBrowsingHitCallback extends BaseCallbackResultImpl<SafeBrowsingResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public SafeBrowsingResponse decodeResult(Object obj) {
            return SafeBrowsingResponse.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class ShouldInterceptRequestCallback extends BaseCallbackResultImpl<WebResourceResponseExt> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public WebResourceResponseExt decodeResult(Object obj) {
            return WebResourceResponseExt.fromMap((Map) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class ShouldOverrideUrlLoadingCallback extends BaseCallbackResultImpl<NavigationActionPolicy> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public NavigationActionPolicy decodeResult(Object obj) {
            return NavigationActionPolicy.fromValue(Integer.valueOf(obj instanceof Integer ? ((Integer) obj).intValue() : NavigationActionPolicy.CANCEL.rawValue()).intValue());
        }
    }

    /* loaded from: classes.dex */
    public static class SyncLoadResourceWithCustomSchemeCallback extends SyncBaseCallbackResultImpl<CustomSchemeResponse> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public CustomSchemeResponse decodeResult(Object obj) {
            return new LoadResourceWithCustomSchemeCallback().decodeResult(obj);
        }
    }

    /* loaded from: classes.dex */
    public static class SyncShouldInterceptRequestCallback extends SyncBaseCallbackResultImpl<WebResourceResponseExt> {
        @Override // com.pichillilorenzo.flutter_inappwebview_android.types.BaseCallbackResultImpl, com.pichillilorenzo.flutter_inappwebview_android.types.ICallbackResult
        public WebResourceResponseExt decodeResult(Object obj) {
            return new ShouldInterceptRequestCallback().decodeResult(obj);
        }
    }

    public WebViewChannelDelegate(InAppWebView inAppWebView, MethodChannel methodChannel) {
        super(methodChannel);
        this.webView = inAppWebView;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.webView = null;
    }

    public void onCallJsHandler(String str, String str2, CallJsHandlerCallback callJsHandlerCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            callJsHandlerCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("handlerName", str);
        hashMap.put("args", str2);
        channel.invokeMethod("onCallJsHandler", hashMap, callJsHandlerCallback);
    }

    public void onCloseWindow() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onCloseWindow", new HashMap());
    }

    public void onConsoleMessage(String str, int i10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("message", str);
        hashMap.put("messageLevel", Integer.valueOf(i10));
        channel.invokeMethod("onConsoleMessage", hashMap);
    }

    public void onContextMenuActionItemClicked(int i10, String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Chapter.KEY_ID, Integer.valueOf(i10));
        hashMap.put("androidId", Integer.valueOf(i10));
        hashMap.put("iosId", null);
        hashMap.put("title", str);
        channel.invokeMethod("onContextMenuActionItemClicked", hashMap);
    }

    public void onCreateContextMenu(HitTestResult hitTestResult) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onCreateContextMenu", hitTestResult.toMap());
    }

    public void onCreateWindow(CreateWindowAction createWindowAction, CreateWindowCallback createWindowCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            createWindowCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("onCreateWindow", createWindowAction.toMap(), createWindowCallback);
        }
    }

    public void onDownloadStartRequest(DownloadStartRequest downloadStartRequest) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onDownloadStartRequest", downloadStartRequest.toMap());
    }

    public void onEnterFullscreen() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onEnterFullscreen", new HashMap());
    }

    public void onExitFullscreen() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onExitFullscreen", new HashMap());
    }

    @Deprecated
    public void onFindResultReceived(int i10, int i11, boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("activeMatchOrdinal", Integer.valueOf(i10));
        hashMap.put("numberOfMatches", Integer.valueOf(i11));
        hashMap.put("isDoneCounting", Boolean.valueOf(z10));
        channel.invokeMethod("onFindResultReceived", hashMap);
    }

    public void onFormResubmission(String str, FormResubmissionCallback formResubmissionCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            formResubmissionCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onFormResubmission", hashMap, formResubmissionCallback);
    }

    public void onGeolocationPermissionsHidePrompt() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onGeolocationPermissionsHidePrompt", new HashMap());
    }

    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissionsShowPromptCallback geolocationPermissionsShowPromptCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            geolocationPermissionsShowPromptCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("origin", str);
        channel.invokeMethod("onGeolocationPermissionsShowPrompt", hashMap, geolocationPermissionsShowPromptCallback);
    }

    public void onHideContextMenu() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onHideContextMenu", new HashMap());
    }

    public void onJsAlert(String str, String str2, Boolean bool, JsAlertCallback jsAlertCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            jsAlertCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("message", str2);
        hashMap.put("isMainFrame", bool);
        channel.invokeMethod("onJsAlert", hashMap, jsAlertCallback);
    }

    public void onJsBeforeUnload(String str, String str2, JsBeforeUnloadCallback jsBeforeUnloadCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            jsBeforeUnloadCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("message", str2);
        channel.invokeMethod("onJsBeforeUnload", hashMap, jsBeforeUnloadCallback);
    }

    public void onJsConfirm(String str, String str2, Boolean bool, JsConfirmCallback jsConfirmCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            jsConfirmCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("message", str2);
        hashMap.put("isMainFrame", bool);
        channel.invokeMethod("onJsConfirm", hashMap, jsConfirmCallback);
    }

    public void onJsPrompt(String str, String str2, String str3, Boolean bool, JsPromptCallback jsPromptCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            jsPromptCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("message", str2);
        hashMap.put("defaultValue", str3);
        hashMap.put("isMainFrame", bool);
        channel.invokeMethod("onJsPrompt", hashMap, jsPromptCallback);
    }

    public void onLoadResourceWithCustomScheme(WebResourceRequestExt webResourceRequestExt, LoadResourceWithCustomSchemeCallback loadResourceWithCustomSchemeCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            loadResourceWithCustomSchemeCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request", webResourceRequestExt.toMap());
        channel.invokeMethod("onLoadResourceWithCustomScheme", hashMap, loadResourceWithCustomSchemeCallback);
    }

    public void onLoadStart(String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onLoadStart", hashMap);
    }

    public void onLoadStop(String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onLoadStop", hashMap);
    }

    public void onLongPressHitTestResult(HitTestResult hitTestResult) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onLongPressHitTestResult", hitTestResult.toMap());
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        String str;
        try {
            boolean z10 = true;
            Object obj = null;
            switch (AnonymousClass8.$SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods[WebViewChannelDelegateMethods.valueOf(methodCall.method).ordinal()]) {
                case 1:
                    InAppWebView inAppWebView = this.webView;
                    if (inAppWebView != null) {
                        obj = inAppWebView.getUrl();
                    }
                    result.success(obj);
                    return;
                case 2:
                    InAppWebView inAppWebView2 = this.webView;
                    if (inAppWebView2 != null) {
                        obj = inAppWebView2.getTitle();
                    }
                    result.success(obj);
                    return;
                case 3:
                    InAppWebView inAppWebView3 = this.webView;
                    if (inAppWebView3 != null) {
                        obj = Integer.valueOf(inAppWebView3.getProgress());
                    }
                    result.success(obj);
                    return;
                case 4:
                    if (this.webView != null) {
                        this.webView.loadUrl(URLRequest.fromMap((Map) methodCall.argument("urlRequest")));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 5:
                    if (this.webView != null) {
                        this.webView.postUrl((String) methodCall.argument("url"), (byte[]) methodCall.argument("postData"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 6:
                    if (this.webView != null) {
                        this.webView.loadDataWithBaseURL((String) methodCall.argument("baseUrl"), (String) methodCall.argument("data"), (String) methodCall.argument("mimeType"), (String) methodCall.argument("encoding"), (String) methodCall.argument("historyUrl"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 7:
                    if (this.webView != null) {
                        try {
                            this.webView.loadFile((String) methodCall.argument("assetFilePath"));
                        } catch (IOException e10) {
                            e10.printStackTrace();
                            result.error(LOG_TAG, e10.getMessage(), null);
                            return;
                        }
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 8:
                    if (this.webView != null) {
                        this.webView.evaluateJavascript((String) methodCall.argument(ClimateForcast.SOURCE), ContentWorld.fromMap((Map) methodCall.argument("contentWorld")), new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.1
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(String str2) {
                                result.success(str2);
                            }
                        });
                        return;
                    }
                    result.success(null);
                    return;
                case 9:
                    if (this.webView != null) {
                        this.webView.injectJavascriptFileFromUrl((String) methodCall.argument("urlFile"), (Map) methodCall.argument("scriptHtmlTagAttributes"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 10:
                    if (this.webView != null) {
                        this.webView.injectCSSCode((String) methodCall.argument(ClimateForcast.SOURCE));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 11:
                    if (this.webView != null) {
                        this.webView.injectCSSFileFromUrl((String) methodCall.argument("urlFile"), (Map) methodCall.argument("cssLinkHtmlTagAttributes"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 12:
                    InAppWebView inAppWebView4 = this.webView;
                    if (inAppWebView4 != null) {
                        inAppWebView4.reload();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 13:
                    InAppWebView inAppWebView5 = this.webView;
                    if (inAppWebView5 != null) {
                        inAppWebView5.goBack();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 14:
                    InAppWebView inAppWebView6 = this.webView;
                    result.success(Boolean.valueOf((inAppWebView6 == null || !inAppWebView6.canGoBack()) ? false : false));
                    return;
                case 15:
                    InAppWebView inAppWebView7 = this.webView;
                    if (inAppWebView7 != null) {
                        inAppWebView7.goForward();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 16:
                    InAppWebView inAppWebView8 = this.webView;
                    result.success(Boolean.valueOf((inAppWebView8 == null || !inAppWebView8.canGoForward()) ? false : false));
                    return;
                case 17:
                    InAppWebView inAppWebView9 = this.webView;
                    if (inAppWebView9 != null) {
                        inAppWebView9.goBackOrForward(((Integer) methodCall.argument("steps")).intValue());
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 18:
                    InAppWebView inAppWebView10 = this.webView;
                    result.success(Boolean.valueOf((inAppWebView10 == null || !inAppWebView10.canGoBackOrForward(((Integer) methodCall.argument("steps")).intValue())) ? false : false));
                    return;
                case C1415p9.C /* 19 */:
                    InAppWebView inAppWebView11 = this.webView;
                    if (inAppWebView11 != null) {
                        inAppWebView11.stopLoading();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 20:
                    InAppWebView inAppWebView12 = this.webView;
                    result.success(Boolean.valueOf((inAppWebView12 == null || !inAppWebView12.isLoading()) ? false : false));
                    return;
                case 21:
                    if (this.webView != null) {
                        this.webView.takeScreenshot((Map) methodCall.argument("screenshotConfiguration"), result);
                        return;
                    }
                    result.success(null);
                    return;
                case Build.API_LEVELS.API_22 /* 22 */:
                    InAppWebView inAppWebView13 = this.webView;
                    if (inAppWebView13 != null && (inAppWebView13.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        InAppBrowserSettings inAppBrowserSettings = new InAppBrowserSettings();
                        HashMap<String, Object> hashMap = (HashMap) methodCall.argument("settings");
                        inAppBrowserSettings.parse2((Map<String, Object>) hashMap);
                        ((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).setSettings(inAppBrowserSettings, hashMap);
                    } else if (this.webView != null) {
                        InAppWebViewSettings inAppWebViewSettings = new InAppWebViewSettings();
                        HashMap<String, Object> hashMap2 = (HashMap) methodCall.argument("settings");
                        inAppWebViewSettings.parse2((Map<String, Object>) hashMap2);
                        this.webView.setSettings(inAppWebViewSettings, hashMap2);
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_23 /* 23 */:
                    InAppWebView inAppWebView14 = this.webView;
                    if (inAppWebView14 != null && (inAppWebView14.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        result.success(((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).getCustomSettings());
                        return;
                    }
                    InAppWebView inAppWebView15 = this.webView;
                    if (inAppWebView15 != null) {
                        obj = inAppWebView15.getCustomSettings();
                    }
                    result.success(obj);
                    return;
                case Build.API_LEVELS.API_24 /* 24 */:
                    InAppWebView inAppWebView16 = this.webView;
                    if (inAppWebView16 != null && (inAppWebView16.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        ((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).close(result);
                        return;
                    } else {
                        result.notImplemented();
                        return;
                    }
                case 25:
                    InAppWebView inAppWebView17 = this.webView;
                    if (inAppWebView17 != null && (inAppWebView17.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        ((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).show();
                        result.success(Boolean.TRUE);
                        return;
                    }
                    result.notImplemented();
                    return;
                case 26:
                    InAppWebView inAppWebView18 = this.webView;
                    if (inAppWebView18 != null && (inAppWebView18.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        ((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).hide();
                        result.success(Boolean.TRUE);
                        return;
                    }
                    result.notImplemented();
                    return;
                case 27:
                    InAppWebView inAppWebView19 = this.webView;
                    if (inAppWebView19 != null && (inAppWebView19.getInAppBrowserDelegate() instanceof InAppBrowserActivity)) {
                        result.success(Boolean.valueOf(((InAppBrowserActivity) this.webView.getInAppBrowserDelegate()).isHidden));
                        return;
                    } else {
                        result.notImplemented();
                        return;
                    }
                case Build.API_LEVELS.API_28 /* 28 */:
                    InAppWebView inAppWebView20 = this.webView;
                    if (inAppWebView20 != null) {
                        obj = inAppWebView20.getCopyBackForwardList();
                    }
                    result.success(obj);
                    return;
                case 29:
                    if (this.webView != null && t.a("START_SAFE_BROWSING")) {
                        s.r(this.webView.getContext(), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.2
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
                case Build.API_LEVELS.API_30 /* 30 */:
                    InAppWebView inAppWebView21 = this.webView;
                    if (inAppWebView21 != null) {
                        inAppWebView21.clearAllCache();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_31 /* 31 */:
                    InAppWebView inAppWebView22 = this.webView;
                    if (inAppWebView22 != null) {
                        inAppWebView22.clearSslPreferences();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_32 /* 32 */:
                    if (this.webView != null) {
                        this.webView.findAllAsync((String) methodCall.argument("find"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_33 /* 33 */:
                    if (this.webView != null) {
                        this.webView.findNext(((Boolean) methodCall.argument("forward")).booleanValue());
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_34 /* 34 */:
                    InAppWebView inAppWebView23 = this.webView;
                    if (inAppWebView23 != null) {
                        inAppWebView23.clearMatches();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 35:
                    if (this.webView != null) {
                        this.webView.scrollTo((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case Build.API_LEVELS.API_36 /* 36 */:
                    if (this.webView != null) {
                        this.webView.scrollBy((Integer) methodCall.argument("x"), (Integer) methodCall.argument("y"), (Boolean) methodCall.argument("animated"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 37:
                    InAppWebView inAppWebView24 = this.webView;
                    if (inAppWebView24 != null) {
                        inAppWebView24.onPause();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case C1415p9.K /* 38 */:
                    InAppWebView inAppWebView25 = this.webView;
                    if (inAppWebView25 != null) {
                        inAppWebView25.onResume();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 39:
                    InAppWebView inAppWebView26 = this.webView;
                    if (inAppWebView26 != null) {
                        inAppWebView26.pauseTimers();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case C1415p9.L /* 40 */:
                    InAppWebView inAppWebView27 = this.webView;
                    if (inAppWebView27 != null) {
                        inAppWebView27.resumeTimers();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 41:
                    if (this.webView != null) {
                        PrintJobSettings printJobSettings = new PrintJobSettings();
                        Map<String, Object> map = (Map) methodCall.argument("settings");
                        if (map != null) {
                            printJobSettings.parse2(map);
                        }
                        result.success(this.webView.printCurrentPage(printJobSettings));
                        return;
                    }
                    result.success(null);
                    return;
                case C1415p9.M /* 42 */:
                    InAppWebView inAppWebView28 = this.webView;
                    if (inAppWebView28 instanceof InAppWebView) {
                        result.success(Integer.valueOf(inAppWebView28.getContentHeight()));
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 43:
                    InAppWebView inAppWebView29 = this.webView;
                    if (inAppWebView29 instanceof InAppWebView) {
                        inAppWebView29.getContentWidth(new ValueCallback<Integer>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.3
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(Integer num) {
                                result.success(num);
                            }
                        });
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 44:
                    if (this.webView != null) {
                        this.webView.zoomBy((float) ((Double) methodCall.argument("zoomFactor")).doubleValue());
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 45:
                    InAppWebView inAppWebView30 = this.webView;
                    if (inAppWebView30 != null) {
                        obj = inAppWebView30.getOriginalUrl();
                    }
                    result.success(obj);
                    return;
                case 46:
                    InAppWebView inAppWebView31 = this.webView;
                    if (inAppWebView31 instanceof InAppWebView) {
                        result.success(Float.valueOf(inAppWebView31.getZoomScale()));
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 47:
                    InAppWebView inAppWebView32 = this.webView;
                    if (inAppWebView32 instanceof InAppWebView) {
                        inAppWebView32.getSelectedText(new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.4
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(String str2) {
                                result.success(str2);
                            }
                        });
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 48:
                    InAppWebView inAppWebView33 = this.webView;
                    if (inAppWebView33 instanceof InAppWebView) {
                        result.success(HitTestResult.fromWebViewHitTestResult(inAppWebView33.getHitTestResult()).toMap());
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 49:
                    if (this.webView != null) {
                        result.success(Boolean.valueOf(this.webView.pageDown(((Boolean) methodCall.argument("bottom")).booleanValue())));
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                case 50:
                    if (this.webView != null) {
                        result.success(Boolean.valueOf(this.webView.pageUp(((Boolean) methodCall.argument("top")).booleanValue())));
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                case 51:
                    if (this.webView != null) {
                        this.webView.saveWebArchive((String) methodCall.argument("filePath"), ((Boolean) methodCall.argument("autoname")).booleanValue(), new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.5
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(String str2) {
                                result.success(str2);
                            }
                        });
                        return;
                    }
                    result.success(null);
                    return;
                case 52:
                    InAppWebView inAppWebView34 = this.webView;
                    if (inAppWebView34 != null) {
                        result.success(Boolean.valueOf(inAppWebView34.zoomIn()));
                        return;
                    } else {
                        result.success(Boolean.FALSE);
                        return;
                    }
                case 53:
                    InAppWebView inAppWebView35 = this.webView;
                    if (inAppWebView35 != null) {
                        result.success(Boolean.valueOf(inAppWebView35.zoomOut()));
                        return;
                    } else {
                        result.success(Boolean.FALSE);
                        return;
                    }
                case 54:
                    InAppWebView inAppWebView36 = this.webView;
                    if (inAppWebView36 != null) {
                        inAppWebView36.clearFocus();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 55:
                    if (this.webView != null) {
                        this.webView.setContextMenu((Map) methodCall.argument("contextMenu"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 56:
                    InAppWebView inAppWebView37 = this.webView;
                    if (inAppWebView37 != null) {
                        result.success(inAppWebView37.requestFocusNodeHref());
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 57:
                    InAppWebView inAppWebView38 = this.webView;
                    if (inAppWebView38 != null) {
                        result.success(inAppWebView38.requestImageRef());
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 58:
                    InAppWebView inAppWebView39 = this.webView;
                    if (inAppWebView39 != null) {
                        result.success(Integer.valueOf(inAppWebView39.getScrollX()));
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 59:
                    InAppWebView inAppWebView40 = this.webView;
                    if (inAppWebView40 != null) {
                        result.success(Integer.valueOf(inAppWebView40.getScrollY()));
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                    InAppWebView inAppWebView41 = this.webView;
                    if (inAppWebView41 != null) {
                        result.success(SslCertificateExt.toMap(inAppWebView41.getCertificate()));
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 61:
                    InAppWebView inAppWebView42 = this.webView;
                    if (inAppWebView42 != null) {
                        inAppWebView42.clearHistory();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 62:
                    InAppWebView inAppWebView43 = this.webView;
                    if (inAppWebView43 != null && inAppWebView43.getUserContentController() != null) {
                        result.success(Boolean.valueOf(this.webView.getUserContentController().addUserOnlyScript(UserScript.fromMap((Map) methodCall.argument("userScript")))));
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                case 63:
                    InAppWebView inAppWebView44 = this.webView;
                    if (inAppWebView44 != null && inAppWebView44.getUserContentController() != null) {
                        result.success(Boolean.valueOf(this.webView.getUserContentController().removeUserOnlyScriptAt(((Integer) methodCall.argument(StreamInformation.KEY_INDEX)).intValue(), UserScript.fromMap((Map) methodCall.argument("userScript")).getInjectionTime())));
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                case 64:
                    InAppWebView inAppWebView45 = this.webView;
                    if (inAppWebView45 != null && inAppWebView45.getUserContentController() != null) {
                        this.webView.getUserContentController().removeUserOnlyScriptsByGroupName((String) methodCall.argument("groupName"));
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 65:
                    InAppWebView inAppWebView46 = this.webView;
                    if (inAppWebView46 != null && inAppWebView46.getUserContentController() != null) {
                        this.webView.getUserContentController().removeAllUserOnlyScripts();
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 66:
                    if (this.webView != null) {
                        this.webView.callAsyncJavaScript((String) methodCall.argument("functionBody"), (Map) methodCall.argument(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS), ContentWorld.fromMap((Map) methodCall.argument("contentWorld")), new ValueCallback<String>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.6
                            @Override // android.webkit.ValueCallback
                            public void onReceiveValue(String str2) {
                                result.success(str2);
                            }
                        });
                        return;
                    }
                    result.success(null);
                    return;
                case 67:
                    InAppWebView inAppWebView47 = this.webView;
                    if (inAppWebView47 != null) {
                        inAppWebView47.isSecureContext(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.webview.WebViewChannelDelegate.7
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
                case 68:
                    InAppWebView inAppWebView48 = this.webView;
                    if (inAppWebView48 != null) {
                        if ((inAppWebView48 instanceof InAppWebView) && t.a("CREATE_WEB_MESSAGE_CHANNEL")) {
                            result.success(this.webView.createCompatWebMessageChannel().toMap());
                            return;
                        } else {
                            result.success(null);
                            return;
                        }
                    }
                    result.success(null);
                    return;
                case 69:
                    if (this.webView != null && t.a("POST_WEB_MESSAGE")) {
                        WebMessageCompatExt fromMap = WebMessageCompatExt.fromMap((Map) methodCall.argument("message"));
                        String str2 = (String) methodCall.argument("targetOrigin");
                        ArrayList arrayList = new ArrayList();
                        List<WebMessagePortCompatExt> ports = fromMap.getPorts();
                        if (ports != null) {
                            for (WebMessagePortCompatExt webMessagePortCompatExt : ports) {
                                WebMessageChannel webMessageChannel = this.webView.getWebMessageChannels().get(webMessagePortCompatExt.getWebMessageChannelId());
                                if (webMessageChannel != null && (this.webView instanceof InAppWebView)) {
                                    arrayList.add(webMessageChannel.compatPorts.get(webMessagePortCompatExt.getIndex()));
                                }
                            }
                        }
                        Object data = fromMap.getData();
                        if (this.webView instanceof InAppWebView) {
                            try {
                                if (t.a("WEB_MESSAGE_ARRAY_BUFFER") && data != null && fromMap.getType() == 1) {
                                    s.n(this.webView, new m((byte[]) data, (n[]) arrayList.toArray(new n[0])), Uri.parse(str2));
                                } else {
                                    InAppWebView inAppWebView49 = this.webView;
                                    if (data != null) {
                                        str = data.toString();
                                    } else {
                                        str = null;
                                    }
                                    s.n(inAppWebView49, new m(str, (n[]) arrayList.toArray(new n[0])), Uri.parse(str2));
                                }
                                result.success(Boolean.TRUE);
                                return;
                            } catch (Exception e11) {
                                result.error(LOG_TAG, e11.getMessage(), null);
                                return;
                            }
                        }
                        return;
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 70:
                    if (this.webView != null) {
                        InAppWebView inAppWebView50 = this.webView;
                        WebMessageListener fromMap2 = WebMessageListener.fromMap(inAppWebView50, inAppWebView50.getPlugin().messenger, (Map) methodCall.argument("webMessageListener"));
                        if ((this.webView instanceof InAppWebView) && t.a("WEB_MESSAGE_LISTENER")) {
                            try {
                                this.webView.addWebMessageListener(fromMap2);
                                result.success(Boolean.TRUE);
                                return;
                            } catch (Exception e12) {
                                result.error(LOG_TAG, e12.getMessage(), null);
                                return;
                            }
                        }
                        result.success(Boolean.TRUE);
                        return;
                    }
                    result.success(Boolean.TRUE);
                    return;
                case 71:
                    InAppWebView inAppWebView51 = this.webView;
                    if (inAppWebView51 != null) {
                        result.success(Boolean.valueOf(inAppWebView51.canScrollVertically()));
                        return;
                    } else {
                        result.success(Boolean.FALSE);
                        return;
                    }
                case 72:
                    InAppWebView inAppWebView52 = this.webView;
                    if (inAppWebView52 != null) {
                        result.success(Boolean.valueOf(inAppWebView52.canScrollHorizontally()));
                        return;
                    } else {
                        result.success(Boolean.FALSE);
                        return;
                    }
                case 73:
                    InAppWebView inAppWebView53 = this.webView;
                    if (inAppWebView53 != null) {
                        result.success(Boolean.valueOf(inAppWebView53.isInFullscreen()));
                        return;
                    } else {
                        result.success(Boolean.FALSE);
                        return;
                    }
                case 74:
                    InAppWebView inAppWebView54 = this.webView;
                    if (inAppWebView54 != null) {
                        inAppWebView54.clearFormData();
                    }
                    result.success(Boolean.TRUE);
                    return;
                default:
                    return;
            }
        } catch (IllegalArgumentException unused) {
            result.notImplemented();
        }
    }

    public void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("x", Integer.valueOf(i10));
        hashMap.put("y", Integer.valueOf(i11));
        hashMap.put("clampedX", Boolean.valueOf(z10));
        hashMap.put("clampedY", Boolean.valueOf(z11));
        channel.invokeMethod("onOverScrolled", hashMap);
    }

    public void onPageCommitVisible(String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onPageCommitVisible", hashMap);
    }

    public void onPermissionRequest(String str, List<String> list, Object obj, PermissionRequestCallback permissionRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            permissionRequestCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("origin", str);
        hashMap.put("resources", list);
        hashMap.put("frame", obj);
        channel.invokeMethod("onPermissionRequest", hashMap, permissionRequestCallback);
    }

    public void onPermissionRequestCanceled(String str, List<String> list) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("origin", str);
        hashMap.put("resources", list);
        channel.invokeMethod("onPermissionRequestCanceled", hashMap);
    }

    public void onPrintRequest(String str, String str2, PrintRequestCallback printRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            printRequestCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("printJobId", str2);
        channel.invokeMethod("onPrintRequest", hashMap, printRequestCallback);
    }

    public void onProgressChanged(int i10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("progress", Integer.valueOf(i10));
        channel.invokeMethod("onProgressChanged", hashMap);
    }

    public void onReceivedClientCertRequest(ClientCertChallenge clientCertChallenge, ReceivedClientCertRequestCallback receivedClientCertRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            receivedClientCertRequestCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("onReceivedClientCertRequest", clientCertChallenge.toMap(), receivedClientCertRequestCallback);
        }
    }

    public void onReceivedError(WebResourceRequestExt webResourceRequestExt, WebResourceErrorExt webResourceErrorExt) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request", webResourceRequestExt.toMap());
        hashMap.put("error", webResourceErrorExt.toMap());
        channel.invokeMethod("onReceivedError", hashMap);
    }

    public void onReceivedHttpAuthRequest(HttpAuthenticationChallenge httpAuthenticationChallenge, ReceivedHttpAuthRequestCallback receivedHttpAuthRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            receivedHttpAuthRequestCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("onReceivedHttpAuthRequest", httpAuthenticationChallenge.toMap(), receivedHttpAuthRequestCallback);
        }
    }

    public void onReceivedHttpError(WebResourceRequestExt webResourceRequestExt, WebResourceResponseExt webResourceResponseExt) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request", webResourceRequestExt.toMap());
        hashMap.put("errorResponse", webResourceResponseExt.toMap());
        channel.invokeMethod("onReceivedHttpError", hashMap);
    }

    public void onReceivedIcon(byte[] bArr) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("icon", bArr);
        channel.invokeMethod("onReceivedIcon", hashMap);
    }

    public void onReceivedLoginRequest(String str, String str2, String str3) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM, str);
        hashMap.put("account", str2);
        hashMap.put("args", str3);
        channel.invokeMethod("onReceivedLoginRequest", hashMap);
    }

    public void onReceivedServerTrustAuthRequest(ServerTrustChallenge serverTrustChallenge, ReceivedServerTrustAuthRequestCallback receivedServerTrustAuthRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            receivedServerTrustAuthRequestCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("onReceivedServerTrustAuthRequest", serverTrustChallenge.toMap(), receivedServerTrustAuthRequestCallback);
        }
    }

    public void onReceivedTouchIconUrl(String str, boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("precomposed", Boolean.valueOf(z10));
        channel.invokeMethod("onReceivedTouchIconUrl", hashMap);
    }

    public void onRenderProcessGone(boolean z10, int i10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("didCrash", Boolean.valueOf(z10));
        hashMap.put("rendererPriorityAtExit", Integer.valueOf(i10));
        channel.invokeMethod("onRenderProcessGone", hashMap);
    }

    public void onRenderProcessResponsive(String str, RenderProcessResponsiveCallback renderProcessResponsiveCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            renderProcessResponsiveCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onRenderProcessResponsive", hashMap, renderProcessResponsiveCallback);
    }

    public void onRenderProcessUnresponsive(String str, RenderProcessUnresponsiveCallback renderProcessUnresponsiveCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            renderProcessUnresponsiveCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        channel.invokeMethod("onRenderProcessUnresponsive", hashMap, renderProcessUnresponsiveCallback);
    }

    public void onRequestFocus() {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        channel.invokeMethod("onRequestFocus", new HashMap());
    }

    public void onSafeBrowsingHit(String str, int i10, SafeBrowsingHitCallback safeBrowsingHitCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            safeBrowsingHitCallback.defaultBehaviour(null);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("threatType", Integer.valueOf(i10));
        channel.invokeMethod("onSafeBrowsingHit", hashMap, safeBrowsingHitCallback);
    }

    public void onScrollChanged(int i10, int i11) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("x", Integer.valueOf(i10));
        hashMap.put("y", Integer.valueOf(i11));
        channel.invokeMethod("onScrollChanged", hashMap);
    }

    public void onTitleChanged(String str) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("title", str);
        channel.invokeMethod("onTitleChanged", hashMap);
    }

    public void onUpdateVisitedHistory(String str, boolean z10) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("isReload", Boolean.valueOf(z10));
        channel.invokeMethod("onUpdateVisitedHistory", hashMap);
    }

    public void onZoomScaleChanged(float f10, float f11) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("oldScale", Float.valueOf(f10));
        hashMap.put("newScale", Float.valueOf(f11));
        channel.invokeMethod("onZoomScaleChanged", hashMap);
    }

    public void shouldInterceptRequest(WebResourceRequestExt webResourceRequestExt, ShouldInterceptRequestCallback shouldInterceptRequestCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            shouldInterceptRequestCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("shouldInterceptRequest", webResourceRequestExt.toMap(), shouldInterceptRequestCallback);
        }
    }

    public void shouldOverrideUrlLoading(NavigationAction navigationAction, ShouldOverrideUrlLoadingCallback shouldOverrideUrlLoadingCallback) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            shouldOverrideUrlLoadingCallback.defaultBehaviour(null);
        } else {
            channel.invokeMethod("shouldOverrideUrlLoading", navigationAction.toMap(), shouldOverrideUrlLoadingCallback);
        }
    }

    public WebResourceResponseExt shouldInterceptRequest(WebResourceRequestExt webResourceRequestExt) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return null;
        }
        return (WebResourceResponseExt) Util.invokeMethodAndWaitResult(channel, "shouldInterceptRequest", webResourceRequestExt.toMap(), new SyncShouldInterceptRequestCallback());
    }

    public CustomSchemeResponse onLoadResourceWithCustomScheme(WebResourceRequestExt webResourceRequestExt) {
        MethodChannel channel = getChannel();
        if (channel == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request", webResourceRequestExt.toMap());
        return (CustomSchemeResponse) Util.invokeMethodAndWaitResult(channel, "onLoadResourceWithCustomScheme", hashMap, new SyncLoadResourceWithCustomSchemeCallback());
    }
}
