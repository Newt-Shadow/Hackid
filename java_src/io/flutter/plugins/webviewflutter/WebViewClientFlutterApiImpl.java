package io.flutter.plugins.webviewflutter;

import android.annotation.SuppressLint;
import android.webkit.HttpAuthHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugins.webviewflutter.GeneratedAndroidWebView;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public class WebViewClientFlutterApiImpl extends GeneratedAndroidWebView.WebViewClientFlutterApi {
    private final BinaryMessenger binaryMessenger;
    private final InstanceManager instanceManager;
    private final WebViewFlutterApiImpl webViewFlutterApi;

    public WebViewClientFlutterApiImpl(BinaryMessenger binaryMessenger, InstanceManager instanceManager) {
        super(binaryMessenger);
        this.binaryMessenger = binaryMessenger;
        this.instanceManager = instanceManager;
        this.webViewFlutterApi = new WebViewFlutterApiImpl(binaryMessenger, instanceManager);
    }

    static GeneratedAndroidWebView.WebResourceErrorData createWebResourceErrorData(WebResourceError webResourceError) {
        return new GeneratedAndroidWebView.WebResourceErrorData.Builder().setErrorCode(Long.valueOf(webResourceError.getErrorCode())).setDescription(webResourceError.getDescription().toString()).build();
    }

    static GeneratedAndroidWebView.WebResourceRequestData createWebResourceRequestData(WebResourceRequest webResourceRequest) {
        Map<String, String> hashMap;
        GeneratedAndroidWebView.WebResourceRequestData.Builder method = new GeneratedAndroidWebView.WebResourceRequestData.Builder().setUrl(webResourceRequest.getUrl().toString()).setIsForMainFrame(Boolean.valueOf(webResourceRequest.isForMainFrame())).setHasGesture(Boolean.valueOf(webResourceRequest.hasGesture())).setMethod(webResourceRequest.getMethod());
        if (webResourceRequest.getRequestHeaders() != null) {
            hashMap = webResourceRequest.getRequestHeaders();
        } else {
            hashMap = new HashMap<>();
        }
        GeneratedAndroidWebView.WebResourceRequestData.Builder requestHeaders = method.setRequestHeaders(hashMap);
        requestHeaders.setIsRedirect(Boolean.valueOf(webResourceRequest.isRedirect()));
        return requestHeaders.build();
    }

    static GeneratedAndroidWebView.WebResourceResponseData createWebResourceResponseData(WebResourceResponse webResourceResponse) {
        return new GeneratedAndroidWebView.WebResourceResponseData.Builder().setStatusCode(Long.valueOf(webResourceResponse.getStatusCode())).build();
    }

    private long getIdentifierForClient(WebViewClient webViewClient) {
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webViewClient);
        if (identifierForStrongReference != null) {
            return identifierForStrongReference.longValue();
        }
        throw new IllegalStateException("Could not find identifier for WebViewClient.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$doUpdateVisitedHistory$8(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onPageFinished$1(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onPageStarted$0(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceivedError$5(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceivedHttpAuthRequest$9(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceivedHttpError$2(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceivedRequestError$3(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceivedRequestError$4(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestLoading$6(Void r02) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$urlLoading$7(Void r02) {
    }

    public void doUpdateVisitedHistory(WebViewClient webViewClient, WebView webView, String str, boolean z10, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.v3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$doUpdateVisitedHistory$8((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        doUpdateVisitedHistory(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, str, Boolean.valueOf(z10), reply);
    }

    public void onPageFinished(WebViewClient webViewClient, WebView webView, String str, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.b4
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onPageFinished$1((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        onPageFinished(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, str, reply);
    }

    public void onPageStarted(WebViewClient webViewClient, WebView webView, String str, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.x3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onPageStarted$0((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        onPageStarted(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, str, reply);
    }

    public void onReceivedError(WebViewClient webViewClient, WebView webView, Long l10, String str, String str2, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.y3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onReceivedError$5((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        onReceivedError(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, l10, str, str2, reply);
    }

    public void onReceivedHttpAuthRequest(WebViewClient webViewClient, WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        new HttpAuthHandlerFlutterApiImpl(this.binaryMessenger, this.instanceManager).create(httpAuthHandler, new GeneratedAndroidWebView.HttpAuthHandlerFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.w3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.HttpAuthHandlerFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onReceivedHttpAuthRequest$9((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webViewClient);
        Objects.requireNonNull(identifierForStrongReference);
        Long identifierForStrongReference2 = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference2);
        Long identifierForStrongReference3 = this.instanceManager.getIdentifierForStrongReference(httpAuthHandler);
        Objects.requireNonNull(identifierForStrongReference3);
        onReceivedHttpAuthRequest(identifierForStrongReference, identifierForStrongReference2, identifierForStrongReference3, str, str2, reply);
    }

    public void onReceivedHttpError(WebViewClient webViewClient, WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.c4
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onReceivedHttpError$2((Void) obj);
            }
        });
        onReceivedHttpError(Long.valueOf(getIdentifierForClient(webViewClient)), this.instanceManager.getIdentifierForStrongReference(webView), createWebResourceRequestData(webResourceRequest), createWebResourceResponseData(webResourceResponse), reply);
    }

    public void onReceivedRequestError(WebViewClient webViewClient, WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.a4
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onReceivedRequestError$3((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        onReceivedRequestError(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, createWebResourceRequestData(webResourceRequest), createWebResourceErrorData(webResourceError), reply);
    }

    public void requestLoading(WebViewClient webViewClient, WebView webView, WebResourceRequest webResourceRequest, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.u3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$requestLoading$6((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        requestLoading(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, createWebResourceRequestData(webResourceRequest), reply);
    }

    public void urlLoading(WebViewClient webViewClient, WebView webView, String str, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.z3
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$urlLoading$7((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        urlLoading(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, str, reply);
    }

    @SuppressLint({"RequiresFeature"})
    static GeneratedAndroidWebView.WebResourceErrorData createWebResourceErrorData(o1.o oVar) {
        return new GeneratedAndroidWebView.WebResourceErrorData.Builder().setErrorCode(Long.valueOf(oVar.b())).setDescription(oVar.a().toString()).build();
    }

    public void onReceivedRequestError(WebViewClient webViewClient, WebView webView, WebResourceRequest webResourceRequest, o1.o oVar, GeneratedAndroidWebView.WebViewClientFlutterApi.Reply<Void> reply) {
        this.webViewFlutterApi.create(webView, new GeneratedAndroidWebView.WebViewFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.d4
            @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebViewFlutterApi.Reply
            public final void reply(Object obj) {
                WebViewClientFlutterApiImpl.lambda$onReceivedRequestError$4((Void) obj);
            }
        });
        Long identifierForStrongReference = this.instanceManager.getIdentifierForStrongReference(webView);
        Objects.requireNonNull(identifierForStrongReference);
        onReceivedRequestError(Long.valueOf(getIdentifierForClient(webViewClient)), identifierForStrongReference, createWebResourceRequestData(webResourceRequest), createWebResourceErrorData(oVar), reply);
    }
}
