.class public Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnection;
.super Landroidx/browser/customtabs/e;
.source "SourceFile"


# instance fields
.field private mConnectionCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;->onServiceConnected(Landroidx/browser/customtabs/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/chrome_custom_tabs/ServiceConnectionCallback;->onServiceDisconnected()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
