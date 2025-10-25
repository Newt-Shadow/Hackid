.class public Lorg/apache/tika/pipes/PipesClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final LOG:Lmf/c;

.field private static final MAX_BYTES_BEFORE_READY:I = 0x4e20

.field private static final WAIT_ON_DESTROY_MS:J = 0x2710L


# instance fields
.field private volatile closed:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final executorServiceLock:[Ljava/lang/Object;

.field private filesProcessed:I

.field private input:Ljava/io/DataInputStream;

.field private output:Ljava/io/DataOutputStream;

.field private final pipesClientId:I

.field private final pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

.field private process:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/tika/pipes/PipesClient;

    .line 2
    .line 3
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/tika/pipes/PipesClient;->CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/pipes/PipesConfigBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->executorServiceLock:[Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/apache/tika/pipes/PipesClient;->closed:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    iput v0, p0, Lorg/apache/tika/pipes/PipesClient;->filesProcessed:I

    .line 19
    .line 20
    iput-object p1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 21
    .line 22
    sget-object p1, Lorg/apache/tika/pipes/PipesClient;->CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lorg/apache/tika/pipes/PipesClient;Lgf/e;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->lambda$restart$1(Lgf/e;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private actuallyProcess(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/pipes/PipesResult;
    .locals 14

    .line 1
    const-string v0, "pipesClientId="

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v7

    .line 7
    const/4 v9, 0x1

    .line 8
    new-array v10, v9, [Lorg/apache/tika/pipes/PipesResult;

    .line 9
    .line 10
    new-instance v11, Ljava/util/concurrent/FutureTask;

    .line 11
    .line 12
    new-instance v12, Lorg/apache/tika/pipes/c;

    .line 13
    .line 14
    move-object v1, v12

    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p1

    .line 17
    move-wide v4, v7

    .line 18
    move-object v6, v10

    .line 19
    invoke-direct/range {v1 .. v6}, Lorg/apache/tika/pipes/c;-><init>(Lorg/apache/tika/pipes/PipesClient;Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v11, v12}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x3

    .line 28
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/tika/pipes/PipesClient;->closed:Z

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    iget-object v4, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    invoke-interface {v4, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 38
    .line 39
    invoke-virtual {v4}, Lorg/apache/tika/pipes/PipesConfigBase;->getTimeoutMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    invoke-virtual {v11, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lorg/apache/tika/pipes/PipesResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    invoke-virtual {v11, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    iget v5, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, ": PipesClient closed"

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    sub-long/2addr v4, v7

    .line 91
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 95
    .line 96
    const-string v6, "pipesClientId={} client timeout: {} in {} ms"

    .line 97
    .line 98
    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    iget v7, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 101
    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    aput-object v7, v3, v2

    .line 107
    .line 108
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    aput-object p1, v3, v9

    .line 113
    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    aput-object p1, v3, v1

    .line 119
    .line 120
    invoke-interface {v0, v6, v3}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->TIMEOUT:Lorg/apache/tika/pipes/PipesResult;

    .line 124
    .line 125
    invoke-direct {p0, p1, v10}, Lorg/apache/tika/pipes/PipesClient;->buildFatalResult(Lorg/apache/tika/pipes/PipesResult;[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    .line 126
    .line 127
    .line 128
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-virtual {v11, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 130
    .line 131
    .line 132
    return-object p1

    .line 133
    :catch_1
    move-exception v4

    .line 134
    :try_start_3
    sget-object v5, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 135
    .line 136
    iget v6, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 137
    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, ": execution exception"

    .line 150
    .line 151
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v5, v0, v4}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v12

    .line 165
    sub-long/2addr v12, v7

    .line 166
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->pauseThenDestroy()V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 170
    .line 171
    invoke-static {v0}, Lorg/apache/tika/pipes/a;->a(Ljava/lang/Process;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_1

    .line 176
    .line 177
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const/16 v4, 0x11

    .line 184
    .line 185
    if-ne v4, v0, :cond_1

    .line 186
    .line 187
    const-string v0, "pipesClientId={} server timeout: {} in {} ms"

    .line 188
    .line 189
    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    .line 191
    iget v4, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 192
    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    aput-object v4, v3, v2

    .line 198
    .line 199
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    aput-object p1, v3, v9

    .line 204
    .line 205
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    aput-object p1, v3, v1

    .line 210
    .line 211
    invoke-interface {v5, v0, v3}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->TIMEOUT:Lorg/apache/tika/pipes/PipesResult;

    .line 215
    .line 216
    invoke-direct {p0, p1, v10}, Lorg/apache/tika/pipes/PipesClient;->buildFatalResult(Lorg/apache/tika/pipes/PipesResult;[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    .line 217
    .line 218
    .line 219
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    invoke-virtual {v11, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_1
    :try_start_4
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 225
    .line 226
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    const-wide/16 v6, 0x1f4

    .line 229
    .line 230
    invoke-static {v0, v6, v7, v4}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 234
    .line 235
    invoke-static {v0}, Lorg/apache/tika/pipes/a;->a(Ljava/lang/Process;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    .line 241
    const-string v0, "pipesClientId={} crash: {} in {} ms with no exit code available"

    .line 242
    .line 243
    new-array v3, v3, [Ljava/lang/Object;

    .line 244
    .line 245
    iget v4, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 246
    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    aput-object v4, v3, v2

    .line 252
    .line 253
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    aput-object p1, v3, v9

    .line 258
    .line 259
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    aput-object p1, v3, v1

    .line 264
    .line 265
    invoke-interface {v5, v0, v3}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "pipesClientId={} crash: {} in {} ms with exit code {}"

    .line 270
    .line 271
    const/4 v4, 0x4

    .line 272
    new-array v4, v4, [Ljava/lang/Object;

    .line 273
    .line 274
    iget v6, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 275
    .line 276
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    aput-object v6, v4, v2

    .line 281
    .line 282
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    aput-object p1, v4, v9

    .line 287
    .line 288
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    aput-object p1, v4, v1

    .line 293
    .line 294
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    aput-object p1, v4, v3

    .line 305
    .line 306
    invoke-interface {v5, v0, v4}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :goto_0
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->UNSPECIFIED_CRASH:Lorg/apache/tika/pipes/PipesResult;

    .line 310
    .line 311
    invoke-direct {p0, p1, v10}, Lorg/apache/tika/pipes/PipesClient;->buildFatalResult(Lorg/apache/tika/pipes/PipesResult;[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    .line 312
    .line 313
    .line 314
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    invoke-virtual {v11, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 316
    .line 317
    .line 318
    return-object p1

    .line 319
    :catch_2
    move-exception p1

    .line 320
    :try_start_5
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 321
    .line 322
    .line 323
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    :goto_1
    invoke-virtual {v11, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 325
    .line 326
    .line 327
    throw p1
.end method

.method public static synthetic b(Lorg/apache/tika/pipes/PipesClient;Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tika/pipes/PipesClient;->lambda$actuallyProcess$0(Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    move-result-object p0

    return-object p0
.end method

.method private buildFatalResult(Lorg/apache/tika/pipes/PipesResult;[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object v1, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 8
    .line 9
    invoke-interface {v1}, Lmf/c;->n()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    aget-object v2, p2, v0

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesResult;->getEmitData()Lorg/apache/tika/pipes/emitter/EmitData;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "intermediate result: {}"

    .line 22
    .line 23
    invoke-interface {v1, v3, v2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    aget-object v1, p2, v0

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesResult;->getEmitData()Lorg/apache/tika/pipes/emitter/EmitData;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lorg/apache/tika/pipes/emitter/EmitData;->getMetadataList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lorg/apache/tika/metadata/Metadata;

    .line 41
    .line 42
    sget-object v2, Lorg/apache/tika/metadata/TikaCoreProperties;->PIPES_RESULT:Lorg/apache/tika/metadata/Property;

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/apache/tika/pipes/PipesResult;->getStatus()Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lorg/apache/tika/pipes/PipesResult;

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/apache/tika/pipes/PipesResult;->getStatus()Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    aget-object p2, p2, v0

    .line 62
    .line 63
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesResult;->getEmitData()Lorg/apache/tika/pipes/emitter/EmitData;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-direct {v1, p1, p2, v0}, Lorg/apache/tika/pipes/PipesResult;-><init>(Lorg/apache/tika/pipes/PipesResult$STATUS;Lorg/apache/tika/pipes/emitter/EmitData;Z)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method private deserializeEmitData()Lorg/apache/tika/pipes/PipesResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/io/input/h;->a()Lorg/apache/commons/io/input/h$a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Lorg/apache/commons/io/input/h$a;->m([B)Lorg/apache/commons/io/input/h$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/apache/commons/io/input/h$a;->l()Lorg/apache/commons/io/input/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/apache/tika/pipes/emitter/EmitData;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/apache/tika/pipes/emitter/EmitData;->getContainerStackTrace()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    new-instance v2, Lorg/apache/tika/pipes/PipesResult;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Lorg/apache/tika/pipes/PipesResult;-><init>(Lorg/apache/tika/pipes/emitter/EmitData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_0
    :try_start_3
    new-instance v3, Lorg/apache/tika/pipes/PipesResult;

    .line 57
    .line 58
    invoke-direct {v3, v0, v2}, Lorg/apache/tika/pipes/PipesResult;-><init>(Lorg/apache/tika/pipes/emitter/EmitData;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 77
    .line 78
    const-string v2, "class not found exception deserializing data"

    .line 79
    .line 80
    invoke-interface {v1, v2, v0}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v1
.end method

.method private deserializeIntermediateResult(Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/pipes/PipesResult;
    .locals 3

    .line 1
    iget-object p2, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    new-array p2, p2, [B

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/io/input/h;->a()Lorg/apache/commons/io/input/h$a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p2}, Lorg/apache/commons/io/input/h$a;->m([B)Lorg/apache/commons/io/input/h$a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lorg/apache/commons/io/input/h$a;->l()Lorg/apache/commons/io/input/h;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lorg/apache/tika/metadata/Metadata;

    .line 36
    .line 37
    new-instance v1, Lorg/apache/tika/pipes/emitter/EmitData;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {v1, p1, p2}, Lorg/apache/tika/pipes/emitter/EmitData;-><init>(Lorg/apache/tika/pipes/emitter/EmitKey;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lorg/apache/tika/pipes/PipesResult;

    .line 47
    .line 48
    sget-object p2, Lorg/apache/tika/pipes/PipesResult$STATUS;->INTERMEDIATE_RESULT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {p1, p2, v1, v2}, Lorg/apache/tika/pipes/PipesResult;-><init>(Lorg/apache/tika/pipes/PipesResult$STATUS;Lorg/apache/tika/pipes/emitter/EmitData;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 70
    .line 71
    const-string v0, "class not found exception deserializing data"

    .line 72
    .line 73
    invoke-interface {p2, v0, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method

.method private destroyForcibly()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v2, 0x2710

    .line 11
    .line 12
    invoke-static {v0, v2, v3, v1}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :catch_1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/tika/pipes/a;->a(Ljava/lang/Process;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 34
    .line 35
    const-string v1, "Process still alive after {}ms"

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Lmf/c;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private getCommandline()[Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getForkedJvmArgs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    move v5, v2

    .line 14
    move v6, v5

    .line 15
    move v7, v6

    .line 16
    move v8, v7

    .line 17
    move-object v4, v3

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    const-string v10, "-cp"

    .line 23
    .line 24
    if-eqz v9, :cond_7

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 31
    .line 32
    const-string v11, "-Djava.awt.headless"

    .line 33
    .line 34
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    const/4 v12, 0x1

    .line 39
    if-eqz v11, :cond_1

    .line 40
    .line 41
    move v6, v12

    .line 42
    :cond_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-nez v10, :cond_2

    .line 47
    .line 48
    const-string v10, "--classpath"

    .line 49
    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-eqz v10, :cond_3

    .line 55
    .line 56
    :cond_2
    move v5, v12

    .line 57
    :cond_3
    const-string v10, "-XX:+ExitOnOutOfMemoryError"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-nez v10, :cond_4

    .line 64
    .line 65
    const-string v10, "-XX:+CrashOnOutOfMemoryError"

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_5

    .line 72
    .line 73
    :cond_4
    move v7, v12

    .line 74
    :cond_5
    const-string v10, "-Dlog4j.configuration"

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_6

    .line 81
    .line 82
    move v8, v12

    .line 83
    :cond_6
    const-string v10, "-Xloggc:"

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_0

    .line 90
    .line 91
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v10, "id-"

    .line 99
    .line 100
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "${pipesClientId}"

    .line 111
    .line 112
    invoke-virtual {v9, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v4, v3

    .line 117
    move-object v3, v9

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    if-eqz v3, :cond_8

    .line 120
    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 135
    .line 136
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesConfigBase;->getJavaPath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3}, Lorg/apache/tika/utils/ProcessUtils;->escapeCommandLine(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    if-nez v5, :cond_9

    .line 148
    .line 149
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    const-string v3, "java.class.path"

    .line 153
    .line 154
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_9
    if-nez v6, :cond_a

    .line 162
    .line 163
    const-string v3, "-Djava.awt.headless=true"

    .line 164
    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_a
    if-eqz v7, :cond_b

    .line 169
    .line 170
    sget-object v3, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 171
    .line 172
    const-string v4, "I notice that you have an exit/crash on OOM. If you run heavy external processes like tesseract, this setting may result in orphaned processes which could be disastrous for performance."

    .line 173
    .line 174
    invoke-interface {v3, v4}, Lmf/c;->x(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_b
    if-nez v8, :cond_c

    .line 178
    .line 179
    const-string v3, "-Dlog4j.configurationFile=classpath:pipes-fork-server-default-log4j2.xml"

    .line 180
    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_c
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 185
    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v5, "-DpipesClientId="

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    const-string v0, "org.apache.tika.pipes.PipesServer"

    .line 210
    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 215
    .line 216
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getTikaConfig()Ljava/nio/file/Path;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lorg/apache/tika/utils/ProcessUtils;->escapeCommandLine(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 236
    .line 237
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getMaxForEmitBatchBytes()J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 249
    .line 250
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getTimeoutMillis()J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 262
    .line 263
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getShutdownClientAfterMillis()J

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 275
    .line 276
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    const-string v4, "pipesClientId={}: commandline: {}"

    .line 283
    .line 284
    invoke-interface {v0, v4, v3, v1}, Lmf/c;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    new-array v0, v2, [Ljava/lang/String;

    .line 288
    .line 289
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, [Ljava/lang/String;

    .line 294
    .line 295
    return-object v0
.end method

.method private static getMsg(Ljava/lang/String;Lgf/e;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lgf/a;->f(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "So far, I\'ve read: >"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, "<"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private synthetic lambda$actuallyProcess$0(Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;
    .locals 5

    .line 1
    invoke-static {}, Lgf/e;->j()Lgf/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgf/e$a;->l()Lgf/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lgf/e;->b()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 25
    .line 26
    sget-object v2, Lorg/apache/tika/pipes/PipesServer$STATUS;->CALL:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 52
    .line 53
    invoke-interface {v0}, Lmf/c;->n()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget v1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    sub-long/2addr v2, p2

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "pipesClientId={}: timer -- write tuple: {} ms"

    .line 75
    .line 76
    invoke-interface {v0, v3, v1, v2}, Lmf/c;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tika/pipes/PipesClient;->readResults(Lorg/apache/tika/pipes/FetchEmitTuple;J)Lorg/apache/tika/pipes/PipesResult;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesResult;->getStatus()Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    sget-object v4, Lorg/apache/tika/pipes/PipesResult$STATUS;->INTERMEDIATE_RESULT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    aput-object v2, p4, v3

    .line 111
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tika/pipes/PipesClient;->readResults(Lorg/apache/tika/pipes/FetchEmitTuple;J)Lorg/apache/tika/pipes/PipesResult;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    sget-object p1, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 118
    .line 119
    invoke-interface {p1}, Lmf/c;->e()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_2

    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide p2

    .line 129
    sub-long/2addr p2, v0

    .line 130
    const-string v3, "finished reading result in {} ms"

    .line 131
    .line 132
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p1, v3, p2}, Lmf/c;->q(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-interface {p1}, Lmf/c;->n()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_3

    .line 144
    .line 145
    iget p2, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 146
    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    sub-long/2addr v3, v0

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    const-string v0, "pipesClientId={}: timer -- read result: {} ms"

    .line 161
    .line 162
    invoke-interface {p1, v0, p2, p3}, Lmf/c;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesResult;->getStatus()Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    sget-object p2, Lorg/apache/tika/pipes/PipesResult$STATUS;->OOM:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 170
    .line 171
    if-ne p1, p2, :cond_4

    .line 172
    .line 173
    invoke-direct {p0, v2, p4}, Lorg/apache/tika/pipes/PipesClient;->buildFatalResult(Lorg/apache/tika/pipes/PipesResult;[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    return-object p1

    .line 178
    :cond_4
    return-object v2

    .line 179
    :cond_5
    new-instance p1, Ljava/lang/InterruptedException;

    .line 180
    .line 181
    const-string p2, "thread interrupt"

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :catchall_0
    move-exception p1

    .line 188
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :catchall_1
    move-exception p2

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    throw p1
.end method

.method private synthetic lambda$restart$1(Lgf/e;)Ljava/lang/Integer;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const-string v3, "pipesClientId="

    .line 10
    .line 11
    const/16 v4, 0x4e20

    .line 12
    .line 13
    if-ge v2, v4, :cond_1

    .line 14
    .line 15
    sget-object v5, Lorg/apache/tika/pipes/PipesServer$STATUS;->READY:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 16
    .line 17
    invoke-virtual {v5}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eq v0, v5, :cond_1

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    if-eq v0, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lgf/e;->write(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    iget v1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 41
    .line 42
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 43
    .line 44
    invoke-static {v2}, Lorg/apache/tika/pipes/a;->a(Ljava/lang/Process;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ": Couldn\'t start server -- read EOF before \'ready\' byte.\n process isAlive="

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, p1}, Lorg/apache/tika/pipes/PipesClient;->getMsg(Ljava/lang/String;Lgf/e;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    if-ge v2, v4, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lgf/e;->k()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-lez v0, :cond_2

    .line 86
    .line 87
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 88
    .line 89
    iget v2, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Lgf/a;->f(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v3, "pipesClientId={}: From forked process before start byte: {}"

    .line 102
    .line 103
    invoke-interface {v0, v3, v2, p1}, Lmf/c;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    iget v1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ": Couldn\'t start server: read too many bytes before \'ready\' byte.\n Make absolutely certain that your logger is not writing to stdout.\n"

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1, p1}, Lorg/apache/tika/pipes/PipesClient;->getMsg(Ljava/lang/String;Lgf/e;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
.end method

.method private pauseThenDestroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v2, 0xc8

    .line 6
    .line 7
    invoke-static {v0, v2, v3, v1}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method private ping()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/tika/pipes/a;->a(Ljava/lang/Process;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 14
    .line 15
    sget-object v2, Lorg/apache/tika/pipes/PipesServer$STATUS;->PING:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 36
    .line 37
    .line 38
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/apache/tika/pipes/PipesResult;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Lorg/apache/tika/pipes/PipesResult;-><init>(Lorg/apache/tika/pipes/PipesResult$STATUS;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private readResults(Lorg/apache/tika/pipes/FetchEmitTuple;J)Lorg/apache/tika/pipes/PipesResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, p2

    .line 12
    :try_start_0
    invoke-static {v0}, Lorg/apache/tika/pipes/PipesServer$STATUS;->lookup(I)Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 13
    .line 14
    .line 15
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    sget-object p3, Lorg/apache/tika/pipes/PipesClient$1;->$SwitchMap$org$apache$tika$pipes$PipesServer$STATUS:[I

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    aget p3, p3, v0

    .line 23
    .line 24
    packed-switch p3, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "Need to handle procesing for: "

    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "Not expecting this status: "

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :pswitch_1
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->EMPTY_OUTPUT:Lorg/apache/tika/pipes/PipesResult;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_2
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMIT_SUCCESS_PARSE_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_3
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 84
    .line 85
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 86
    .line 87
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p3, "pipesClientId={} emit success: {} in {} ms"

    .line 104
    .line 105
    invoke-interface {p2, p3, p1}, Lmf/c;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->EMIT_SUCCESS:Lorg/apache/tika/pipes/PipesResult;

    .line 109
    .line 110
    return-object p1

    .line 111
    :pswitch_4
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->PARSE_EXCEPTION_NO_EMIT:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 112
    .line 113
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :pswitch_5
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 119
    .line 120
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 121
    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string p3, "pipesClientId={} parse success: {} in {} ms"

    .line 139
    .line 140
    invoke-interface {p2, p3, p1}, Lmf/c;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->deserializeEmitData()Lorg/apache/tika/pipes/PipesResult;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :pswitch_6
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 149
    .line 150
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 151
    .line 152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    filled-new-array {p3, v0, v1}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    const-string v0, "pipesClientId={} intermediate success: {} in {} ms"

    .line 169
    .line 170
    invoke-interface {p2, v0, p3}, Lmf/c;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getEmitKey()Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p0, p2, p1}, Lorg/apache/tika/pipes/PipesClient;->deserializeIntermediateResult(Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/pipes/PipesResult;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1

    .line 186
    :pswitch_7
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 187
    .line 188
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 189
    .line 190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string p3, "pipesClientId={} fetch exception: {} in {} ms"

    .line 207
    .line 208
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->FETCH_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 212
    .line 213
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :pswitch_8
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 219
    .line 220
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 221
    .line 222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    const-string p3, "pipesClientId={} fetcher initialization exception: {} in {} ms"

    .line 239
    .line 240
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->FETCHER_INITIALIZATION_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 244
    .line 245
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :pswitch_9
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 251
    .line 252
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 253
    .line 254
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    const-string p3, "pipesClientId={} fetcher not found: {} in {} ms"

    .line 271
    .line 272
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->NO_FETCHER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 276
    .line 277
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    return-object p1

    .line 282
    :pswitch_a
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 283
    .line 284
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 285
    .line 286
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-string p3, "pipesClientId={} emitter not found: {} in {} ms"

    .line 303
    .line 304
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->NO_EMITTER_FOUND:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 308
    .line 309
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    return-object p1

    .line 314
    :pswitch_b
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 315
    .line 316
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 317
    .line 318
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object p3

    .line 322
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    const-string p3, "pipesClientId={} emit exception: {} in {} ms"

    .line 335
    .line 336
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    sget-object p1, Lorg/apache/tika/pipes/PipesResult$STATUS;->EMIT_EXCEPTION:Lorg/apache/tika/pipes/PipesResult$STATUS;

    .line 340
    .line 341
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->readMessage(Lorg/apache/tika/pipes/PipesResult$STATUS;)Lorg/apache/tika/pipes/PipesResult;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    return-object p1

    .line 346
    :pswitch_c
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 347
    .line 348
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 349
    .line 350
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    const-string p3, "pipesClientId={} server response timeout: {} in {} ms"

    .line 367
    .line 368
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->TIMEOUT:Lorg/apache/tika/pipes/PipesResult;

    .line 372
    .line 373
    return-object p1

    .line 374
    :pswitch_d
    sget-object p2, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 375
    .line 376
    iget p3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 377
    .line 378
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object p3

    .line 382
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    filled-new-array {p3, p1, v0}, [Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    const-string p3, "pipesClientId={} oom: {} in {} ms"

    .line 395
    .line 396
    invoke-interface {p2, p3, p1}, Lmf/c;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    sget-object p1, Lorg/apache/tika/pipes/PipesResult;->OOM:Lorg/apache/tika/pipes/PipesResult;

    .line 400
    .line 401
    return-object p1

    .line 402
    :catch_0
    move-exception p1

    .line 403
    const/4 p2, -0x1

    .line 404
    if-le v0, p2, :cond_0

    .line 405
    .line 406
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 407
    .line 408
    int-to-byte p3, v0

    .line 409
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 410
    .line 411
    .line 412
    move-result-object p3

    .line 413
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object p3

    .line 417
    const-string v0, "%02x"

    .line 418
    .line 419
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    goto :goto_0

    .line 424
    :cond_0
    const-string p2, "-1"

    .line 425
    .line 426
    :goto_0
    new-instance p3, Ljava/io/IOException;

    .line 427
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v1, "problem reading response from server: "

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    .line 447
    .line 448
    throw p3

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private restart()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 7
    .line 8
    const-string v2, "process still alive; trying to destroy it"

    .line 9
    .line 10
    invoke-interface {v0, v2}, Lmf/c;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 17
    .line 18
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    const-wide/16 v4, 0x1e

    .line 21
    .line 22
    invoke-static {v2, v4, v5, v3}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string v2, "pipesClientId={}: process has not yet ended"

    .line 29
    .line 30
    iget v6, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 31
    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v0, v2, v6}, Lmf/c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    .line 46
    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    const-string v2, "pipesClientId={}: executorService has not yet shutdown"

    .line 53
    .line 54
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v0, v2, v3}, Lmf/c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->executorServiceLock:[Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v2

    .line 66
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/tika/pipes/PipesClient;->closed:Z

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const-string v2, "pipesClientId={}: restarting process"

    .line 78
    .line 79
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v0, v2, v3}, Lmf/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    iget v1, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "pipesClientId="

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ": PipesClient closed"

    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw v0

    .line 122
    :cond_3
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 123
    .line 124
    const-string v2, "pipesClientId={}: starting process"

    .line 125
    .line 126
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {v0, v2, v3}, Lmf/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 136
    .line 137
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->getCommandline()[Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lorg/apache/tika/fork/d;->a()Ljava/lang/ProcessBuilder$Redirect;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v0, v2}, Lorg/apache/tika/fork/e;->a(Ljava/lang/ProcessBuilder;Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    .line 149
    .line 150
    .line 151
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    .line 157
    new-instance v0, Ljava/io/DataInputStream;

    .line 158
    .line 159
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->input:Ljava/io/DataInputStream;

    .line 169
    .line 170
    new-instance v0, Ljava/io/DataOutputStream;

    .line 171
    .line 172
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->output:Ljava/io/DataOutputStream;

    .line 182
    .line 183
    invoke-static {}, Lgf/e;->j()Lgf/e$a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lgf/e$a;->l()Lgf/e;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 192
    .line 193
    new-instance v3, Lorg/apache/tika/pipes/b;

    .line 194
    .line 195
    invoke-direct {v3, p0, v0}, Lorg/apache/tika/pipes/b;-><init>(Lorg/apache/tika/pipes/PipesClient;Lgf/e;)V

    .line 196
    .line 197
    .line 198
    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    iget-object v5, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 206
    .line 207
    invoke-interface {v5, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 208
    .line 209
    .line 210
    :try_start_3
    iget-object v5, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 211
    .line 212
    invoke-virtual {v5}, Lorg/apache/tika/pipes/PipesConfigBase;->getStartupTimeoutMillis()J

    .line 213
    .line 214
    .line 215
    move-result-wide v5

    .line 216
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 217
    .line 218
    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    goto :goto_1

    .line 227
    :catch_0
    move-exception v5

    .line 228
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v6

    .line 232
    sub-long/2addr v6, v3

    .line 233
    sget-object v3, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 234
    .line 235
    const-string v4, "pipesClientId={} didn\'t receive ready byte from server within StartupTimeoutMillis {}; ms elapsed {}; did read >{}<"

    .line 236
    .line 237
    const/4 v8, 0x4

    .line 238
    new-array v8, v8, [Ljava/lang/Object;

    .line 239
    .line 240
    iget v9, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 241
    .line 242
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    const/4 v10, 0x0

    .line 247
    aput-object v9, v8, v10

    .line 248
    .line 249
    iget-object v9, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 250
    .line 251
    invoke-virtual {v9}, Lorg/apache/tika/pipes/PipesConfigBase;->getStartupTimeoutMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    aput-object v9, v8, v1

    .line 260
    .line 261
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    const/4 v7, 0x2

    .line 266
    aput-object v6, v8, v7

    .line 267
    .line 268
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 269
    .line 270
    invoke-virtual {v0, v6}, Lgf/a;->f(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const/4 v6, 0x3

    .line 275
    aput-object v0, v8, v6

    .line 276
    .line 277
    invoke-interface {v3, v4, v8}, Lmf/c;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 281
    .line 282
    .line 283
    throw v5

    .line 284
    :catch_1
    move-exception v0

    .line 285
    sget-object v3, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 286
    .line 287
    iget v4, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 288
    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v6, "pipesClientId="

    .line 295
    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v4, ": couldn\'t start server"

    .line 303
    .line 304
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-interface {v3, v4, v0}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 315
    .line 316
    .line 317
    new-instance v3, Ljava/lang/RuntimeException;

    .line 318
    .line 319
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    throw v3

    .line 323
    :catch_2
    move-exception v0

    .line 324
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V

    .line 325
    .line 326
    .line 327
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 328
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :catch_3
    move-exception v0

    .line 333
    sget-object v1, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 334
    .line 335
    const-string v2, "failed to start client"

    .line 336
    .line 337
    invoke-interface {v1, v2, v0}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Lorg/apache/tika/pipes/FailedToStartClientException;

    .line 341
    .line 342
    invoke-direct {v1, v0}, Lorg/apache/tika/pipes/FailedToStartClientException;-><init>(Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->process:Ljava/lang/Process;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->destroyForcibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->executorServiceLock:[Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lorg/apache/tika/pipes/PipesClient;->closed:Z

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method

.method public getFilesProcessed()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tika/pipes/PipesClient;->filesProcessed:I

    .line 2
    .line 3
    return v0
.end method

.method public process(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/pipes/PipesResult;
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->ping()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :goto_0
    move v0, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getMaxFilesProcessedPerProcess()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lorg/apache/tika/pipes/PipesClient;->filesProcessed:I

    .line 20
    .line 21
    iget-object v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesConfigBase;->getMaxFilesProcessedPerProcess()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v0, v3, :cond_1

    .line 28
    .line 29
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 30
    .line 31
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, p0, Lorg/apache/tika/pipes/PipesClient;->filesProcessed:I

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "pipesClientId={}: restarting server after hitting max files: {}"

    .line 44
    .line 45
    invoke-interface {v0, v5, v3, v4}, Lmf/c;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v2

    .line 50
    :goto_1
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :goto_2
    if-nez v2, :cond_2

    .line 53
    .line 54
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesClient;->restart()V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    sget-object v0, Lorg/apache/tika/pipes/PipesClient;->LOG:Lmf/c;

    .line 60
    .line 61
    iget v3, p0, Lorg/apache/tika/pipes/PipesClient;->pipesClientId:I

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 68
    .line 69
    invoke-virtual {v4}, Lorg/apache/tika/pipes/PipesConfigBase;->getStartupTimeoutMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "pipesClientId={}: couldn\'t restart within {} ms (startupTimeoutMillis)"

    .line 78
    .line 79
    invoke-interface {v0, v5, v3, v4}, Lmf/c;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesClient;->pipesConfig:Lorg/apache/tika/pipes/PipesConfigBase;

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesConfigBase;->getSleepOnStartupTimeoutMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesClient;->actuallyProcess(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/pipes/PipesResult;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method
