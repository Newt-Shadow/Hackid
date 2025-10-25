.class final Lio/sentry/android/core/SendCachedEnvelopeIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Lio/sentry/l0$b;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lio/sentry/j3;

.field private final b:Lio/sentry/util/m;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lio/sentry/l0;

.field private e:Lio/sentry/o0;

.field private f:Lio/sentry/android/core/SentryAndroidOptions;

.field private g:Lio/sentry/g3;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/sentry/j3;Lio/sentry/util/m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const-string v0, "SendFireAndForgetFactory is required"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lio/sentry/j3;

    .line 33
    .line 34
    iput-object p1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->a:Lio/sentry/j3;

    .line 35
    .line 36
    iput-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->b:Lio/sentry/util/m;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/SendCachedEnvelopeIntegration;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->b(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/o0;)V

    return-void
.end method

.method private synthetic b(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/o0;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v2, "SendCachedEnvelopeIntegration, not trying to send after closing."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->d:Lio/sentry/l0;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lio/sentry/l0;->c(Lio/sentry/l0$b;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->a:Lio/sentry/j3;

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lio/sentry/j3;->d(Lio/sentry/o0;Lio/sentry/s5;)Lio/sentry/g3;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->g:Lio/sentry/g3;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->d:Lio/sentry/l0;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Lio/sentry/l0;->b()Lio/sentry/l0$a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v2, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;

    .line 59
    .line 60
    if-ne v0, v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 67
    .line 68
    const-string v2, "SendCachedEnvelopeIntegration, no connection."

    .line 69
    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-interface {p2}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    sget-object v0, Lio/sentry/i;->All:Lio/sentry/i;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 95
    .line 96
    const-string v2, "SendCachedEnvelopeIntegration, rate limiting active."

    .line 97
    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    iget-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->g:Lio/sentry/g3;

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 113
    .line 114
    const-string v2, "SendCachedEnvelopeIntegration factory is null."

    .line 115
    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    invoke-interface {p2}, Lio/sentry/g3;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p2

    .line 127
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 132
    .line 133
    const-string v1, "Failed trying to send cached events."

    .line 134
    .line 135
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void
.end method

.method private declared-synchronized e(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Lio/sentry/android/core/v1;

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, p1}, Lio/sentry/android/core/v1;-><init>(Lio/sentry/android/core/SendCachedEnvelopeIntegration;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/o0;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->b:Lio/sentry/util/m;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 44
    .line 45
    const-string v3, "Startup Crash marker exists, blocking flush."

    .line 46
    .line 47
    new-array v4, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashFlushTimeoutMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    :try_start_2
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 67
    .line 68
    const-string v2, "Synchronous send timed out, continuing in the background."

    .line 69
    .line 70
    new-array v3, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 80
    .line 81
    const-string v2, "SendCachedEnvelopeIntegration installed."

    .line 82
    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    :try_start_3
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 95
    .line 96
    const-string v1, "Failed to call the executor. Cached events will not be sent"

    .line 97
    .line 98
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 108
    .line 109
    const-string v1, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?"

    .line 110
    .line 111
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .line 113
    .line 114
    :goto_1
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    monitor-exit p0

    .line 118
    throw p1
.end method


# virtual methods
.method public c(Lio/sentry/l0$a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->e:Lio/sentry/o0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->e(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->d:Lio/sentry/l0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lio/sentry/l0;->d(Lio/sentry/l0$b;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 3

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/o0;

    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->e:Lio/sentry/o0;

    .line 10
    .line 11
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    iput-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    .line 30
    invoke-virtual {p2}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->a:Lio/sentry/j3;

    .line 35
    .line 36
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v0, v2}, Lio/sentry/j3;->e(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v1, "No cache dir path is defined in options."

    .line 56
    .line 57
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const-string p2, "SendCachedEnvelope"

    .line 62
    .line 63
    invoke-static {p2}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->f:Lio/sentry/android/core/SentryAndroidOptions;

    .line 67
    .line 68
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->e(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
