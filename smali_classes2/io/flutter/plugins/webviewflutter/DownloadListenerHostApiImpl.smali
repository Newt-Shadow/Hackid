.class public Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerHostApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;,
        Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerImpl;
    }
.end annotation


# instance fields
.field private final downloadListenerCreator:Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;

.field private final flutterApi:Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->downloadListenerCreator:Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->downloadListenerCreator:Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerCreator;->createDownloadListener(Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;)Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl$DownloadListenerImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v0, v2, v3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addDartCreatedInstance(Ljava/lang/Object;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
