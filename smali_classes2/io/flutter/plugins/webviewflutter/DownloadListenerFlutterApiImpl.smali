.class public Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;
.super Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;
.source "SourceFile"


# instance fields
.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    return-void
.end method

.method private getIdentifierForListener(Landroid/webkit/DownloadListener;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    const-string v0, "Could not find identifier for DownloadListener."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public onDownloadStart(Landroid/webkit/DownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/DownloadListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/DownloadListenerFlutterApiImpl;->getIdentifierForListener(Landroid/webkit/DownloadListener;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    move-object v2, p0

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p4

    .line 17
    move-object v7, p5

    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    invoke-virtual/range {v2 .. v9}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;->onDownloadStart(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
