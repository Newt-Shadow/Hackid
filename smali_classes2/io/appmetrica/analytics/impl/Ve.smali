.class public abstract Lio/appmetrica/analytics/impl/Ve;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "Ve"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ta;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ta;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ve;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 1

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Ta;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "F)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Ta;

    .line 3
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Ve;->a(Ljava/lang/String;[Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ve;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ve;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 7
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 p2, 0x0

    .line 9
    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ta;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p2, p1}, Lio/appmetrica/analytics/impl/Ta;->a(ILjava/lang/String;)Lio/appmetrica/analytics/impl/Ta;

    .line 11
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Ta;

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ta;

    .line 3
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Ta;

    .line 15
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ta;->b()V

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ta;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Lio/appmetrica/analytics/impl/We;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/We;

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ve;->b:Ljava/lang/String;

    .line 3
    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/We;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ta;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/Ve;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ve;->a:Lio/appmetrica/analytics/impl/Ta;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ta;->remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ta;

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object p0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method
