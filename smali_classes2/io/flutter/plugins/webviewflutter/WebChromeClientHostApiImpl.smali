.class public Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebChromeClientHostApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;,
        Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;,
        Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$SecureWebChromeClient;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

.field private final webChromeClientCreator:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager;Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->webChromeClientCreator:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->webChromeClientCreator:Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->flutterApi:Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientCreator;->createWebChromeClient(Lio/flutter/plugins/webviewflutter/WebChromeClientFlutterApiImpl;)Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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

.method public setSynchronousReturnValueForOnConsoleMessage(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->setReturnValueForOnConsoleMessage(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSynchronousReturnValueForOnJsAlert(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->setReturnValueForOnJsAlert(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSynchronousReturnValueForOnJsConfirm(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->setReturnValueForOnJsConfirm(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSynchronousReturnValueForOnJsPrompt(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->setReturnValueForOnJsPrompt(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSynchronousReturnValueForOnShowFileChooser(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl;->instanceManager:Lio/flutter/plugins/webviewflutter/InstanceManager;

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
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientHostApiImpl$WebChromeClientImpl;->setReturnValueForOnShowFileChooser(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
