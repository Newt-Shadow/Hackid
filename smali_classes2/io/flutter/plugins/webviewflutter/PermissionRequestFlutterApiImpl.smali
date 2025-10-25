.class public Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;

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
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    new-instance p2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public create(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi$Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/PermissionRequest;",
            "[",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;

    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;->create(Ljava/lang/Long;Ljava/util/List;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi$Reply;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method setApi(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/PermissionRequestFlutterApiImpl;->api:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$PermissionRequestFlutterApi;

    .line 2
    .line 3
    return-void
.end method
