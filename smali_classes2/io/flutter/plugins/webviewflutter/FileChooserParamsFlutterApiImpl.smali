.class public Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;
.super Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi;
.source "SourceFile"


# instance fields
.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    return-void
.end method

.method private static toFileChooserEnumData(I)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;->SAVE:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "Unsupported FileChooserMode: %d"

    .line 23
    .line 24
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;->OPEN_MULTIPLE:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;->OPEN:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public create(Landroid/webkit/WebChromeClient$FileChooserParams;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi$Reply;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addHostCreatedInstance(Ljava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/FileChooserParamsFlutterApiImpl;->toFileChooserEnumData(I)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    move-object v2, p0

    .line 48
    move-object v8, p2

    .line 49
    invoke-virtual/range {v2 .. v8}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi;->create(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserMode;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FileChooserParamsFlutterApi$Reply;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
