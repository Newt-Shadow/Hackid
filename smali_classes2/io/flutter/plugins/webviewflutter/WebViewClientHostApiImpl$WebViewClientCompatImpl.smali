.class public Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;
.super Landroidx/webkit/WebViewClientCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClientCompatImpl"
.end annotation


# instance fields
.field private final flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

.field private returnValueForShouldOverrideUrlLoading:Z


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/webkit/WebViewClientCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->returnValueForShouldOverrideUrlLoading:Z

    .line 6
    .line 7
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onPageFinished$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onPageStarted$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onReceivedError$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$doUpdateVisitedHistory$7(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onReceivedHttpError$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onReceivedError$4(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$shouldOverrideUrlLoading$5(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$shouldOverrideUrlLoading$6(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->lambda$onReceivedHttpAuthRequest$8(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$doUpdateVisitedHistory$7(Ljava/lang/Void;)V
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

.method private static synthetic lambda$onReceivedError$3(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedError$4(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedHttpAuthRequest$8(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onReceivedHttpError$2(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$shouldOverrideUrlLoading$5(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$shouldOverrideUrlLoading$6(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v5, Lio/flutter/plugins/webviewflutter/f4;

    .line 4
    .line 5
    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/f4;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->doUpdateVisitedHistory(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;ZLio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/g4;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/g4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onPageFinished(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/webviewflutter/m4;

    .line 4
    .line 5
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/m4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p0, p1, p2, v0}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onPageStarted(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    int-to-long v1, p2

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, Lio/flutter/plugins/webviewflutter/l4;

    invoke-direct {v6}, Lio/flutter/plugins/webviewflutter/l4;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onReceivedError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lo1/o;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    new-instance v5, Lio/flutter/plugins/webviewflutter/h4;

    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/h4;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onReceivedRequestError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lo1/o;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v6, Lio/flutter/plugins/webviewflutter/e4;

    .line 4
    .line 5
    invoke-direct {v6}, Lio/flutter/plugins/webviewflutter/e4;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-virtual/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onReceivedHttpAuthRequest(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 2
    .line 3
    new-instance v5, Lio/flutter/plugins/webviewflutter/j4;

    .line 4
    .line 5
    invoke-direct {v5}, Lio/flutter/plugins/webviewflutter/j4;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->onReceivedHttpError(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public setReturnValueForShouldOverrideUrlLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->returnValueForShouldOverrideUrlLoading:Z

    .line 2
    .line 3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    new-instance v1, Lio/flutter/plugins/webviewflutter/k4;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/k4;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->requestLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->returnValueForShouldOverrideUrlLoading:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    new-instance v1, Lio/flutter/plugins/webviewflutter/i4;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/i4;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;->urlLoading(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientFlutterApi$Reply;)V

    .line 4
    iget-boolean p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->returnValueForShouldOverrideUrlLoading:Z

    return p1
.end method
