.class public final Lio/sentry/android/replay/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/h$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/replay/h;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/h$a;->b(Lio/sentry/android/replay/h;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final b(Lio/sentry/android/replay/h;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "$cache"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, ".jpg"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p2, v2, v3, v0, v1}, Lrd/n;->w(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v5, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v5, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v5}, Lgd/g;->n(Ljava/io/File;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lrd/n;->o(Ljava/lang/String;)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x4

    .line 43
    const/4 v10, 0x0

    .line 44
    move-object v4, p0

    .line 45
    invoke-static/range {v4 .. v10}, Lio/sentry/android/replay/h;->f(Lio/sentry/android/replay/h;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return v3
.end method


# virtual methods
.method public final c(Lio/sentry/s5;Lio/sentry/protocol/r;Lid/l;)Lio/sentry/android/replay/c;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "options"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "replayId"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p2}, Lio/sentry/android/replay/h$a;->d(Lio/sentry/s5;Lio/sentry/protocol/r;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v5, Ljava/io/File;

    .line 24
    .line 25
    const-string v6, ".ongoing_segment"

    .line 26
    .line 27
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x0

    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 42
    .line 43
    const-string v3, "No ongoing segment found for replay: %s"

    .line 44
    .line 45
    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 53
    .line 54
    .line 55
    return-object v7

    .line 56
    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v8, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    new-instance v9, Ljava/io/InputStreamReader;

    .line 64
    .line 65
    new-instance v10, Ljava/io/FileInputStream;

    .line 66
    .line 67
    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v9, v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 71
    .line 72
    .line 73
    instance-of v5, v9, Ljava/io/BufferedReader;

    .line 74
    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    check-cast v9, Ljava/io/BufferedReader;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 81
    .line 82
    const/16 v8, 0x2000

    .line 83
    .line 84
    invoke-direct {v5, v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 85
    .line 86
    .line 87
    move-object v9, v5

    .line 88
    :goto_0
    :try_start_0
    invoke-static {v9}, Lgd/n;->c(Ljava/io/BufferedReader;)Lqd/e;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v5}, Lqd/e;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x1

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    move-object v12, v8

    .line 109
    check-cast v12, Ljava/lang/String;

    .line 110
    .line 111
    new-array v13, v11, [Ljava/lang/String;

    .line 112
    .line 113
    const-string v8, "="

    .line 114
    .line 115
    aput-object v8, v13, v10

    .line 116
    .line 117
    const/4 v14, 0x0

    .line 118
    const/4 v15, 0x2

    .line 119
    const/16 v16, 0x2

    .line 120
    .line 121
    const/16 v17, 0x0

    .line 122
    .line 123
    invoke-static/range {v12 .. v17}, Lrd/n;->z0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    check-cast v10, Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v10, v8}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Lxc/k;->c()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v8}, Lxc/k;->d()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v9, v7}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    const-string v5, "config.height"

    .line 159
    .line 160
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v5, :cond_3

    .line 167
    .line 168
    invoke-static {v5}, Lrd/n;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    goto :goto_2

    .line 173
    :cond_3
    move-object v5, v7

    .line 174
    :goto_2
    const-string v8, "config.width"

    .line 175
    .line 176
    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v8, :cond_4

    .line 183
    .line 184
    invoke-static {v8}, Lrd/n;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    goto :goto_3

    .line 189
    :cond_4
    move-object v8, v7

    .line 190
    :goto_3
    const-string v9, "config.frame-rate"

    .line 191
    .line 192
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    check-cast v9, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v9, :cond_5

    .line 199
    .line 200
    invoke-static {v9}, Lrd/n;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    goto :goto_4

    .line 205
    :cond_5
    move-object v9, v7

    .line 206
    :goto_4
    const-string v12, "config.bit-rate"

    .line 207
    .line 208
    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    check-cast v12, Ljava/lang/String;

    .line 213
    .line 214
    if-eqz v12, :cond_6

    .line 215
    .line 216
    invoke-static {v12}, Lrd/n;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    goto :goto_5

    .line 221
    :cond_6
    move-object v12, v7

    .line 222
    :goto_5
    const-string v13, "segment.id"

    .line 223
    .line 224
    invoke-virtual {v6, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    check-cast v13, Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v13, :cond_7

    .line 231
    .line 232
    invoke-static {v13}, Lrd/n;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    goto :goto_6

    .line 237
    :cond_7
    move-object v13, v7

    .line 238
    :goto_6
    :try_start_1
    const-string v14, "segment.timestamp"

    .line 239
    .line 240
    invoke-virtual {v6, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    check-cast v14, Ljava/lang/String;

    .line 245
    .line 246
    if-nez v14, :cond_8

    .line 247
    .line 248
    move-object v14, v3

    .line 249
    :cond_8
    invoke-static {v14}, Lio/sentry/j;->e(Ljava/lang/String;)Ljava/util/Date;

    .line 250
    .line 251
    .line 252
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    goto :goto_7

    .line 254
    :catchall_0
    move-object v14, v7

    .line 255
    :goto_7
    :try_start_2
    const-string v15, "replay.type"

    .line 256
    .line 257
    invoke-virtual {v6, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    check-cast v15, Ljava/lang/String;

    .line 262
    .line 263
    if-nez v15, :cond_9

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_9
    move-object v3, v15

    .line 267
    :goto_8
    invoke-static {v3}, Lio/sentry/t5$b;->valueOf(Ljava/lang/String;)Lio/sentry/t5$b;

    .line 268
    .line 269
    .line 270
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    goto :goto_9

    .line 272
    :catchall_1
    move-object v3, v7

    .line 273
    :goto_9
    if-eqz v5, :cond_15

    .line 274
    .line 275
    if-eqz v8, :cond_15

    .line 276
    .line 277
    if-eqz v9, :cond_15

    .line 278
    .line 279
    if-eqz v12, :cond_15

    .line 280
    .line 281
    if-eqz v13, :cond_15

    .line 282
    .line 283
    const/4 v15, -0x1

    .line 284
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-eq v10, v15, :cond_15

    .line 289
    .line 290
    if-eqz v14, :cond_15

    .line 291
    .line 292
    if-nez v3, :cond_a

    .line 293
    .line 294
    goto/16 :goto_e

    .line 295
    .line 296
    :cond_a
    new-instance v10, Lio/sentry/android/replay/u;

    .line 297
    .line 298
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v18

    .line 302
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v19

    .line 306
    const/high16 v20, 0x3f800000    # 1.0f

    .line 307
    .line 308
    const/high16 v21, 0x3f800000    # 1.0f

    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v22

    .line 314
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v23

    .line 318
    move-object/from16 v17, v10

    .line 319
    .line 320
    invoke-direct/range {v17 .. v23}, Lio/sentry/android/replay/u;-><init>(IIFFII)V

    .line 321
    .line 322
    .line 323
    if-eqz v2, :cond_b

    .line 324
    .line 325
    invoke-interface {v2, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Lio/sentry/android/replay/h;

    .line 330
    .line 331
    if-nez v2, :cond_c

    .line 332
    .line 333
    :cond_b
    new-instance v2, Lio/sentry/android/replay/h;

    .line 334
    .line 335
    invoke-direct {v2, v0, v1}, Lio/sentry/android/replay/h;-><init>(Lio/sentry/s5;Lio/sentry/protocol/r;)V

    .line 336
    .line 337
    .line 338
    :cond_c
    invoke-virtual {v2}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    if-eqz v5, :cond_d

    .line 343
    .line 344
    new-instance v8, Lio/sentry/android/replay/g;

    .line 345
    .line 346
    invoke-direct {v8, v2}, Lio/sentry/android/replay/g;-><init>(Lio/sentry/android/replay/h;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 350
    .line 351
    .line 352
    :cond_d
    invoke-virtual {v2}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_e

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 367
    .line 368
    const-string v3, "No frames found for replay: %s, deleting the replay"

    .line 369
    .line 370
    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v4}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 378
    .line 379
    .line 380
    return-object v7

    .line 381
    :cond_e
    invoke-virtual {v2}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-le v4, v11, :cond_f

    .line 390
    .line 391
    new-instance v4, Lio/sentry/android/replay/h$a$a;

    .line 392
    .line 393
    invoke-direct {v4}, Lio/sentry/android/replay/h$a$a;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-static {v1, v4}, Lyc/m;->u(Ljava/util/List;Ljava/util/Comparator;)V

    .line 397
    .line 398
    .line 399
    :cond_f
    sget-object v1, Lio/sentry/t5$b;->SESSION:Lio/sentry/t5$b;

    .line 400
    .line 401
    if-ne v3, v1, :cond_10

    .line 402
    .line 403
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    move/from16 v19, v4

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_10
    const/16 v19, 0x0

    .line 411
    .line 412
    :goto_a
    if-ne v3, v1, :cond_11

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_11
    invoke-virtual {v2}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-static {v1}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    check-cast v1, Lio/sentry/android/replay/i;

    .line 424
    .line 425
    invoke-virtual {v1}, Lio/sentry/android/replay/i;->c()J

    .line 426
    .line 427
    .line 428
    move-result-wide v4

    .line 429
    invoke-static {v4, v5}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    const-string v1, "{\n                // in \u2026.timestamp)\n            }"

    .line 434
    .line 435
    invoke-static {v14, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :goto_b
    move-object/from16 v18, v14

    .line 439
    .line 440
    invoke-virtual {v2}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-static {v1}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Lio/sentry/android/replay/i;

    .line 449
    .line 450
    invoke-virtual {v1}, Lio/sentry/android/replay/i;->c()J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    .line 455
    .line 456
    .line 457
    move-result-wide v11

    .line 458
    sub-long/2addr v4, v11

    .line 459
    const/16 v1, 0x3e8

    .line 460
    .line 461
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    div-int/2addr v1, v8

    .line 466
    int-to-long v8, v1

    .line 467
    add-long v20, v4, v8

    .line 468
    .line 469
    const-string v1, "replay.recording"

    .line 470
    .line 471
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    check-cast v1, Ljava/lang/String;

    .line 476
    .line 477
    if-eqz v1, :cond_14

    .line 478
    .line 479
    new-instance v4, Ljava/io/StringReader;

    .line 480
    .line 481
    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const-class v1, Lio/sentry/z2;

    .line 489
    .line 490
    invoke-interface {v0, v4, v1}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Lio/sentry/z2;

    .line 495
    .line 496
    if-eqz v0, :cond_12

    .line 497
    .line 498
    invoke-virtual {v0}, Lio/sentry/z2;->a()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_c

    .line 503
    :cond_12
    move-object v1, v7

    .line 504
    :goto_c
    if-eqz v1, :cond_13

    .line 505
    .line 506
    new-instance v7, Ljava/util/LinkedList;

    .line 507
    .line 508
    invoke-virtual {v0}, Lio/sentry/z2;->a()Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    check-cast v0, Ljava/util/Collection;

    .line 516
    .line 517
    invoke-direct {v7, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 518
    .line 519
    .line 520
    :cond_13
    if-eqz v7, :cond_14

    .line 521
    .line 522
    goto :goto_d

    .line 523
    :cond_14
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    :goto_d
    new-instance v0, Lio/sentry/android/replay/c;

    .line 528
    .line 529
    const-string v1, "replay.screen-at-start"

    .line 530
    .line 531
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    move-object/from16 v23, v1

    .line 536
    .line 537
    check-cast v23, Ljava/lang/String;

    .line 538
    .line 539
    check-cast v7, Ljava/lang/Iterable;

    .line 540
    .line 541
    new-instance v1, Lio/sentry/android/replay/h$a$b;

    .line 542
    .line 543
    invoke-direct {v1}, Lio/sentry/android/replay/h$a$b;-><init>()V

    .line 544
    .line 545
    .line 546
    invoke-static {v7, v1}, Lyc/m;->h0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v24

    .line 550
    move-object v15, v0

    .line 551
    move-object/from16 v16, v10

    .line 552
    .line 553
    move-object/from16 v17, v2

    .line 554
    .line 555
    move-object/from16 v22, v3

    .line 556
    .line 557
    invoke-direct/range {v15 .. v24}, Lio/sentry/android/replay/c;-><init>(Lio/sentry/android/replay/u;Lio/sentry/android/replay/h;Ljava/util/Date;IJLio/sentry/t5$b;Ljava/lang/String;Ljava/util/List;)V

    .line 558
    .line 559
    .line 560
    return-object v0

    .line 561
    :cond_15
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 566
    .line 567
    const-string v3, "Incorrect segment values found for replay: %s, deleting the replay"

    .line 568
    .line 569
    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v4}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 577
    .line 578
    .line 579
    return-object v7

    .line 580
    :catchall_2
    move-exception v0

    .line 581
    move-object v1, v0

    .line 582
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 583
    :catchall_3
    move-exception v0

    .line 584
    move-object v2, v0

    .line 585
    invoke-static {v9, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 586
    .line 587
    .line 588
    throw v2
.end method

.method public final d(Lio/sentry/s5;Lio/sentry/protocol/r;)Ljava/io/File;
    .locals 3

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "replayId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v0, "SentryOptions.cacheDirPath is not set, session replay is no-op"

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {p1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "replay_"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    .line 76
    .line 77
    move-object p1, v0

    .line 78
    :goto_2
    return-object p1
.end method
