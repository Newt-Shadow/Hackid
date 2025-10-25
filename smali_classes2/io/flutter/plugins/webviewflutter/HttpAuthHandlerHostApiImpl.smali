.class public Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;


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
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 7
    .line 8
    return-void
.end method

.method private getHttpAuthHandlerInstance(Ljava/lang/Long;)Landroid/webkit/HttpAuthHandler;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Landroid/webkit/HttpAuthHandler;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method


# virtual methods
.method public cancel(Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->getHttpAuthHandlerInstance(Ljava/lang/Long;)Landroid/webkit/HttpAuthHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public proceed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->getHttpAuthHandlerInstance(Ljava/lang/Long;)Landroid/webkit/HttpAuthHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public useHttpAuthUsernamePassword(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerHostApiImpl;->getHttpAuthHandlerInstance(Ljava/lang/Long;)Landroid/webkit/HttpAuthHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
