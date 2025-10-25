.class Lio/sentry/android/core/AnrV2Integration$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/o0;

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;

.field private final d:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$a;->b:Lio/sentry/o0;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    .line 10
    invoke-interface {p4}, Lio/sentry/transport/p;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    sget-wide p3, Lio/sentry/android/core/AnrV2Integration;->d:J

    .line 15
    .line 16
    sub-long/2addr p1, p3

    .line 17
    iput-wide p1, p0, Lio/sentry/android/core/AnrV2Integration$a;->d:J

    .line 18
    .line 19
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    :try_start_0
    new-array v2, v1, [B

    .line 9
    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    throw p1
.end method

.method private b(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$c;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lq7/u0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    :try_start_1
    new-instance p2, Lio/sentry/android/core/AnrV2Integration$c;

    .line 8
    .line 9
    sget-object v0, Lio/sentry/android/core/AnrV2Integration$c$a;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 10
    .line 11
    invoke-direct {p2, v0}, Lio/sentry/android/core/AnrV2Integration$c;-><init>(Lio/sentry/android/core/AnrV2Integration$c$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object p2

    .line 20
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2Integration$a;->a(Ljava/io/InputStream;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 24
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 25
    .line 26
    .line 27
    :try_start_5
    new-instance p1, Ljava/io/BufferedReader;

    .line 28
    .line 29
    new-instance v1, Ljava/io/InputStreamReader;

    .line 30
    .line 31
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 40
    .line 41
    .line 42
    :try_start_6
    invoke-static {p1}, Lio/sentry/android/core/internal/threaddump/b;->c(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lio/sentry/android/core/internal/threaddump/c;

    .line 47
    .line 48
    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    .line 50
    invoke-direct {v2, v3, p2}, Lio/sentry/android/core/internal/threaddump/c;-><init>(Lio/sentry/s5;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lio/sentry/android/core/internal/threaddump/c;->f(Lio/sentry/android/core/internal/threaddump/b;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    new-instance p2, Lio/sentry/android/core/AnrV2Integration$c;

    .line 64
    .line 65
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$c$a;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 66
    .line 67
    invoke-direct {p2, v1}, Lio/sentry/android/core/AnrV2Integration$c;-><init>(Lio/sentry/android/core/AnrV2Integration$c$a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 71
    .line 72
    .line 73
    return-object p2

    .line 74
    :cond_2
    :try_start_8
    new-instance v1, Lio/sentry/android/core/AnrV2Integration$c;

    .line 75
    .line 76
    sget-object v2, Lio/sentry/android/core/AnrV2Integration$c$a;->DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 77
    .line 78
    invoke-direct {v1, v2, v0, p2}, Lio/sentry/android/core/AnrV2Integration$c;-><init>(Lio/sentry/android/core/AnrV2Integration$c$a;[BLjava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    :try_start_b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 95
    :catchall_2
    move-exception p1

    .line 96
    iget-object p2, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 97
    .line 98
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 103
    .line 104
    const-string v2, "Failed to parse ANR thread dump"

    .line 105
    .line 106
    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lio/sentry/android/core/AnrV2Integration$c;

    .line 110
    .line 111
    sget-object p2, Lio/sentry/android/core/AnrV2Integration$c$a;->ERROR:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 112
    .line 113
    invoke-direct {p1, p2, v0}, Lio/sentry/android/core/AnrV2Integration$c;-><init>(Lio/sentry/android/core/AnrV2Integration$c$a;[B)V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :catchall_3
    move-exception p2

    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_4
    move-exception p1

    .line 125
    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 129
    :catchall_5
    move-exception p1

    .line 130
    iget-object p2, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 131
    .line 132
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 137
    .line 138
    const-string v1, "Failed to read ANR thread dump"

    .line 139
    .line 140
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Lio/sentry/android/core/AnrV2Integration$c;

    .line 144
    .line 145
    sget-object p2, Lio/sentry/android/core/AnrV2Integration$c$a;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 146
    .line 147
    invoke-direct {p1, p2}, Lio/sentry/android/core/AnrV2Integration$c;-><init>(Lio/sentry/android/core/AnrV2Integration$c$a;)V

    .line 148
    .line 149
    .line 150
    return-object p1
.end method

.method private c(Landroid/app/ApplicationExitInfo;Z)V
    .locals 11

    .line 1
    invoke-static {p1}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v8

    .line 5
    invoke-static {p1}, Lq7/w0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    move v7, v0

    .line 17
    invoke-direct {p0, p1, v7}, Lio/sentry/android/core/AnrV2Integration$a;->b(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$c;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    iget-object v0, v10, Lio/sentry/android/core/AnrV2Integration$c;->a:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 22
    .line 23
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$c$a;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 28
    .line 29
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 34
    .line 35
    invoke-static {p1}, Lq7/v0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "Not reporting ANR event as there was no thread dump for the ANR %s"

    .line 44
    .line 45
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Lio/sentry/android/core/AnrV2Integration$b;

    .line 50
    .line 51
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/sentry/s5;->getFlushTimeoutMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    .line 59
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v0, p1

    .line 64
    move-wide v4, v8

    .line 65
    move v6, p2

    .line 66
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/core/AnrV2Integration$b;-><init>(JLio/sentry/ILogger;JZZ)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-instance v0, Lio/sentry/z4;

    .line 74
    .line 75
    invoke-direct {v0}, Lio/sentry/z4;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$c;->a:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 79
    .line 80
    sget-object v2, Lio/sentry/android/core/AnrV2Integration$c$a;->ERROR:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 81
    .line 82
    if-ne v1, v2, :cond_2

    .line 83
    .line 84
    new-instance v1, Lio/sentry/protocol/j;

    .line 85
    .line 86
    invoke-direct {v1}, Lio/sentry/protocol/j;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub."

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lio/sentry/protocol/j;->d(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lio/sentry/z4;->C0(Lio/sentry/protocol/j;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    sget-object v2, Lio/sentry/android/core/AnrV2Integration$c$a;->DUMP:Lio/sentry/android/core/AnrV2Integration$c$a;

    .line 99
    .line 100
    if-ne v1, v2, :cond_3

    .line 101
    .line 102
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$c;->c:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lio/sentry/z4;->E0(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_1
    sget-object v1, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lio/sentry/z4;->B0(Lio/sentry/j5;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v8, v9}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lio/sentry/z4;->F0(Ljava/util/Date;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 120
    .line 121
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    iget-object v1, v10, Lio/sentry/android/core/AnrV2Integration$c;->b:[B

    .line 128
    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    invoke-static {v1}, Lio/sentry/b;->b([B)Lio/sentry/b;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p2, v1}, Lio/sentry/c0;->n(Lio/sentry/b;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$a;->b:Lio/sentry/o0;

    .line 139
    .line 140
    invoke-interface {v1, v0, p2}, Lio/sentry/o0;->D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    sget-object v1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 145
    .line 146
    invoke-virtual {p2, v1}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-nez p2, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Lio/sentry/hints/d;->e()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_5

    .line 157
    .line 158
    iget-object p1, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 159
    .line 160
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 165
    .line 166
    invoke-virtual {v0}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, "Timed out waiting to flush ANR event to disk. Event: %s"

    .line 175
    .line 176
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    return-void
.end method

.method private d(Ljava/util/List;Ljava/lang/Long;)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lq7/d1;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lq7/y0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x6

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-wide v3, p0, Lio/sentry/android/core/AnrV2Integration$a;->d:J

    .line 34
    .line 35
    cmp-long v1, v1, v3

    .line 36
    .line 37
    if-gez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 40
    .line 41
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 46
    .line 47
    const-string v3, "ANR happened too long ago %s."

    .line 48
    .line 49
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-static {v0}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    cmp-long v1, v1, v3

    .line 68
    .line 69
    if-gtz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 72
    .line 73
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 78
    .line 79
    const-string v3, "ANR has already been reported %s."

    .line 80
    .line 81
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/AnrV2Integration$a;->c(Landroid/app/ApplicationExitInfo;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2, v2}, Lq7/o;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 30
    .line 31
    const-string v3, "No records in historical exit reasons."

    .line 32
    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 40
    .line 41
    invoke-virtual {v3}, Lio/sentry/s5;->getEnvelopeDiskCache()Lio/sentry/cache/g;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    instance-of v4, v3, Lio/sentry/cache/f;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    iget-object v4, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 50
    .line 51
    invoke-virtual {v4}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    check-cast v3, Lio/sentry/cache/f;

    .line 58
    .line 59
    invoke-virtual {v3}, Lio/sentry/cache/f;->R()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    iget-object v4, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 66
    .line 67
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sget-object v5, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 72
    .line 73
    const-string v6, "Timed out waiting to flush previous session to its own file."

    .line 74
    .line 75
    new-array v7, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lio/sentry/cache/f;->J()V

    .line 81
    .line 82
    .line 83
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 89
    .line 90
    invoke-static {v0}, Lio/sentry/android/core/cache/b;->a0(Lio/sentry/s5;)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v5}, Lq7/d1;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Lq7/y0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/4 v7, 0x6

    .line 117
    if-ne v6, v7, :cond_2

    .line 118
    .line 119
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-object v1, v5

    .line 123
    :cond_3
    if-nez v1, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 126
    .line 127
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 132
    .line 133
    const-string v3, "No ANRs have been found in the historical exit reasons list."

    .line 134
    .line 135
    new-array v2, v2, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    invoke-static {v1}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    iget-wide v6, p0, Lio/sentry/android/core/AnrV2Integration$a;->d:J

    .line 146
    .line 147
    cmp-long v4, v4, v6

    .line 148
    .line 149
    if-gez v4, :cond_5

    .line 150
    .line 151
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 152
    .line 153
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 158
    .line 159
    const-string v3, "Latest ANR happened too long ago, returning early."

    .line 160
    .line 161
    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_5
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-static {v1}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    cmp-long v4, v4, v6

    .line 178
    .line 179
    if-gtz v4, :cond_6

    .line 180
    .line 181
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 182
    .line 183
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 188
    .line 189
    const-string v3, "Latest ANR has already been reported, returning early."

    .line 190
    .line 191
    new-array v2, v2, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_6
    iget-object v2, p0, Lio/sentry/android/core/AnrV2Integration$a;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 198
    .line 199
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalAnrs()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_7

    .line 204
    .line 205
    invoke-direct {p0, v3, v0}, Lio/sentry/android/core/AnrV2Integration$a;->d(Ljava/util/List;Ljava/lang/Long;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/AnrV2Integration$a;->c(Landroid/app/ApplicationExitInfo;Z)V

    .line 210
    .line 211
    .line 212
    return-void
.end method
