.class public abstract synthetic Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/InAppWebView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result p0

    return p0
.end method
