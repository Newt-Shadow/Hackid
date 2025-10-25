.class public Llc/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Llc/a;

.field private c:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private final d:Landroid/os/Handler;

.field private e:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llc/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Llc/d;->d:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Llc/d;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Llc/d;->b:Llc/a;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Llc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llc/d;->e()V

    return-void
.end method

.method public static synthetic b(Llc/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llc/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Llc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llc/d;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Llc/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llc/d;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Llc/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    iget-object v1, p0, Llc/d;->b:Llc/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Llc/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llc/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Llc/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llc/b;-><init>(Llc/d;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Llc/d;->d:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Llc/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Llc/c;-><init>(Llc/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Llc/d;->d:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Llc/d;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Llc/d;->b:Llc/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Llc/a;->a()Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Llc/d;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Llc/d;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p2, p0, Llc/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    new-instance p1, Llc/d$a;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Llc/d$a;-><init>(Llc/d;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Llc/d;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 9
    .line 10
    iget-object p1, p0, Llc/d;->b:Llc/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Llc/a;->a()Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Llc/d;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Llc/d;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Llc/d;->b:Llc/a;

    .line 6
    .line 7
    invoke-virtual {p2}, Llc/a;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
