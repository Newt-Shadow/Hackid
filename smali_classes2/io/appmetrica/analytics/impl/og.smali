.class public final Lio/appmetrica/analytics/impl/og;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ig;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public b:Z

.field public c:Lio/appmetrica/analytics/impl/lg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->t()Lio/appmetrica/analytics/impl/jg;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/og;-><init>(Lio/appmetrica/analytics/impl/jg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/jg;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/il;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/il;-><init>(Lio/appmetrica/analytics/impl/ig;)V

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/jg;->a(Lio/appmetrica/analytics/impl/ng;)V

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/jg;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/bg;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/og;->b:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/og;->c:Lio/appmetrica/analytics/impl/lg;

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/bg;->a(Lio/appmetrica/analytics/impl/lg;)V

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
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

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/lg;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/lg;->d:Lio/appmetrica/analytics/impl/kg;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/kg;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lio/appmetrica/analytics/impl/lg;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Received referrer from source %s: %s"

    invoke-virtual {v1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/og;->c:Lio/appmetrica/analytics/impl/lg;

    .line 3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/og;->b:Z

    .line 4
    iget-object p1, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/bg;

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/og;->c:Lio/appmetrica/analytics/impl/lg;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/bg;->a(Lio/appmetrica/analytics/impl/lg;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/og;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
