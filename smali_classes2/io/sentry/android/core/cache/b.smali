.class public final Lio/sentry/android/core/cache/b;
.super Lio/sentry/cache/f;
.source "SourceFile"


# instance fields
.field private final h:Lio/sentry/transport/p;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->b()Lio/sentry/transport/p;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/cache/b;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/p;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/p;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacheDirPath must not be null"

    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lio/sentry/s5;->getMaxCacheItems()I

    move-result v1

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/cache/f;-><init>(Lio/sentry/s5;Ljava/lang/String;I)V

    .line 5
    iput-object p2, p0, Lio/sentry/android/core/cache/b;->h:Lio/sentry/transport/p;

    return-void
.end method

.method public static synthetic V(Lio/sentry/android/core/cache/b;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/AnrV2Integration$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/cache/b;->Z(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/AnrV2Integration$b;)V

    return-void
.end method

.method public static Y(Lio/sentry/s5;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getOutboxPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 13
    .line 14
    const-string v2, "Outbox path is null, the startup crash marker file does not exist"

    .line 15
    .line 16
    new-array v3, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {p0, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    const-string v3, "startup_crash"

    .line 25
    .line 26
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 46
    .line 47
    const-string v5, "Failed to delete the startup crash marker file. %s."

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    new-array v6, v6, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    aput-object v2, v6, v1

    .line 57
    .line 58
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_1
    return v0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 68
    .line 69
    const-string v3, "Error reading/deleting the startup crash marker file on the disk"

    .line 70
    .line 71
    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return v1
.end method

.method private synthetic Z(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/AnrV2Integration$b;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lio/sentry/android/core/AnrV2Integration$b;->c()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 10
    .line 11
    const-string v1, "Writing last reported ANR marker with timestamp %d"

    .line 12
    .line 13
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Lio/sentry/android/core/cache/b;->b0(Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static a0(Lio/sentry/s5;)Ljava/lang/Long;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Cache dir path should be set for getting ANRs reported"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, "last_anr_report"

    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Lio/sentry/util/e;->c(Ljava/io/File;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "null"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 64
    .line 65
    const-string v4, "Last ANR marker does not exist. %s."

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    new-array v5, v5, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v6, 0x0

    .line 75
    aput-object v1, v5, v6

    .line 76
    .line 77
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 87
    .line 88
    const-string v3, "Error reading last ANR marker"

    .line 89
    .line 90
    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-object v0
.end method

.method private b0(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "Cache dir path is null, the ANR marker will not be written"

    .line 21
    .line 22
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    const-string v2, "last_anr_report"

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v1, Lio/sentry/android/core/cache/b;->e:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    iget-object v0, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 70
    .line 71
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 76
    .line 77
    const-string v2, "Error writing the ANR marker to the disk"

    .line 78
    .line 79
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method

.method private c0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getOutboxPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "Outbox path is null, the startup crash marker file will not be written"

    .line 21
    .line 22
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    const-string v2, "startup_crash"

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 39
    .line 40
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 45
    .line 46
    const-string v3, "Error writing the startup crash marker file to the disk"

    .line 47
    .line 48
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public W(Lio/sentry/a4;Lio/sentry/c0;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lio/sentry/cache/f;->W(Lio/sentry/a4;Lio/sentry/c0;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/sentry/android/core/cache/b;->a:Lio/sentry/s5;

    .line 5
    .line 6
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v1, Lio/sentry/UncaughtExceptionHandlerIntegration$a;

    .line 17
    .line 18
    invoke-static {p2, v1}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->s()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lio/sentry/android/core/cache/b;->h:Lio/sentry/transport/p;

    .line 31
    .line 32
    invoke-interface {v1}, Lio/sentry/transport/p;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->p()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    sub-long/2addr v1, v3

    .line 41
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashDurationThresholdMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmp-long v0, v1, v3

    .line 46
    .line 47
    if-gtz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 54
    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk."

    .line 64
    .line 65
    invoke-interface {v0, v3, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lio/sentry/android/core/cache/b;->c0()V

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v0, Lio/sentry/android/core/cache/a;

    .line 72
    .line 73
    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/cache/a;-><init>(Lio/sentry/android/core/cache/b;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 74
    .line 75
    .line 76
    const-class p1, Lio/sentry/android/core/AnrV2Integration$b;

    .line 77
    .line 78
    invoke-static {p2, p1, v0}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
