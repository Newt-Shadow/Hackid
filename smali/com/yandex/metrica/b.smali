.class public Lcom/yandex/metrica/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/b$b;,
        Lcom/yandex/metrica/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final b:Ljava/util/Set;

.field private c:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->d()Lcom/yandex/metrica/impl/ob/Im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Im;->b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/b;-><init>(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    return-void
.end method

.method constructor <init>(JLcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/b;->b:Ljava/util/Set;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/yandex/metrica/b;->c:Z

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/b;->a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/b;->c:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/b;->b:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/yandex/metrica/b$b;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/b$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/b$a;J)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v6, Lcom/yandex/metrica/b$b;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/yandex/metrica/b;->a:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-wide v4, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/b$b;-><init>(Lcom/yandex/metrica/b;Lcom/yandex/metrica/b$a;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;J)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/yandex/metrica/b;->b:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit p0

    .line 24
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/b;->c:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/b;->b:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/yandex/metrica/b$b;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/b$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method
