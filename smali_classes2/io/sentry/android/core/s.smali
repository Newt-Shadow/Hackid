.class public final Lio/sentry/android/core/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/t0;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private final e:J

.field private f:D

.field private final g:Ljava/io/File;

.field private final h:Lio/sentry/ILogger;

.field private final i:Lio/sentry/android/core/p0;

.field private j:Z

.field private final k:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lio/sentry/android/core/s;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lio/sentry/android/core/s;->b:J

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lio/sentry/android/core/s;->c:J

    .line 13
    .line 14
    iput-wide v0, p0, Lio/sentry/android/core/s;->d:J

    .line 15
    .line 16
    const-wide/32 v2, 0x3b9aca00

    .line 17
    .line 18
    .line 19
    iput-wide v2, p0, Lio/sentry/android/core/s;->e:J

    .line 20
    .line 21
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    long-to-double v0, v0

    .line 27
    div-double/2addr v2, v0

    .line 28
    iput-wide v2, p0, Lio/sentry/android/core/s;->f:D

    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    const-string v1, "/proc/self/stat"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/sentry/android/core/s;->g:Ljava/io/File;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lio/sentry/android/core/s;->j:Z

    .line 41
    .line 42
    const-string v0, "[\n\t\r ]"

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lio/sentry/android/core/s;->k:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    const-string v0, "Logger is required."

    .line 51
    .line 52
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lio/sentry/ILogger;

    .line 57
    .line 58
    iput-object p1, p0, Lio/sentry/android/core/s;->h:Lio/sentry/ILogger;

    .line 59
    .line 60
    const-string p1, "BuildInfoProvider is required."

    .line 61
    .line 62
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lio/sentry/android/core/p0;

    .line 67
    .line 68
    iput-object p1, p0, Lio/sentry/android/core/s;->i:Lio/sentry/android/core/p0;

    .line 69
    .line 70
    return-void
.end method

.method private d()J
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/s;->g:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/util/e;->c(Ljava/io/File;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lio/sentry/android/core/s;->j:Z

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/core/s;->h:Lio/sentry/ILogger;

    .line 13
    .line 14
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v3, "Unable to read /proc/self/stat file. Disabling cpu collection."

    .line 17
    .line 18
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v3, p0, Lio/sentry/android/core/s;->k:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v3, 0xd

    .line 37
    .line 38
    :try_start_1
    aget-object v3, v0, v3

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    const/16 v5, 0xe

    .line 45
    .line 46
    aget-object v5, v0, v5

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    const/16 v7, 0xf

    .line 53
    .line 54
    aget-object v7, v0, v7

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    const/16 v9, 0x10

    .line 61
    .line 62
    aget-object v0, v0, v9

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    add-long/2addr v3, v5

    .line 69
    add-long/2addr v3, v7

    .line 70
    add-long/2addr v3, v9

    .line 71
    long-to-double v3, v3

    .line 72
    iget-wide v0, p0, Lio/sentry/android/core/s;->f:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    mul-double/2addr v3, v0

    .line 75
    double-to-long v0, v3

    .line 76
    return-wide v0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    :goto_1
    iget-object v3, p0, Lio/sentry/android/core/s;->h:Lio/sentry/ILogger;

    .line 81
    .line 82
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 83
    .line 84
    const-string v5, "Error parsing /proc/self/stat file."

    .line 85
    .line 86
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-wide v1
.end method


# virtual methods
.method public c(Lio/sentry/r2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/s;->i:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lio/sentry/android/core/s;->j:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lio/sentry/android/core/s;->a:J

    .line 21
    .line 22
    sub-long v2, v0, v2

    .line 23
    .line 24
    iput-wide v0, p0, Lio/sentry/android/core/s;->a:J

    .line 25
    .line 26
    invoke-direct {p0}, Lio/sentry/android/core/s;->d()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-wide v4, p0, Lio/sentry/android/core/s;->b:J

    .line 31
    .line 32
    sub-long v4, v0, v4

    .line 33
    .line 34
    iput-wide v0, p0, Lio/sentry/android/core/s;->b:J

    .line 35
    .line 36
    long-to-double v0, v4

    .line 37
    long-to-double v2, v2

    .line 38
    div-double/2addr v0, v2

    .line 39
    new-instance v2, Lio/sentry/g;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iget-wide v5, p0, Lio/sentry/android/core/s;->d:J

    .line 46
    .line 47
    long-to-double v5, v5

    .line 48
    div-double/2addr v0, v5

    .line 49
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 50
    .line 51
    mul-double/2addr v0, v5

    .line 52
    invoke-direct {v2, v3, v4, v0, v1}, Lio/sentry/g;-><init>(JD)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lio/sentry/r2;->a(Lio/sentry/g;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/s;->i:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/sentry/android/core/s;->j:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/sentry/android/core/s;->j:Z

    .line 17
    .line 18
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    .line 19
    .line 20
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lio/sentry/android/core/s;->c:J

    .line 25
    .line 26
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    .line 27
    .line 28
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lio/sentry/android/core/s;->d:J

    .line 33
    .line 34
    iget-wide v0, p0, Lio/sentry/android/core/s;->c:J

    .line 35
    .line 36
    long-to-double v0, v0

    .line 37
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    div-double/2addr v2, v0

    .line 43
    iput-wide v2, p0, Lio/sentry/android/core/s;->f:D

    .line 44
    .line 45
    invoke-direct {p0}, Lio/sentry/android/core/s;->d()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lio/sentry/android/core/s;->b:J

    .line 50
    .line 51
    return-void
.end method
