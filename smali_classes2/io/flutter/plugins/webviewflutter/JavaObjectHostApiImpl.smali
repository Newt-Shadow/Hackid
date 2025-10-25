.class public Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;


# instance fields
.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    move-result-object v0

    .line 11
    instance-of v1, v0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lio/flutter/plugins/webviewflutter/WebViewHostApiImpl$WebViewPlatformView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaObjectHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/InstanceManager;->remove(J)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method
