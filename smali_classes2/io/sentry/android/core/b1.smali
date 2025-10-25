.class public final Lio/sentry/android/core/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile h:Lio/sentry/android/core/b1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/android/core/SentryAndroidOptions;

.field private final c:Lio/sentry/android/core/p0;

.field private final d:Ljava/lang/Boolean;

.field private final e:Lio/sentry/android/core/x0$a;

.field private final f:Lio/sentry/protocol/l;

.field private final g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    new-instance v0, Lio/sentry/android/core/p0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/android/core/b1;->c:Lio/sentry/android/core/p0;

    .line 18
    .line 19
    invoke-static {}, Lio/sentry/android/core/internal/util/f;->a()Lio/sentry/android/core/internal/util/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/f;->c()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lio/sentry/android/core/b1;->t()Lio/sentry/protocol/l;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lio/sentry/android/core/b1;->f:Lio/sentry/protocol/l;

    .line 31
    .line 32
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->f()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lio/sentry/android/core/b1;->d:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1, v1, v0}, Lio/sentry/android/core/x0;->E(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Lio/sentry/android/core/x0$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lio/sentry/android/core/b1;->e:Lio/sentry/android/core/x0$a;

    .line 47
    .line 48
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lio/sentry/android/core/x0;->p(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    iget-wide p1, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 59
    .line 60
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lio/sentry/android/core/b1;->g:Ljava/lang/Long;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lio/sentry/android/core/b1;->g:Ljava/lang/Long;

    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/b1;->c:Lio/sentry/android/core/p0;

    .line 4
    .line 5
    new-instance v2, Landroid/content/IntentFilter;

    .line 6
    .line 7
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v3, v2}, Lio/sentry/android/core/x0;->D(Landroid/content/Context;Lio/sentry/android/core/p0;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static c(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Float;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "level"

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v3, "scale"

    .line 10
    .line 11
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    if-ne p0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    int-to-float v1, v1

    .line 21
    int-to-float p0, p0

    .line 22
    div-float/2addr v1, p0

    .line 23
    const/high16 p0, 0x42c80000    # 100.0f

    .line 24
    .line 25
    mul-float/2addr v1, p0

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    return-object v0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 38
    .line 39
    const-string v2, "Error getting device battery level."

    .line 40
    .line 41
    invoke-interface {p1, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method private d(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "temperature"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    const/high16 v0, 0x41200000    # 10.0f

    .line 12
    .line 13
    div-float/2addr p1, v0

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 27
    .line 28
    const-string v2, "Error getting battery temperature."

    .line 29
    .line 30
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private e()Ljava/util/Date;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v4, "Error getting the device\'s boot time."

    .line 28
    .line 29
    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/android/core/g1;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v3, "Error getting installationId."

    .line 18
    .line 19
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method private g(Ljava/io/File;)Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v1

    .line 19
    :goto_0
    array-length v3, v0

    .line 20
    :goto_1
    if-ge v2, v3, :cond_5

    .line 21
    .line 22
    aget-object v4, v0, v2

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_3
    return-object v4

    .line 50
    :cond_4
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 57
    .line 58
    const-string v3, "Not possible to read getExternalFilesDirs"

    .line 59
    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    return-object v1
.end method

.method private h(Ljava/io/File;)Landroid/os/StatFs;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/b1;->g(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/StatFs;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catchall_0
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v2, "Not possible to read external files directory"

    .line 29
    .line 30
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public static i(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/core/b1;->h:Lio/sentry/android/core/b1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lio/sentry/android/core/b1;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/sentry/android/core/b1;->h:Lio/sentry/android/core/b1;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lio/sentry/android/core/b1;

    .line 13
    .line 14
    invoke-static {p0}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/b1;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lio/sentry/android/core/b1;->h:Lio/sentry/android/core/b1;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lio/sentry/android/core/b1;->h:Lio/sentry/android/core/b1;

    .line 29
    .line 30
    return-object p0
.end method

.method private k()Lio/sentry/protocol/e$b;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    invoke-static {v1}, Lio/sentry/android/core/internal/util/h;->a(I)Lio/sentry/protocol/e$b;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 27
    .line 28
    const-string v4, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)"

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    new-array v5, v5, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    move-object v6, v1

    .line 41
    move-object v1, v0

    .line 42
    move-object v0, v6

    .line 43
    :goto_0
    iget-object v2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 44
    .line 45
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 50
    .line 51
    const-string v4, "Error getting device orientation."

    .line 52
    .line 53
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-object v1
.end method

.method private m()Ljava/util/TimeZone;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->c:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method private n(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 23
    .line 24
    const-string v2, "Error getting total external storage amount."

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private o(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 23
    .line 24
    const-string v2, "Error getting total internal storage amount."

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private q(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 23
    .line 24
    const-string v2, "Error getting unused external storage amount."

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private r(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 23
    .line 24
    const-string v2, "Error getting unused internal storage amount."

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public static s(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "plugged"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 27
    .line 28
    const-string v1, "Error getting device charging state."

    .line 29
    .line 30
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method private t()Lio/sentry/protocol/l;
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/protocol/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/l;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Android"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/protocol/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/protocol/l;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/sentry/protocol/l;->h(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lio/sentry/android/core/x0;->o(Lio/sentry/ILogger;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/sentry/protocol/l;->i(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Lio/sentry/android/core/internal/util/m;

    .line 45
    .line 46
    iget-object v2, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v3, p0, Lio/sentry/android/core/b1;->c:Lio/sentry/android/core/p0;

    .line 49
    .line 50
    iget-object v4, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 51
    .line 52
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/m;-><init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/ILogger;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/m;->e()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lio/sentry/protocol/l;->k(Ljava/lang/Boolean;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-object v0
.end method

.method private u(Lio/sentry/protocol/e;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/b1;->b()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/sentry/android/core/b1;->c(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Lio/sentry/protocol/e;->N(Ljava/lang/Float;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lio/sentry/android/core/b1;->s(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lio/sentry/protocol/e;->R(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lio/sentry/android/core/b1;->d(Landroid/content/Intent;)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/protocol/e;->O(Ljava/lang/Float;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object v0, Lio/sentry/android/core/b1$a;->a:[I

    .line 33
    .line 34
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Lio/sentry/l0;->b()Lio/sentry/l0$a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    move-object v0, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 63
    .line 64
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/protocol/e;->h0(Ljava/lang/Boolean;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 70
    .line 71
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lio/sentry/android/core/x0;->p(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 84
    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Lio/sentry/protocol/e;->W(Ljava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    iget-boolean p2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 93
    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Lio/sentry/protocol/e;->b0(Ljava/lang/Boolean;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p2, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    new-instance v0, Landroid/os/StatFs;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v0}, Lio/sentry/android/core/b1;->o(Landroid/os/StatFs;)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v1}, Lio/sentry/protocol/e;->q0(Ljava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v0}, Lio/sentry/android/core/b1;->r(Landroid/os/StatFs;)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lio/sentry/protocol/e;->X(Ljava/lang/Long;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/android/core/b1;->h(Ljava/io/File;)Landroid/os/StatFs;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_5

    .line 137
    .line 138
    invoke-direct {p0, p2}, Lio/sentry/android/core/b1;->n(Landroid/os/StatFs;)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lio/sentry/protocol/e;->U(Ljava/lang/Long;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p2}, Lio/sentry/android/core/b1;->q(Landroid/os/StatFs;)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Lio/sentry/protocol/e;->T(Ljava/lang/Long;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p1}, Lio/sentry/protocol/e;->I()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    if-nez p2, :cond_6

    .line 157
    .line 158
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 159
    .line 160
    invoke-virtual {p2}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-interface {p2}, Lio/sentry/l0;->a()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p1, p2}, Lio/sentry/protocol/e;->S(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method


# virtual methods
.method public a(ZZ)Lio/sentry/protocol/e;
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/protocol/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/s5;->isSendDefaultPii()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Lio/sentry/android/core/x0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->g0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->c0(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->Q(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 34
    .line 35
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lio/sentry/android/core/x0;->n(Lio/sentry/ILogger;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->V(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->e0(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->f0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lio/sentry/android/core/b1;->c:Lio/sentry/android/core/p0;

    .line 57
    .line 58
    invoke-static {v1}, Lio/sentry/android/core/x0;->k(Lio/sentry/android/core/p0;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->M([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lio/sentry/android/core/b1;->k()Lio/sentry/protocol/e$b;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->i0(Lio/sentry/protocol/e$b;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lio/sentry/android/core/b1;->d:Ljava/lang/Boolean;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->p0(Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/b1;->a:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 82
    .line 83
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lio/sentry/android/core/x0;->m(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Lio/sentry/protocol/e;->o0(Ljava/lang/Integer;)V

    .line 100
    .line 101
    .line 102
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lio/sentry/protocol/e;->n0(Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Lio/sentry/protocol/e;->l0(Ljava/lang/Float;)V

    .line 118
    .line 119
    .line 120
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->m0(Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/core/b1;->e()Ljava/util/Date;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->P(Ljava/util/Date;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lio/sentry/android/core/b1;->m()Ljava/util/TimeZone;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->r0(Ljava/util/TimeZone;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lio/sentry/protocol/e;->J()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    invoke-direct {p0}, Lio/sentry/android/core/b1;->f()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->Y(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0}, Lio/sentry/protocol/e;->K()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Lio/sentry/protocol/e;->Z(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {v0}, Lio/sentry/protocol/e;->L()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-nez v2, :cond_5

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->a0(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    invoke-static {}, Lio/sentry/android/core/internal/util/f;->a()Lio/sentry/android/core/internal/util/f;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/f;->c()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_6

    .line 199
    .line 200
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Lio/sentry/protocol/e;->k0(Ljava/lang/Double;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->j0(Ljava/lang/Integer;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    iget-object v1, p0, Lio/sentry/android/core/b1;->g:Ljava/lang/Long;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lio/sentry/protocol/e;->d0(Ljava/lang/Long;)V

    .line 231
    .line 232
    .line 233
    if-eqz p1, :cond_7

    .line 234
    .line 235
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 236
    .line 237
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_7

    .line 242
    .line 243
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/b1;->u(Lio/sentry/protocol/e;Z)V

    .line 244
    .line 245
    .line 246
    :cond_7
    return-object v0
.end method

.method public j()Lio/sentry/protocol/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->f:Lio/sentry/protocol/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lio/sentry/android/core/x0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->e:Lio/sentry/android/core/x0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b1;->g:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method
