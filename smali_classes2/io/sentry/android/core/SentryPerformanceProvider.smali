.class public final Lio/sentry/android/core/SentryPerformanceProvider;
.super Lio/sentry/android/core/c1;
.source "SourceFile"


# static fields
.field private static final e:J


# instance fields
.field private b:Landroid/app/Application;

.field private final c:Lio/sentry/ILogger;

.field private final d:Lio/sentry/android/core/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lio/sentry/android/core/SentryPerformanceProvider;->e:J

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/c1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/u;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/android/core/u;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 10
    .line 11
    new-instance v1, Lio/sentry/android/core/p0;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->d:Lio/sentry/android/core/p0;

    .line 17
    .line 18
    return-void
.end method

.method private a(Lio/sentry/android/core/performance/g;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 9
    .line 10
    sget-object v1, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v2, "App. Context from ContentProvider is null"

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->d:Lio/sentry/android/core/p0;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/sentry/android/core/p0;->d()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x15

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v1}, Lio/sentry/android/core/z;->d(Landroid/content/Context;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    const-string v4, "app_start_profiling_config"

    .line 38
    .line 39
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    .line 57
    .line 58
    new-instance v2, Ljava/io/InputStreamReader;

    .line 59
    .line 60
    new-instance v4, Ljava/io/FileInputStream;

    .line 61
    .line 62
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    .line 70
    .line 71
    :try_start_1
    new-instance v2, Lio/sentry/r1;

    .line 72
    .line 73
    invoke-static {}, Lio/sentry/s5;->empty()Lio/sentry/s5;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v2, v3}, Lio/sentry/r1;-><init>(Lio/sentry/s5;)V

    .line 78
    .line 79
    .line 80
    const-class v3, Lio/sentry/r3;

    .line 81
    .line 82
    invoke-virtual {v2, v9, v3}, Lio/sentry/r1;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lio/sentry/r3;

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 91
    .line 92
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 93
    .line 94
    const-string v2, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start."

    .line 95
    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_2
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lio/sentry/r3;->f()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 112
    .line 113
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 114
    .line 115
    const-string v2, "Profiling is not enabled. App start profiling will not start."

    .line 116
    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .line 121
    .line 122
    :try_start_4
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    :try_start_5
    new-instance v3, Lio/sentry/x6;

    .line 127
    .line 128
    invoke-virtual {v2}, Lio/sentry/r3;->g()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v2}, Lio/sentry/r3;->d()Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v2}, Lio/sentry/r3;->e()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v2}, Lio/sentry/r3;->a()Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-direct {v3, v4, v5, v6, v7}, Lio/sentry/x6;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v3}, Lio/sentry/android/core/performance/g;->A(Lio/sentry/x6;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lio/sentry/x6;->b()Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_6

    .line 167
    .line 168
    invoke-virtual {v3}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_5

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_5
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 180
    .line 181
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 182
    .line 183
    const-string v5, "App start profiling started."

    .line 184
    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    new-instance v10, Lio/sentry/android/core/d0;

    .line 191
    .line 192
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->d:Lio/sentry/android/core/p0;

    .line 193
    .line 194
    new-instance v4, Lio/sentry/android/core/internal/util/t;

    .line 195
    .line 196
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 197
    .line 198
    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->d:Lio/sentry/android/core/p0;

    .line 199
    .line 200
    invoke-direct {v4, v1, v0, v5}, Lio/sentry/android/core/internal/util/t;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 201
    .line 202
    .line 203
    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 204
    .line 205
    invoke-virtual {v2}, Lio/sentry/r3;->b()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v2}, Lio/sentry/r3;->f()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-virtual {v2}, Lio/sentry/r3;->c()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    new-instance v11, Lio/sentry/b5;

    .line 218
    .line 219
    invoke-direct {v11}, Lio/sentry/b5;-><init>()V

    .line 220
    .line 221
    .line 222
    move-object v0, v10

    .line 223
    move-object v2, v3

    .line 224
    move-object v3, v4

    .line 225
    move-object v4, v5

    .line 226
    move-object v5, v6

    .line 227
    move v6, v7

    .line 228
    move v7, v8

    .line 229
    move-object v8, v11

    .line 230
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/d0;-><init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/x0;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v10}, Lio/sentry/android/core/performance/g;->z(Lio/sentry/b1;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v10}, Lio/sentry/b1;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    .line 238
    .line 239
    :try_start_6
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_6
    :goto_0
    :try_start_7
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 244
    .line 245
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 246
    .line 247
    const-string v2, "App start profiling was not sampled. It will not start."

    .line 248
    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    .line 253
    .line 254
    :try_start_8
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :catchall_0
    move-exception p1

    .line 259
    :try_start_9
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 268
    :catchall_2
    move-exception p1

    .line 269
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 270
    .line 271
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 272
    .line 273
    const-string v2, "Error reading app start profiling config file. "

    .line 274
    .line 275
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :catch_0
    move-exception p1

    .line 280
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->c:Lio/sentry/ILogger;

    .line 281
    .line 282
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 283
    .line 284
    const-string v2, "App start profiling config file not found. "

    .line 285
    .line 286
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    :cond_7
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;Lio/sentry/android/core/performance/g;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Lio/sentry/android/core/SentryPerformanceProvider;->e:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->d:Lio/sentry/android/core/p0;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x18

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 29
    .line 30
    .line 31
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Landroid/app/Application;

    .line 36
    .line 37
    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->b:Landroid/app/Application;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->b:Landroid/app/Application;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p2, p1}, Lio/sentry/android/core/performance/g;->y(Landroid/app/Application;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    const-class v0, Lio/sentry/android/core/SentryPerformanceProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "An applicationId is required to fulfill the manifest placeholder."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->b(Landroid/content/Context;Lio/sentry/android/core/performance/g;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->a(Lio/sentry/android/core/performance/g;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lio/sentry/android/core/performance/g;->h()Lio/sentry/b1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lio/sentry/b1;->close()V

    .line 17
    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method
