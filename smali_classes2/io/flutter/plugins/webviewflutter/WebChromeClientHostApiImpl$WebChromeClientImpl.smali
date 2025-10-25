.class public Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;
.super Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebChromeClientImpl"
.end annotation


# instance fields
.field private final flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

.field private returnValueForOnConsoleMessage:Z

.field private returnValueForOnJsAlert:Z

.field private returnValueForOnJsConfirm:Z

.field private returnValueForOnJsPrompt:Z

.field private returnValueForOnShowFileChooser:Z


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 14
    .line 15
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Landroid/webkit/JsPromptResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onJsPrompt$10(Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onShowCustomView$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onProgressChanged$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onHideCustomView$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic e(ZLandroid/webkit/ValueCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onShowFileChooser$5(ZLandroid/webkit/ValueCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Landroid/webkit/JsResult;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onJsConfirm$9(Landroid/webkit/JsResult;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Landroid/webkit/JsResult;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onJsAlert$8(Landroid/webkit/JsResult;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onConsoleMessage$7(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onPermissionRequest$6(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onGeolocationPermissionsShowPrompt$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->lambda$onGeolocationPermissionsHidePrompt$4(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$onConsoleMessage$7(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onGeolocationPermissionsHidePrompt$4(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onGeolocationPermissionsShowPrompt$3(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onHideCustomView$2(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onJsAlert$8(Landroid/webkit/JsResult;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onJsConfirm$9(Landroid/webkit/JsResult;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onJsPrompt$10(Landroid/webkit/JsPromptResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onPermissionRequest$6(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onProgressChanged$0(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowCustomView$1(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowFileChooser$5(ZLandroid/webkit/ValueCallback;Ljava/util/List;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-array p0, p0, [Landroid/net/Uri;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, p0, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/k3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/k3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onConsoleMessage(Landroid/webkit/WebChromeClient;Landroid/webkit/ConsoleMessage;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 12
    .line 13
    return p1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/l3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/l3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onGeolocationPermissionsHidePrompt(Landroid/webkit/WebChromeClient;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/n3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/n3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onGeolocationPermissionsShowPrompt(Landroid/webkit/WebChromeClient;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/o3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/o3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onHideCustomView(Landroid/webkit/WebChromeClient;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugins/webviewflutter/s3;

    .line 8
    .line 9
    invoke-direct {v0, p4}, Lio/flutter/plugins/webviewflutter/s3;-><init>(Landroid/webkit/JsResult;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onJsAlert(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugins/webviewflutter/r3;

    .line 8
    .line 9
    invoke-direct {v0, p4}, Lio/flutter/plugins/webviewflutter/r3;-><init>(Landroid/webkit/JsResult;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onJsConfirm(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 1
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 6
    .line 7
    new-instance v5, Lio/flutter/plugins/webviewflutter/m3;

    .line 8
    .line 9
    invoke-direct {v5, p5}, Lio/flutter/plugins/webviewflutter/m3;-><init>(Landroid/webkit/JsPromptResult;)V

    .line 10
    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    move-object v4, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onJsPrompt(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/t3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/t3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onPermissionRequest(Landroid/webkit/WebChromeClient;Landroid/webkit/PermissionRequest;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    int-to-long v1, p2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    new-instance v1, Lio/flutter/plugins/webviewflutter/p3;

    .line 9
    .line 10
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/p3;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onProgressChanged(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/q3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/q3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onShowCustomView(Landroid/webkit/WebChromeClient;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 4
    .line 5
    new-instance v2, Lio/flutter/plugins/webviewflutter/j3;

    .line 6
    .line 7
    invoke-direct {v2, v0, p2}, Lio/flutter/plugins/webviewflutter/j3;-><init>(ZLandroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0, p1, p3, v2}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->onShowFileChooser(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient$FileChooserParams;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 11
    .line 12
    .line 13
    return v0
.end method

.method public setReturnValueForOnConsoleMessage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnConsoleMessage:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsAlert(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsAlert:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsConfirm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsConfirm:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnJsPrompt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnJsPrompt:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReturnValueForOnShowFileChooser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->returnValueForOnShowFileChooser:Z

    .line 2
    .line 3
    return-void
.end method
