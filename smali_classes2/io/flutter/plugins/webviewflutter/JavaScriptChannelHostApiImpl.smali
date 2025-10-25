.class public Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;
    }
.end annotation


# instance fields
.field private final flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private final javaScriptChannelCreator:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;

.field private platformThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->javaScriptChannelCreator:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->platformThreadHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->javaScriptChannelCreator:Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->platformThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p2, v2}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl$JavaScriptChannelCreator;->createJavaScriptChannel(Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;Ljava/lang/String;Landroid/os/Handler;)Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, p2, v1, v2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addDartCreatedInstance(Ljava/lang/Object;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPlatformThreadHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelHostApiImpl;->platformThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method
