.class public abstract Lio/sentry/android/core/EnvelopeFileObserverIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;
    }
.end annotation


# instance fields
.field private a:Lio/sentry/android/core/d1;

.field private b:Lio/sentry/ILogger;

.field private c:Z

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->c:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->d:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/EnvelopeFileObserverIntegration;Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->e(Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lio/sentry/android/core/EnvelopeFileObserverIntegration;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;-><init>(Lio/sentry/android/core/EnvelopeFileObserverIntegration$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private synthetic e(Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->g(Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method private g(Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lio/sentry/q2;

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/sentry/s5;->getEnvelopeReader()Lio/sentry/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p2}, Lio/sentry/s5;->getFlushTimeoutMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual {p2}, Lio/sentry/s5;->getMaxQueueSize()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    move-object v0, v8

    .line 24
    move-object v1, p1

    .line 25
    invoke-direct/range {v0 .. v7}, Lio/sentry/q2;-><init>(Lio/sentry/o0;Lio/sentry/m0;Lio/sentry/y0;Lio/sentry/ILogger;JI)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lio/sentry/android/core/d1;

    .line 29
    .line 30
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p2}, Lio/sentry/s5;->getFlushTimeoutMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    move-object v0, p1

    .line 39
    move-object v1, p3

    .line 40
    move-object v2, v8

    .line 41
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/d1;-><init>(Ljava/lang/String;Lio/sentry/n0;Lio/sentry/ILogger;J)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->a:Lio/sentry/android/core/d1;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 54
    .line 55
    const-string v0, "EnvelopeFileObserverIntegration installed."

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {p1, p3, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget-object p3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 70
    .line 71
    const-string v0, "Failed to initialize EnvelopeFileObserverIntegration."

    .line 72
    .line 73
    invoke-interface {p2, p3, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method


# virtual methods
.method abstract c(Lio/sentry/s5;)Ljava/lang/String;
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->c:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->a:Lio/sentry/android/core/d1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b:Lio/sentry/ILogger;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v2, "EnvelopeFileObserverIntegration removed."

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method

.method public final f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 5

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "SentryOptions is required"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b:Lio/sentry/ILogger;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->c(Lio/sentry/s5;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b:Lio/sentry/ILogger;

    .line 24
    .line 25
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v1, "Null given as a path to EnvelopeFileObserverIntegration. Nothing will be registered."

    .line 31
    .line 32
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b:Lio/sentry/ILogger;

    .line 37
    .line 38
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 39
    .line 40
    const-string v3, "Registering EnvelopeFileObserverIntegration for path: %s"

    .line 41
    .line 42
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lio/sentry/android/core/e1;

    .line 54
    .line 55
    invoke-direct {v2, p0, p1, p2, v0}, Lio/sentry/android/core/e1;-><init>(Lio/sentry/android/core/EnvelopeFileObserverIntegration;Lio/sentry/o0;Lio/sentry/s5;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v2}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    iget-object p2, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b:Lio/sentry/ILogger;

    .line 64
    .line 65
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 66
    .line 67
    const-string v1, "Failed to start EnvelopeFileObserverIntegration on executor thread."

    .line 68
    .line 69
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
