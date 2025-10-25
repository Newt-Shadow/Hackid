.class public Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;
.super Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi;
.source "SourceFile"


# instance fields
.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    return-void
.end method

.method private getIdentifierForJavaScriptChannel(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    const-string v0, "Could not find identifier for JavaScriptChannel."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public postMessage(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi$Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/webviewflutter/JavaScriptChannel;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi$Reply<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;->getIdentifierForJavaScriptChannel(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-super {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi;->postMessage(Ljava/lang/Long;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi$Reply;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
