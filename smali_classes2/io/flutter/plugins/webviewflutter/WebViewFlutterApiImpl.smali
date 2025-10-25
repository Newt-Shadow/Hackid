.class public Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    new-instance p2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->containsInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addHostCreatedInstance(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;->create(Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onScrollChanged(Landroid/webkit/WebView;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move-object v5, p5

    .line 16
    move-object v6, p6

    .line 17
    invoke-virtual/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;->onScrollChanged(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method setApi(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi;

    .line 2
    .line 3
    return-void
.end method
