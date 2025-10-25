.class Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PrintRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

.field final synthetic val$printJobId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->val$printJobId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/WebViewChannelDelegate$PrintRequestCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public defaultBehaviour(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;->access$000(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;->access$000(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    move-result-object p1

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;->access$000(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    move-result-object p1

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;->access$000(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface;)Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;

    move-result-object p1

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->val$printJobId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->disposeNoCancel()V

    :cond_0
    return-void
.end method

.method public bridge synthetic defaultBehaviour(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->defaultBehaviour(Ljava/lang/Boolean;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, ", "

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, ""

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "JSBridgeInterface"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->defaultBehaviour(Ljava/lang/Boolean;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public nonNullSuccess(Ljava/lang/Boolean;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic nonNullSuccess(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/JavaScriptBridgeInterface$2$1;->nonNullSuccess(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
