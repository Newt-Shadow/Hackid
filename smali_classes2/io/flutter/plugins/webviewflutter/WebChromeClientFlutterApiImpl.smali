.class public Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;
.super Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;
.source "SourceFile"


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private final webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 14
    .line 15
    return-void
.end method

.method private getIdentifierForClient(Landroid/webkit/WebChromeClient;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    const-string v0, "Could not find identifier for WebChromeClient."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static synthetic l(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onGeolocationPermissionsShowPrompt$3(Ljava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$onGeolocationPermissionsShowPrompt$3(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onPermissionRequest$4(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onProgressChanged$0(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowCustomView$5(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowCustomView$6(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowFileChooser$1(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onShowFileChooser$2(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public static synthetic m(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onPermissionRequest$4(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onShowFileChooser$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onProgressChanged$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onShowCustomView$6(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onShowFileChooser$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic r(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->lambda$onShowCustomView$5(Ljava/lang/Void;)V

    return-void
.end method

.method private static toConsoleMessageLevel(Landroid/webkit/ConsoleMessage$MessageLevel;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl$1;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->UNKNOWN:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->DEBUG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->ERROR:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->WARNING:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->LOG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_4
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->TIP:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/WebChromeClient;Landroid/webkit/ConsoleMessage;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Landroid/webkit/ConsoleMessage;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->setLineNumber(Ljava/lang/Long;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->setMessage(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->toConsoleMessageLevel(Landroid/webkit/ConsoleMessage$MessageLevel;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->setLevel(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->setSourceId(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage$Builder;->build()Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-super {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onConsoleMessage(Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessage;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt(Landroid/webkit/WebChromeClient;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onGeolocationPermissionsHidePrompt(Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Landroid/webkit/WebChromeClient;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/lang/String;",
            "Landroid/webkit/GeolocationPermissions$Callback;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackFlutterApiImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/flutter/plugins/webviewflutter/e3;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/e3;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3, v1}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackFlutterApiImpl;->create(Landroid/webkit/GeolocationPermissions$Callback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackFlutterApi$Reply;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 28
    .line 29
    invoke-virtual {v0, p3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p3, p2, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onGeolocationPermissionsShowPrompt(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onHideCustomView(Landroid/webkit/WebChromeClient;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onHideCustomView(Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onJsAlert(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onJsConfirm(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    move-object v6, p5

    .line 15
    invoke-super/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onJsPrompt(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/WebChromeClient;Landroid/webkit/PermissionRequest;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Landroid/webkit/PermissionRequest;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lio/flutter/plugins/webviewflutter/i3;

    .line 15
    .line 16
    invoke-direct {v2}, Lio/flutter/plugins/webviewflutter/i3;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->create(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi$Reply;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onPermissionRequest(Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/Long;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/f3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/f3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->getIdentifierForClient(Landroid/webkit/WebChromeClient;)J

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
    invoke-super {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onProgressChanged(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onShowCustomView(Landroid/webkit/WebChromeClient;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Landroid/view/View;",
            "Landroid/webkit/WebChromeClient$CustomViewCallback;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/ViewFlutterApiImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/ViewFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/flutter/plugins/webviewflutter/c3;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/c3;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/ViewFlutterApiImpl;->create(Landroid/view/View;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ViewFlutterApi$Reply;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lio/flutter/plugins/webviewflutter/CustomViewCallbackFlutterApiImpl;

    .line 19
    .line 20
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 21
    .line 22
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/CustomViewCallbackFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lio/flutter/plugins/webviewflutter/d3;

    .line 28
    .line 29
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/d3;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3, v1}, Lio/flutter/plugins/webviewflutter/CustomViewCallbackFlutterApiImpl;->create(Landroid/webkit/WebChromeClient$CustomViewCallback;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$CustomViewCallbackFlutterApi$Reply;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 54
    .line 55
    invoke-virtual {v0, p3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onShowCustomView(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient$FileChooserParams;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->webViewFlutterApi:Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/g3;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/g3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, v1}, Lio/flutter/plugins/webviewflutter/WebViewFlutterApiImpl;->create(Landroid/webkit/WebView;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewFlutterApi$Reply;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 14
    .line 15
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lio/flutter/plugins/webviewflutter/h3;

    .line 21
    .line 22
    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/h3;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3, v1}, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;->create(Landroid/webkit/WebChromeClient$FileChooserParams;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi$Reply;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 47
    .line 48
    invoke-virtual {v0, p3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi;->onShowFileChooser(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientFlutterApi$Reply;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
