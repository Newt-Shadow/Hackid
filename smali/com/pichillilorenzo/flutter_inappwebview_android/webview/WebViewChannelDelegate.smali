.class public Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsAlertCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsConfirmCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsPromptCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsBeforeUnloadCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$CreateWindowCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$GeolocationPermissionsShowPromptCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PermissionRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ShouldOverrideUrlLoadingCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedHttpAuthRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedServerTrustAuthRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedClientCertRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SafeBrowsingHitCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$FormResubmissionCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$LoadResourceWithCustomSchemeCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncLoadResourceWithCustomSchemeCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ShouldInterceptRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncShouldInterceptRequestCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$RenderProcessUnresponsiveCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$RenderProcessResponsiveCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$CallJsHandlerCallback;,
        Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PrintRequestCallback;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WebViewChannelDelegate"


# instance fields
.field private webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->dispose()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 6
    .line 7
    return-void
.end method

.method public onCallJsHandler(Ljava/lang/String;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$CallJsHandlerCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "handlerName"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "args"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onCallJsHandler"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onCloseWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onCloseWindow"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "message"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "messageLevel"

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onConsoleMessage"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onContextMenuActionItemClicked(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "id"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v2, "androidId"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "iosId"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "title"

    .line 38
    .line 39
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string p1, "onContextMenuActionItemClicked"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onCreateContextMenu(Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "onCreateContextMenu"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->toMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onCreateWindow(Lcom/pichillilorenzo/flutter_inappwebview_android/types/CreateWindowAction;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$CreateWindowCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "onCreateWindow"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/CreateWindowAction;->toMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onDownloadStartRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "onDownloadStartRequest"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->toMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onEnterFullscreen"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onExitFullscreen()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onExitFullscreen"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "activeMatchOrdinal"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "numberOfMatches"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "isDoneCounting"

    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p1, "onFindResultReceived"

    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onFormResubmission(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$FormResubmissionCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "onFormResubmission"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onGeolocationPermissionsHidePrompt"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$GeolocationPermissionsShowPromptCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "origin"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "onGeolocationPermissionsShowPrompt"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onHideContextMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onHideContextMenu"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsAlertCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p4, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "message"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "isMainFrame"

    .line 28
    .line 29
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p1, "onJsAlert"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1, p4}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsBeforeUnloadCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "message"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onJsBeforeUnload"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsConfirmCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p4, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "message"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "isMainFrame"

    .line 28
    .line 29
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p1, "onJsConfirm"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1, p4}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$JsPromptCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p5, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "message"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "defaultValue"

    .line 28
    .line 29
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p1, "isMainFrame"

    .line 33
    .line 34
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "onJsPrompt"

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1, p5}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onLoadResourceWithCustomScheme(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/CustomSchemeResponse;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "request"

    .line 8
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncLoadResourceWithCustomSchemeCallback;

    invoke-direct {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncLoadResourceWithCustomSchemeCallback;-><init>()V

    const-string v2, "onLoadResourceWithCustomScheme"

    .line 10
    invoke-static {v0, v2, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodAndWaitResult(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/CustomSchemeResponse;

    return-object p1
.end method

.method public onLoadResourceWithCustomScheme(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$LoadResourceWithCustomSchemeCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "request"

    .line 4
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onLoadResourceWithCustomScheme"

    .line 5
    invoke-virtual {v0, p1, v1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public onLoadStart(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "onLoadStart"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onLoadStop(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "onLoadStop"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onLongPressHitTestResult(Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "onLongPressHitTestResult"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->toMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :try_start_0
    iget-object v3, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegateMethods;->valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegateMethods;

    .line 10
    .line 11
    .line 12
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$8;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview_android$webview$WebViewChannelDelegateMethods:[I

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aget v3, v4, v3

    .line 20
    .line 21
    const-string v4, "userScript"

    .line 22
    .line 23
    const-string v5, "animated"

    .line 24
    .line 25
    const-string v6, "y"

    .line 26
    .line 27
    const-string v7, "x"

    .line 28
    .line 29
    const-string v8, "steps"

    .line 30
    .line 31
    const-string v9, "urlFile"

    .line 32
    .line 33
    const-string v10, "contentWorld"

    .line 34
    .line 35
    const-string v11, "source"

    .line 36
    .line 37
    const-string v12, "WebViewChannelDelegate"

    .line 38
    .line 39
    const-string v13, "settings"

    .line 40
    .line 41
    const/4 v14, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    packed-switch v3, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :pswitch_0
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_9

    .line 61
    .line 62
    :pswitch_1
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isInFullscreen()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :pswitch_2
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->canScrollHorizontally()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :pswitch_3
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->canScrollVertically()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :pswitch_4
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    const-string v3, "webMessageListener"

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/Map;

    .line 145
    .line 146
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getPlugin()Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iget-object v4, v4, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 153
    .line 154
    invoke-static {v3, v4, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;->fromMap(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;Lio/flutter/plugin/common/BinaryMessenger;Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 159
    .line 160
    instance-of v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 161
    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    const-string v3, "WEB_MESSAGE_LISTENER"

    .line 165
    .line 166
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_4

    .line 171
    .line 172
    :try_start_1
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 173
    .line 174
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->addWebMessageListener(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageListener;)V

    .line 175
    .line 176
    .line 177
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .line 181
    .line 182
    goto/16 :goto_9

    .line 183
    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v2, v12, v0, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_9

    .line 193
    .line 194
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_9

    .line 200
    .line 201
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :pswitch_5
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 209
    .line 210
    if-eqz v3, :cond_a

    .line 211
    .line 212
    const-string v3, "POST_WEB_MESSAGE"

    .line 213
    .line 214
    invoke-static {v3}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_a

    .line 219
    .line 220
    const-string v3, "message"

    .line 221
    .line 222
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Ljava/util/Map;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const-string v4, "targetOrigin"

    .line 233
    .line 234
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Ljava/lang/String;

    .line 239
    .line 240
    new-instance v4, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;->getPorts()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    if-eqz v5, :cond_7

    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_7

    .line 260
    .line 261
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessagePortCompatExt;

    .line 266
    .line 267
    iget-object v7, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 268
    .line 269
    invoke-virtual {v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getWebMessageChannels()Ljava/util/Map;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessagePortCompatExt;->getWebMessageChannelId()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    check-cast v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 282
    .line 283
    if-eqz v7, :cond_6

    .line 284
    .line 285
    iget-object v8, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 286
    .line 287
    instance-of v8, v8, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 288
    .line 289
    if-eqz v8, :cond_6

    .line 290
    .line 291
    iget-object v7, v7, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;->compatPorts:Ljava/util/List;

    .line 292
    .line 293
    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessagePortCompatExt;->getIndex()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    check-cast v6, Lo1/n;

    .line 302
    .line 303
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_7
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;->getData()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    iget-object v6, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 312
    .line 313
    instance-of v6, v6, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 314
    .line 315
    if-eqz v6, :cond_53

    .line 316
    .line 317
    :try_start_2
    const-string v6, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 318
    .line 319
    invoke-static {v6}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_8

    .line 324
    .line 325
    if-eqz v5, :cond_8

    .line 326
    .line 327
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;->getType()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-ne v3, v14, :cond_8

    .line 332
    .line 333
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 334
    .line 335
    new-instance v6, Lo1/m;

    .line 336
    .line 337
    check-cast v5, [B

    .line 338
    .line 339
    const/4 v7, 0x0

    .line 340
    new-array v7, v7, [Lo1/n;

    .line 341
    .line 342
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, [Lo1/n;

    .line 347
    .line 348
    invoke-direct {v6, v5, v4}, Lo1/m;-><init>([B[Lo1/n;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-static {v3, v6, v0}, Lo1/s;->n(Landroid/webkit/WebView;Lo1/m;Landroid/net/Uri;)V

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_8
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 360
    .line 361
    new-instance v6, Lo1/m;

    .line 362
    .line 363
    if-eqz v5, :cond_9

    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    goto :goto_1

    .line 370
    :cond_9
    move-object v5, v15

    .line 371
    :goto_1
    const/4 v7, 0x0

    .line 372
    new-array v7, v7, [Lo1/n;

    .line 373
    .line 374
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, [Lo1/n;

    .line 379
    .line 380
    invoke-direct {v6, v5, v4}, Lo1/m;-><init>(Ljava/lang/String;[Lo1/n;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v3, v6, v0}, Lo1/s;->n(Landroid/webkit/WebView;Lo1/m;Landroid/net/Uri;)V

    .line 388
    .line 389
    .line 390
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 391
    .line 392
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 393
    .line 394
    .line 395
    goto/16 :goto_9

    .line 396
    .line 397
    :catch_1
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-interface {v2, v12, v0, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_9

    .line 406
    .line 407
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 408
    .line 409
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_9

    .line 413
    .line 414
    :pswitch_6
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 415
    .line 416
    if-eqz v0, :cond_c

    .line 417
    .line 418
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 419
    .line 420
    if-eqz v0, :cond_b

    .line 421
    .line 422
    const-string v0, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 423
    .line 424
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_b

    .line 429
    .line 430
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->createCompatWebMessageChannel()Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;->toMap()Ljava/util/Map;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_9

    .line 444
    .line 445
    :cond_b
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_9

    .line 449
    .line 450
    :cond_c
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_9

    .line 454
    .line 455
    :pswitch_7
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 456
    .line 457
    if-eqz v0, :cond_d

    .line 458
    .line 459
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$7;

    .line 460
    .line 461
    invoke-direct {v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$7;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isSecureContext(Landroid/webkit/ValueCallback;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_9

    .line 468
    .line 469
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 470
    .line 471
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_9

    .line 475
    .line 476
    :pswitch_8
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 477
    .line 478
    if-eqz v3, :cond_e

    .line 479
    .line 480
    const-string v3, "functionBody"

    .line 481
    .line 482
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    check-cast v3, Ljava/lang/String;

    .line 487
    .line 488
    const-string v4, "arguments"

    .line 489
    .line 490
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    check-cast v4, Ljava/util/Map;

    .line 495
    .line 496
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Ljava/util/Map;

    .line 501
    .line 502
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 507
    .line 508
    new-instance v6, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$6;

    .line 509
    .line 510
    invoke-direct {v6, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$6;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->callAsyncJavaScript(Ljava/lang/String;Ljava/util/Map;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_9

    .line 517
    .line 518
    :cond_e
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_9

    .line 522
    .line 523
    :pswitch_9
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 524
    .line 525
    if-eqz v0, :cond_f

    .line 526
    .line 527
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    if-eqz v0, :cond_f

    .line 532
    .line 533
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeAllUserOnlyScripts()V

    .line 540
    .line 541
    .line 542
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 543
    .line 544
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_9

    .line 548
    .line 549
    :pswitch_a
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 550
    .line 551
    if-eqz v3, :cond_10

    .line 552
    .line 553
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    if-eqz v3, :cond_10

    .line 558
    .line 559
    const-string v3, "groupName"

    .line 560
    .line 561
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    check-cast v0, Ljava/lang/String;

    .line 566
    .line 567
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 568
    .line 569
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeUserOnlyScriptsByGroupName(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 577
    .line 578
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_9

    .line 582
    .line 583
    :pswitch_b
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 584
    .line 585
    if-eqz v3, :cond_11

    .line 586
    .line 587
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    if-eqz v3, :cond_11

    .line 592
    .line 593
    const-string v3, "index"

    .line 594
    .line 595
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    check-cast v3, Ljava/lang/Integer;

    .line 600
    .line 601
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljava/util/Map;

    .line 606
    .line 607
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 612
    .line 613
    invoke-virtual {v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->getInjectionTime()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v4, v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->removeUserOnlyScriptAt(ILcom/pichillilorenzo/flutter_inappwebview_android/types/UserScriptInjectionTime;)Z

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_9

    .line 637
    .line 638
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 639
    .line 640
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_9

    .line 644
    .line 645
    :pswitch_c
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 646
    .line 647
    if-eqz v3, :cond_12

    .line 648
    .line 649
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    if-eqz v3, :cond_12

    .line 654
    .line 655
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    check-cast v0, Ljava/util/Map;

    .line 660
    .line 661
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 666
    .line 667
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getUserContentController()Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserContentController;->addUserOnlyScript(Lcom/pichillilorenzo/flutter_inappwebview_android/types/UserScript;)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_9

    .line 683
    .line 684
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 685
    .line 686
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_9

    .line 690
    .line 691
    :pswitch_d
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 692
    .line 693
    if-eqz v0, :cond_13

    .line 694
    .line 695
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 696
    .line 697
    .line 698
    :cond_13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 699
    .line 700
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_9

    .line 704
    .line 705
    :pswitch_e
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 706
    .line 707
    if-eqz v0, :cond_14

    .line 708
    .line 709
    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/SslCertificateExt;->toMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_9

    .line 721
    .line 722
    :cond_14
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_9

    .line 726
    .line 727
    :pswitch_f
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 728
    .line 729
    if-eqz v0, :cond_15

    .line 730
    .line 731
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_9

    .line 743
    .line 744
    :cond_15
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_9

    .line 748
    .line 749
    :pswitch_10
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 750
    .line 751
    if-eqz v0, :cond_16

    .line 752
    .line 753
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_9

    .line 765
    .line 766
    :cond_16
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_9

    .line 770
    .line 771
    :pswitch_11
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 772
    .line 773
    if-eqz v0, :cond_17

    .line 774
    .line 775
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->requestImageRef()Ljava/util/Map;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_9

    .line 783
    .line 784
    :cond_17
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    goto/16 :goto_9

    .line 788
    .line 789
    :pswitch_12
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 790
    .line 791
    if-eqz v0, :cond_18

    .line 792
    .line 793
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->requestFocusNodeHref()Ljava/util/Map;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_9

    .line 801
    .line 802
    :cond_18
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_9

    .line 806
    .line 807
    :pswitch_13
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 808
    .line 809
    if-eqz v3, :cond_19

    .line 810
    .line 811
    const-string v3, "contextMenu"

    .line 812
    .line 813
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    check-cast v0, Ljava/util/Map;

    .line 818
    .line 819
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 820
    .line 821
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setContextMenu(Ljava/util/Map;)V

    .line 822
    .line 823
    .line 824
    :cond_19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 825
    .line 826
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_9

    .line 830
    .line 831
    :pswitch_14
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 832
    .line 833
    if-eqz v0, :cond_1a

    .line 834
    .line 835
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InputAwareWebView;->clearFocus()V

    .line 836
    .line 837
    .line 838
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 839
    .line 840
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_9

    .line 844
    .line 845
    :pswitch_15
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 846
    .line 847
    if-eqz v0, :cond_1b

    .line 848
    .line 849
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    goto/16 :goto_9

    .line 861
    .line 862
    :cond_1b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 863
    .line 864
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_9

    .line 868
    .line 869
    :pswitch_16
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 870
    .line 871
    if-eqz v0, :cond_1c

    .line 872
    .line 873
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    goto/16 :goto_9

    .line 885
    .line 886
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 887
    .line 888
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    goto/16 :goto_9

    .line 892
    .line 893
    :pswitch_17
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 894
    .line 895
    if-eqz v3, :cond_1d

    .line 896
    .line 897
    const-string v3, "filePath"

    .line 898
    .line 899
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    check-cast v3, Ljava/lang/String;

    .line 904
    .line 905
    const-string v4, "autoname"

    .line 906
    .line 907
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    check-cast v0, Ljava/lang/Boolean;

    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 918
    .line 919
    new-instance v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$5;

    .line 920
    .line 921
    invoke-direct {v5, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$5;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v4, v3, v0, v5}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_9

    .line 928
    .line 929
    :cond_1d
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_9

    .line 933
    .line 934
    :pswitch_18
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 935
    .line 936
    if-eqz v3, :cond_1e

    .line 937
    .line 938
    const-string v3, "top"

    .line 939
    .line 940
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    check-cast v0, Ljava/lang/Boolean;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 951
    .line 952
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    goto/16 :goto_9

    .line 964
    .line 965
    :cond_1e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 966
    .line 967
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_9

    .line 971
    .line 972
    :pswitch_19
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 973
    .line 974
    if-eqz v3, :cond_1f

    .line 975
    .line 976
    const-string v3, "bottom"

    .line 977
    .line 978
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    check-cast v0, Ljava/lang/Boolean;

    .line 983
    .line 984
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 989
    .line 990
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_9

    .line 1002
    .line 1003
    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1004
    .line 1005
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_9

    .line 1009
    .line 1010
    :pswitch_1a
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1011
    .line 1012
    instance-of v3, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1013
    .line 1014
    if-eqz v3, :cond_20

    .line 1015
    .line 1016
    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->fromWebViewHitTestResult(Landroid/webkit/WebView$HitTestResult;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HitTestResult;->toMap()Ljava/util/Map;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_9

    .line 1032
    .line 1033
    :cond_20
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_9

    .line 1037
    .line 1038
    :pswitch_1b
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1039
    .line 1040
    instance-of v3, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1041
    .line 1042
    if-eqz v3, :cond_21

    .line 1043
    .line 1044
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$4;

    .line 1045
    .line 1046
    invoke-direct {v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$4;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getSelectedText(Landroid/webkit/ValueCallback;)V

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_9

    .line 1053
    .line 1054
    :cond_21
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_9

    .line 1058
    .line 1059
    :pswitch_1c
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1060
    .line 1061
    instance-of v3, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1062
    .line 1063
    if-eqz v3, :cond_22

    .line 1064
    .line 1065
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getZoomScale()F

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_9

    .line 1077
    .line 1078
    :cond_22
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    goto/16 :goto_9

    .line 1082
    .line 1083
    :pswitch_1d
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1084
    .line 1085
    if-eqz v0, :cond_23

    .line 1086
    .line 1087
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v15

    .line 1091
    :cond_23
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_9

    .line 1095
    .line 1096
    :pswitch_1e
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1097
    .line 1098
    if-eqz v3, :cond_24

    .line 1099
    .line 1100
    const-string v3, "zoomFactor"

    .line 1101
    .line 1102
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    check-cast v0, Ljava/lang/Double;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1109
    .line 1110
    .line 1111
    move-result-wide v3

    .line 1112
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1113
    .line 1114
    double-to-float v3, v3

    .line 1115
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->zoomBy(F)V

    .line 1116
    .line 1117
    .line 1118
    :cond_24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1119
    .line 1120
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_9

    .line 1124
    .line 1125
    :pswitch_1f
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1126
    .line 1127
    instance-of v3, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1128
    .line 1129
    if-eqz v3, :cond_25

    .line 1130
    .line 1131
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$3;

    .line 1132
    .line 1133
    invoke-direct {v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getContentWidth(Landroid/webkit/ValueCallback;)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_9

    .line 1140
    .line 1141
    :cond_25
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1142
    .line 1143
    .line 1144
    goto/16 :goto_9

    .line 1145
    .line 1146
    :pswitch_20
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1147
    .line 1148
    instance-of v3, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1149
    .line 1150
    if-eqz v3, :cond_26

    .line 1151
    .line 1152
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    goto/16 :goto_9

    .line 1164
    .line 1165
    :cond_26
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1166
    .line 1167
    .line 1168
    goto/16 :goto_9

    .line 1169
    .line 1170
    :pswitch_21
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1171
    .line 1172
    if-eqz v3, :cond_28

    .line 1173
    .line 1174
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;

    .line 1175
    .line 1176
    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    check-cast v0, Ljava/util/Map;

    .line 1184
    .line 1185
    if-eqz v0, :cond_27

    .line 1186
    .line 1187
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;

    .line 1188
    .line 1189
    .line 1190
    :cond_27
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1191
    .line 1192
    invoke-virtual {v0, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->printCurrentPage(Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    goto/16 :goto_9

    .line 1200
    .line 1201
    :cond_28
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    goto/16 :goto_9

    .line 1205
    .line 1206
    :pswitch_22
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1207
    .line 1208
    if-eqz v0, :cond_29

    .line 1209
    .line 1210
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 1211
    .line 1212
    .line 1213
    :cond_29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1214
    .line 1215
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1216
    .line 1217
    .line 1218
    goto/16 :goto_9

    .line 1219
    .line 1220
    :pswitch_23
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1221
    .line 1222
    if-eqz v0, :cond_2a

    .line 1223
    .line 1224
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1225
    .line 1226
    .line 1227
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1228
    .line 1229
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_9

    .line 1233
    .line 1234
    :pswitch_24
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1235
    .line 1236
    if-eqz v0, :cond_2b

    .line 1237
    .line 1238
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1239
    .line 1240
    .line 1241
    :cond_2b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1242
    .line 1243
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    goto/16 :goto_9

    .line 1247
    .line 1248
    :pswitch_25
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1249
    .line 1250
    if-eqz v0, :cond_2c

    .line 1251
    .line 1252
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1253
    .line 1254
    .line 1255
    :cond_2c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1256
    .line 1257
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_9

    .line 1261
    .line 1262
    :pswitch_26
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1263
    .line 1264
    if-eqz v3, :cond_2d

    .line 1265
    .line 1266
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v3

    .line 1270
    check-cast v3, Ljava/lang/Integer;

    .line 1271
    .line 1272
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v4

    .line 1276
    check-cast v4, Ljava/lang/Integer;

    .line 1277
    .line 1278
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    check-cast v0, Ljava/lang/Boolean;

    .line 1283
    .line 1284
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1285
    .line 1286
    invoke-virtual {v5, v3, v4, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1287
    .line 1288
    .line 1289
    :cond_2d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1290
    .line 1291
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1292
    .line 1293
    .line 1294
    goto/16 :goto_9

    .line 1295
    .line 1296
    :pswitch_27
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1297
    .line 1298
    if-eqz v3, :cond_2e

    .line 1299
    .line 1300
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    check-cast v3, Ljava/lang/Integer;

    .line 1305
    .line 1306
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4

    .line 1310
    check-cast v4, Ljava/lang/Integer;

    .line 1311
    .line 1312
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    check-cast v0, Ljava/lang/Boolean;

    .line 1317
    .line 1318
    iget-object v5, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1319
    .line 1320
    invoke-virtual {v5, v3, v4, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1321
    .line 1322
    .line 1323
    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1324
    .line 1325
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    goto/16 :goto_9

    .line 1329
    .line 1330
    :pswitch_28
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1331
    .line 1332
    if-eqz v0, :cond_2f

    .line 1333
    .line 1334
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 1335
    .line 1336
    .line 1337
    :cond_2f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1338
    .line 1339
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_9

    .line 1343
    .line 1344
    :pswitch_29
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1345
    .line 1346
    if-eqz v3, :cond_30

    .line 1347
    .line 1348
    const-string v3, "forward"

    .line 1349
    .line 1350
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    check-cast v0, Ljava/lang/Boolean;

    .line 1355
    .line 1356
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1357
    .line 1358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->findNext(Z)V

    .line 1363
    .line 1364
    .line 1365
    :cond_30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1366
    .line 1367
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1368
    .line 1369
    .line 1370
    goto/16 :goto_9

    .line 1371
    .line 1372
    :pswitch_2a
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1373
    .line 1374
    if-eqz v3, :cond_31

    .line 1375
    .line 1376
    const-string v3, "find"

    .line 1377
    .line 1378
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    check-cast v0, Ljava/lang/String;

    .line 1383
    .line 1384
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1385
    .line 1386
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    :cond_31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1390
    .line 1391
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_9

    .line 1395
    .line 1396
    :pswitch_2b
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1397
    .line 1398
    if-eqz v0, :cond_32

    .line 1399
    .line 1400
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 1401
    .line 1402
    .line 1403
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1404
    .line 1405
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1406
    .line 1407
    .line 1408
    goto/16 :goto_9

    .line 1409
    .line 1410
    :pswitch_2c
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1411
    .line 1412
    if-eqz v0, :cond_33

    .line 1413
    .line 1414
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->clearAllCache()V

    .line 1415
    .line 1416
    .line 1417
    :cond_33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1418
    .line 1419
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_9

    .line 1423
    .line 1424
    :pswitch_2d
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1425
    .line 1426
    if-eqz v0, :cond_34

    .line 1427
    .line 1428
    const-string v0, "START_SAFE_BROWSING"

    .line 1429
    .line 1430
    invoke-static {v0}, Lo1/t;->a(Ljava/lang/String;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v0

    .line 1434
    if-eqz v0, :cond_34

    .line 1435
    .line 1436
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1437
    .line 1438
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$2;

    .line 1443
    .line 1444
    invoke-direct {v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-static {v0, v3}, Lo1/s;->r(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_9

    .line 1451
    .line 1452
    :cond_34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1453
    .line 1454
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1455
    .line 1456
    .line 1457
    goto/16 :goto_9

    .line 1458
    .line 1459
    :pswitch_2e
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1460
    .line 1461
    if-eqz v0, :cond_35

    .line 1462
    .line 1463
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getCopyBackForwardList()Ljava/util/HashMap;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v15

    .line 1467
    :cond_35
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1468
    .line 1469
    .line 1470
    goto/16 :goto_9

    .line 1471
    .line 1472
    :pswitch_2f
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1473
    .line 1474
    if-eqz v0, :cond_36

    .line 1475
    .line 1476
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1481
    .line 1482
    if-eqz v0, :cond_36

    .line 1483
    .line 1484
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1485
    .line 1486
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1491
    .line 1492
    iget-boolean v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->isHidden:Z

    .line 1493
    .line 1494
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_9

    .line 1502
    .line 1503
    :cond_36
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_9

    .line 1507
    .line 1508
    :pswitch_30
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1509
    .line 1510
    if-eqz v0, :cond_37

    .line 1511
    .line 1512
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1517
    .line 1518
    if-eqz v0, :cond_37

    .line 1519
    .line 1520
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1521
    .line 1522
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1527
    .line 1528
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->hide()V

    .line 1529
    .line 1530
    .line 1531
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1532
    .line 1533
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_9

    .line 1537
    .line 1538
    :cond_37
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 1539
    .line 1540
    .line 1541
    goto/16 :goto_9

    .line 1542
    .line 1543
    :pswitch_31
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1544
    .line 1545
    if-eqz v0, :cond_38

    .line 1546
    .line 1547
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1552
    .line 1553
    if-eqz v0, :cond_38

    .line 1554
    .line 1555
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1556
    .line 1557
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1562
    .line 1563
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->show()V

    .line 1564
    .line 1565
    .line 1566
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1567
    .line 1568
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1569
    .line 1570
    .line 1571
    goto/16 :goto_9

    .line 1572
    .line 1573
    :cond_38
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_9

    .line 1577
    .line 1578
    :pswitch_32
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1579
    .line 1580
    if-eqz v0, :cond_39

    .line 1581
    .line 1582
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1587
    .line 1588
    if-eqz v0, :cond_39

    .line 1589
    .line 1590
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1591
    .line 1592
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v0

    .line 1596
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1597
    .line 1598
    invoke-virtual {v0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->close(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1599
    .line 1600
    .line 1601
    goto/16 :goto_9

    .line 1602
    .line 1603
    :cond_39
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 1604
    .line 1605
    .line 1606
    goto/16 :goto_9

    .line 1607
    .line 1608
    :pswitch_33
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1609
    .line 1610
    if-eqz v0, :cond_3a

    .line 1611
    .line 1612
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    instance-of v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1617
    .line 1618
    if-eqz v0, :cond_3a

    .line 1619
    .line 1620
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1621
    .line 1622
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v0

    .line 1626
    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1627
    .line 1628
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->getCustomSettings()Ljava/util/Map;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v0

    .line 1632
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1633
    .line 1634
    .line 1635
    goto/16 :goto_9

    .line 1636
    .line 1637
    :cond_3a
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1638
    .line 1639
    if-eqz v0, :cond_3b

    .line 1640
    .line 1641
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getCustomSettings()Ljava/util/Map;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v15

    .line 1645
    :cond_3b
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_9

    .line 1649
    .line 1650
    :pswitch_34
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1651
    .line 1652
    if-eqz v3, :cond_3c

    .line 1653
    .line 1654
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v3

    .line 1658
    instance-of v3, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1659
    .line 1660
    if-eqz v3, :cond_3c

    .line 1661
    .line 1662
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1663
    .line 1664
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->getInAppBrowserDelegate()Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserDelegate;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v3

    .line 1668
    check-cast v3, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;

    .line 1669
    .line 1670
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserSettings;

    .line 1671
    .line 1672
    invoke-direct {v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserSettings;-><init>()V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    check-cast v0, Ljava/util/HashMap;

    .line 1680
    .line 1681
    invoke-virtual {v4, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserSettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserSettings;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v3, v4, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserActivity;->setSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/in_app_browser/InAppBrowserSettings;Ljava/util/HashMap;)V

    .line 1685
    .line 1686
    .line 1687
    goto :goto_3

    .line 1688
    :cond_3c
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1689
    .line 1690
    if-eqz v3, :cond_3d

    .line 1691
    .line 1692
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1693
    .line 1694
    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;-><init>()V

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    check-cast v0, Ljava/util/HashMap;

    .line 1702
    .line 1703
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;

    .line 1704
    .line 1705
    .line 1706
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1707
    .line 1708
    invoke-virtual {v4, v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->setSettings(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebViewSettings;Ljava/util/HashMap;)V

    .line 1709
    .line 1710
    .line 1711
    :cond_3d
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1712
    .line 1713
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_9

    .line 1717
    .line 1718
    :pswitch_35
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1719
    .line 1720
    if-eqz v3, :cond_3e

    .line 1721
    .line 1722
    const-string v3, "screenshotConfiguration"

    .line 1723
    .line 1724
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    check-cast v0, Ljava/util/Map;

    .line 1729
    .line 1730
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1731
    .line 1732
    invoke-virtual {v3, v0, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->takeScreenshot(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1733
    .line 1734
    .line 1735
    goto/16 :goto_9

    .line 1736
    .line 1737
    :cond_3e
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1738
    .line 1739
    .line 1740
    goto/16 :goto_9

    .line 1741
    .line 1742
    :pswitch_36
    const/4 v7, 0x0

    .line 1743
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1744
    .line 1745
    if-eqz v0, :cond_3f

    .line 1746
    .line 1747
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->isLoading()Z

    .line 1748
    .line 1749
    .line 1750
    move-result v0

    .line 1751
    if-eqz v0, :cond_3f

    .line 1752
    .line 1753
    goto :goto_4

    .line 1754
    :cond_3f
    move v14, v7

    .line 1755
    :goto_4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_9

    .line 1763
    .line 1764
    :pswitch_37
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1765
    .line 1766
    if-eqz v0, :cond_40

    .line 1767
    .line 1768
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1769
    .line 1770
    .line 1771
    :cond_40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1772
    .line 1773
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1774
    .line 1775
    .line 1776
    goto/16 :goto_9

    .line 1777
    .line 1778
    :pswitch_38
    const/4 v7, 0x0

    .line 1779
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1780
    .line 1781
    if-eqz v3, :cond_41

    .line 1782
    .line 1783
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    check-cast v0, Ljava/lang/Integer;

    .line 1788
    .line 1789
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1790
    .line 1791
    .line 1792
    move-result v0

    .line 1793
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    .line 1794
    .line 1795
    .line 1796
    move-result v0

    .line 1797
    if-eqz v0, :cond_41

    .line 1798
    .line 1799
    goto :goto_5

    .line 1800
    :cond_41
    move v14, v7

    .line 1801
    :goto_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1806
    .line 1807
    .line 1808
    goto/16 :goto_9

    .line 1809
    .line 1810
    :pswitch_39
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1811
    .line 1812
    if-eqz v3, :cond_42

    .line 1813
    .line 1814
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v0

    .line 1818
    check-cast v0, Ljava/lang/Integer;

    .line 1819
    .line 1820
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1821
    .line 1822
    .line 1823
    move-result v0

    .line 1824
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1825
    .line 1826
    .line 1827
    :cond_42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1828
    .line 1829
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1830
    .line 1831
    .line 1832
    goto/16 :goto_9

    .line 1833
    .line 1834
    :pswitch_3a
    const/4 v7, 0x0

    .line 1835
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1836
    .line 1837
    if-eqz v0, :cond_43

    .line 1838
    .line 1839
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    .line 1840
    .line 1841
    .line 1842
    move-result v0

    .line 1843
    if-eqz v0, :cond_43

    .line 1844
    .line 1845
    goto :goto_6

    .line 1846
    :cond_43
    move v14, v7

    .line 1847
    :goto_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v0

    .line 1851
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1852
    .line 1853
    .line 1854
    goto/16 :goto_9

    .line 1855
    .line 1856
    :pswitch_3b
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1857
    .line 1858
    if-eqz v0, :cond_44

    .line 1859
    .line 1860
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 1861
    .line 1862
    .line 1863
    :cond_44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1864
    .line 1865
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1866
    .line 1867
    .line 1868
    goto/16 :goto_9

    .line 1869
    .line 1870
    :pswitch_3c
    const/4 v7, 0x0

    .line 1871
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1872
    .line 1873
    if-eqz v0, :cond_45

    .line 1874
    .line 1875
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 1876
    .line 1877
    .line 1878
    move-result v0

    .line 1879
    if-eqz v0, :cond_45

    .line 1880
    .line 1881
    goto :goto_7

    .line 1882
    :cond_45
    move v14, v7

    .line 1883
    :goto_7
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v0

    .line 1887
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1888
    .line 1889
    .line 1890
    goto/16 :goto_9

    .line 1891
    .line 1892
    :pswitch_3d
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1893
    .line 1894
    if-eqz v0, :cond_46

    .line 1895
    .line 1896
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1897
    .line 1898
    .line 1899
    :cond_46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1900
    .line 1901
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1902
    .line 1903
    .line 1904
    goto/16 :goto_9

    .line 1905
    .line 1906
    :pswitch_3e
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1907
    .line 1908
    if-eqz v0, :cond_47

    .line 1909
    .line 1910
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 1911
    .line 1912
    .line 1913
    :cond_47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1914
    .line 1915
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1916
    .line 1917
    .line 1918
    goto/16 :goto_9

    .line 1919
    .line 1920
    :pswitch_3f
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1921
    .line 1922
    if-eqz v3, :cond_48

    .line 1923
    .line 1924
    invoke-virtual {v0, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v3

    .line 1928
    check-cast v3, Ljava/lang/String;

    .line 1929
    .line 1930
    const-string v4, "cssLinkHtmlTagAttributes"

    .line 1931
    .line 1932
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v0

    .line 1936
    check-cast v0, Ljava/util/Map;

    .line 1937
    .line 1938
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1939
    .line 1940
    invoke-virtual {v4, v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectCSSFileFromUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1941
    .line 1942
    .line 1943
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1944
    .line 1945
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1946
    .line 1947
    .line 1948
    goto/16 :goto_9

    .line 1949
    .line 1950
    :pswitch_40
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1951
    .line 1952
    if-eqz v3, :cond_49

    .line 1953
    .line 1954
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v0

    .line 1958
    check-cast v0, Ljava/lang/String;

    .line 1959
    .line 1960
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1961
    .line 1962
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectCSSCode(Ljava/lang/String;)V

    .line 1963
    .line 1964
    .line 1965
    :cond_49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1966
    .line 1967
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1968
    .line 1969
    .line 1970
    goto/16 :goto_9

    .line 1971
    .line 1972
    :pswitch_41
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1973
    .line 1974
    if-eqz v3, :cond_4a

    .line 1975
    .line 1976
    invoke-virtual {v0, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v3

    .line 1980
    check-cast v3, Ljava/lang/String;

    .line 1981
    .line 1982
    const-string v4, "scriptHtmlTagAttributes"

    .line 1983
    .line 1984
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v0

    .line 1988
    check-cast v0, Ljava/util/Map;

    .line 1989
    .line 1990
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 1991
    .line 1992
    invoke-virtual {v4, v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->injectJavascriptFileFromUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1993
    .line 1994
    .line 1995
    :cond_4a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1996
    .line 1997
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1998
    .line 1999
    .line 2000
    goto/16 :goto_9

    .line 2001
    .line 2002
    :pswitch_42
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2003
    .line 2004
    if-eqz v3, :cond_4b

    .line 2005
    .line 2006
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v3

    .line 2010
    check-cast v3, Ljava/lang/String;

    .line 2011
    .line 2012
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v0

    .line 2016
    check-cast v0, Ljava/util/Map;

    .line 2017
    .line 2018
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v0

    .line 2022
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2023
    .line 2024
    new-instance v5, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$1;

    .line 2025
    .line 2026
    invoke-direct {v5, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2027
    .line 2028
    .line 2029
    invoke-virtual {v4, v3, v0, v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/types/ContentWorld;Landroid/webkit/ValueCallback;)V

    .line 2030
    .line 2031
    .line 2032
    goto/16 :goto_9

    .line 2033
    .line 2034
    :cond_4b
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2035
    .line 2036
    .line 2037
    goto/16 :goto_9

    .line 2038
    .line 2039
    :pswitch_43
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2040
    .line 2041
    if-eqz v3, :cond_4c

    .line 2042
    .line 2043
    const-string v3, "assetFilePath"

    .line 2044
    .line 2045
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v0

    .line 2049
    check-cast v0, Ljava/lang/String;

    .line 2050
    .line 2051
    :try_start_3
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2052
    .line 2053
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->loadFile(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2054
    .line 2055
    .line 2056
    goto :goto_8

    .line 2057
    :catch_2
    move-exception v0

    .line 2058
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2059
    .line 2060
    .line 2061
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v0

    .line 2065
    invoke-interface {v2, v12, v0, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2066
    .line 2067
    .line 2068
    return-void

    .line 2069
    :cond_4c
    :goto_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2070
    .line 2071
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2072
    .line 2073
    .line 2074
    goto/16 :goto_9

    .line 2075
    .line 2076
    :pswitch_44
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2077
    .line 2078
    if-eqz v3, :cond_4d

    .line 2079
    .line 2080
    const-string v3, "data"

    .line 2081
    .line 2082
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v3

    .line 2086
    move-object v6, v3

    .line 2087
    check-cast v6, Ljava/lang/String;

    .line 2088
    .line 2089
    const-string v3, "mimeType"

    .line 2090
    .line 2091
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v3

    .line 2095
    move-object v7, v3

    .line 2096
    check-cast v7, Ljava/lang/String;

    .line 2097
    .line 2098
    const-string v3, "encoding"

    .line 2099
    .line 2100
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v3

    .line 2104
    move-object v8, v3

    .line 2105
    check-cast v8, Ljava/lang/String;

    .line 2106
    .line 2107
    const-string v3, "baseUrl"

    .line 2108
    .line 2109
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v3

    .line 2113
    move-object v5, v3

    .line 2114
    check-cast v5, Ljava/lang/String;

    .line 2115
    .line 2116
    const-string v3, "historyUrl"

    .line 2117
    .line 2118
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    move-object v9, v0

    .line 2123
    check-cast v9, Ljava/lang/String;

    .line 2124
    .line 2125
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2126
    .line 2127
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    .line 2129
    .line 2130
    :cond_4d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2131
    .line 2132
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2133
    .line 2134
    .line 2135
    goto :goto_9

    .line 2136
    :pswitch_45
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2137
    .line 2138
    if-eqz v3, :cond_4e

    .line 2139
    .line 2140
    const-string v3, "url"

    .line 2141
    .line 2142
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v3

    .line 2146
    check-cast v3, Ljava/lang/String;

    .line 2147
    .line 2148
    const-string v4, "postData"

    .line 2149
    .line 2150
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v0

    .line 2154
    check-cast v0, [B

    .line 2155
    .line 2156
    iget-object v4, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2157
    .line 2158
    invoke-virtual {v4, v3, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 2159
    .line 2160
    .line 2161
    :cond_4e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2162
    .line 2163
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2164
    .line 2165
    .line 2166
    goto :goto_9

    .line 2167
    :pswitch_46
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2168
    .line 2169
    if-eqz v3, :cond_4f

    .line 2170
    .line 2171
    const-string v3, "urlRequest"

    .line 2172
    .line 2173
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v0

    .line 2177
    check-cast v0, Ljava/util/Map;

    .line 2178
    .line 2179
    iget-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2180
    .line 2181
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v0

    .line 2185
    invoke-virtual {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->loadUrl(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLRequest;)V

    .line 2186
    .line 2187
    .line 2188
    :cond_4f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2189
    .line 2190
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2191
    .line 2192
    .line 2193
    goto :goto_9

    .line 2194
    :pswitch_47
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2195
    .line 2196
    if-eqz v0, :cond_50

    .line 2197
    .line 2198
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 2199
    .line 2200
    .line 2201
    move-result v0

    .line 2202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v15

    .line 2206
    :cond_50
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2207
    .line 2208
    .line 2209
    goto :goto_9

    .line 2210
    :pswitch_48
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2211
    .line 2212
    if-eqz v0, :cond_51

    .line 2213
    .line 2214
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v15

    .line 2218
    :cond_51
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2219
    .line 2220
    .line 2221
    goto :goto_9

    .line 2222
    :pswitch_49
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    .line 2223
    .line 2224
    if-eqz v0, :cond_52

    .line 2225
    .line 2226
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v15

    .line 2230
    :cond_52
    invoke-interface {v2, v15}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2231
    .line 2232
    .line 2233
    :cond_53
    :goto_9
    return-void

    .line 2234
    :catch_3
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 2235
    .line 2236
    .line 2237
    return-void

    .line 2238
    nop

    .line 2239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOverScrolled(IIZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "x"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "y"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "clampedX"

    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p1, "clampedY"

    .line 41
    .line 42
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string p1, "onOverScrolled"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onPageCommitVisible(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "onPageCommitVisible"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onPermissionRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PermissionRequestCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PermissionRequestCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p4, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "origin"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "resources"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "frame"

    .line 28
    .line 29
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p1, "onPermissionRequest"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1, p4}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onPermissionRequestCanceled(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "origin"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "resources"

    .line 19
    .line 20
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p1, "onPermissionRequestCanceled"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onPrintRequest(Ljava/lang/String;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PrintRequestCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "printJobId"

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onPrintRequest"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "progress"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "onProgressChanged"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onReceivedClientCertRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertChallenge;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedClientCertRequestCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "onReceivedClientCertRequest"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertChallenge;->toMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceivedError(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceErrorExt;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "request"

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "error"

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceErrorExt;->toMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onReceivedError"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedHttpAuthRequestCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "onReceivedHttpAuthRequest"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->toMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceivedHttpError(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "request"

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "errorResponse"

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->toMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onReceivedHttpError"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onReceivedIcon([B)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "icon"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "onReceivedIcon"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "realm"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "account"

    .line 19
    .line 20
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p1, "args"

    .line 24
    .line 25
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p1, "onReceivedLoginRequest"

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onReceivedServerTrustAuthRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/ServerTrustChallenge;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ReceivedServerTrustAuthRequestCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "onReceivedServerTrustAuthRequest"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->toMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "precomposed"

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onReceivedTouchIconUrl"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onRenderProcessGone(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "didCrash"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "rendererPriorityAtExit"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onRenderProcessGone"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onRenderProcessResponsive(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$RenderProcessResponsiveCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "onRenderProcessResponsive"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRenderProcessUnresponsive(Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$RenderProcessUnresponsiveCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "onRenderProcessUnresponsive"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRequestFocus()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onRequestFocus"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onSafeBrowsingHit(Ljava/lang/String;ILcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SafeBrowsingHitCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "url"

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "threatType"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onSafeBrowsingHit"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onScrollChanged(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "x"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "y"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onScrollChanged"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "title"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "onTitleChanged"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "isReload"

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "onUpdateVisitedHistory"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onZoomScaleChanged(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "oldScale"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "newScale"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p1, "onZoomScaleChanged"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public shouldInterceptRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncShouldInterceptRequestCallback;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$SyncShouldInterceptRequestCallback;-><init>()V

    const-string v2, "shouldInterceptRequest"

    .line 6
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v2, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->invokeMethodAndWaitResult(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/types/SyncBaseCallbackResultImpl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ShouldInterceptRequestCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "shouldInterceptRequest"

    .line 3
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceRequestExt;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/pichillilorenzo/flutter_inappwebview_android/types/NavigationAction;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$ShouldOverrideUrlLoadingCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ChannelDelegateImpl;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/BaseCallbackResultImpl;->defaultBehaviour(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "shouldOverrideUrlLoading"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/NavigationAction;->toMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
