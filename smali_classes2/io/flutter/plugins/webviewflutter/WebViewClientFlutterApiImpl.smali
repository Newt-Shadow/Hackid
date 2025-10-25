.class public Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;
.super Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;
.source "SourceFile"


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private final webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 14
    .line 15
    return-void
.end method

.method static createWebResourceErrorData(Landroid/webkit/WebResourceError;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->setErrorCode(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->setDescription(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;

    move-result-object p0

    return-object p0
.end method

.method static createWebResourceErrorData(Lo1/o;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lo1/o;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->setErrorCode(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lo1/o;->a()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->setDescription(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData$Builder;->build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;

    move-result-object p0

    return-object p0
.end method

.method static createWebResourceRequestData(Landroid/webkit/WebResourceRequest;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setUrl(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setIsForMainFrame(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setHasGesture(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setMethod(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setRequestHeaders(Ljava/util/Map;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->setIsRedirect(Ljava/lang/Boolean;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData$Builder;->build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method static createWebResourceResponseData(Landroid/webkit/WebResourceResponse;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-long v1, p0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;->setStatusCode(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData$Builder;->build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private getIdentifierForClient(Landroid/webkit/WebViewClient;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Could not find identifier for WebViewClient."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static synthetic j(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onReceivedRequestError$4(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onPageStarted$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$requestLoading$6(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$doUpdateVisitedHistory$8(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onPageFinished$1(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onPageStarted$0(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedError$5(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedHttpAuthRequest$9(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedHttpError$2(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedRequestError$3(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedRequestError$4(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$requestLoading$6(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$urlLoading$7(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public static synthetic m(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onPageFinished$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onReceivedHttpAuthRequest$9(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onReceivedRequestError$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$doUpdateVisitedHistory$8(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onReceivedHttpError$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic r(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$urlLoading$7(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->lambda$onReceivedError$5(Ljava/lang/Void;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;ZLio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Z",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/v3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/v3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    move-object v1, p0

    .line 33
    move-object v4, p3

    .line 34
    move-object v6, p5

    .line 35
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->doUpdateVisitedHistory(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/b4;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/b4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onPageFinished(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/x3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/x3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onPageStarted(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/y3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/y3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v1, p0

    .line 29
    move-object v4, p3

    .line 30
    move-object v5, p4

    .line 31
    move-object v6, p5

    .line 32
    move-object v7, p6

    .line 33
    invoke-virtual/range {v1 .. v7}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onReceivedError(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/HttpAuthHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerFlutterApiImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/flutter/plugins/webviewflutter/w3;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/w3;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3, v1}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerFlutterApiImpl;->create(Landroid/webkit/HttpAuthHandler;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerFlutterApi$Reply;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-object v1, p0

    .line 46
    move-object v5, p4

    .line 47
    move-object v6, p5

    .line 48
    move-object v7, p6

    .line 49
    invoke-virtual/range {v1 .. v7}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onReceivedHttpAuthRequest(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceResponse;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/c4;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/c4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p3}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceRequestData(Landroid/webkit/WebResourceRequest;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {p4}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceResponseData(Landroid/webkit/WebResourceResponse;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    move-object v1, p0

    .line 34
    move-object v6, p5

    .line 35
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onReceivedHttpError(Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceResponseData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onReceivedRequestError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceError;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    new-instance v1, Lio/flutter/plugins/webviewflutter/a4;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/a4;-><init>()V

    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 3
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5
    invoke-static {p3}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceRequestData(Landroid/webkit/WebResourceRequest;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    move-result-object v4

    .line 6
    invoke-static {p4}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceErrorData(Landroid/webkit/WebResourceError;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;

    move-result-object v5

    move-object v1, p0

    move-object v6, p5

    .line 7
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onReceivedRequestError(Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    return-void
.end method

.method public onReceivedRequestError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lo1/o;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebResourceRequest;",
            "Lo1/o;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    new-instance v1, Lio/flutter/plugins/webviewflutter/d4;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/d4;-><init>()V

    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 10
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 12
    invoke-static {p3}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceRequestData(Landroid/webkit/WebResourceRequest;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    move-result-object v4

    .line 13
    invoke-static {p4}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceErrorData(Lo1/o;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;

    move-result-object v5

    move-object v1, p0

    move-object v6, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->onReceivedRequestError(Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceErrorData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    return-void
.end method

.method public requestLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebResourceRequest;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/u3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/u3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p3}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->createWebResourceRequestData(Landroid/webkit/WebResourceRequest;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->requestLoading(Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebResourceRequestData;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public urlLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/z3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/z3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebViewClient;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi;->urlLoading(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
