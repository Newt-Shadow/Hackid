.class Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;
.super Lo1/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;->setWebMessageCallbackForInAppWebView(ILio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

.field final synthetic val$index:I

.field final synthetic val$webMessageChannel:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;->val$webMessageChannel:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 4
    .line 5
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;->val$index:I

    .line 6
    .line 7
    invoke-direct {p0}, Lo1/n$a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onMessage(Lo1/n;Lo1/m;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lo1/n$a;->onMessage(Lo1/n;Lo1/m;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;->val$webMessageChannel:Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;

    .line 5
    .line 6
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel$2;->val$index:I

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;->fromMapWebMessageCompat(Lo1/m;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/web_message/WebMessageChannel;->onMessage(ILcom/pichillilorenzo/flutter_inappwebview_android/types/WebMessageCompatExt;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
