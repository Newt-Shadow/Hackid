.class public final Lio/appmetrica/analytics/impl/wb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/h2;

.field public final b:Lio/appmetrica/analytics/impl/y6;

.field public c:Lio/appmetrica/analytics/impl/fn;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/h2;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/h2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/wb;->a:Lio/appmetrica/analytics/impl/h2;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/y6;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/wb;->b:Lio/appmetrica/analytics/impl/y6;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wb;->b:Lio/appmetrica/analytics/impl/y6;

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/y6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/wb;->d:Z

    .line 11
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/wb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/wb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wb;->b:Lio/appmetrica/analytics/impl/y6;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/appmetrica/analytics/impl/Ra;

    .line 3
    iget-object v3, p0, Lio/appmetrica/analytics/impl/wb;->a:Lio/appmetrica/analytics/impl/h2;

    invoke-virtual {v3, p1, p2, p3}, Lio/appmetrica/analytics/impl/h2;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)Lio/appmetrica/analytics/impl/Ra;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    .line 4
    iget-object p1, v0, Lio/appmetrica/analytics/impl/y6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-static {p1, v2}, Lyc/m;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/wb;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/wb;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wb;->b:Lio/appmetrica/analytics/impl/y6;

    .line 9
    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->i:Lio/appmetrica/analytics/impl/Tm;

    .line 15
    .line 16
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Tm;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    .line 22
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lio/appmetrica/analytics/impl/y6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/wb;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/ClassCastException;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wb;->c:Lio/appmetrica/analytics/impl/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Lio/appmetrica/analytics/impl/fn;

    .line 9
    .line 10
    new-instance v1, Lio/appmetrica/analytics/impl/Q1;

    .line 11
    .line 12
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wb;->b:Lio/appmetrica/analytics/impl/y6;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Q1;-><init>(Lio/appmetrica/analytics/impl/y6;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/fn;-><init>(Lio/appmetrica/analytics/impl/Q1;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lio/appmetrica/analytics/impl/wb;->c:Lio/appmetrica/analytics/impl/fn;

    .line 21
    .line 22
    new-instance v0, Lio/appmetrica/analytics/impl/en;

    .line 23
    .line 24
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/en;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lio/appmetrica/analytics/impl/en;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Lio/appmetrica/analytics/impl/en;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    .line 50
    throw v0
.end method
