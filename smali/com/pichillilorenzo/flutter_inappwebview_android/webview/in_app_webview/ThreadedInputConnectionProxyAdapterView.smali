.class final Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private cachedConnection:Landroid/view/inputmethod/InputConnection;

.field final containerView:Landroid/view/View;

.field final imeHandler:Landroid/os/Handler;

.field private isLocked:Z

.field final rootView:Landroid/view/View;

.field final targetView:Landroid/view/View;

.field private triggerDelayed:Z

.field final windowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->triggerDelayed:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->isLocked:Z

    .line 13
    .line 14
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->imeHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->containerView:Landroid/view/View;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->targetView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->windowToken:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->rootView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->imeHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->rootView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->windowToken:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isTriggerDelayed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->triggerDelayed:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->triggerDelayed:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->isLocked:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->cachedConnection:Landroid/view/inputmethod/InputConnection;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->targetView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->triggerDelayed:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->cachedConnection:Landroid/view/inputmethod/InputConnection;

    .line 21
    .line 22
    return-object p1
.end method

.method setLocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/webview/in_app_webview/ThreadedInputConnectionProxyAdapterView;->isLocked:Z

    .line 2
    .line 3
    return-void
.end method
