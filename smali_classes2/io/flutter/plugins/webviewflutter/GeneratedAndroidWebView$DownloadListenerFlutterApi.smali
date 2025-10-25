.class public Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadListenerFlutterApi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;
    }
.end annotation


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;->lambda$onDownloadStart$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;Ljava/lang/Object;)V

    return-void
.end method

.method static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$onDownloadStart$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;->reply(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    const-string v2, "dev.flutter.pigeon.webview_flutter_android.DownloadListenerFlutterApi.onDownloadStart"

    .line 6
    .line 7
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    new-array v2, v2, [Ljava/io/Serializable;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p1, v2, v3

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    aput-object p2, v2, p1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    aput-object p3, v2, p1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    aput-object p4, v2, p1

    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    aput-object p5, v2, p1

    .line 33
    .line 34
    const/4 p1, 0x5

    .line 35
    aput-object p6, v2, p1

    .line 36
    .line 37
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lio/flutter/plugins/webviewflutter/j;

    .line 45
    .line 46
    invoke-direct {p1, p7}, Lio/flutter/plugins/webviewflutter/j;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$DownloadListenerFlutterApi$Reply;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
