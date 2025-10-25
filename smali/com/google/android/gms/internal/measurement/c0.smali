.class public abstract Lcom/google/android/gms/internal/measurement/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 21

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "indexOf"

    .line 14
    .line 15
    const-string v6, "reverse"

    .line 16
    .line 17
    const-string v7, "slice"

    .line 18
    .line 19
    const-string v8, "shift"

    .line 20
    .line 21
    const-string v9, "every"

    .line 22
    .line 23
    const-string v10, "sort"

    .line 24
    .line 25
    const-string v11, "some"

    .line 26
    .line 27
    const-string v12, "join"

    .line 28
    .line 29
    const-string v13, "pop"

    .line 30
    .line 31
    const-string v14, "map"

    .line 32
    .line 33
    const-string v15, "lastIndexOf"

    .line 34
    .line 35
    const-string v3, "forEach"

    .line 36
    .line 37
    const-string v1, "filter"

    .line 38
    .line 39
    const-string v2, "toString"

    .line 40
    .line 41
    const/16 v16, -0x1

    .line 42
    .line 43
    move-object/from16 v17, v2

    .line 44
    .line 45
    sparse-switch v4, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    :cond_0
    move-object/from16 v4, v17

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/16 v0, 0xc

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :sswitch_2
    const-string v4, "reduceRight"

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    const/16 v0, 0xb

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    const/16 v0, 0xe

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    const/16 v0, 0xd

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :sswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    .line 109
    move-object/from16 v4, v17

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    .line 120
    const/16 v0, 0x10

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :sswitch_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    const/16 v0, 0xf

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :sswitch_8
    const-string v4, "push"

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    .line 140
    const/16 v0, 0x9

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :sswitch_9
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    .line 149
    const/4 v0, 0x5

    .line 150
    goto :goto_0

    .line 151
    :sswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    .line 157
    const/16 v0, 0x8

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :sswitch_b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    const/4 v0, 0x7

    .line 167
    goto :goto_0

    .line 168
    :sswitch_c
    const-string v4, "unshift"

    .line 169
    .line 170
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    .line 176
    const/16 v0, 0x13

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :sswitch_d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    .line 185
    const/4 v0, 0x6

    .line 186
    goto :goto_0

    .line 187
    :sswitch_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    .line 193
    const/4 v0, 0x3

    .line 194
    goto :goto_0

    .line 195
    :sswitch_f
    const-string v4, "splice"

    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    .line 203
    const/16 v0, 0x11

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :sswitch_10
    const-string v4, "reduce"

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    .line 214
    const/16 v0, 0xa

    .line 215
    .line 216
    :goto_0
    move-object/from16 v4, v17

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :sswitch_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    .line 225
    move-object/from16 v4, v17

    .line 226
    .line 227
    const/4 v0, 0x2

    .line 228
    goto :goto_2

    .line 229
    :sswitch_12
    const-string v4, "concat"

    .line 230
    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    .line 237
    move-object/from16 v4, v17

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    goto :goto_2

    .line 241
    :sswitch_13
    move-object/from16 v4, v17

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    .line 249
    const/16 v0, 0x12

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_1
    :goto_1
    move/from16 v0, v16

    .line 253
    .line 254
    :goto_2
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 255
    .line 256
    const-string v2, "Callback should be a method"

    .line 257
    .line 258
    move-object/from16 v20, v1

    .line 259
    .line 260
    move-object/from16 p0, v2

    .line 261
    .line 262
    const-wide/16 v1, 0x0

    .line 263
    .line 264
    packed-switch v0, :pswitch_data_0

    .line 265
    .line 266
    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 268
    .line 269
    const-string v1, "Command not supported"

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :pswitch_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_5

    .line 280
    .line 281
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 282
    .line 283
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_3

    .line 295
    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    .line 301
    .line 302
    move-object/from16 v3, p2

    .line 303
    .line 304
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/h;

    .line 309
    .line 310
    if-nez v4, :cond_2

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    const-string v1, "Argument evaluation failed"

    .line 323
    .line 324
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_4

    .line 341
    .line 342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Ljava/lang/Integer;

    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    add-int/2addr v4, v1

    .line 353
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    move-object/from16 v9, p1

    .line 358
    .line 359
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_4
    move-object/from16 v9, p1

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->F()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_6

    .line 381
    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Ljava/lang/Integer;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_5
    move-object/from16 v9, p1

    .line 405
    .line 406
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    int-to-double v1, v1

    .line 413
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_1c

    .line 421
    .line 422
    :pswitch_1
    move-object/from16 v9, p1

    .line 423
    .line 424
    move-object/from16 v0, p3

    .line 425
    .line 426
    move-object v1, v4

    .line 427
    const/4 v2, 0x0

    .line 428
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    .line 432
    .line 433
    const-string v1, ","

    .line 434
    .line 435
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_1c

    .line 443
    .line 444
    :pswitch_2
    move-object/from16 v9, p1

    .line 445
    .line 446
    move-object/from16 v3, p2

    .line 447
    .line 448
    move-object/from16 v0, p3

    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_7

    .line 456
    .line 457
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 458
    .line 459
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_1c

    .line 463
    .line 464
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 469
    .line 470
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 483
    .line 484
    .line 485
    move-result-wide v4

    .line 486
    double-to-int v1, v4

    .line 487
    if-gez v1, :cond_8

    .line 488
    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    add-int/2addr v1, v4

    .line 494
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    goto :goto_6

    .line 499
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-le v1, v2, :cond_9

    .line 504
    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    :cond_9
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    new-instance v4, Lcom/google/android/gms/internal/measurement/f;

    .line 514
    .line 515
    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    const/4 v6, 0x1

    .line 523
    if-le v5, v6, :cond_c

    .line 524
    .line 525
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    .line 530
    .line 531
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 540
    .line 541
    .line 542
    move-result-wide v5

    .line 543
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 544
    .line 545
    .line 546
    move-result-wide v5

    .line 547
    double-to-int v5, v5

    .line 548
    const/4 v6, 0x0

    .line 549
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-lez v5, :cond_a

    .line 554
    .line 555
    move v6, v1

    .line 556
    :goto_7
    add-int v7, v1, v5

    .line 557
    .line 558
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-ge v6, v7, :cond_a

    .line 563
    .line 564
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->I(I)V

    .line 576
    .line 577
    .line 578
    add-int/lit8 v6, v6, 0x1

    .line 579
    .line 580
    goto :goto_7

    .line 581
    :cond_a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    const/4 v5, 0x2

    .line 586
    if-le v2, v5, :cond_d

    .line 587
    .line 588
    const/4 v2, 0x2

    .line 589
    :goto_8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-ge v2, v5, :cond_d

    .line 594
    .line 595
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    .line 600
    .line 601
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/h;

    .line 606
    .line 607
    if-nez v6, :cond_b

    .line 608
    .line 609
    add-int v6, v1, v2

    .line 610
    .line 611
    add-int/lit8 v6, v6, -0x2

    .line 612
    .line 613
    invoke-virtual {v9, v6, v5}, Lcom/google/android/gms/internal/measurement/f;->G(ILcom/google/android/gms/internal/measurement/p;)V

    .line 614
    .line 615
    .line 616
    add-int/lit8 v2, v2, 0x1

    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 620
    .line 621
    const-string v1, "Failed to parse elements to add"

    .line 622
    .line 623
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v0

    .line 627
    :cond_c
    :goto_9
    if-ge v1, v2, :cond_d

    .line 628
    .line 629
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 638
    .line 639
    .line 640
    const/4 v0, 0x0

    .line 641
    invoke-virtual {v9, v1, v0}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 642
    .line 643
    .line 644
    add-int/lit8 v1, v1, 0x1

    .line 645
    .line 646
    goto :goto_9

    .line 647
    :cond_d
    move-object v0, v4

    .line 648
    goto/16 :goto_1c

    .line 649
    .line 650
    :pswitch_3
    move-object/from16 v9, p1

    .line 651
    .line 652
    move-object/from16 v3, p2

    .line 653
    .line 654
    move-object/from16 v0, p3

    .line 655
    .line 656
    const/4 v1, 0x1

    .line 657
    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    const/4 v2, 0x2

    .line 665
    if-lt v1, v2, :cond_1b

    .line 666
    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->p()Ljava/util/List;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-nez v2, :cond_f

    .line 676
    .line 677
    const/4 v2, 0x0

    .line 678
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 683
    .line 684
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/j;

    .line 689
    .line 690
    if-eqz v2, :cond_e

    .line 691
    .line 692
    check-cast v0, Lcom/google/android/gms/internal/measurement/j;

    .line 693
    .line 694
    goto :goto_a

    .line 695
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 696
    .line 697
    const-string v1, "Comparator should be a method"

    .line 698
    .line 699
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    throw v0

    .line 703
    :cond_f
    const/4 v0, 0x0

    .line 704
    :goto_a
    new-instance v2, Lcom/google/android/gms/internal/measurement/a0;

    .line 705
    .line 706
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/a0;-><init>(Lcom/google/android/gms/internal/measurement/j;Lcom/google/android/gms/internal/measurement/z4;)V

    .line 707
    .line 708
    .line 709
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->F()V

    .line 713
    .line 714
    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const/4 v2, 0x0

    .line 720
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_1b

    .line 725
    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 731
    .line 732
    add-int/lit8 v3, v2, 0x1

    .line 733
    .line 734
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 735
    .line 736
    .line 737
    move v2, v3

    .line 738
    goto :goto_b

    .line 739
    :pswitch_4
    move-object/from16 v9, p1

    .line 740
    .line 741
    move-object/from16 v3, p2

    .line 742
    .line 743
    move-object/from16 v0, p3

    .line 744
    .line 745
    const/4 v1, 0x1

    .line 746
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 747
    .line 748
    .line 749
    const/4 v1, 0x0

    .line 750
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 755
    .line 756
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/j;

    .line 761
    .line 762
    if-eqz v1, :cond_13

    .line 763
    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-nez v1, :cond_10

    .line 769
    .line 770
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->p0:Lcom/google/android/gms/internal/measurement/p;

    .line 771
    .line 772
    goto/16 :goto_1c

    .line 773
    .line 774
    :cond_10
    check-cast v0, Lcom/google/android/gms/internal/measurement/j;

    .line 775
    .line 776
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    if-eqz v2, :cond_12

    .line 785
    .line 786
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, Ljava/lang/Integer;

    .line 791
    .line 792
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 797
    .line 798
    .line 799
    move-result v4

    .line 800
    if-eqz v4, :cond_11

    .line 801
    .line 802
    const/4 v4, 0x3

    .line 803
    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/p;

    .line 804
    .line 805
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    const/4 v6, 0x0

    .line 810
    aput-object v5, v4, v6

    .line 811
    .line 812
    int-to-double v5, v2

    .line 813
    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    .line 814
    .line 815
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 820
    .line 821
    .line 822
    const/4 v5, 0x1

    .line 823
    aput-object v2, v4, v5

    .line 824
    .line 825
    const/4 v2, 0x2

    .line 826
    aput-object v9, v4, v2

    .line 827
    .line 828
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    if-eqz v2, :cond_11

    .line 845
    .line 846
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->o0:Lcom/google/android/gms/internal/measurement/p;

    .line 847
    .line 848
    goto/16 :goto_1c

    .line 849
    .line 850
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->p0:Lcom/google/android/gms/internal/measurement/p;

    .line 851
    .line 852
    goto/16 :goto_1c

    .line 853
    .line 854
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 855
    .line 856
    move-object/from16 v1, p0

    .line 857
    .line 858
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v0

    .line 862
    :pswitch_5
    move-object/from16 v9, p1

    .line 863
    .line 864
    move-object/from16 v3, p2

    .line 865
    .line 866
    move-object/from16 v0, p3

    .line 867
    .line 868
    const/4 v4, 0x2

    .line 869
    invoke-static {v7, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 870
    .line 871
    .line 872
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    if-eqz v4, :cond_14

    .line 877
    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->r()Lcom/google/android/gms/internal/measurement/p;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    goto/16 :goto_1c

    .line 883
    .line 884
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    int-to-double v4, v4

    .line 889
    const/4 v6, 0x0

    .line 890
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v6

    .line 894
    check-cast v6, Lcom/google/android/gms/internal/measurement/p;

    .line 895
    .line 896
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 897
    .line 898
    .line 899
    move-result-object v6

    .line 900
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 905
    .line 906
    .line 907
    move-result-wide v6

    .line 908
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 909
    .line 910
    .line 911
    move-result-wide v6

    .line 912
    cmpg-double v8, v6, v1

    .line 913
    .line 914
    if-gez v8, :cond_15

    .line 915
    .line 916
    add-double/2addr v6, v4

    .line 917
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 918
    .line 919
    .line 920
    move-result-wide v6

    .line 921
    goto :goto_c

    .line 922
    :cond_15
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 923
    .line 924
    .line 925
    move-result-wide v6

    .line 926
    :goto_c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 927
    .line 928
    .line 929
    move-result v8

    .line 930
    const/4 v10, 0x2

    .line 931
    if-ne v8, v10, :cond_17

    .line 932
    .line 933
    const/4 v8, 0x1

    .line 934
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 939
    .line 940
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 949
    .line 950
    .line 951
    move-result-wide v10

    .line 952
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 953
    .line 954
    .line 955
    move-result-wide v10

    .line 956
    cmpg-double v0, v10, v1

    .line 957
    .line 958
    if-gez v0, :cond_16

    .line 959
    .line 960
    add-double/2addr v4, v10

    .line 961
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 962
    .line 963
    .line 964
    move-result-wide v4

    .line 965
    goto :goto_d

    .line 966
    :cond_16
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    .line 967
    .line 968
    .line 969
    move-result-wide v4

    .line 970
    :cond_17
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 971
    .line 972
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 973
    .line 974
    .line 975
    double-to-int v1, v6

    .line 976
    :goto_e
    int-to-double v2, v1

    .line 977
    cmpg-double v2, v2, v4

    .line 978
    .line 979
    if-gez v2, :cond_3d

    .line 980
    .line 981
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 990
    .line 991
    .line 992
    add-int/lit8 v1, v1, 0x1

    .line 993
    .line 994
    goto :goto_e

    .line 995
    :pswitch_6
    move-object/from16 v9, p1

    .line 996
    .line 997
    move-object/from16 v0, p3

    .line 998
    .line 999
    const/4 v1, 0x0

    .line 1000
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    if-nez v0, :cond_18

    .line 1008
    .line 1009
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1010
    .line 1011
    goto/16 :goto_1c

    .line 1012
    .line 1013
    :cond_18
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/f;->I(I)V

    .line 1018
    .line 1019
    .line 1020
    goto/16 :goto_1c

    .line 1021
    .line 1022
    :pswitch_7
    move-object/from16 v9, p1

    .line 1023
    .line 1024
    move-object/from16 v0, p3

    .line 1025
    .line 1026
    const/4 v1, 0x0

    .line 1027
    invoke-static {v6, v1, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_1b

    .line 1035
    .line 1036
    const/4 v2, 0x0

    .line 1037
    :goto_f
    div-int/lit8 v1, v0, 0x2

    .line 1038
    .line 1039
    if-ge v2, v1, :cond_1b

    .line 1040
    .line 1041
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v1

    .line 1045
    if-eqz v1, :cond_1a

    .line 1046
    .line 1047
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    const/4 v3, 0x0

    .line 1052
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1053
    .line 1054
    .line 1055
    add-int/lit8 v3, v0, -0x1

    .line 1056
    .line 1057
    sub-int/2addr v3, v2

    .line 1058
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v4

    .line 1062
    if-eqz v4, :cond_19

    .line 1063
    .line 1064
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v4

    .line 1068
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1069
    .line 1070
    .line 1071
    :cond_19
    invoke-virtual {v9, v3, v1}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 1075
    .line 1076
    goto :goto_f

    .line 1077
    :cond_1b
    move-object v0, v9

    .line 1078
    goto/16 :goto_1c

    .line 1079
    .line 1080
    :pswitch_8
    move-object/from16 v9, p1

    .line 1081
    .line 1082
    move-object/from16 v3, p2

    .line 1083
    .line 1084
    move-object/from16 v0, p3

    .line 1085
    .line 1086
    const/4 v1, 0x0

    .line 1087
    invoke-static {v9, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/c0;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/p;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    goto/16 :goto_1c

    .line 1092
    .line 1093
    :pswitch_9
    move-object/from16 v9, p1

    .line 1094
    .line 1095
    move-object/from16 v3, p2

    .line 1096
    .line 1097
    move-object/from16 v0, p3

    .line 1098
    .line 1099
    const/4 v1, 0x1

    .line 1100
    invoke-static {v9, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/c0;->b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/p;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    goto/16 :goto_1c

    .line 1105
    .line 1106
    :pswitch_a
    move-object/from16 v9, p1

    .line 1107
    .line 1108
    move-object/from16 v3, p2

    .line 1109
    .line 1110
    move-object/from16 v0, p3

    .line 1111
    .line 1112
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v1

    .line 1116
    if-nez v1, :cond_1c

    .line 1117
    .line 1118
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    if-eqz v1, :cond_1c

    .line 1127
    .line 1128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 1133
    .line 1134
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1139
    .line 1140
    .line 1141
    move-result v2

    .line 1142
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_10

    .line 1146
    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1147
    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    int-to-double v1, v1

    .line 1153
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1158
    .line 1159
    .line 1160
    goto/16 :goto_1c

    .line 1161
    .line 1162
    :pswitch_b
    move-object/from16 v9, p1

    .line 1163
    .line 1164
    move-object/from16 v0, p3

    .line 1165
    .line 1166
    const/4 v2, 0x0

    .line 1167
    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    if-nez v0, :cond_1d

    .line 1175
    .line 1176
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1177
    .line 1178
    goto/16 :goto_1c

    .line 1179
    .line 1180
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 1181
    .line 1182
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/f;->I(I)V

    .line 1187
    .line 1188
    .line 1189
    goto/16 :goto_1b

    .line 1190
    .line 1191
    :pswitch_c
    move-object/from16 v1, p0

    .line 1192
    .line 1193
    move-object/from16 v9, p1

    .line 1194
    .line 1195
    move-object/from16 v3, p2

    .line 1196
    .line 1197
    move-object/from16 v0, p3

    .line 1198
    .line 1199
    const/4 v2, 0x0

    .line 1200
    const/4 v4, 0x1

    .line 1201
    invoke-static {v14, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1209
    .line 1210
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1215
    .line 1216
    if-eqz v2, :cond_1f

    .line 1217
    .line 1218
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1219
    .line 1220
    .line 1221
    move-result v1

    .line 1222
    if-nez v1, :cond_1e

    .line 1223
    .line 1224
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 1225
    .line 1226
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    goto/16 :goto_1c

    .line 1230
    .line 1231
    :cond_1e
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1232
    .line 1233
    const/4 v1, 0x0

    .line 1234
    invoke-static {v9, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/c0;->c(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/j;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    goto/16 :goto_1c

    .line 1239
    .line 1240
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1241
    .line 1242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    throw v0

    .line 1246
    :pswitch_d
    move-object/from16 v9, p1

    .line 1247
    .line 1248
    move-object/from16 v3, p2

    .line 1249
    .line 1250
    move-object/from16 v0, p3

    .line 1251
    .line 1252
    const/4 v4, 0x2

    .line 1253
    invoke-static {v15, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 1254
    .line 1255
    .line 1256
    sget-object v4, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1257
    .line 1258
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    if-nez v5, :cond_20

    .line 1263
    .line 1264
    const/4 v5, 0x0

    .line 1265
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    check-cast v4, Lcom/google/android/gms/internal/measurement/p;

    .line 1270
    .line 1271
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1276
    .line 1277
    .line 1278
    move-result v5

    .line 1279
    add-int/lit8 v5, v5, -0x1

    .line 1280
    .line 1281
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 1282
    .line 1283
    .line 1284
    move-result v6

    .line 1285
    const/4 v7, 0x1

    .line 1286
    if-le v6, v7, :cond_22

    .line 1287
    .line 1288
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1293
    .line 1294
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v3

    .line 1302
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1303
    .line 1304
    .line 1305
    move-result-wide v5

    .line 1306
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 1307
    .line 1308
    .line 1309
    move-result v3

    .line 1310
    if-eqz v3, :cond_21

    .line 1311
    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    add-int/lit8 v0, v0, -0x1

    .line 1317
    .line 1318
    int-to-double v5, v0

    .line 1319
    goto :goto_11

    .line 1320
    :cond_21
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1325
    .line 1326
    .line 1327
    move-result-wide v5

    .line 1328
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 1329
    .line 1330
    .line 1331
    move-result-wide v5

    .line 1332
    :goto_11
    cmpg-double v0, v5, v1

    .line 1333
    .line 1334
    if-gez v0, :cond_23

    .line 1335
    .line 1336
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1337
    .line 1338
    .line 1339
    move-result v0

    .line 1340
    int-to-double v7, v0

    .line 1341
    add-double/2addr v5, v7

    .line 1342
    goto :goto_12

    .line 1343
    :cond_22
    int-to-double v5, v5

    .line 1344
    :cond_23
    :goto_12
    cmpg-double v0, v5, v1

    .line 1345
    .line 1346
    if-gez v0, :cond_24

    .line 1347
    .line 1348
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1349
    .line 1350
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v1

    .line 1354
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_1c

    .line 1358
    .line 1359
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1360
    .line 1361
    .line 1362
    move-result v0

    .line 1363
    int-to-double v0, v0

    .line 1364
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 1365
    .line 1366
    .line 1367
    move-result-wide v0

    .line 1368
    double-to-int v0, v0

    .line 1369
    :goto_13
    if-ltz v0, :cond_26

    .line 1370
    .line 1371
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 1372
    .line 1373
    .line 1374
    move-result v1

    .line 1375
    if-eqz v1, :cond_25

    .line 1376
    .line 1377
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v1

    .line 1381
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/measurement/a6;->f(Lcom/google/android/gms/internal/measurement/p;Lcom/google/android/gms/internal/measurement/p;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v1

    .line 1385
    if-eqz v1, :cond_25

    .line 1386
    .line 1387
    int-to-double v0, v0

    .line 1388
    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    .line 1389
    .line 1390
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1395
    .line 1396
    .line 1397
    goto/16 :goto_18

    .line 1398
    .line 1399
    :cond_25
    add-int/lit8 v0, v0, -0x1

    .line 1400
    .line 1401
    goto :goto_13

    .line 1402
    :cond_26
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1403
    .line 1404
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v1

    .line 1408
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1409
    .line 1410
    .line 1411
    goto/16 :goto_1c

    .line 1412
    .line 1413
    :pswitch_e
    move-object/from16 v9, p1

    .line 1414
    .line 1415
    move-object/from16 v3, p2

    .line 1416
    .line 1417
    move-object/from16 v0, p3

    .line 1418
    .line 1419
    const/4 v1, 0x1

    .line 1420
    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1424
    .line 1425
    .line 1426
    move-result v1

    .line 1427
    if-nez v1, :cond_27

    .line 1428
    .line 1429
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->q0:Lcom/google/android/gms/internal/measurement/p;

    .line 1430
    .line 1431
    goto/16 :goto_1c

    .line 1432
    .line 1433
    :cond_27
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v1

    .line 1437
    if-nez v1, :cond_2a

    .line 1438
    .line 1439
    const/4 v1, 0x0

    .line 1440
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1445
    .line 1446
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1451
    .line 1452
    if-nez v1, :cond_29

    .line 1453
    .line 1454
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/u;

    .line 1455
    .line 1456
    if-eqz v1, :cond_28

    .line 1457
    .line 1458
    goto :goto_14

    .line 1459
    :cond_28
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    goto :goto_15

    .line 1464
    :cond_29
    :goto_14
    const-string v0, ""

    .line 1465
    .line 1466
    goto :goto_15

    .line 1467
    :cond_2a
    const-string v0, ","

    .line 1468
    .line 1469
    :goto_15
    new-instance v1, Lcom/google/android/gms/internal/measurement/t;

    .line 1470
    .line 1471
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/f;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v0

    .line 1475
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    goto/16 :goto_1b

    .line 1479
    .line 1480
    :pswitch_f
    move-object/from16 v9, p1

    .line 1481
    .line 1482
    move-object/from16 v3, p2

    .line 1483
    .line 1484
    move-object/from16 v0, p3

    .line 1485
    .line 1486
    const/4 v4, 0x2

    .line 1487
    invoke-static {v5, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 1488
    .line 1489
    .line 1490
    sget-object v4, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1491
    .line 1492
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1493
    .line 1494
    .line 1495
    move-result v5

    .line 1496
    if-nez v5, :cond_2b

    .line 1497
    .line 1498
    const/4 v5, 0x0

    .line 1499
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v4

    .line 1503
    check-cast v4, Lcom/google/android/gms/internal/measurement/p;

    .line 1504
    .line 1505
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    :cond_2b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    const/4 v6, 0x1

    .line 1514
    if-le v5, v6, :cond_2e

    .line 1515
    .line 1516
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1521
    .line 1522
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1531
    .line 1532
    .line 1533
    move-result-wide v5

    .line 1534
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 1535
    .line 1536
    .line 1537
    move-result-wide v5

    .line 1538
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    int-to-double v7, v0

    .line 1543
    cmpl-double v0, v5, v7

    .line 1544
    .line 1545
    if-ltz v0, :cond_2c

    .line 1546
    .line 1547
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1548
    .line 1549
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v1

    .line 1553
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1554
    .line 1555
    .line 1556
    goto/16 :goto_1c

    .line 1557
    .line 1558
    :cond_2c
    cmpg-double v0, v5, v1

    .line 1559
    .line 1560
    if-gez v0, :cond_2d

    .line 1561
    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1563
    .line 1564
    .line 1565
    move-result v0

    .line 1566
    int-to-double v0, v0

    .line 1567
    add-double v1, v0, v5

    .line 1568
    .line 1569
    goto :goto_16

    .line 1570
    :cond_2d
    move-wide v1, v5

    .line 1571
    :cond_2e
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1576
    .line 1577
    .line 1578
    move-result v3

    .line 1579
    if-eqz v3, :cond_30

    .line 1580
    .line 1581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v3

    .line 1585
    check-cast v3, Ljava/lang/Integer;

    .line 1586
    .line 1587
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1588
    .line 1589
    .line 1590
    move-result v3

    .line 1591
    int-to-double v5, v3

    .line 1592
    cmpg-double v7, v5, v1

    .line 1593
    .line 1594
    if-ltz v7, :cond_2f

    .line 1595
    .line 1596
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/a6;->f(Lcom/google/android/gms/internal/measurement/p;Lcom/google/android/gms/internal/measurement/p;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v3

    .line 1604
    if-eqz v3, :cond_2f

    .line 1605
    .line 1606
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1607
    .line 1608
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1613
    .line 1614
    .line 1615
    goto/16 :goto_1c

    .line 1616
    .line 1617
    :cond_30
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 1618
    .line 1619
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 1624
    .line 1625
    .line 1626
    goto/16 :goto_1c

    .line 1627
    .line 1628
    :pswitch_10
    move-object/from16 v1, p0

    .line 1629
    .line 1630
    move-object/from16 v9, p1

    .line 1631
    .line 1632
    move-object/from16 v0, p3

    .line 1633
    .line 1634
    move-object v2, v3

    .line 1635
    const/4 v4, 0x1

    .line 1636
    move-object/from16 v3, p2

    .line 1637
    .line 1638
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1639
    .line 1640
    .line 1641
    const/4 v2, 0x0

    .line 1642
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1647
    .line 1648
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1653
    .line 1654
    if-eqz v2, :cond_32

    .line 1655
    .line 1656
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->A()I

    .line 1657
    .line 1658
    .line 1659
    move-result v1

    .line 1660
    if-nez v1, :cond_31

    .line 1661
    .line 1662
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1663
    .line 1664
    goto/16 :goto_1c

    .line 1665
    .line 1666
    :cond_31
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1667
    .line 1668
    const/4 v1, 0x0

    .line 1669
    invoke-static {v9, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/c0;->c(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/j;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    .line 1670
    .line 1671
    .line 1672
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 1673
    .line 1674
    goto/16 :goto_1c

    .line 1675
    .line 1676
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1677
    .line 1678
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    throw v0

    .line 1682
    :pswitch_11
    move-object/from16 v1, p0

    .line 1683
    .line 1684
    move-object/from16 v9, p1

    .line 1685
    .line 1686
    move-object/from16 v3, p2

    .line 1687
    .line 1688
    move-object/from16 v0, p3

    .line 1689
    .line 1690
    move-object/from16 v2, v20

    .line 1691
    .line 1692
    const/4 v4, 0x1

    .line 1693
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1694
    .line 1695
    .line 1696
    const/4 v2, 0x0

    .line 1697
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1702
    .line 1703
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v0

    .line 1707
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1708
    .line 1709
    if-eqz v2, :cond_35

    .line 1710
    .line 1711
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->A()I

    .line 1712
    .line 1713
    .line 1714
    move-result v1

    .line 1715
    if-nez v1, :cond_33

    .line 1716
    .line 1717
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 1718
    .line 1719
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 1720
    .line 1721
    .line 1722
    goto/16 :goto_1c

    .line 1723
    .line 1724
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->r()Lcom/google/android/gms/internal/measurement/p;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v1

    .line 1728
    check-cast v1, Lcom/google/android/gms/internal/measurement/f;

    .line 1729
    .line 1730
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1731
    .line 1732
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1733
    .line 1734
    const/4 v4, 0x0

    .line 1735
    invoke-static {v9, v3, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/c0;->c(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/j;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v0

    .line 1739
    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    .line 1740
    .line 1741
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1749
    .line 1750
    .line 1751
    move-result v3

    .line 1752
    if-eqz v3, :cond_34

    .line 1753
    .line 1754
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v3

    .line 1758
    check-cast v3, Ljava/lang/Integer;

    .line 1759
    .line 1760
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1761
    .line 1762
    .line 1763
    move-result v3

    .line 1764
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v3

    .line 1768
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1769
    .line 1770
    .line 1771
    move-result v4

    .line 1772
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1773
    .line 1774
    .line 1775
    goto :goto_17

    .line 1776
    :cond_34
    :goto_18
    move-object v0, v2

    .line 1777
    goto/16 :goto_1c

    .line 1778
    .line 1779
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1780
    .line 1781
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1782
    .line 1783
    .line 1784
    throw v0

    .line 1785
    :pswitch_12
    move-object/from16 v1, p0

    .line 1786
    .line 1787
    move-object/from16 v2, p1

    .line 1788
    .line 1789
    move-object/from16 v3, p2

    .line 1790
    .line 1791
    move-object/from16 v0, p3

    .line 1792
    .line 1793
    const/4 v4, 0x1

    .line 1794
    invoke-static {v9, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 1795
    .line 1796
    .line 1797
    const/4 v4, 0x0

    .line 1798
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    check-cast v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1803
    .line 1804
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v0

    .line 1808
    instance-of v4, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1809
    .line 1810
    if-eqz v4, :cond_38

    .line 1811
    .line 1812
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    if-nez v1, :cond_36

    .line 1817
    .line 1818
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->o0:Lcom/google/android/gms/internal/measurement/p;

    .line 1819
    .line 1820
    goto/16 :goto_1c

    .line 1821
    .line 1822
    :cond_36
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1823
    .line 1824
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1825
    .line 1826
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1827
    .line 1828
    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/measurement/c0;->c(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/j;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1833
    .line 1834
    .line 1835
    move-result v0

    .line 1836
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    if-eq v0, v1, :cond_37

    .line 1841
    .line 1842
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->p0:Lcom/google/android/gms/internal/measurement/p;

    .line 1843
    .line 1844
    goto :goto_1c

    .line 1845
    :cond_37
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->o0:Lcom/google/android/gms/internal/measurement/p;

    .line 1846
    .line 1847
    goto :goto_1c

    .line 1848
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1849
    .line 1850
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1851
    .line 1852
    .line 1853
    throw v0

    .line 1854
    :pswitch_13
    move-object/from16 v2, p1

    .line 1855
    .line 1856
    move-object/from16 v3, p2

    .line 1857
    .line 1858
    move-object/from16 v0, p3

    .line 1859
    .line 1860
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/f;->r()Lcom/google/android/gms/internal/measurement/p;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v1

    .line 1864
    check-cast v1, Lcom/google/android/gms/internal/measurement/f;

    .line 1865
    .line 1866
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1867
    .line 1868
    .line 1869
    move-result v2

    .line 1870
    if-nez v2, :cond_3c

    .line 1871
    .line 1872
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    :cond_39
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1877
    .line 1878
    .line 1879
    move-result v2

    .line 1880
    if-eqz v2, :cond_3c

    .line 1881
    .line 1882
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v2

    .line 1886
    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    .line 1887
    .line 1888
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v2

    .line 1892
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/h;

    .line 1893
    .line 1894
    if-nez v4, :cond_3b

    .line 1895
    .line 1896
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 1897
    .line 1898
    .line 1899
    move-result v4

    .line 1900
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/f;

    .line 1901
    .line 1902
    if-eqz v5, :cond_3a

    .line 1903
    .line 1904
    check-cast v2, Lcom/google/android/gms/internal/measurement/f;

    .line 1905
    .line 1906
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v5

    .line 1910
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1911
    .line 1912
    .line 1913
    move-result v6

    .line 1914
    if-eqz v6, :cond_39

    .line 1915
    .line 1916
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v6

    .line 1920
    check-cast v6, Ljava/lang/Integer;

    .line 1921
    .line 1922
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1923
    .line 1924
    .line 1925
    move-result v7

    .line 1926
    add-int/2addr v7, v4

    .line 1927
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1928
    .line 1929
    .line 1930
    move-result v6

    .line 1931
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v6

    .line 1935
    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1936
    .line 1937
    .line 1938
    goto :goto_1a

    .line 1939
    :cond_3a
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 1940
    .line 1941
    .line 1942
    goto :goto_19

    .line 1943
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1944
    .line 1945
    const-string v1, "Failed evaluation of arguments"

    .line 1946
    .line 1947
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1948
    .line 1949
    .line 1950
    throw v0

    .line 1951
    :cond_3c
    :goto_1b
    move-object v0, v1

    .line 1952
    :cond_3d
    :goto_1c
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/p;
    .locals 9

    .line 1
    const-string v0, "reduce"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->b(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/measurement/p;

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/j;

    .line 23
    .line 24
    if-eqz v4, :cond_a

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v4, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/h;

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p1, "Failed to parse initial value"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_9

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    :goto_0
    check-cast v3, Lcom/google/android/gms/internal/measurement/j;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->y()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    move v5, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v5, v4, -0x1

    .line 73
    .line 74
    :goto_1
    const/4 v6, -0x1

    .line 75
    if-eqz p3, :cond_3

    .line 76
    .line 77
    add-int/2addr v4, v6

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v4, v0

    .line 80
    :goto_2
    if-eq v1, p3, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v6, v1

    .line 84
    :goto_3
    if-nez p2, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :cond_5
    :goto_4
    add-int/2addr v5, v6

    .line 91
    :cond_6
    sub-int p3, v4, v5

    .line 92
    .line 93
    mul-int/2addr p3, v6

    .line 94
    if-ltz p3, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_5

    .line 101
    .line 102
    const/4 p3, 0x4

    .line 103
    new-array p3, p3, [Lcom/google/android/gms/internal/measurement/p;

    .line 104
    .line 105
    aput-object p2, p3, v0

    .line 106
    .line 107
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    aput-object p2, p3, v1

    .line 112
    .line 113
    int-to-double v7, v5

    .line 114
    new-instance p2, Lcom/google/android/gms/internal/measurement/i;

    .line 115
    .line 116
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-direct {p2, v7}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 121
    .line 122
    .line 123
    aput-object p2, p3, v2

    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    aput-object p0, p3, p2

    .line 127
    .line 128
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/h;

    .line 137
    .line 138
    if-nez p3, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string p1, "Reduce operation failed"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_8
    return-object p2

    .line 150
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string p1, "Empty array with no initial value error"

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p1, "Callback should be a method"

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method private static c(Lcom/google/android/gms/internal/measurement/f;Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/j;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/f;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f;->t()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/f;->D(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/p;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/f;->B(I)Lcom/google/android/gms/internal/measurement/p;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    aput-object v5, v3, v4

    .line 41
    .line 42
    int-to-double v4, v2

    .line 43
    new-instance v6, Lcom/google/android/gms/internal/measurement/i;

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    aput-object v6, v3, v4

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    aput-object p0, v3, v4

    .line 57
    .line 58
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    if-eqz p4, :cond_2

    .line 78
    .line 79
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/f;->C(ILcom/google/android/gms/internal/measurement/p;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    return-object v0
.end method
