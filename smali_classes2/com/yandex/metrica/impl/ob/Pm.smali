.class public Lcom/yandex/metrica/impl/ob/Pm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Om;

.field private volatile b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile e:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

.field private volatile f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile g:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile h:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile i:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile j:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Om;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Om;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Pm;-><init>(Lcom/yandex/metrica/impl/ob/Om;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Om;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->h:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->h:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    const-string v1, "YMM-DE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->h:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 8
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->h:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "YMM-HMSR"

    .line 12
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/Mm;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->e:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->e:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    const-string v1, "YMM-UH-1"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->e:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 8
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->e:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "YMM-IB"

    .line 12
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/Mm;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-MC"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-CTH"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public e()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-MSTE"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public f()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->i:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->i:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-RTM"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->i:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->i:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public g()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->g:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->g:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-SIO"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->g:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->g:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public h()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-TP"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public i()Ljava/util/concurrent/Executor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->j:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->j:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->a:Lcom/yandex/metrica/impl/ob/Om;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/yandex/metrica/impl/ob/Nm;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/Nm;-><init>(Lcom/yandex/metrica/impl/ob/Om;Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/Pm;->j:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pm;->j:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    return-object v0
.end method
