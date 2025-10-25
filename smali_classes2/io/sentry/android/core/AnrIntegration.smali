.class public final Lio/sentry/android/core/AnrIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrIntegration$a;
    }
.end annotation


# static fields
.field private static e:Lio/sentry/android/core/c;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private final c:Ljava/lang/Object;

.field private d:Lio/sentry/s5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/AnrIntegration;->f:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/AnrIntegration;->b:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->c:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/sentry/android/core/AnrIntegration;->a:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/AnrIntegration;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->e(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/AnrIntegration;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AnrIntegration;->g(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V

    return-void
.end method

.method private c(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ANR for at least "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, " ms."

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "Background "

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_0
    new-instance p1, Lio/sentry/android/core/ApplicationNotResponding;

    .line 47
    .line 48
    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->a()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-direct {p1, p2, p3}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lio/sentry/protocol/i;

    .line 56
    .line 57
    invoke-direct {p2}, Lio/sentry/protocol/i;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p3, "ANR"

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Lio/sentry/protocol/i;->j(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Lio/sentry/exception/a;

    .line 66
    .line 67
    invoke-virtual {p1}, Lio/sentry/android/core/ApplicationNotResponding;->a()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {p3, p2, p1, v0, v1}, Lio/sentry/exception/a;-><init>(Lio/sentry/protocol/i;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 73
    .line 74
    .line 75
    return-object p3
.end method

.method private synthetic e(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->b:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->k(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

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

.method private synthetic g(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/core/AnrIntegration;->j(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 6
    .line 7
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "AnrIntegration enabled: %s"

    .line 20
    .line 21
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v0, "Anr"

    .line 31
    .line 32
    invoke-static {v0}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lio/sentry/android/core/f0;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/f0;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 54
    .line 55
    const-string v1, "Failed to start AnrIntegration on executor thread."

    .line 56
    .line 57
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    return-void
.end method

.method private k(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    sget-object v2, Lio/sentry/android/core/AnrIntegration;->f:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->e:Lio/sentry/android/core/c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    const-string v4, "ANR timeout in milliseconds: %d"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x0

    .line 29
    aput-object v6, v5, v7

    .line 30
    .line 31
    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lio/sentry/android/core/c;

    .line 35
    .line 36
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    new-instance v12, Lio/sentry/android/core/g0;

    .line 45
    .line 46
    move-object/from16 v4, p1

    .line 47
    .line 48
    move-object/from16 v5, p2

    .line 49
    .line 50
    invoke-direct {v12, p0, v4, v5}, Lio/sentry/android/core/g0;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    iget-object v14, v1, Lio/sentry/android/core/AnrIntegration;->a:Landroid/content/Context;

    .line 58
    .line 59
    move-object v8, v0

    .line 60
    invoke-direct/range {v8 .. v14}, Lio/sentry/android/core/c;-><init>(JZLio/sentry/android/core/c$a;Lio/sentry/ILogger;Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lio/sentry/android/core/AnrIntegration;->e:Lio/sentry/android/core/c;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p2 .. p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v4, "AnrIntegration installed."

    .line 73
    .line 74
    new-array v5, v7, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/AnrIntegration;->b:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    sget-object v1, Lio/sentry/android/core/AnrIntegration;->f:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_1
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->e:Lio/sentry/android/core/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lio/sentry/android/core/AnrIntegration;->e:Lio/sentry/android/core/c;

    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration;->d:Lio/sentry/s5;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 30
    .line 31
    const-string v3, "AnrIntegration removed."

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    throw v1
.end method

.method public final f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 1

    .line 1
    const-string v0, "SentryOptions is required"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/s5;

    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->d:Lio/sentry/s5;

    .line 10
    .line 11
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->h(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method j(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "ANR triggered with message: %s"

    .line 16
    .line 17
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {}, Lio/sentry/android/core/o0;->a()Lio/sentry/android/core/o0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lio/sentry/android/core/o0;->b()Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {p0, v0, p2, p3}, Lio/sentry/android/core/AnrIntegration;->c(ZLio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Lio/sentry/z4;

    .line 39
    .line 40
    invoke-direct {p3, p2}, Lio/sentry/z4;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 44
    .line 45
    invoke-virtual {p3, p2}, Lio/sentry/z4;->B0(Lio/sentry/j5;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lio/sentry/android/core/AnrIntegration$a;

    .line 49
    .line 50
    invoke-direct {p2, v0}, Lio/sentry/android/core/AnrIntegration$a;-><init>(Z)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p1, p3, p2}, Lio/sentry/o0;->D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 58
    .line 59
    .line 60
    return-void
.end method
