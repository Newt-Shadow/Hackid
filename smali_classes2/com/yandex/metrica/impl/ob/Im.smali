.class public Lcom/yandex/metrica/impl/ob/Im;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Hm;

.field private volatile b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

.field private volatile c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private volatile e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hm;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Hm;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Im;-><init>(Lcom/yandex/metrica/impl/ob/Hm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Hm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Im;->a:Lcom/yandex/metrica/impl/ob/Hm;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->a:Lcom/yandex/metrica/impl/ob/Hm;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-APT"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->a:Lcom/yandex/metrica/impl/ob/Hm;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-YM"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 30
    .line 31
    return-object v0
.end method

.method public c()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->e:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->e:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->a:Lcom/yandex/metrica/impl/ob/Hm;

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
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->e:Landroid/os/Handler;

    .line 25
    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->e:Landroid/os/Handler;

    .line 32
    .line 33
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->a:Lcom/yandex/metrica/impl/ob/Hm;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jm;

    .line 16
    .line 17
    const-string v1, "YMM-RS"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Im;->d:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 30
    .line 31
    return-object v0
.end method
