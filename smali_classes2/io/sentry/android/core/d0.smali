.class final Lio/sentry/android/core/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/b1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/ILogger;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:I

.field private final f:Lio/sentry/x0;

.field private final g:Lio/sentry/android/core/p0;

.field private h:Z

.field private i:I

.field private final j:Lio/sentry/android/core/internal/util/t;

.field private k:Lio/sentry/v2;

.field private l:Lio/sentry/android/core/b0;

.field private m:J

.field private n:J

.field private o:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    .line 2
    invoke-virtual {p2}, Lio/sentry/s5;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p2}, Lio/sentry/s5;->isProfilingEnabled()Z

    move-result v6

    .line 4
    invoke-virtual {p2}, Lio/sentry/s5;->getProfilingTracesHz()I

    move-result v7

    .line 5
    invoke-virtual {p2}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/d0;-><init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/x0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/x0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lio/sentry/android/core/d0;->h:Z

    .line 9
    iput v0, p0, Lio/sentry/android/core/d0;->i:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;

    .line 11
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "The application context is required"

    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/d0;->a:Landroid/content/Context;

    const-string p1, "ILogger is required"

    .line 13
    invoke-static {p4, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    const-string p1, "SentryFrameMetricsCollector is required"

    .line 14
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/t;

    iput-object p1, p0, Lio/sentry/android/core/d0;->j:Lio/sentry/android/core/internal/util/t;

    const-string p1, "The BuildInfoProvider is required."

    .line 15
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/p0;

    iput-object p1, p0, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 16
    iput-object p5, p0, Lio/sentry/android/core/d0;->c:Ljava/lang/String;

    .line 17
    iput-boolean p6, p0, Lio/sentry/android/core/d0;->d:Z

    .line 18
    iput p7, p0, Lio/sentry/android/core/d0;->e:I

    const-string p1, "The ISentryExecutorService is required."

    .line 19
    invoke-static {p8, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/x0;

    iput-object p1, p0, Lio/sentry/android/core/d0;->f:Lio/sentry/x0;

    .line 20
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/d0;->o:Ljava/util/Date;

    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/core/d0;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/d0;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/sentry/android/core/d0;->h:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/sentry/android/core/d0;->d:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 15
    .line 16
    sget-object v2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 17
    .line 18
    const-string v3, "Profiling is disabled in options."

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v5, p0, Lio/sentry/android/core/d0;->c:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 31
    .line 32
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget v0, p0, Lio/sentry/android/core/d0;->e:I

    .line 43
    .line 44
    if-gtz v0, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 47
    .line 48
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v3, "Disabling profiling because trace rate is set to %d"

    .line 59
    .line 60
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    new-instance v0, Lio/sentry/android/core/b0;

    .line 65
    .line 66
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    .line 68
    const-wide/16 v2, 0x1

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    long-to-int v1, v1

    .line 75
    iget v2, p0, Lio/sentry/android/core/d0;->e:I

    .line 76
    .line 77
    div-int v6, v1, v2

    .line 78
    .line 79
    iget-object v7, p0, Lio/sentry/android/core/d0;->j:Lio/sentry/android/core/internal/util/t;

    .line 80
    .line 81
    iget-object v8, p0, Lio/sentry/android/core/d0;->f:Lio/sentry/x0;

    .line 82
    .line 83
    iget-object v9, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 84
    .line 85
    iget-object v10, p0, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 86
    .line 87
    move-object v4, v0

    .line 88
    invoke-direct/range {v4 .. v10}, Lio/sentry/android/core/b0;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/t;Lio/sentry/x0;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;

    .line 92
    .line 93
    return-void
.end method

.method private static synthetic e()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/core/internal/util/f;->a()Lio/sentry/android/core/internal/util/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/f;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/b0;->j()Lio/sentry/android/core/b0$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-wide v1, v0, Lio/sentry/android/core/b0$c;->a:J

    .line 15
    .line 16
    iput-wide v1, p0, Lio/sentry/android/core/d0;->m:J

    .line 17
    .line 18
    iget-wide v1, v0, Lio/sentry/android/core/b0$c;->b:J

    .line 19
    .line 20
    iput-wide v1, p0, Lio/sentry/android/core/d0;->n:J

    .line 21
    .line 22
    iget-object v0, v0, Lio/sentry/android/core/b0$c;->c:Ljava/util/Date;

    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/android/core/d0;->o:Ljava/util/Date;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method private declared-synchronized g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/s5;)Lio/sentry/u2;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move-object/from16 v2, p6

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v3, v1, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v4

    .line 17
    :cond_0
    :try_start_1
    iget-object v3, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 18
    .line 19
    invoke-virtual {v3}, Lio/sentry/android/core/p0;->d()I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    const/16 v5, 0x16

    .line 24
    .line 25
    if-ge v3, v5, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object v4

    .line 29
    :cond_1
    :try_start_2
    iget-object v3, v1, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 30
    .line 31
    if-eqz v3, :cond_e

    .line 32
    .line 33
    invoke-virtual {v3}, Lio/sentry/v2;->h()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object/from16 v7, p2

    .line 38
    .line 39
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_2
    iget v3, v1, Lio/sentry/android/core/d0;->i:I

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-lez v3, :cond_3

    .line 51
    .line 52
    sub-int/2addr v3, v5

    .line 53
    iput v3, v1, Lio/sentry/android/core/d0;->i:I

    .line 54
    .line 55
    :cond_3
    iget-object v3, v1, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 56
    .line 57
    sget-object v6, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 58
    .line 59
    const-string v9, "Transaction %s (%s) finished."

    .line 60
    .line 61
    filled-new-array {v0, v8}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-interface {v3, v6, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget v3, v1, Lio/sentry/android/core/d0;->i:I

    .line 69
    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    iget-object v0, v1, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-wide v5, v1, Lio/sentry/android/core/d0;->m:J

    .line 85
    .line 86
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-wide v6, v1, Lio/sentry/android/core/d0;->n:J

    .line 99
    .line 100
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v0, v2, v3, v5, v6}, Lio/sentry/v2;->k(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_4
    monitor-exit p0

    .line 108
    return-object v4

    .line 109
    :cond_5
    :try_start_3
    iget-object v3, v1, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    move-object/from16 v9, p5

    .line 113
    .line 114
    invoke-virtual {v3, v6, v9}, Lio/sentry/android/core/b0;->g(ZLjava/util/List;)Lio/sentry/android/core/b0$b;

    .line 115
    .line 116
    .line 117
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    monitor-exit p0

    .line 121
    return-object v4

    .line 122
    :cond_6
    :try_start_4
    iget-wide v9, v3, Lio/sentry/android/core/b0$b;->a:J

    .line 123
    .line 124
    iget-wide v11, v1, Lio/sentry/android/core/d0;->m:J

    .line 125
    .line 126
    sub-long/2addr v9, v11

    .line 127
    new-instance v11, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v1, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 133
    .line 134
    if-eqz v5, :cond_7

    .line 135
    .line 136
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_7
    iput-object v4, v1, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 140
    .line 141
    iput v6, v1, Lio/sentry/android/core/d0;->i:I

    .line 142
    .line 143
    const-string v5, "0"

    .line 144
    .line 145
    instance-of v12, v2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 146
    .line 147
    if-eqz v12, :cond_8

    .line 148
    .line 149
    iget-object v4, v1, Lio/sentry/android/core/d0;->a:Landroid/content/Context;

    .line 150
    .line 151
    move-object v12, v2

    .line 152
    check-cast v12, Lio/sentry/android/core/SentryAndroidOptions;

    .line 153
    .line 154
    invoke-static {v4, v12}, Lio/sentry/android/core/b1;->i(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lio/sentry/android/core/b1;->p()Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    :cond_8
    if-eqz v4, :cond_9

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    move-object/from16 v17, v4

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_9
    move-object/from16 v17, v5

    .line 176
    .line 177
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_a

    .line 188
    .line 189
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    check-cast v12, Lio/sentry/v2;

    .line 194
    .line 195
    iget-wide v13, v3, Lio/sentry/android/core/b0$b;->a:J

    .line 196
    .line 197
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    iget-wide v14, v1, Lio/sentry/android/core/d0;->m:J

    .line 202
    .line 203
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    iget-wide v6, v3, Lio/sentry/android/core/b0$b;->b:J

    .line 208
    .line 209
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    iget-wide v7, v1, Lio/sentry/android/core/d0;->n:J

    .line 214
    .line 215
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v12, v13, v14, v6, v7}, Lio/sentry/v2;->k(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 220
    .line 221
    .line 222
    move-object/from16 v7, p2

    .line 223
    .line 224
    move-object/from16 v8, p3

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    goto :goto_1

    .line 228
    :cond_a
    new-instance v23, Lio/sentry/u2;

    .line 229
    .line 230
    iget-object v5, v3, Lio/sentry/android/core/b0$b;->c:Ljava/io/File;

    .line 231
    .line 232
    iget-object v6, v1, Lio/sentry/android/core/d0;->o:Ljava/util/Date;

    .line 233
    .line 234
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    iget-object v7, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 239
    .line 240
    invoke-virtual {v7}, Lio/sentry/android/core/p0;->d()I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    if-eqz v4, :cond_b

    .line 245
    .line 246
    array-length v7, v4

    .line 247
    if-lez v7, :cond_b

    .line 248
    .line 249
    const/4 v7, 0x0

    .line 250
    aget-object v4, v4, v7

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_b
    const-string v4, ""

    .line 254
    .line 255
    :goto_2
    move-object v12, v4

    .line 256
    new-instance v13, Lio/sentry/android/core/c0;

    .line 257
    .line 258
    invoke-direct {v13}, Lio/sentry/android/core/c0;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v4, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 262
    .line 263
    invoke-virtual {v4}, Lio/sentry/android/core/p0;->b()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    iget-object v4, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 268
    .line 269
    invoke-virtual {v4}, Lio/sentry/android/core/p0;->c()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v15

    .line 273
    iget-object v4, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 274
    .line 275
    invoke-virtual {v4}, Lio/sentry/android/core/p0;->e()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v16

    .line 279
    iget-object v4, v1, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 280
    .line 281
    invoke-virtual {v4}, Lio/sentry/android/core/p0;->f()Ljava/lang/Boolean;

    .line 282
    .line 283
    .line 284
    move-result-object v18

    .line 285
    invoke-virtual/range {p6 .. p6}, Lio/sentry/s5;->getProguardUuid()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v19

    .line 289
    invoke-virtual/range {p6 .. p6}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v20

    .line 293
    invoke-virtual/range {p6 .. p6}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v21

    .line 297
    iget-boolean v2, v3, Lio/sentry/android/core/b0$b;->e:Z

    .line 298
    .line 299
    if-nez v2, :cond_d

    .line 300
    .line 301
    if-eqz p4, :cond_c

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_c
    const-string v2, "normal"

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_d
    :goto_3
    const-string v2, "timeout"

    .line 308
    .line 309
    :goto_4
    move-object/from16 v22, v2

    .line 310
    .line 311
    iget-object v8, v3, Lio/sentry/android/core/b0$b;->d:Ljava/util/Map;

    .line 312
    .line 313
    move-object/from16 v2, v23

    .line 314
    .line 315
    move-object v3, v5

    .line 316
    move-object v4, v6

    .line 317
    move-object v5, v11

    .line 318
    move-object/from16 v6, p1

    .line 319
    .line 320
    move-object/from16 v7, p2

    .line 321
    .line 322
    move-object v0, v8

    .line 323
    move-object/from16 v8, p3

    .line 324
    .line 325
    move-object v11, v12

    .line 326
    move-object v12, v13

    .line 327
    move-object v13, v14

    .line 328
    move-object v14, v15

    .line 329
    move-object/from16 v15, v16

    .line 330
    .line 331
    move-object/from16 v16, v18

    .line 332
    .line 333
    move-object/from16 v18, v19

    .line 334
    .line 335
    move-object/from16 v19, v20

    .line 336
    .line 337
    move-object/from16 v20, v21

    .line 338
    .line 339
    move-object/from16 v21, v22

    .line 340
    .line 341
    move-object/from16 v22, v0

    .line 342
    .line 343
    invoke-direct/range {v2 .. v22}, Lio/sentry/u2;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 344
    .line 345
    .line 346
    monitor-exit p0

    .line 347
    return-object v23

    .line 348
    :cond_e
    :goto_5
    :try_start_5
    iget-object v2, v1, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 349
    .line 350
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 351
    .line 352
    const-string v5, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    .line 353
    .line 354
    move-object/from16 v6, p3

    .line 355
    .line 356
    filled-new-array {v0, v6}, [Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-interface {v2, v3, v5, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    .line 362
    .line 363
    monitor-exit p0

    .line 364
    return-object v4

    .line 365
    :catchall_0
    move-exception v0

    .line 366
    monitor-exit p0

    .line 367
    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lio/sentry/a1;Ljava/util/List;Lio/sentry/s5;)Lio/sentry/u2;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {p1}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v5, p2

    .line 29
    move-object v6, p3

    .line 30
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/d0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/s5;)Lio/sentry/u2;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public declared-synchronized b(Lio/sentry/a1;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lio/sentry/v2;

    .line 11
    .line 12
    iget-wide v1, p0, Lio/sentry/android/core/d0;->m:J

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-wide v2, p0, Lio/sentry/android/core/d0;->n:J

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, p1, v1, v2}, Lio/sentry/v2;-><init>(Lio/sentry/a1;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/v2;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, p0, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/sentry/v2;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v0, p0, Lio/sentry/android/core/d0;->k:Lio/sentry/v2;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/v2;->j()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/sentry/k0;->B()Lio/sentry/s5;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/core/d0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/s5;)Lio/sentry/u2;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    iput v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/d0;->l:Lio/sentry/android/core/b0;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lio/sentry/android/core/b0;->f()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/d0;->g:Lio/sentry/android/core/p0;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/16 v1, 0x16

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/sentry/android/core/d0;->d()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lio/sentry/android/core/d0;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 33
    .line 34
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v3, "Profiler started."

    .line 37
    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    iput v0, p0, Lio/sentry/android/core/d0;->i:I

    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/android/core/d0;->b:Lio/sentry/ILogger;

    .line 50
    .line 51
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 52
    .line 53
    const-string v3, "A profile is already running. This profile will be ignored."

    .line 54
    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0
.end method
