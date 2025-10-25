.class public Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewPlatformView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;
    }
.end annotation


# instance fields
.field private api:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

.field private currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

.field private currentWebViewClient:Landroid/webkit/WebViewClient;

.field private final sdkChecker:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/b5;

    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/b5;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/webkit/WebViewClient;

    invoke-direct {p1}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    .line 4
    new-instance p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    invoke-direct {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 5
    new-instance p1, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    invoke-direct {p1, p2, p3}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 6
    iput-object p4, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->sdkChecker:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;

    .line 7
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->lambda$new$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->lambda$onScrollChanged$1(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$new$0(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    if-lt v0, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static synthetic lambda$onScrollChanged$1(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private tryFindFlutterView()Lio/flutter/embedding/android/FlutterView;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lio/flutter/embedding/android/FlutterView;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lio/flutter/embedding/android/FlutterView;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->sdkChecker:Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView$AndroidSdkChecker;->sdkIsAtLeast(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->tryFindFlutterView()Lio/flutter/embedding/android/FlutterView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Lio/flutter/embedding/android/k;->a(Lio/flutter/embedding/android/FlutterView;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 5
    .line 6
    int-to-long v1, p1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    int-to-long p1, p2

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    int-to-long p1, p3

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    int-to-long p1, p4

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lio/flutter/plugins/webviewflutter/a5;

    .line 27
    .line 28
    invoke-direct {v6}, Lio/flutter/plugins/webviewflutter/a5;-><init>()V

    .line 29
    .line 30
    .line 31
    move-object v1, p0

    .line 32
    invoke-virtual/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->onScrollChanged(Landroid/webkit/WebView;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method setApi(Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 9
    .line 10
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 11
    .line 12
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 19
    .line 20
    const-string v0, "Client must be a SecureWebChromeClient."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
