.class public abstract synthetic Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRendererRequestedPriority()I

    move-result p0

    return p0
.end method
