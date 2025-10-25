.class public final Llb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb/q$a;
    }
.end annotation


# instance fields
.field private final a:Leb/d;

.field private final b:Llb/c;

.field private final c:Llb/d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lyc/f;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private i:Ljava/util/Date;

.field private j:I

.field private final k:I

.field private final l:I

.field private volatile m:Ljava/util/Timer;

.field private volatile n:Ljava/util/TimerTask;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Z


# direct methods
.method public constructor <init>(Leb/d;Llb/c;Llb/d;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "endpoint"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "executor"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Llb/q;->a:Leb/d;

    .line 25
    .line 26
    iput-object p2, p0, Llb/q;->b:Llb/c;

    .line 27
    .line 28
    iput-object p3, p0, Llb/q;->c:Llb/d;

    .line 29
    .line 30
    iput-object p4, p0, Llb/q;->d:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p5, p0, Llb/q;->e:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance p1, Lyc/f;

    .line 35
    .line 36
    invoke-direct {p1}, Lyc/f;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Llb/q;->f:Lyc/f;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Llb/q;->g:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance p1, Ljava/lang/Object;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Llb/q;->h:Ljava/lang/Object;

    .line 54
    .line 55
    const/4 p1, 0x5

    .line 56
    iput p1, p0, Llb/q;->k:I

    .line 57
    .line 58
    const/16 p1, 0x1e

    .line 59
    .line 60
    iput p1, p0, Llb/q;->l:I

    .line 61
    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    return-void
.end method

.method public static synthetic a(Llb/q;Lcom/posthog/PostHogEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llb/q;->f(Llb/q;Lcom/posthog/PostHogEvent;)V

    return-void
.end method

.method public static synthetic b(Llb/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llb/q;->n(Llb/q;)V

    return-void
.end method

.method public static final synthetic c(Llb/q;)Leb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Llb/q;->a:Leb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Llb/q;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final f(Llb/q;Lcom/posthog/PostHogEvent;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llb/q;->f:Lyc/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lyc/d;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Llb/q;->a:Leb/d;

    .line 18
    .line 19
    invoke-virtual {v1}, Leb/d;->q()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-lt v0, v1, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Llb/q;->g:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v1, p0, Llb/q;->f:Lyc/f;

    .line 35
    .line 36
    invoke-virtual {v1}, Lyc/f;->removeFirst()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v3, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    :try_start_2
    monitor-exit v0

    .line 43
    move-object v0, v1

    .line 44
    check-cast v0, Ljava/io/File;

    .line 45
    .line 46
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 47
    .line 48
    invoke-static {v0, v3}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 52
    .line 53
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "Queue is full, the oldest event "

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " is dropped."

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0

    .line 91
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :catch_0
    :cond_1
    :goto_1
    iget-object v0, p0, Llb/q;->d:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    new-instance v1, Ljava/io/File;

    .line 97
    .line 98
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 99
    .line 100
    invoke-virtual {v3}, Leb/d;->b()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v0, p0, Llb/q;->p:Z

    .line 108
    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 112
    .line 113
    .line 114
    iput-boolean v2, p0, Llb/q;->p:Z

    .line 115
    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->getUuid()Ljava/util/UUID;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    sget-object v0, Lnb/a;->a:Lnb/a;

    .line 123
    .line 124
    invoke-virtual {v0}, Lnb/a;->c()Ljava/util/UUID;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_3
    new-instance v2, Ljava/io/File;

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, ".event"

    .line 139
    .line 140
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Llb/q;->g:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Llb/q;->f:Lyc/f;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lyc/f;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 156
    .line 157
    .line 158
    monitor-exit v0

    .line 159
    const/16 v0, 0x2e

    .line 160
    .line 161
    :try_start_4
    iget-object v1, p0, Llb/q;->a:Leb/d;

    .line 162
    .line 163
    invoke-virtual {v1}, Leb/d;->h()Leb/e;

    .line 164
    .line 165
    .line 166
    new-instance v1, Ljava/io/FileOutputStream;

    .line 167
    .line 168
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 169
    .line 170
    .line 171
    :try_start_5
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 172
    .line 173
    invoke-virtual {v3}, Leb/d;->E()Llb/b0;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    sget-object v4, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 180
    .line 181
    invoke-direct {v5, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 182
    .line 183
    .line 184
    instance-of v4, v5, Ljava/io/BufferedWriter;

    .line 185
    .line 186
    if-eqz v4, :cond_4

    .line 187
    .line 188
    check-cast v5, Ljava/io/BufferedWriter;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_4
    new-instance v4, Ljava/io/BufferedWriter;

    .line 192
    .line 193
    const/16 v6, 0x2000

    .line 194
    .line 195
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 196
    .line 197
    .line 198
    move-object v5, v4

    .line 199
    :goto_2
    invoke-virtual {v3}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    new-instance v4, Llb/q$b;

    .line 204
    .line 205
    invoke-direct {v4}, Llb/q$b;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v3, p1, v4, v5}, Lcom/google/gson/Gson;->A(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 216
    .line 217
    .line 218
    sget-object v3, Lxc/t;->a:Lxc/t;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    :try_start_6
    invoke-static {v1, v3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Llb/q;->a:Leb/d;

    .line 225
    .line 226
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v4, "Queued Event "

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v4, ": "

    .line 248
    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-interface {v1, v3}, Llb/i;->a(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {p0}, Llb/q;->p()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :catchall_1
    move-exception v3

    .line 274
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 275
    :catchall_2
    move-exception v4

    .line 276
    :try_start_8
    invoke-static {v1, v3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 280
    :catchall_3
    move-exception v1

    .line 281
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 282
    .line 283
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v5, "Event "

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string p1, ": "

    .line 305
    .line 306
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p1, " failed to parse: "

    .line 317
    .line 318
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-interface {v3, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object p0, p0, Llb/q;->a:Leb/d;

    .line 335
    .line 336
    invoke-static {v2, p0}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :catchall_4
    move-exception p0

    .line 341
    monitor-exit v0

    .line 342
    throw p0

    .line 343
    :cond_5
    :goto_3
    return-void
.end method

.method private final g()V
    .locals 10

    .line 1
    invoke-direct {p0}, Llb/q;->w()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/io/File;

    .line 26
    .line 27
    :try_start_0
    iget-object v5, p0, Llb/q;->a:Leb/d;

    .line 28
    .line 29
    invoke-virtual {v5}, Leb/d;->h()Leb/e;

    .line 30
    .line 31
    .line 32
    new-instance v5, Ljava/io/FileInputStream;

    .line 33
    .line 34
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object v6, p0, Llb/q;->a:Leb/d;

    .line 38
    .line 39
    invoke-virtual {v6}, Leb/d;->E()Llb/b0;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget-object v7, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    new-instance v8, Ljava/io/InputStreamReader;

    .line 46
    .line 47
    invoke-direct {v8, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    instance-of v7, v8, Ljava/io/BufferedReader;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    check-cast v8, Ljava/io/BufferedReader;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 58
    .line 59
    const/16 v9, 0x2000

    .line 60
    .line 61
    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 62
    .line 63
    .line 64
    move-object v8, v7

    .line 65
    :goto_1
    invoke-virtual {v6}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v7, Llb/q$c;

    .line 70
    .line 71
    invoke-direct {v7}, Llb/q$c;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v6, v8, v7}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/posthog/PostHogEvent;

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-static {p0, v3, v7, v4, v7}, Llb/q;->k(Llb/q;Ljava/io/File;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v4, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    :goto_2
    :try_start_2
    invoke-static {v5, v7}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v4

    .line 101
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :catchall_1
    move-exception v6

    .line 103
    :try_start_4
    invoke-static {v5, v4}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    :catchall_2
    move-exception v4

    .line 108
    invoke-direct {p0, v3, v4}, Llb/q;->j(Ljava/io/File;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/4 v2, 0x1

    .line 113
    :try_start_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    xor-int/2addr v3, v2

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 121
    .line 122
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v6, "Flushing "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, " events."

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v3, v5}, Llb/i;->a(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v3, p0, Llb/q;->c:Llb/d;

    .line 156
    .line 157
    sget-object v5, Llb/q$a;->a:[I

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    aget v3, v5, v3

    .line 164
    .line 165
    if-eq v3, v2, :cond_4

    .line 166
    .line 167
    if-eq v3, v4, :cond_3

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    iget-object v3, p0, Llb/q;->b:Llb/c;

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Llb/c;->l(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    iget-object v3, p0, Llb/q;->b:Llb/c;

    .line 177
    .line 178
    invoke-virtual {v3, v1}, Llb/c;->d(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 182
    .line 183
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v5, "Flushed "

    .line 193
    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, " events successfully."

    .line 205
    .line 206
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {v3, v1}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Llb/e; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v1, p0, Llb/q;->g:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v1

    .line 219
    :try_start_6
    iget-object v2, p0, Llb/q;->f:Lyc/f;

    .line 220
    .line 221
    move-object v3, v0

    .line 222
    check-cast v3, Ljava/util/Collection;

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Lyc/f;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 225
    .line 226
    .line 227
    monitor-exit v1

    .line 228
    check-cast v0, Ljava/lang/Iterable;

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Ljava/io/File;

    .line 245
    .line 246
    iget-object v2, p0, Llb/q;->a:Leb/d;

    .line 247
    .line 248
    invoke-static {v1, v2}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    return-void

    .line 253
    :catchall_3
    move-exception v0

    .line 254
    monitor-exit v1

    .line 255
    throw v0

    .line 256
    :catchall_4
    move-exception v1

    .line 257
    goto :goto_6

    .line 258
    :catch_0
    move-exception v1

    .line 259
    :try_start_7
    invoke-static {v1}, Llb/e0;->f(Ljava/lang/Throwable;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_7

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 267
    .line 268
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    const-string v4, "Flushing failed because of a network error, let\'s try again soon."

    .line 273
    .line 274
    invoke-interface {v3, v4}, Llb/i;->a(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_7
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 279
    .line 280
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v5, "Flushing failed: "

    .line 290
    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-interface {v3, v4}, Llb/i;->a(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :goto_5
    throw v1

    .line 305
    :catch_1
    move-exception v1

    .line 306
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 307
    .line 308
    invoke-static {v1, v3}, Llb/r;->b(Llb/e;Leb/d;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 313
    :goto_6
    if-eqz v2, :cond_8

    .line 314
    .line 315
    iget-object v2, p0, Llb/q;->g:Ljava/lang/Object;

    .line 316
    .line 317
    monitor-enter v2

    .line 318
    :try_start_8
    iget-object v3, p0, Llb/q;->f:Lyc/f;

    .line 319
    .line 320
    move-object v4, v0

    .line 321
    check-cast v4, Ljava/util/Collection;

    .line 322
    .line 323
    invoke-virtual {v3, v4}, Lyc/f;->removeAll(Ljava/util/Collection;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 324
    .line 325
    .line 326
    monitor-exit v2

    .line 327
    check-cast v0, Ljava/lang/Iterable;

    .line 328
    .line 329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_8

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, Ljava/io/File;

    .line 344
    .line 345
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 346
    .line 347
    invoke-static {v2, v3}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :catchall_5
    move-exception v0

    .line 352
    monitor-exit v2

    .line 353
    throw v0

    .line 354
    :cond_8
    throw v1
.end method

.method private final h(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Llb/q;->j:I

    .line 4
    .line 5
    iget v0, p0, Llb/q;->k:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iget v0, p0, Llb/q;->l:I

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Leb/d;->f()Llb/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Llb/g;->b(I)Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Llb/q;->i:Ljava/util/Date;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Llb/q;->i:Ljava/util/Date;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 8
    .line 9
    invoke-virtual {v3}, Leb/d;->f()Llb/g;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Llb/g;->c()Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Queue is paused until "

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Llb/q;->i:Ljava/util/Date;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_1
    return v1
.end method

.method private final j(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb/q;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/q;->f:Lyc/f;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lyc/f;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 11
    .line 12
    invoke-static {p1, v0}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 16
    .line 17
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "File: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " failed to parse: "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 p1, 0x2e

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0

    .line 61
    throw p1
.end method

.method static synthetic k(Llb/q;Ljava/io/File;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Llb/q;->j(Ljava/io/File;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final l()V
    .locals 5

    .line 1
    invoke-direct {p0}, Llb/q;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-direct {p0}, Llb/q;->g()V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Llb/q;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Llb/q;->h(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    iget-object v2, p0, Llb/q;->a:Leb/d;

    .line 30
    .line 31
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "Flushing failed: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v0, 0x2e

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v2, v0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    :try_start_2
    iget v2, p0, Llb/q;->j:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iput v2, p0, Llb/q;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    invoke-direct {p0, v0}, Llb/q;->h(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    return-void

    .line 71
    :catchall_1
    move-exception v2

    .line 72
    goto :goto_2

    .line 73
    :catchall_2
    move-exception v2

    .line 74
    move v0, v1

    .line 75
    :goto_2
    invoke-direct {p0, v0}, Llb/q;->h(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    .line 82
    .line 83
    throw v2
.end method

.method private static final n(Llb/q;)V
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Llb/q;->s()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 20
    :try_start_0
    iget-object v2, p0, Llb/q;->f:Lyc/f;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    xor-int/2addr v2, v0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Llb/q;->g()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput v1, p0, Llb/q;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    invoke-direct {p0, v1}, Llb/q;->h(Z)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object p0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    :try_start_1
    iget-object v3, p0, Llb/q;->a:Leb/d;

    .line 46
    .line 47
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Flushing failed: "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v2, 0x2e

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v3, v2}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 74
    .line 75
    .line 76
    :try_start_2
    iget v2, p0, Llb/q;->j:I

    .line 77
    .line 78
    add-int/2addr v2, v0

    .line 79
    iput v2, p0, Llb/q;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    .line 81
    invoke-direct {p0, v0}, Llb/q;->h(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    return-void

    .line 86
    :catchall_1
    move-exception v2

    .line 87
    goto :goto_3

    .line 88
    :catchall_2
    move-exception v2

    .line 89
    move v0, v1

    .line 90
    :goto_3
    invoke-direct {p0, v0}, Llb/q;->h(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    .line 97
    .line 98
    throw v2
.end method

.method private final o()V
    .locals 2

    .line 1
    invoke-direct {p0}, Llb/q;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Cannot flush the Queue."

    .line 14
    .line 15
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Queue is flushing."

    .line 35
    .line 36
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-direct {p0}, Llb/q;->l()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Llb/q;->r(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Llb/q;->o()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final q()J
    .locals 2

    .line 1
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->j()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit16 v0, v0, 0x3e8

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0
.end method

.method private final r(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Llb/q;->f:Lyc/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyc/d;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Llb/q;->f:Lyc/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lyc/d;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Cannot flush the Queue yet, below the threshold: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method private final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->r()Llb/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Llb/k;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Network isn\'t connected."

    .line 29
    .line 30
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v1
.end method

.method private final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Llb/q;->n:Ljava/util/TimerTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Llb/q;->m:Ljava/util/Timer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private final w()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Llb/q;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/q;->f:Lyc/f;

    .line 5
    .line 6
    iget-object v2, p0, Llb/q;->a:Leb/d;

    .line 7
    .line 8
    invoke-virtual {v2}, Leb/d;->p()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, v2}, Lyc/m;->i0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    .line 22
    throw v1
.end method


# virtual methods
.method public final e(Lcom/posthog/PostHogEvent;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/q;->e:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v1, Llb/p;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Llb/p;-><init>(Llb/q;Lcom/posthog/PostHogEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Llb/e0;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Llb/q;->r(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Llb/q;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Llb/q;->a:Leb/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Queue is flushing."

    .line 24
    .line 25
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Llb/q;->e:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v1, Llb/o;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Llb/o;-><init>(Llb/q;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Llb/e0;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final t()V
    .locals 9

    .line 1
    iget-object v0, p0, Llb/q;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Llb/q;->v()V

    .line 5
    .line 6
    .line 7
    new-instance v7, Ljava/util/Timer;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v7, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Llb/q;->q()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-direct {p0}, Llb/q;->q()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    new-instance v8, Llb/q$d;

    .line 22
    .line 23
    invoke-direct {v8, p0}, Llb/q$d;-><init>(Llb/q;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v7

    .line 27
    move-object v2, v8

    .line 28
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 29
    .line 30
    .line 31
    iput-object v8, p0, Llb/q;->n:Ljava/util/TimerTask;

    .line 32
    .line 33
    iput-object v7, p0, Llb/q;->m:Ljava/util/Timer;

    .line 34
    .line 35
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0

    .line 41
    throw v1
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb/q;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Llb/q;->v()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method
