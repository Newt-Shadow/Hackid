.class public abstract Lio/appmetrica/analytics/impl/D5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/cj;


# instance fields
.field public a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

.field public final b:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;

.field public c:Lio/appmetrica/analytics/impl/a6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader<",
            "Ljava/lang/Object;",
            "Lio/appmetrica/analytics/impl/a6;",
            ">;",
            "Lio/appmetrica/analytics/impl/Ql;",
            "Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D5;->b:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;

    .line 5
    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/dj;->a(Lio/appmetrica/analytics/impl/cj;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lio/appmetrica/analytics/impl/a6;

    .line 18
    .line 19
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p1, p2, v0, v1, p3}, Lio/appmetrica/analytics/impl/a6;-><init>(Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/a6;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->b:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;->load(Ljava/lang/Object;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 22
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 4

    monitor-enter p0

    .line 12
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    .line 13
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 14
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    move-result-object v1

    .line 15
    sget-object v2, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 16
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/za;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->b()Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lio/appmetrica/analytics/impl/a6;-><init>(Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/a6;)V

    .line 19
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/a6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/a6;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    iget-object v0, v0, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;->compareWithOtherArguments(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    .line 4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->c()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v1

    .line 5
    sget-object v2, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 6
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    move-result-object v2

    .line 7
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 8
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    iget-object v4, v4, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v4, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    .line 9
    invoke-interface {v4, p1}, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;->mergeFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    invoke-direct {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/a6;-><init>(Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/a6;)V

    .line 11
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 3
    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/impl/Ql;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 3
    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method
