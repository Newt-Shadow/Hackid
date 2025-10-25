.class public final Lio/sentry/f6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/f6;
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
    invoke-virtual {p0, p1, p2}, Lio/sentry/f6$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/f6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/f6;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x0

    .line 20
    const/4 v15, 0x0

    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const/16 v17, 0x0

    .line 24
    .line 25
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v0, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 30
    .line 31
    move-object/from16 v18, v15

    .line 32
    .line 33
    const-string v15, "release"

    .line 34
    .line 35
    move-object/from16 v19, v14

    .line 36
    .line 37
    const-string v14, "status"

    .line 38
    .line 39
    move-object/from16 v20, v13

    .line 40
    .line 41
    const-string v13, "errors"

    .line 42
    .line 43
    move-object/from16 v21, v12

    .line 44
    .line 45
    const-string v12, "started"

    .line 46
    .line 47
    if-ne v2, v0, :cond_12

    .line 48
    .line 49
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/16 v22, 0x3

    .line 61
    .line 62
    const/16 v23, 0x2

    .line 63
    .line 64
    const/16 v24, 0x1

    .line 65
    .line 66
    const/16 v25, 0x0

    .line 67
    .line 68
    const/16 v26, -0x1

    .line 69
    .line 70
    sparse-switch v2, :sswitch_data_0

    .line 71
    .line 72
    .line 73
    :goto_1
    move/from16 v2, v26

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :sswitch_0
    const-string v2, "abnormal_mechanism"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const/16 v2, 0xa

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :sswitch_1
    const-string v2, "attrs"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/16 v2, 0x9

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :sswitch_2
    const-string v2, "timestamp"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/16 v2, 0x8

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :sswitch_3
    const-string v2, "init"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/4 v2, 0x7

    .line 126
    goto :goto_2

    .line 127
    :sswitch_4
    const-string v2, "sid"

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 v2, 0x6

    .line 137
    goto :goto_2

    .line 138
    :sswitch_5
    const-string v2, "seq"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const/4 v2, 0x5

    .line 148
    goto :goto_2

    .line 149
    :sswitch_6
    const-string v2, "did"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_6

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    const/4 v2, 0x4

    .line 159
    goto :goto_2

    .line 160
    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    move/from16 v2, v22

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :sswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_8

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    move/from16 v2, v23

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :sswitch_9
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_9

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_9
    move/from16 v2, v24

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :sswitch_a
    const-string v2, "duration"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_a

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_a
    move/from16 v2, v25

    .line 200
    .line 201
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 202
    .line 203
    .line 204
    if-nez v7, :cond_b

    .line 205
    .line 206
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 209
    .line 210
    .line 211
    move-object v7, v2

    .line 212
    :cond_b
    move-object/from16 v2, p1

    .line 213
    .line 214
    invoke-interface {v2, v1, v7, v0}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_6

    .line 218
    .line 219
    :pswitch_0
    move-object/from16 v2, p1

    .line 220
    .line 221
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v17

    .line 225
    goto/16 :goto_6

    .line 226
    .line 227
    :pswitch_1
    move-object/from16 v2, p1

    .line 228
    .line 229
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 230
    .line 231
    .line 232
    move-object/from16 v14, v19

    .line 233
    .line 234
    move-object/from16 v13, v20

    .line 235
    .line 236
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    sget-object v12, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 241
    .line 242
    if-ne v0, v12, :cond_10

    .line 243
    .line 244
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    sparse-switch v12, :sswitch_data_1

    .line 256
    .line 257
    .line 258
    :goto_4
    move/from16 v0, v26

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :sswitch_b
    const-string v12, "user_agent"

    .line 262
    .line 263
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_c

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_c
    move/from16 v0, v22

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :sswitch_c
    const-string v12, "ip_address"

    .line 274
    .line 275
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_d

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_d
    move/from16 v0, v23

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :sswitch_d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_e

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_e
    move/from16 v0, v24

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :sswitch_e
    const-string v12, "environment"

    .line 296
    .line 297
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_f

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_f
    move/from16 v0, v25

    .line 305
    .line 306
    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 307
    .line 308
    .line 309
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->G()V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    goto :goto_3

    .line 318
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    goto :goto_3

    .line 323
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v16

    .line 327
    goto :goto_3

    .line 328
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v18

    .line 332
    goto :goto_3

    .line 333
    :cond_10
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 334
    .line 335
    .line 336
    move-object/from16 v15, v18

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :pswitch_6
    move-object/from16 v2, p1

    .line 340
    .line 341
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    goto :goto_6

    .line 346
    :pswitch_7
    move-object/from16 v2, p1

    .line 347
    .line 348
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->m0()Ljava/lang/Boolean;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    goto :goto_6

    .line 353
    :pswitch_8
    move-object/from16 v2, p1

    .line 354
    .line 355
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 360
    .line 361
    .line 362
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    goto :goto_6

    .line 364
    :catch_0
    const/4 v0, 0x0

    .line 365
    :catch_1
    sget-object v12, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 366
    .line 367
    const-string v13, "%s sid is not valid."

    .line 368
    .line 369
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v1, v12, v13, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto :goto_6

    .line 377
    :pswitch_9
    move-object/from16 v2, p1

    .line 378
    .line 379
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->M()Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    goto :goto_6

    .line 384
    :pswitch_a
    move-object/from16 v2, p1

    .line 385
    .line 386
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    :cond_11
    :goto_6
    move-object/from16 v15, v18

    .line 391
    .line 392
    move-object/from16 v14, v19

    .line 393
    .line 394
    move-object/from16 v13, v20

    .line 395
    .line 396
    :goto_7
    move-object/from16 v12, v21

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :pswitch_b
    move-object/from16 v2, p1

    .line 400
    .line 401
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v0}, Lio/sentry/util/w;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_11

    .line 410
    .line 411
    invoke-static {v0}, Lio/sentry/f6$b;->valueOf(Ljava/lang/String;)Lio/sentry/f6$b;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    goto :goto_6

    .line 416
    :pswitch_c
    move-object/from16 v2, p1

    .line 417
    .line 418
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    goto :goto_6

    .line 423
    :pswitch_d
    move-object/from16 v2, p1

    .line 424
    .line 425
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    goto :goto_6

    .line 430
    :pswitch_e
    move-object/from16 v2, p1

    .line 431
    .line 432
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->e0()Ljava/lang/Double;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    move-object/from16 v15, v18

    .line 437
    .line 438
    move-object/from16 v14, v19

    .line 439
    .line 440
    move-object/from16 v13, v20

    .line 441
    .line 442
    :goto_8
    move-object/from16 v0, p0

    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :cond_12
    move-object/from16 v2, p1

    .line 447
    .line 448
    if-eqz v4, :cond_16

    .line 449
    .line 450
    if-eqz v5, :cond_15

    .line 451
    .line 452
    if-eqz v3, :cond_14

    .line 453
    .line 454
    if-eqz v16, :cond_13

    .line 455
    .line 456
    new-instance v0, Lio/sentry/f6;

    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    move-object v3, v0

    .line 463
    move-object v15, v7

    .line 464
    move v7, v1

    .line 465
    move-object/from16 v12, v21

    .line 466
    .line 467
    move-object/from16 v13, v20

    .line 468
    .line 469
    move-object/from16 v14, v19

    .line 470
    .line 471
    move-object v1, v15

    .line 472
    move-object/from16 v15, v18

    .line 473
    .line 474
    invoke-direct/range {v3 .. v17}, Lio/sentry/f6;-><init>(Lio/sentry/f6$b;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lio/sentry/f6;->o(Ljava/util/Map;)V

    .line 478
    .line 479
    .line 480
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 481
    .line 482
    .line 483
    return-object v0

    .line 484
    :cond_13
    move-object/from16 v0, p0

    .line 485
    .line 486
    invoke-direct {v0, v15, v1}, Lio/sentry/f6$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    throw v1

    .line 491
    :cond_14
    move-object/from16 v0, p0

    .line 492
    .line 493
    invoke-direct {v0, v13, v1}, Lio/sentry/f6$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    throw v1

    .line 498
    :cond_15
    move-object/from16 v0, p0

    .line 499
    .line 500
    invoke-direct {v0, v12, v1}, Lio/sentry/f6$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    throw v1

    .line 505
    :cond_16
    move-object/from16 v0, p0

    .line 506
    .line 507
    invoke-direct {v0, v14, v1}, Lio/sentry/f6$a;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    throw v1

    .line 512
    nop

    .line 513
    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_a
        -0x7114bf7f -> :sswitch_9
        -0x4d2a9095 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        0x1847f -> :sswitch_6
        0x1bc5f -> :sswitch_5
        0x1bcce -> :sswitch_4
        0x316510 -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x58d64a2 -> :sswitch_1
        0xcbd1022 -> :sswitch_0
    .end sparse-switch

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
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :sswitch_data_1
    .sparse-switch
        -0x51ecded -> :sswitch_e
        0x41012807 -> :sswitch_d
        0x583738dc -> :sswitch_c
        0x724f4d91 -> :sswitch_b
    .end sparse-switch

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
