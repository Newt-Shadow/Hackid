.class public abstract Lcom/google/firebase/messaging/i;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final MESSAGE_TIMEOUT_S:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "EnhancedIntentService"


# instance fields
.field private binder:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/o;->d()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/firebase/messaging/i;->executor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/firebase/messaging/i;->lock:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/firebase/messaging/i;->runningTasks:I

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/i;Landroid/content/Intent;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/i;->d(Landroid/content/Intent;Lm6/Task;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/i;Landroid/content/Intent;)Lm6/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/i;->f(Landroid/content/Intent;)Lm6/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/i;Landroid/content/Intent;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/i;->e(Landroid/content/Intent;Lm6/l;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/k1;->c(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/i;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget v0, p0, Lcom/google/firebase/messaging/i;->runningTasks:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/google/firebase/messaging/i;->runningTasks:I

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/google/firebase/messaging/i;->lastStartId:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/i;->stopSelfResultHook(I)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0
.end method

.method private synthetic d(Landroid/content/Intent;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/i;->c(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e(Landroid/content/Intent;Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/i;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p2, v0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method private f(Landroid/content/Intent;)Lm6/Task;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/i;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Lm6/l;

    .line 14
    .line 15
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/firebase/messaging/i;->executor:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v2, Lcom/google/firebase/messaging/g;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/messaging/g;-><init>(Lcom/google/firebase/messaging/i;Landroid/content/Intent;Lm6/l;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method


# virtual methods
.method protected abstract getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p1, "EnhancedIntentService"

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "EnhancedIntentService"

    .line 12
    .line 13
    const-string v0, "Service received bind request"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/i;->binder:Landroid/os/Binder;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/google/firebase/messaging/m1;

    .line 23
    .line 24
    new-instance v0, Lcom/google/firebase/messaging/i$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/i$a;-><init>(Lcom/google/firebase/messaging/i;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/m1;-><init>(Lcom/google/firebase/messaging/m1$a;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/firebase/messaging/i;->binder:Landroid/os/Binder;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/i;->binder:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/i;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/firebase/messaging/i;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iput p3, p0, Lcom/google/firebase/messaging/i;->lastStartId:I

    .line 5
    .line 6
    iget p3, p0, Lcom/google/firebase/messaging/i;->runningTasks:I

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0x1

    .line 9
    .line 10
    iput p3, p0, Lcom/google/firebase/messaging/i;->runningTasks:I

    .line 11
    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/i;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/i;->c(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return p3

    .line 24
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/i;->f(Landroid/content/Intent;)Lm6/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lm6/Task;->o()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/i;->c(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return p3

    .line 38
    :cond_1
    new-instance p3, Landroidx/privacysandbox/ads/adservices/measurement/j;

    .line 39
    .line 40
    invoke-direct {p3}, Landroidx/privacysandbox/ads/adservices/measurement/j;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/google/firebase/messaging/h;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/messaging/h;-><init>(Lcom/google/firebase/messaging/i;Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3, v0}, Lm6/Task;->b(Ljava/util/concurrent/Executor;Lm6/f;)Lm6/Task;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    return p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method stopSelfResultHook(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
