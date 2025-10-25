.class public Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/types/Disposable;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "FindInteractionController"

.field public static final METHOD_CHANNEL_NAME_PREFIX:Ljava/lang/String; = "com.pichillilorenzo/flutter_inappwebview_find_interaction_"


# instance fields
.field public activeFindSession:Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

.field public channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;

.field public searchText:Ljava/lang/String;

.field public settings:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionSettings;

.field public webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;Ljava/lang/Object;Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->settings:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionSettings;

    .line 7
    .line 8
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 11
    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "com.pichillilorenzo/flutter_inappwebview_find_interaction_"

    .line 18
    .line 19
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;Lio/flutter/plugin/common/MethodChannel;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public clearMatches()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;->clearMatches()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionChannelDelegate;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->activeFindSession:Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->searchText:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public findAll(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->searchText:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->searchText:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;->findAllAsync(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/find_interaction/FindInteractionController;->webView:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/InAppWebViewInterface;->findNext(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method
