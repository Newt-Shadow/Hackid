.class public final Lio/appmetrica/analytics/impl/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ck;

.field public volatile b:Lio/appmetrica/analytics/impl/L9;

.field public volatile c:Lio/appmetrica/analytics/impl/L9;

.field public volatile d:Lio/appmetrica/analytics/impl/L9;

.field public volatile e:Lio/appmetrica/analytics/impl/L9;

.field public volatile f:Lio/appmetrica/analytics/impl/L9;

.field public volatile g:Lio/appmetrica/analytics/impl/L9;

.field public volatile h:Lio/appmetrica/analytics/impl/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ck;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ck;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/dk;-><init>(Lio/appmetrica/analytics/impl/ck;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ck;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->g:Lio/appmetrica/analytics/impl/L9;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->g:Lio/appmetrica/analytics/impl/L9;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/appmetrica/analytics/impl/L9;

    .line 16
    .line 17
    const-string v1, "IAA-SDE"

    .line 18
    .line 19
    invoke-static {v1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ob;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ob;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dk;->g:Lio/appmetrica/analytics/impl/L9;

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->g:Lio/appmetrica/analytics/impl/L9;

    .line 47
    .line 48
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->b:Lio/appmetrica/analytics/impl/L9;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->b:Lio/appmetrica/analytics/impl/L9;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/appmetrica/analytics/impl/L9;

    .line 16
    .line 17
    const-string v1, "IAA-SC"

    .line 18
    .line 19
    invoke-static {v1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ob;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ob;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dk;->b:Lio/appmetrica/analytics/impl/L9;

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->b:Lio/appmetrica/analytics/impl/L9;

    .line 47
    .line 48
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->d:Lio/appmetrica/analytics/impl/L9;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->d:Lio/appmetrica/analytics/impl/L9;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/appmetrica/analytics/impl/L9;

    .line 16
    .line 17
    const-string v1, "IAA-SMH-1"

    .line 18
    .line 19
    invoke-static {v1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ob;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ob;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dk;->d:Lio/appmetrica/analytics/impl/L9;

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->d:Lio/appmetrica/analytics/impl/L9;

    .line 47
    .line 48
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->e:Lio/appmetrica/analytics/impl/L9;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->e:Lio/appmetrica/analytics/impl/L9;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/appmetrica/analytics/impl/L9;

    .line 16
    .line 17
    const-string v1, "IAA-SNTPE"

    .line 18
    .line 19
    invoke-static {v1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ob;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ob;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dk;->e:Lio/appmetrica/analytics/impl/L9;

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->e:Lio/appmetrica/analytics/impl/L9;

    .line 47
    .line 48
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->c:Lio/appmetrica/analytics/impl/L9;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->c:Lio/appmetrica/analytics/impl/L9;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/appmetrica/analytics/impl/L9;

    .line 16
    .line 17
    const-string v1, "IAA-STE"

    .line 18
    .line 19
    invoke-static {v1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ob;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ob;Landroid/os/Looper;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dk;->c:Lio/appmetrica/analytics/impl/L9;

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->c:Lio/appmetrica/analytics/impl/L9;

    .line 47
    .line 48
    return-object v0
.end method

.method public final f()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->h:Lio/appmetrica/analytics/impl/bk;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->h:Lio/appmetrica/analytics/impl/bk;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->a:Lio/appmetrica/analytics/impl/ck;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lio/appmetrica/analytics/impl/bk;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/bk;-><init>(Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lio/appmetrica/analytics/impl/dk;->h:Lio/appmetrica/analytics/impl/bk;

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
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dk;->h:Lio/appmetrica/analytics/impl/bk;

    .line 37
    .line 38
    return-object v0
.end method
