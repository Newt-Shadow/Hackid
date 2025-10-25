.class public abstract Lio/appmetrica/analytics/impl/Y7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final c:Lio/appmetrica/analytics/impl/a8;

.field public final d:Lio/appmetrica/analytics/impl/Hn;

.field public final e:Lio/appmetrica/analytics/impl/um;

.field public final f:Lio/appmetrica/analytics/impl/Ti;

.field public final g:Lio/appmetrica/analytics/impl/Ri;

.field public final h:Lio/appmetrica/analytics/impl/K6;

.field public i:Lio/appmetrica/analytics/impl/Z7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/a8;Lio/appmetrica/analytics/impl/Hn;Lio/appmetrica/analytics/impl/um;Lio/appmetrica/analytics/impl/Ti;Lio/appmetrica/analytics/impl/Ri;Lio/appmetrica/analytics/impl/K6;Lio/appmetrica/analytics/impl/Z7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y7;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Y7;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Y7;->c:Lio/appmetrica/analytics/impl/a8;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Y7;->d:Lio/appmetrica/analytics/impl/Hn;

    .line 11
    .line 12
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Y7;->e:Lio/appmetrica/analytics/impl/um;

    .line 13
    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Y7;->f:Lio/appmetrica/analytics/impl/Ti;

    .line 15
    .line 16
    iput-object p7, p0, Lio/appmetrica/analytics/impl/Y7;->g:Lio/appmetrica/analytics/impl/Ri;

    .line 17
    .line 18
    iput-object p8, p0, Lio/appmetrica/analytics/impl/Y7;->h:Lio/appmetrica/analytics/impl/K6;

    .line 19
    .line 20
    iput-object p9, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/Z7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Z7;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/c8;)Lio/appmetrica/analytics/impl/c8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/c8;",
            ")",
            "Lio/appmetrica/analytics/impl/c8;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->h:Lio/appmetrica/analytics/impl/K6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y7;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/K6;->a(Landroid/content/Context;)V

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Y7;->b(Lio/appmetrica/analytics/impl/c8;)Z

    .line 4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y7;->c()Lio/appmetrica/analytics/impl/c8;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/c8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/c8;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->h:Lio/appmetrica/analytics/impl/K6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y7;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/K6;->a(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y7;->c()Lio/appmetrica/analytics/impl/c8;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/c8;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/c8;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/c8;->a()Lio/appmetrica/analytics/impl/b8;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/b8;->b:Lio/appmetrica/analytics/impl/b8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Z7;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    .line 3
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->d:Lio/appmetrica/analytics/impl/Hn;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Z7;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Z7;->a()Ljava/util/List;

    move-result-object v0

    .line 5
    :cond_3
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Y7;->c:Lio/appmetrica/analytics/impl/a8;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    invoke-interface {v5}, Lio/appmetrica/analytics/impl/Z7;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lio/appmetrica/analytics/impl/a8;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_1

    .line 6
    :cond_4
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Z7;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/c8;

    move v4, v2

    :goto_1
    if-nez v4, :cond_5

    if-eqz v3, :cond_6

    .line 7
    :cond_5
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    .line 8
    iget-object v5, p0, Lio/appmetrica/analytics/impl/Y7;->e:Lio/appmetrica/analytics/impl/um;

    invoke-interface {v5, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Z7;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    aput-object v0, p1, v1

    const-string v0, "Update distribution data: %s -> %s"

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/ej;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/impl/c8;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->g:Lio/appmetrica/analytics/impl/Ri;

    .line 3
    .line 4
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ri;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->f:Lio/appmetrica/analytics/impl/Ti;

    .line 11
    .line 12
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lio/appmetrica/analytics/impl/c8;

    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y7;->g:Lio/appmetrica/analytics/impl/Ri;

    .line 19
    .line 20
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Ri;->b()V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Y7;->b(Lio/appmetrica/analytics/impl/c8;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y7;->i:Lio/appmetrica/analytics/impl/Z7;

    .line 29
    .line 30
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Z7;->b()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lio/appmetrica/analytics/impl/c8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method
