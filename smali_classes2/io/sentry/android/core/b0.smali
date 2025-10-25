.class public Lio/sentry/android/core/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/b0$c;,
        Lio/sentry/android/core/b0$b;
    }
.end annotation


# instance fields
.field private a:J

.field private final b:Ljava/io/File;

.field private final c:I

.field private d:Ljava/util/concurrent/Future;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;

.field private final g:Lio/sentry/android/core/internal/util/t;

.field private final h:Ljava/util/ArrayDeque;

.field private final i:Ljava/util/ArrayDeque;

.field private final j:Ljava/util/ArrayDeque;

.field private final k:Ljava/util/Map;

.field private final l:Lio/sentry/android/core/p0;

.field private final m:Lio/sentry/x0;

.field private final n:Lio/sentry/ILogger;

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/t;Lio/sentry/x0;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lio/sentry/android/core/b0;->a:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/b0;->e:Ljava/io/File;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/sentry/android/core/b0;->h:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/android/core/b0;->i:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/sentry/android/core/b0;->j:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lio/sentry/android/core/b0;->o:Z

    .line 43
    .line 44
    new-instance v0, Ljava/io/File;

    .line 45
    .line 46
    const-string v1, "TracesFilesDirPath is required"

    .line 47
    .line 48
    invoke-static {p1, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lio/sentry/android/core/b0;->b:Ljava/io/File;

    .line 58
    .line 59
    iput p2, p0, Lio/sentry/android/core/b0;->c:I

    .line 60
    .line 61
    const-string p1, "Logger is required"

    .line 62
    .line 63
    invoke-static {p5, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lio/sentry/ILogger;

    .line 68
    .line 69
    iput-object p1, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 70
    .line 71
    const-string p1, "ExecutorService is required."

    .line 72
    .line 73
    invoke-static {p4, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lio/sentry/x0;

    .line 78
    .line 79
    iput-object p1, p0, Lio/sentry/android/core/b0;->m:Lio/sentry/x0;

    .line 80
    .line 81
    const-string p1, "SentryFrameMetricsCollector is required"

    .line 82
    .line 83
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lio/sentry/android/core/internal/util/t;

    .line 88
    .line 89
    iput-object p1, p0, Lio/sentry/android/core/b0;->g:Lio/sentry/android/core/internal/util/t;

    .line 90
    .line 91
    const-string p1, "The BuildInfoProvider is required."

    .line 92
    .line 93
    invoke-static {p6, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lio/sentry/android/core/p0;

    .line 98
    .line 99
    iput-object p1, p0, Lio/sentry/android/core/b0;->l:Lio/sentry/android/core/p0;

    .line 100
    .line 101
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/b0;->h()V

    return-void
.end method

.method static synthetic b(Lio/sentry/android/core/b0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/b0;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/b0;->j:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/b0;->i:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/sentry/android/core/b0;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/b0;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic h()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/b0;->g(ZLjava/util/List;)Lio/sentry/android/core/b0$b;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private i(Ljava/util/List;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b0;->l:Lio/sentry/android/core/p0;

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
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lio/sentry/android/core/b0;->a:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v0, v2

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    new-instance v2, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 57
    .line 58
    .line 59
    monitor-enter p1

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lio/sentry/r2;

    .line 75
    .line 76
    invoke-virtual {v6}, Lio/sentry/r2;->c()Lio/sentry/g;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v6}, Lio/sentry/r2;->d()Lio/sentry/u1;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    new-instance v8, Lio/sentry/profilemeasurements/b;

    .line 87
    .line 88
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    invoke-virtual {v7}, Lio/sentry/g;->b()J

    .line 91
    .line 92
    .line 93
    move-result-wide v10

    .line 94
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    add-long/2addr v9, v0

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v7}, Lio/sentry/g;->a()D

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-direct {v8, v9, v7}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_2
    const-wide/16 v7, -0x1

    .line 118
    .line 119
    if-eqz v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {v6}, Lio/sentry/u1;->b()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    cmp-long v9, v9, v7

    .line 126
    .line 127
    if-lez v9, :cond_3

    .line 128
    .line 129
    new-instance v9, Lio/sentry/profilemeasurements/b;

    .line 130
    .line 131
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    invoke-virtual {v6}, Lio/sentry/u1;->a()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    add-long/2addr v10, v0

    .line 142
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    invoke-virtual {v6}, Lio/sentry/u1;->b()J

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-direct {v9, v10, v11}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_3
    if-eqz v6, :cond_1

    .line 161
    .line 162
    invoke-virtual {v6}, Lio/sentry/u1;->c()J

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    cmp-long v7, v9, v7

    .line 167
    .line 168
    if-lez v7, :cond_1

    .line 169
    .line 170
    new-instance v7, Lio/sentry/profilemeasurements/b;

    .line 171
    .line 172
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    .line 174
    invoke-virtual {v6}, Lio/sentry/u1;->a()J

    .line 175
    .line 176
    .line 177
    move-result-wide v9

    .line 178
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v8

    .line 182
    add-long/2addr v8, v0

    .line 183
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v6}, Lio/sentry/u1;->c()J

    .line 188
    .line 189
    .line 190
    move-result-wide v9

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-direct {v7, v8, v6}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_5

    .line 209
    .line 210
    iget-object p1, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 211
    .line 212
    const-string v0, "cpu_usage"

    .line 213
    .line 214
    new-instance v1, Lio/sentry/profilemeasurements/a;

    .line 215
    .line 216
    const-string v5, "percent"

    .line 217
    .line 218
    invoke-direct {v1, v5, v4}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_6

    .line 229
    .line 230
    iget-object p1, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 231
    .line 232
    const-string v0, "memory_footprint"

    .line 233
    .line 234
    new-instance v1, Lio/sentry/profilemeasurements/a;

    .line 235
    .line 236
    const-string v4, "byte"

    .line 237
    .line 238
    invoke-direct {v1, v4, v2}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_7

    .line 249
    .line 250
    iget-object p1, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 251
    .line 252
    const-string v0, "memory_native_footprint"

    .line 253
    .line 254
    new-instance v1, Lio/sentry/profilemeasurements/a;

    .line 255
    .line 256
    const-string v2, "byte"

    .line 257
    .line 258
    invoke-direct {v1, v2, v3}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    throw v0

    .line 268
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized f()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/b0;->o:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v2, v1}, Lio/sentry/android/core/b0;->g(ZLjava/util/List;)Lio/sentry/android/core/b0$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized g(ZLjava/util/List;)Lio/sentry/android/core/b0$b;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/b0;->o:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 9
    .line 10
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v0, "Profiler not running"

    .line 13
    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v1

    .line 21
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/b0;->l:Lio/sentry/android/core/p0;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 27
    const/16 v3, 0x15

    .line 28
    .line 29
    if-ge v0, v3, :cond_1

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object v1

    .line 33
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_3
    iput-boolean v2, p0, Lio/sentry/android/core/b0;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_4
    iget-object v3, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 41
    .line 42
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 43
    .line 44
    const-string v5, "Error while stopping profiling: "

    .line 45
    .line 46
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_1
    :try_start_5
    iget-object v0, p0, Lio/sentry/android/core/b0;->g:Lio/sentry/android/core/internal/util/t;

    .line 51
    .line 52
    iget-object v3, p0, Lio/sentry/android/core/b0;->f:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lio/sentry/android/core/internal/util/t;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/b0;->e:Ljava/io/File;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 70
    .line 71
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 72
    .line 73
    const-string v0, "Trace file does not exists"

    .line 74
    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-object v1

    .line 82
    :cond_2
    :try_start_6
    iget-object v0, p0, Lio/sentry/android/core/b0;->i:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 91
    .line 92
    const-string v2, "slow_frame_renders"

    .line 93
    .line 94
    new-instance v3, Lio/sentry/profilemeasurements/a;

    .line 95
    .line 96
    const-string v4, "nanosecond"

    .line 97
    .line 98
    iget-object v9, p0, Lio/sentry/android/core/b0;->i:Ljava/util/ArrayDeque;

    .line 99
    .line 100
    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/b0;->j:Ljava/util/ArrayDeque;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 115
    .line 116
    const-string v2, "frozen_frame_renders"

    .line 117
    .line 118
    new-instance v3, Lio/sentry/profilemeasurements/a;

    .line 119
    .line 120
    const-string v4, "nanosecond"

    .line 121
    .line 122
    iget-object v9, p0, Lio/sentry/android/core/b0;->j:Ljava/util/ArrayDeque;

    .line 123
    .line 124
    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/b0;->h:Ljava/util/ArrayDeque;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    iget-object v0, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 139
    .line 140
    const-string v2, "screen_frame_rates"

    .line 141
    .line 142
    new-instance v3, Lio/sentry/profilemeasurements/a;

    .line 143
    .line 144
    const-string v4, "hz"

    .line 145
    .line 146
    iget-object v9, p0, Lio/sentry/android/core/b0;->h:Ljava/util/ArrayDeque;

    .line 147
    .line 148
    invoke-direct {v3, v4, v9}, Lio/sentry/profilemeasurements/a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-direct {p0, p2}, Lio/sentry/android/core/b0;->i(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;

    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 163
    .line 164
    .line 165
    iput-object v1, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;

    .line 166
    .line 167
    :cond_6
    new-instance p2, Lio/sentry/android/core/b0$b;

    .line 168
    .line 169
    iget-object v10, p0, Lio/sentry/android/core/b0;->e:Ljava/io/File;

    .line 170
    .line 171
    iget-object v11, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 172
    .line 173
    move-object v4, p2

    .line 174
    move v9, p1

    .line 175
    invoke-direct/range {v4 .. v11}, Lio/sentry/android/core/b0$b;-><init>(JJZLjava/io/File;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 176
    .line 177
    .line 178
    monitor-exit p0

    .line 179
    return-object p2

    .line 180
    :catchall_1
    move-exception p1

    .line 181
    :try_start_7
    iput-boolean v2, p0, Lio/sentry/android/core/b0;->o:Z

    .line 182
    .line 183
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 184
    :catchall_2
    move-exception p1

    .line 185
    monitor-exit p0

    .line 186
    throw p1
.end method

.method public declared-synchronized j()Lio/sentry/android/core/b0$c;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lio/sentry/android/core/b0;->c:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 10
    .line 11
    sget-object v5, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 12
    .line 13
    const-string v6, "Disabling profiling because intervaUs is set to %d"

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    aput-object v0, v1, v2

    .line 22
    .line 23
    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v3

    .line 28
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lio/sentry/android/core/b0;->o:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 33
    .line 34
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v4, "Profiling has already started..."

    .line 37
    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0, v1, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-object v3

    .line 45
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/b0;->l:Lio/sentry/android/core/p0;

    .line 46
    .line 47
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    const/16 v4, 0x15

    .line 52
    .line 53
    if-ge v0, v4, :cond_2

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-object v3

    .line 57
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 58
    .line 59
    iget-object v4, p0, Lio/sentry/android/core/b0;->b:Ljava/io/File;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, ".trace"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lio/sentry/android/core/b0;->e:Ljava/io/File;

    .line 86
    .line 87
    iget-object v0, p0, Lio/sentry/android/core/b0;->k:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lio/sentry/android/core/b0;->h:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/android/core/b0;->i:Ljava/util/ArrayDeque;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lio/sentry/android/core/b0;->j:Ljava/util/ArrayDeque;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lio/sentry/android/core/b0;->g:Lio/sentry/android/core/internal/util/t;

    .line 108
    .line 109
    new-instance v4, Lio/sentry/android/core/b0$a;

    .line 110
    .line 111
    invoke-direct {v4, p0}, Lio/sentry/android/core/b0$a;-><init>(Lio/sentry/android/core/b0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Lio/sentry/android/core/internal/util/t;->m(Lio/sentry/android/core/internal/util/t$b;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lio/sentry/android/core/b0;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .line 120
    :try_start_4
    iget-object v0, p0, Lio/sentry/android/core/b0;->m:Lio/sentry/x0;

    .line 121
    .line 122
    new-instance v4, Lio/sentry/android/core/a0;

    .line 123
    .line 124
    invoke-direct {v4, p0}, Lio/sentry/android/core/a0;-><init>(Lio/sentry/android/core/b0;)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v5, 0x7530

    .line 128
    .line 129
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/x0;->c(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lio/sentry/android/core/b0;->d:Ljava/util/concurrent/Future;
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_5
    iget-object v4, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 138
    .line 139
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 140
    .line 141
    const-string v6, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?"

    .line 142
    .line 143
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    iput-wide v4, p0, Lio/sentry/android/core/b0;->a:J

    .line 151
    .line 152
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 157
    .line 158
    .line 159
    move-result-wide v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    :try_start_6
    iget-object v0, p0, Lio/sentry/android/core/b0;->e:Ljava/io/File;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget v4, p0, Lio/sentry/android/core/b0;->c:I

    .line 167
    .line 168
    const v5, 0x2dc6c0

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v5, v4}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    .line 172
    .line 173
    .line 174
    iput-boolean v1, p0, Lio/sentry/android/core/b0;->o:Z

    .line 175
    .line 176
    new-instance v0, Lio/sentry/android/core/b0$c;

    .line 177
    .line 178
    iget-wide v7, p0, Lio/sentry/android/core/b0;->a:J

    .line 179
    .line 180
    move-object v6, v0

    .line 181
    invoke-direct/range {v6 .. v11}, Lio/sentry/android/core/b0$c;-><init>(JJLjava/util/Date;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    .line 183
    .line 184
    monitor-exit p0

    .line 185
    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    :try_start_7
    invoke-virtual {p0, v2, v3}, Lio/sentry/android/core/b0;->g(ZLjava/util/List;)Lio/sentry/android/core/b0$b;

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lio/sentry/android/core/b0;->n:Lio/sentry/ILogger;

    .line 191
    .line 192
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 193
    .line 194
    const-string v5, "Unable to start a profile: "

    .line 195
    .line 196
    invoke-interface {v1, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    iput-boolean v2, p0, Lio/sentry/android/core/b0;->o:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 200
    .line 201
    monitor-exit p0

    .line 202
    return-object v3

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    monitor-exit p0

    .line 205
    throw v0
.end method
