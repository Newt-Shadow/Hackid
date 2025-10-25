.class public final Lio/sentry/protocol/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Missing required field \""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\""

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 29
    .line 30
    invoke-interface {p2, v1, p1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/u$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/u;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v0, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 31
    .line 32
    move-object/from16 v18, v13

    .line 33
    .line 34
    const-string v13, "trace_id"

    .line 35
    .line 36
    move-object/from16 v19, v12

    .line 37
    .line 38
    const-string v12, "op"

    .line 39
    .line 40
    move-object/from16 v20, v11

    .line 41
    .line 42
    const-string v11, "start_timestamp"

    .line 43
    .line 44
    move-object/from16 v21, v9

    .line 45
    .line 46
    const-string v9, "span_id"

    .line 47
    .line 48
    if-ne v3, v0, :cond_10

    .line 49
    .line 50
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v22, -0x1

    .line 62
    .line 63
    sparse-switch v3, :sswitch_data_0

    .line 64
    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_0
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_0

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_0
    const/16 v22, 0xc

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :sswitch_1
    const-string v3, "timestamp"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_1
    const/16 v22, 0xb

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_2
    const-string v3, "tags"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_2
    const/16 v22, 0xa

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :sswitch_3
    const-string v3, "data"

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_3

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_3
    const/16 v22, 0x9

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_4

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_4
    const/16 v22, 0x8

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :sswitch_5
    const-string v3, "measurements"

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_5

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    const/16 v22, 0x7

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :sswitch_6
    const-string v3, "_metrics_summary"

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_6

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    const/16 v22, 0x6

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :sswitch_7
    const-string v3, "status"

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    const/16 v22, 0x5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :sswitch_8
    const-string v3, "origin"

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_8

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    const/16 v22, 0x4

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_9

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_9
    const/16 v22, 0x3

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :sswitch_a
    const-string v3, "description"

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_a

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_a
    const/16 v22, 0x2

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :sswitch_b
    const-string v3, "parent_span_id"

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-nez v3, :cond_b

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_b
    const/16 v22, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :sswitch_c
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-nez v3, :cond_c

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_c
    const/16 v22, 0x0

    .line 224
    .line 225
    :goto_1
    packed-switch v22, :pswitch_data_0

    .line 226
    .line 227
    .line 228
    if-nez v15, :cond_d

    .line 229
    .line 230
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 233
    .line 234
    .line 235
    move-object v15, v3

    .line 236
    :cond_d
    invoke-interface {v1, v2, v15, v0}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/r$a;

    .line 241
    .line 242
    invoke-direct {v0}, Lio/sentry/protocol/r$a;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/r$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/r;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    :goto_2
    move-object/from16 v13, v18

    .line 250
    .line 251
    :goto_3
    move-object/from16 v12, v19

    .line 252
    .line 253
    :goto_4
    move-object/from16 v11, v20

    .line 254
    .line 255
    :goto_5
    move-object/from16 v9, v21

    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :pswitch_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->e0()Ljava/lang/Double;

    .line 260
    .line 261
    .line 262
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_2

    .line 264
    :catch_0
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_e

    .line 269
    .line 270
    invoke-static {v0}, Lio/sentry/j;->b(Ljava/util/Date;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v11

    .line 274
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    move-object v6, v0

    .line 279
    goto :goto_2

    .line 280
    :cond_e
    const/4 v6, 0x0

    .line 281
    goto :goto_2

    .line 282
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    move-object v4, v0

    .line 287
    check-cast v4, Ljava/util/Map;

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    move-object/from16 v17, v0

    .line 295
    .line 296
    check-cast v17, Ljava/util/Map;

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    goto :goto_2

    .line 304
    :pswitch_5
    new-instance v0, Lio/sentry/protocol/h$a;

    .line 305
    .line 306
    invoke-direct {v0}, Lio/sentry/protocol/h$a;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-interface {v1, v2, v0}, Lio/sentry/l2;->Z(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/util/Map;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    goto :goto_2

    .line 314
    :pswitch_6
    new-instance v0, Lio/sentry/protocol/k$a;

    .line 315
    .line 316
    invoke-direct {v0}, Lio/sentry/protocol/k$a;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-interface {v1, v2, v0}, Lio/sentry/l2;->L(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/util/Map;

    .line 320
    .line 321
    .line 322
    move-result-object v16

    .line 323
    goto :goto_2

    .line 324
    :pswitch_7
    new-instance v0, Lio/sentry/p6$a;

    .line 325
    .line 326
    invoke-direct {v0}, Lio/sentry/p6$a;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-interface {v1, v2, v0}, Lio/sentry/l2;->u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    move-object v12, v0

    .line 334
    check-cast v12, Lio/sentry/p6;

    .line 335
    .line 336
    move-object/from16 v13, v18

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v13

    .line 343
    goto :goto_3

    .line 344
    :pswitch_9
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->e0()Ljava/lang/Double;

    .line 345
    .line 346
    .line 347
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    goto :goto_2

    .line 349
    :catch_1
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_f

    .line 354
    .line 355
    invoke-static {v0}, Lio/sentry/j;->b(Ljava/util/Date;)D

    .line 356
    .line 357
    .line 358
    move-result-wide v11

    .line 359
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    move-object v5, v0

    .line 364
    goto :goto_2

    .line 365
    :cond_f
    const/4 v5, 0x0

    .line 366
    goto :goto_2

    .line 367
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    move-object/from16 v13, v18

    .line 372
    .line 373
    move-object/from16 v12, v19

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :pswitch_b
    new-instance v0, Lio/sentry/n6$a;

    .line 377
    .line 378
    invoke-direct {v0}, Lio/sentry/n6$a;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-interface {v1, v2, v0}, Lio/sentry/l2;->u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    move-object v9, v0

    .line 386
    check-cast v9, Lio/sentry/n6;

    .line 387
    .line 388
    move-object/from16 v13, v18

    .line 389
    .line 390
    move-object/from16 v12, v19

    .line 391
    .line 392
    move-object/from16 v11, v20

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :pswitch_c
    new-instance v0, Lio/sentry/n6$a;

    .line 396
    .line 397
    invoke-direct {v0}, Lio/sentry/n6$a;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1, v2}, Lio/sentry/n6$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/n6;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :goto_6
    move-object/from16 v0, p0

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :cond_10
    if-eqz v5, :cond_16

    .line 411
    .line 412
    if-eqz v7, :cond_15

    .line 413
    .line 414
    if-eqz v8, :cond_14

    .line 415
    .line 416
    if-eqz v10, :cond_13

    .line 417
    .line 418
    if-nez v4, :cond_11

    .line 419
    .line 420
    new-instance v0, Ljava/util/HashMap;

    .line 421
    .line 422
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_11
    move-object v0, v4

    .line 427
    :goto_7
    if-nez v14, :cond_12

    .line 428
    .line 429
    new-instance v2, Ljava/util/HashMap;

    .line 430
    .line 431
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 432
    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_12
    move-object v2, v14

    .line 436
    :goto_8
    new-instance v3, Lio/sentry/protocol/u;

    .line 437
    .line 438
    move-object v4, v3

    .line 439
    move-object/from16 v9, v21

    .line 440
    .line 441
    move-object/from16 v11, v20

    .line 442
    .line 443
    move-object/from16 v12, v19

    .line 444
    .line 445
    move-object/from16 v13, v18

    .line 446
    .line 447
    move-object v14, v0

    .line 448
    move-object v0, v15

    .line 449
    move-object v15, v2

    .line 450
    invoke-direct/range {v4 .. v17}, Lio/sentry/protocol/u;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/p6;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v0}, Lio/sentry/protocol/u;->i(Ljava/util/Map;)V

    .line 454
    .line 455
    .line 456
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 457
    .line 458
    .line 459
    return-object v3

    .line 460
    :cond_13
    move-object/from16 v0, p0

    .line 461
    .line 462
    invoke-direct {v0, v12, v2}, Lio/sentry/protocol/u$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    throw v1

    .line 467
    :cond_14
    move-object/from16 v0, p0

    .line 468
    .line 469
    invoke-direct {v0, v9, v2}, Lio/sentry/protocol/u$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    throw v1

    .line 474
    :cond_15
    move-object/from16 v0, p0

    .line 475
    .line 476
    invoke-direct {v0, v13, v2}, Lio/sentry/protocol/u$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    throw v1

    .line 481
    :cond_16
    move-object/from16 v0, p0

    .line 482
    .line 483
    invoke-direct {v0, v11, v2}, Lio/sentry/protocol/u$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    throw v1

    .line 488
    nop

    .line 489
    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_c
        -0x68c5dc65 -> :sswitch_b
        -0x66ca7c04 -> :sswitch_a
        -0x5b03aa87 -> :sswitch_9
        -0x3c1e50da -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x28af0e15 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x363419 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method
