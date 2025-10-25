.class public final Lio/sentry/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/b7;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Ljava/util/Timer;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Z

.field private final g:Lio/sentry/s5;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:J


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lio/sentry/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    iput-wide v2, p0, Lio/sentry/m;->i:J

    .line 32
    .line 33
    const-string v0, "The options object is required."

    .line 34
    .line 35
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lio/sentry/s5;

    .line 40
    .line 41
    iput-object v0, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lio/sentry/m;->d:Ljava/util/List;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {p1}, Lio/sentry/s5;->getPerformanceCollectors()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lio/sentry/r0;

    .line 76
    .line 77
    instance-of v2, v0, Lio/sentry/t0;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    iget-object v2, p0, Lio/sentry/m;->d:Ljava/util/List;

    .line 82
    .line 83
    move-object v3, v0

    .line 84
    check-cast v3, Lio/sentry/t0;

    .line 85
    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    instance-of v2, v0, Lio/sentry/s0;

    .line 90
    .line 91
    if-eqz v2, :cond_0

    .line 92
    .line 93
    iget-object v2, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 94
    .line 95
    check-cast v0, Lio/sentry/s0;

    .line 96
    .line 97
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lio/sentry/m;->d:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    :cond_3
    iput-boolean v1, p0, Lio/sentry/m;->f:Z

    .line 119
    .line 120
    return-void
.end method

.method public static synthetic e(Lio/sentry/m;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/m;->j(Lio/sentry/a1;)V

    return-void
.end method

.method static synthetic f(Lio/sentry/m;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/m;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/sentry/m;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/m;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lio/sentry/m;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/m;->i:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic i(Lio/sentry/m;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic j(Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/m;->c(Lio/sentry/a1;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/z0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/sentry/s0;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/sentry/s0;->a(Lio/sentry/z0;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public b(Lio/sentry/z0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/sentry/s0;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/sentry/s0;->b(Lio/sentry/z0;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public c(Lio/sentry/a1;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 8
    .line 9
    invoke-interface {p1}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "stop collecting performance info for transactions %s (%s)"

    .line 30
    .line 31
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {p1}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    iget-object v1, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lio/sentry/s0;

    .line 67
    .line 68
    invoke-interface {v2, p1}, Lio/sentry/s0;->a(Lio/sentry/z0;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lio/sentry/m;->close()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-object v0
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 8
    .line 9
    const-string v2, "stop collecting all performance info for transactions"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lio/sentry/s0;

    .line 39
    .line 40
    invoke-interface {v1}, Lio/sentry/s0;->clear()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/sentry/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 66
    .line 67
    :cond_1
    monitor-exit v0

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw v1

    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method public d(Lio/sentry/a1;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lio/sentry/m;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 12
    .line 13
    const-string v1, "No collector found. Performance stats will not be captured during transactions."

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lio/sentry/m;->e:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lio/sentry/s0;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lio/sentry/s0;->b(Lio/sentry/z0;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p1}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lio/sentry/m;->c:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-object v0, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 79
    .line 80
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lio/sentry/l;

    .line 85
    .line 86
    invoke-direct {v1, p0, p1}, Lio/sentry/l;-><init>(Lio/sentry/m;Lio/sentry/a1;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v2, 0x7530

    .line 90
    .line 91
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/x0;->c(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception p1

    .line 96
    iget-object v0, p0, Lio/sentry/m;->g:Lio/sentry/s5;

    .line 97
    .line 98
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 103
    .line 104
    const-string v2, "Failed to call the executor. Performance collector will not be automatically finished. Did you call Sentry.close()?"

    .line 105
    .line 106
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/sentry/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lio/sentry/m;->a:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter p1

    .line 121
    :try_start_1
    iget-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    new-instance v1, Ljava/util/Timer;

    .line 126
    .line 127
    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 131
    .line 132
    :cond_3
    iget-object v0, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 133
    .line 134
    new-instance v1, Lio/sentry/m$a;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lio/sentry/m$a;-><init>(Lio/sentry/m;)V

    .line 137
    .line 138
    .line 139
    const-wide/16 v2, 0x0

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Lio/sentry/m$b;

    .line 145
    .line 146
    invoke-direct {v5, p0}, Lio/sentry/m$b;-><init>(Lio/sentry/m;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lio/sentry/m;->b:Ljava/util/Timer;

    .line 150
    .line 151
    const-wide/16 v6, 0x64

    .line 152
    .line 153
    const-wide/16 v8, 0x64

    .line 154
    .line 155
    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 156
    .line 157
    .line 158
    monitor-exit p1

    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw v0

    .line 163
    :cond_4
    :goto_2
    return-void
.end method
