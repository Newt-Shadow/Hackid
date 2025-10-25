package io.flutter.plugins.webviewflutter;

import android.content.Context;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import io.flutter.plugins.webviewflutter.GeneratedAndroidWebView;
import io.flutter.plugins.webviewflutter.WebChromeClientHostApiImpl;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public class WebChromeClientHostApiImpl implements GeneratedAndroidWebView.WebChromeClientHostApi {
    private Context context;
    private final WebChromeClientFlutterApiImpl flutterApi;
    private final InstanceManager instanceManager;
    private final WebChromeClientCreator webChromeClientCreator;

    /* loaded from: classes2.dex */
    public static class SecureWebChromeClient extends WebChromeClient {
        WebViewClient webViewClient;

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
            return onCreateWindow(webView, message, new WebView(webView.getContext()));
        }

        public void setWebViewClient(WebViewClient webViewClient) {
            this.webViewClient = webViewClient;
        }

        boolean onCreateWindow(final WebView webView, Message message, WebView webView2) {
            if (this.webViewClient == null) {
                return false;
            }
            WebViewClient webViewClient = new WebViewClient() { // from class: io.flutter.plugins.webviewflutter.WebChromeClientHostApiImpl.SecureWebChromeClient.1
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView3, WebResourceRequest webResourceRequest) {
                    if (SecureWebChromeClient.this.webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest)) {
                        return true;
                    }
                    webView.loadUrl(webResourceRequest.getUrl().toString());
                    return true;
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView3, String str) {
                    if (SecureWebChromeClient.this.webViewClient.shouldOverrideUrlLoading(webView, str)) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                }
            };
            if (webView2 == null) {
                webView2 = new WebView(webView.getContext());
            }
            webView2.setWebViewClient(webViewClient);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class WebChromeClientCreator {
        public WebChromeClientImpl createWebChromeClient(WebChromeClientFlutterApiImpl webChromeClientFlutterApiImpl) {
            return new WebChromeClientImpl(webChromeClientFlutterApiImpl);
        }
    }

    /* loaded from: classes2.dex */
    public static class WebChromeClientImpl extends SecureWebChromeClient {
        private final WebChromeClientFlutterApiImpl flutterApi;
        private boolean returnValueForOnShowFileChooser = false;
        private boolean returnValueForOnConsoleMessage = false;
        private boolean returnValueForOnJsAlert = false;
        private boolean returnValueForOnJsConfirm = false;
        private boolean returnValueForOnJsPrompt = false;

        public WebChromeClientImpl(WebChromeClientFlutterApiImpl webChromeClientFlutterApiImpl) {
            this.flutterApi = webChromeClientFlutterApiImpl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onConsoleMessage$7(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onGeolocationPermissionsHidePrompt$4(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onGeolocationPermissionsShowPrompt$3(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onHideCustomView$2(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onJsConfirm$9(JsResult jsResult, Boolean bool) {
            if (bool.booleanValue()) {
                jsResult.confirm();
            } else {
                jsResult.cancel();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onJsPrompt$10(JsPromptResult jsPromptResult, String str) {
            if (str != null) {
                jsPromptResult.confirm(str);
            } else {
                jsPromptResult.cancel();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPermissionRequest$6(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onProgressChanged$0(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onShowCustomView$1(Void r02) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onShowFileChooser$5(boolean z10, ValueCallback valueCallback, List list) {
            if (z10) {
                Uri[] uriArr = new Uri[list.size()];
                for (int i10 = 0; i10 < list.size(); i10++) {
                    uriArr[i10] = Uri.parse((String) list.get(i10));
                }
                valueCallback.onReceiveValue(uriArr);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            this.flutterApi.onConsoleMessage(this, consoleMessage, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.k3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onConsoleMessage$7((Void) obj);
                }
            });
            return this.returnValueForOnConsoleMessage;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            this.flutterApi.onGeolocationPermissionsHidePrompt(this, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.l3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onGeolocationPermissionsHidePrompt$4((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            this.flutterApi.onGeolocationPermissionsShowPrompt(this, str, callback, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.n3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onGeolocationPermissionsShowPrompt$3((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            this.flutterApi.onHideCustomView(this, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.o3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onHideCustomView$2((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
            if (this.returnValueForOnJsAlert) {
                this.flutterApi.onJsAlert(this, str, str2, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.s3
                    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                    public final void reply(Object obj) {
                        Void r22 = (Void) obj;
                        jsResult.confirm();
                    }
                });
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
            if (this.returnValueForOnJsConfirm) {
                this.flutterApi.onJsConfirm(this, str, str2, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.r3
                    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                    public final void reply(Object obj) {
                        WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onJsConfirm$9(jsResult, (Boolean) obj);
                    }
                });
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
            if (this.returnValueForOnJsPrompt) {
                this.flutterApi.onJsPrompt(this, str, str2, str3, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.m3
                    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                    public final void reply(Object obj) {
                        WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onJsPrompt$10(jsPromptResult, (String) obj);
                    }
                });
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(PermissionRequest permissionRequest) {
            this.flutterApi.onPermissionRequest(this, permissionRequest, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.t3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onPermissionRequest$6((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            this.flutterApi.onProgressChanged(this, webView, Long.valueOf(i10), new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.p3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onProgressChanged$0((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            this.flutterApi.onShowCustomView(this, view, customViewCallback, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.q3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onShowCustomView$1((Void) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, final ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            final boolean z10 = this.returnValueForOnShowFileChooser;
            this.flutterApi.onShowFileChooser(this, webView, fileChooserParams, new GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply() { // from class: io.flutter.plugins.webviewflutter.j3
                @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientFlutterApi.Reply
                public final void reply(Object obj) {
                    WebChromeClientHostApiImpl.WebChromeClientImpl.lambda$onShowFileChooser$5(z10, valueCallback, (List) obj);
                }
            });
            return z10;
        }

        public void setReturnValueForOnConsoleMessage(boolean z10) {
            this.returnValueForOnConsoleMessage = z10;
        }

        public void setReturnValueForOnJsAlert(boolean z10) {
            this.returnValueForOnJsAlert = z10;
        }

        public void setReturnValueForOnJsConfirm(boolean z10) {
            this.returnValueForOnJsConfirm = z10;
        }

        public void setReturnValueForOnJsPrompt(boolean z10) {
            this.returnValueForOnJsPrompt = z10;
        }

        public void setReturnValueForOnShowFileChooser(boolean z10) {
            this.returnValueForOnShowFileChooser = z10;
        }
    }

    public WebChromeClientHostApiImpl(InstanceManager instanceManager, WebChromeClientCreator webChromeClientCreator, WebChromeClientFlutterApiImpl webChromeClientFlutterApiImpl) {
        this.instanceManager = instanceManager;
        this.webChromeClientCreator = webChromeClientCreator;
        this.flutterApi = webChromeClientFlutterApiImpl;
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void create(Long l10) {
        this.instanceManager.addDartCreatedInstance(this.webChromeClientCreator.createWebChromeClient(this.flutterApi), l10.longValue());
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void setSynchronousReturnValueForOnConsoleMessage(Long l10, Boolean bool) {
        WebChromeClientImpl webChromeClientImpl = (WebChromeClientImpl) this.instanceManager.getInstance(l10.longValue());
        Objects.requireNonNull(webChromeClientImpl);
        webChromeClientImpl.setReturnValueForOnConsoleMessage(bool.booleanValue());
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void setSynchronousReturnValueForOnJsAlert(Long l10, Boolean bool) {
        WebChromeClientImpl webChromeClientImpl = (WebChromeClientImpl) this.instanceManager.getInstance(l10.longValue());
        Objects.requireNonNull(webChromeClientImpl);
        webChromeClientImpl.setReturnValueForOnJsAlert(bool.booleanValue());
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void setSynchronousReturnValueForOnJsConfirm(Long l10, Boolean bool) {
        WebChromeClientImpl webChromeClientImpl = (WebChromeClientImpl) this.instanceManager.getInstance(l10.longValue());
        Objects.requireNonNull(webChromeClientImpl);
        webChromeClientImpl.setReturnValueForOnJsConfirm(bool.booleanValue());
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void setSynchronousReturnValueForOnJsPrompt(Long l10, Boolean bool) {
        WebChromeClientImpl webChromeClientImpl = (WebChromeClientImpl) this.instanceManager.getInstance(l10.longValue());
        Objects.requireNonNull(webChromeClientImpl);
        webChromeClientImpl.setReturnValueForOnJsPrompt(bool.booleanValue());
    }

    @Override // io.flutter.plugins.webviewflutter.GeneratedAndroidWebView.WebChromeClientHostApi
    public void setSynchronousReturnValueForOnShowFileChooser(Long l10, Boolean bool) {
        WebChromeClientImpl webChromeClientImpl = (WebChromeClientImpl) this.instanceManager.getInstance(l10.longValue());
        Objects.requireNonNull(webChromeClientImpl);
        webChromeClientImpl.setReturnValueForOnShowFileChooser(bool.booleanValue());
    }
}
