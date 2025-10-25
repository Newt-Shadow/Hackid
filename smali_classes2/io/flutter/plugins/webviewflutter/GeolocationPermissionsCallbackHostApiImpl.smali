.class public Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$GeolocationPermissionsCallbackHostApi;


# instance fields
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
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    return-void
.end method

.method private getGeolocationPermissionsCallbackInstance(Ljava/lang/Long;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->getInstance(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/webkit/GeolocationPermissions$Callback;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroid/webkit/GeolocationPermissions$Callback;

    .line 17
    .line 18
    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackHostApiImpl;->getGeolocationPermissionsCallbackInstance(Ljava/lang/Long;)Landroid/webkit/GeolocationPermissions$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    invoke-interface {p1, p2, p3, p4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
