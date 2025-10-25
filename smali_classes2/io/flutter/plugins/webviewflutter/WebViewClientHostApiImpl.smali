.class public Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;,
        Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;,
        Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;
    }
.end annotation


# instance fields
.field private final flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private final webViewClientCreator:Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->webViewClientCreator:Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->webViewClientCreator:Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;->createWebViewClient(Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)Landroid/webkit/WebViewClient;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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

.method public setSynchronousReturnValueForShouldOverrideUrlLoading(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Landroid/webkit/WebViewClient;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    instance-of v0, p1, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCompatImpl;->setReturnValueForShouldOverrideUrlLoading(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;->setReturnValueForShouldOverrideUrlLoading(Z)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "This WebViewClient doesn\'t support setting the returnValueForShouldOverrideUrlLoading."

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
