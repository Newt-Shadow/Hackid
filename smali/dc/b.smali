.class public Ldc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/b$b;,
        Ldc/b$d;,
        Ldc/b$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ldc/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldc/b;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;)Ldc/b$d;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ldc/b$d;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, Ldc/b$d;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;Ldc/b$a;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Ldc/b;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Runnable;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ljava/lang/String;)Ldc/b$d;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ldc/a$b;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Ldc/a$b;-><init>(Ljava/lang/Runnable;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ldc/b$b;

    .line 8
    .line 9
    iget-object v1, p0, Ldc/b;->b:Ldc/e;

    .line 10
    .line 11
    invoke-direct {p1, v1, p3}, Ldc/b$b;-><init>(Ldc/e;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, v0, p1}, Ldc/b;->a(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ldc/a$b;Ldc/b$b;)Ldc/b$d;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public c(Ldc/e;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Ldc/b;->b:Ldc/e;

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v1, p0, Ldc/b;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ldc/b$d;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ldc/b$d;->c(Ldc/e;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method
