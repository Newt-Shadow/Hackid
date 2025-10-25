.class final Lcom/google/android/gms/internal/measurement/lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/tc;


# static fields
.field private static final l:[I

.field private static final m:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/measurement/ic;

.field private final f:Z

.field private final g:[I

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/gms/internal/measurement/ed;

.field private final k:Lcom/google/android/gms/internal/measurement/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/measurement/lc;->l:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ld;->v()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/ic;Z[IIILcom/google/android/gms/internal/measurement/nc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/dc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/lc;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/lc;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/lc;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/lc;->g:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/lc;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/lc;->i:I

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/lc;->j:Lcom/google/android/gms/internal/measurement/ed;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/lc;->k:Lcom/google/android/gms/internal/measurement/va;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/lc;->e:Lcom/google/android/gms/internal/measurement/ic;

    return-void
.end method

.method static A(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fc;Lcom/google/android/gms/internal/measurement/nc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/dc;)Lcom/google/android/gms/internal/measurement/lc;
    .locals 34

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/sc;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/sc;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/sc;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v5, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v5, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/measurement/lc;->l:[I

    .line 73
    .line 74
    move v9, v3

    .line 75
    move v11, v9

    .line 76
    move v12, v11

    .line 77
    move v13, v12

    .line 78
    move v14, v13

    .line 79
    move/from16 v17, v14

    .line 80
    .line 81
    move-object/from16 v16, v7

    .line 82
    .line 83
    move/from16 v7, v17

    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-lt v4, v5, :cond_6

    .line 94
    .line 95
    and-int/lit16 v4, v4, 0x1fff

    .line 96
    .line 97
    const/16 v9, 0xd

    .line 98
    .line 99
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 100
    .line 101
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-lt v7, v5, :cond_5

    .line 106
    .line 107
    and-int/lit16 v7, v7, 0x1fff

    .line 108
    .line 109
    shl-int/2addr v7, v9

    .line 110
    or-int/2addr v4, v7

    .line 111
    add-int/lit8 v9, v9, 0xd

    .line 112
    .line 113
    move v7, v10

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    shl-int/2addr v7, v9

    .line 116
    or-int/2addr v4, v7

    .line 117
    move v7, v10

    .line 118
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 119
    .line 120
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-lt v7, v5, :cond_8

    .line 125
    .line 126
    and-int/lit16 v7, v7, 0x1fff

    .line 127
    .line 128
    const/16 v10, 0xd

    .line 129
    .line 130
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 131
    .line 132
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-lt v9, v5, :cond_7

    .line 137
    .line 138
    and-int/lit16 v9, v9, 0x1fff

    .line 139
    .line 140
    shl-int/2addr v9, v10

    .line 141
    or-int/2addr v7, v9

    .line 142
    add-int/lit8 v10, v10, 0xd

    .line 143
    .line 144
    move v9, v11

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    shl-int/2addr v9, v10

    .line 147
    or-int/2addr v7, v9

    .line 148
    move v9, v11

    .line 149
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 150
    .line 151
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-lt v9, v5, :cond_a

    .line 156
    .line 157
    and-int/lit16 v9, v9, 0x1fff

    .line 158
    .line 159
    const/16 v11, 0xd

    .line 160
    .line 161
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 162
    .line 163
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-lt v10, v5, :cond_9

    .line 168
    .line 169
    and-int/lit16 v10, v10, 0x1fff

    .line 170
    .line 171
    shl-int/2addr v10, v11

    .line 172
    or-int/2addr v9, v10

    .line 173
    add-int/lit8 v11, v11, 0xd

    .line 174
    .line 175
    move v10, v12

    .line 176
    goto :goto_4

    .line 177
    :cond_9
    shl-int/2addr v10, v11

    .line 178
    or-int/2addr v9, v10

    .line 179
    move v10, v12

    .line 180
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 181
    .line 182
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-lt v10, v5, :cond_c

    .line 187
    .line 188
    and-int/lit16 v10, v10, 0x1fff

    .line 189
    .line 190
    const/16 v12, 0xd

    .line 191
    .line 192
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 193
    .line 194
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-lt v11, v5, :cond_b

    .line 199
    .line 200
    and-int/lit16 v11, v11, 0x1fff

    .line 201
    .line 202
    shl-int/2addr v11, v12

    .line 203
    or-int/2addr v10, v11

    .line 204
    add-int/lit8 v12, v12, 0xd

    .line 205
    .line 206
    move v11, v13

    .line 207
    goto :goto_5

    .line 208
    :cond_b
    shl-int/2addr v11, v12

    .line 209
    or-int/2addr v10, v11

    .line 210
    move v11, v13

    .line 211
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 212
    .line 213
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-lt v11, v5, :cond_e

    .line 218
    .line 219
    and-int/lit16 v11, v11, 0x1fff

    .line 220
    .line 221
    const/16 v13, 0xd

    .line 222
    .line 223
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 224
    .line 225
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-lt v12, v5, :cond_d

    .line 230
    .line 231
    and-int/lit16 v12, v12, 0x1fff

    .line 232
    .line 233
    shl-int/2addr v12, v13

    .line 234
    or-int/2addr v11, v12

    .line 235
    add-int/lit8 v13, v13, 0xd

    .line 236
    .line 237
    move v12, v14

    .line 238
    goto :goto_6

    .line 239
    :cond_d
    shl-int/2addr v12, v13

    .line 240
    or-int/2addr v11, v12

    .line 241
    move v12, v14

    .line 242
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 243
    .line 244
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-lt v12, v5, :cond_10

    .line 249
    .line 250
    and-int/lit16 v12, v12, 0x1fff

    .line 251
    .line 252
    const/16 v14, 0xd

    .line 253
    .line 254
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 255
    .line 256
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-lt v13, v5, :cond_f

    .line 261
    .line 262
    and-int/lit16 v13, v13, 0x1fff

    .line 263
    .line 264
    shl-int/2addr v13, v14

    .line 265
    or-int/2addr v12, v13

    .line 266
    add-int/lit8 v14, v14, 0xd

    .line 267
    .line 268
    move v13, v15

    .line 269
    goto :goto_7

    .line 270
    :cond_f
    shl-int/2addr v13, v14

    .line 271
    or-int/2addr v12, v13

    .line 272
    move v13, v15

    .line 273
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 274
    .line 275
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-lt v13, v5, :cond_12

    .line 280
    .line 281
    and-int/lit16 v13, v13, 0x1fff

    .line 282
    .line 283
    const/16 v15, 0xd

    .line 284
    .line 285
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 286
    .line 287
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-lt v14, v5, :cond_11

    .line 292
    .line 293
    and-int/lit16 v14, v14, 0x1fff

    .line 294
    .line 295
    shl-int/2addr v14, v15

    .line 296
    or-int/2addr v13, v14

    .line 297
    add-int/lit8 v15, v15, 0xd

    .line 298
    .line 299
    move/from16 v14, v16

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_11
    shl-int/2addr v14, v15

    .line 303
    or-int/2addr v13, v14

    .line 304
    move/from16 v14, v16

    .line 305
    .line 306
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 307
    .line 308
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    if-lt v14, v5, :cond_14

    .line 313
    .line 314
    and-int/lit16 v14, v14, 0x1fff

    .line 315
    .line 316
    const/16 v16, 0xd

    .line 317
    .line 318
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 319
    .line 320
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v15

    .line 324
    if-lt v15, v5, :cond_13

    .line 325
    .line 326
    and-int/lit16 v15, v15, 0x1fff

    .line 327
    .line 328
    shl-int v15, v15, v16

    .line 329
    .line 330
    or-int/2addr v14, v15

    .line 331
    add-int/lit8 v16, v16, 0xd

    .line 332
    .line 333
    move/from16 v15, v17

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_13
    shl-int v15, v15, v16

    .line 337
    .line 338
    or-int/2addr v14, v15

    .line 339
    move/from16 v15, v17

    .line 340
    .line 341
    :cond_14
    add-int v16, v14, v12

    .line 342
    .line 343
    add-int v13, v16, v13

    .line 344
    .line 345
    add-int v16, v4, v4

    .line 346
    .line 347
    add-int v16, v16, v7

    .line 348
    .line 349
    new-array v7, v13, [I

    .line 350
    .line 351
    move v13, v9

    .line 352
    move/from16 v17, v14

    .line 353
    .line 354
    move/from16 v9, v16

    .line 355
    .line 356
    move-object/from16 v16, v7

    .line 357
    .line 358
    move v14, v10

    .line 359
    move v7, v4

    .line 360
    move v4, v15

    .line 361
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/sc;->b()[Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v15

    .line 367
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/sc;->e()Lcom/google/android/gms/internal/measurement/ic;

    .line 368
    .line 369
    .line 370
    move-result-object v18

    .line 371
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    add-int v18, v17, v12

    .line 376
    .line 377
    add-int v12, v11, v11

    .line 378
    .line 379
    mul-int/lit8 v11, v11, 0x3

    .line 380
    .line 381
    new-array v11, v11, [I

    .line 382
    .line 383
    new-array v12, v12, [Ljava/lang/Object;

    .line 384
    .line 385
    move/from16 v21, v17

    .line 386
    .line 387
    move/from16 v22, v18

    .line 388
    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    const/16 v20, 0x0

    .line 392
    .line 393
    :goto_b
    if-ge v4, v2, :cond_36

    .line 394
    .line 395
    add-int/lit8 v23, v4, 0x1

    .line 396
    .line 397
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-lt v4, v5, :cond_16

    .line 402
    .line 403
    and-int/lit16 v4, v4, 0x1fff

    .line 404
    .line 405
    move/from16 v8, v23

    .line 406
    .line 407
    const/16 v23, 0xd

    .line 408
    .line 409
    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 410
    .line 411
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-lt v8, v5, :cond_15

    .line 416
    .line 417
    and-int/lit16 v8, v8, 0x1fff

    .line 418
    .line 419
    shl-int v8, v8, v23

    .line 420
    .line 421
    or-int/2addr v4, v8

    .line 422
    add-int/lit8 v23, v23, 0xd

    .line 423
    .line 424
    move/from16 v8, v24

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_15
    shl-int v8, v8, v23

    .line 428
    .line 429
    or-int/2addr v4, v8

    .line 430
    move/from16 v8, v24

    .line 431
    .line 432
    goto :goto_d

    .line 433
    :cond_16
    move/from16 v8, v23

    .line 434
    .line 435
    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 436
    .line 437
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-lt v8, v5, :cond_18

    .line 442
    .line 443
    and-int/lit16 v8, v8, 0x1fff

    .line 444
    .line 445
    move/from16 v6, v23

    .line 446
    .line 447
    const/16 v23, 0xd

    .line 448
    .line 449
    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 450
    .line 451
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    if-lt v6, v5, :cond_17

    .line 456
    .line 457
    and-int/lit16 v6, v6, 0x1fff

    .line 458
    .line 459
    shl-int v6, v6, v23

    .line 460
    .line 461
    or-int/2addr v8, v6

    .line 462
    add-int/lit8 v23, v23, 0xd

    .line 463
    .line 464
    move/from16 v6, v25

    .line 465
    .line 466
    goto :goto_e

    .line 467
    :cond_17
    shl-int v6, v6, v23

    .line 468
    .line 469
    or-int/2addr v8, v6

    .line 470
    move/from16 v6, v25

    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_18
    move/from16 v6, v23

    .line 474
    .line 475
    :goto_f
    and-int/lit16 v5, v8, 0x400

    .line 476
    .line 477
    if-eqz v5, :cond_19

    .line 478
    .line 479
    add-int/lit8 v5, v19, 0x1

    .line 480
    .line 481
    aput v20, v16, v19

    .line 482
    .line 483
    move/from16 v19, v5

    .line 484
    .line 485
    :cond_19
    and-int/lit16 v5, v8, 0xff

    .line 486
    .line 487
    move/from16 v25, v2

    .line 488
    .line 489
    and-int/lit16 v2, v8, 0x800

    .line 490
    .line 491
    move/from16 v26, v14

    .line 492
    .line 493
    const/16 v14, 0x33

    .line 494
    .line 495
    if-lt v5, v14, :cond_23

    .line 496
    .line 497
    add-int/lit8 v14, v6, 0x1

    .line 498
    .line 499
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 500
    .line 501
    .line 502
    move-result v6

    .line 503
    move/from16 v27, v14

    .line 504
    .line 505
    const v14, 0xd800

    .line 506
    .line 507
    .line 508
    if-lt v6, v14, :cond_1b

    .line 509
    .line 510
    and-int/lit16 v6, v6, 0x1fff

    .line 511
    .line 512
    move/from16 v14, v27

    .line 513
    .line 514
    const/16 v27, 0xd

    .line 515
    .line 516
    :goto_10
    add-int/lit8 v31, v14, 0x1

    .line 517
    .line 518
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 519
    .line 520
    .line 521
    move-result v14

    .line 522
    move/from16 v32, v13

    .line 523
    .line 524
    const v13, 0xd800

    .line 525
    .line 526
    .line 527
    if-lt v14, v13, :cond_1a

    .line 528
    .line 529
    and-int/lit16 v13, v14, 0x1fff

    .line 530
    .line 531
    shl-int v13, v13, v27

    .line 532
    .line 533
    or-int/2addr v6, v13

    .line 534
    add-int/lit8 v27, v27, 0xd

    .line 535
    .line 536
    move/from16 v14, v31

    .line 537
    .line 538
    move/from16 v13, v32

    .line 539
    .line 540
    goto :goto_10

    .line 541
    :cond_1a
    shl-int v13, v14, v27

    .line 542
    .line 543
    or-int/2addr v6, v13

    .line 544
    move/from16 v14, v31

    .line 545
    .line 546
    goto :goto_11

    .line 547
    :cond_1b
    move/from16 v32, v13

    .line 548
    .line 549
    move/from16 v14, v27

    .line 550
    .line 551
    :goto_11
    add-int/lit8 v13, v5, -0x33

    .line 552
    .line 553
    move/from16 v27, v14

    .line 554
    .line 555
    const/16 v14, 0x9

    .line 556
    .line 557
    if-eq v13, v14, :cond_1f

    .line 558
    .line 559
    const/16 v14, 0x11

    .line 560
    .line 561
    if-ne v13, v14, :cond_1c

    .line 562
    .line 563
    goto :goto_13

    .line 564
    :cond_1c
    const/16 v14, 0xc

    .line 565
    .line 566
    if-ne v13, v14, :cond_20

    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/sc;->f()I

    .line 569
    .line 570
    .line 571
    move-result v13

    .line 572
    const/4 v14, 0x1

    .line 573
    if-eq v13, v14, :cond_1e

    .line 574
    .line 575
    if-eqz v2, :cond_1d

    .line 576
    .line 577
    goto :goto_12

    .line 578
    :cond_1d
    const/4 v2, 0x0

    .line 579
    goto :goto_15

    .line 580
    :cond_1e
    :goto_12
    add-int/lit8 v13, v9, 0x1

    .line 581
    .line 582
    div-int/lit8 v24, v20, 0x3

    .line 583
    .line 584
    add-int v24, v24, v24

    .line 585
    .line 586
    add-int/lit8 v24, v24, 0x1

    .line 587
    .line 588
    aget-object v9, v15, v9

    .line 589
    .line 590
    aput-object v9, v12, v24

    .line 591
    .line 592
    goto :goto_14

    .line 593
    :cond_1f
    :goto_13
    const/4 v14, 0x1

    .line 594
    add-int/lit8 v13, v9, 0x1

    .line 595
    .line 596
    div-int/lit8 v24, v20, 0x3

    .line 597
    .line 598
    add-int v24, v24, v24

    .line 599
    .line 600
    add-int/lit8 v28, v24, 0x1

    .line 601
    .line 602
    aget-object v9, v15, v9

    .line 603
    .line 604
    aput-object v9, v12, v28

    .line 605
    .line 606
    :goto_14
    move v9, v13

    .line 607
    :cond_20
    :goto_15
    add-int/2addr v6, v6

    .line 608
    aget-object v13, v15, v6

    .line 609
    .line 610
    instance-of v14, v13, Ljava/lang/reflect/Field;

    .line 611
    .line 612
    if-eqz v14, :cond_21

    .line 613
    .line 614
    check-cast v13, Ljava/lang/reflect/Field;

    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_21
    check-cast v13, Ljava/lang/String;

    .line 618
    .line 619
    invoke-static {v3, v13}, Lcom/google/android/gms/internal/measurement/lc;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 620
    .line 621
    .line 622
    move-result-object v13

    .line 623
    aput-object v13, v15, v6

    .line 624
    .line 625
    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 626
    .line 627
    .line 628
    move-result-wide v13

    .line 629
    long-to-int v13, v13

    .line 630
    add-int/lit8 v6, v6, 0x1

    .line 631
    .line 632
    aget-object v14, v15, v6

    .line 633
    .line 634
    move/from16 v28, v2

    .line 635
    .line 636
    instance-of v2, v14, Ljava/lang/reflect/Field;

    .line 637
    .line 638
    if-eqz v2, :cond_22

    .line 639
    .line 640
    check-cast v14, Ljava/lang/reflect/Field;

    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_22
    check-cast v14, Ljava/lang/String;

    .line 644
    .line 645
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/measurement/lc;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 646
    .line 647
    .line 648
    move-result-object v14

    .line 649
    aput-object v14, v15, v6

    .line 650
    .line 651
    :goto_17
    move v2, v13

    .line 652
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 653
    .line 654
    .line 655
    move-result-wide v13

    .line 656
    long-to-int v6, v13

    .line 657
    move-object v14, v1

    .line 658
    move v13, v9

    .line 659
    move/from16 v29, v27

    .line 660
    .line 661
    const v1, 0xd800

    .line 662
    .line 663
    .line 664
    move v9, v6

    .line 665
    const/4 v6, 0x0

    .line 666
    move/from16 v33, v28

    .line 667
    .line 668
    move-object/from16 v28, v0

    .line 669
    .line 670
    move v0, v2

    .line 671
    move/from16 v2, v33

    .line 672
    .line 673
    goto/16 :goto_23

    .line 674
    .line 675
    :cond_23
    move/from16 v32, v13

    .line 676
    .line 677
    add-int/lit8 v13, v9, 0x1

    .line 678
    .line 679
    aget-object v9, v15, v9

    .line 680
    .line 681
    check-cast v9, Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/lc;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 684
    .line 685
    .line 686
    move-result-object v9

    .line 687
    const/16 v14, 0x9

    .line 688
    .line 689
    if-eq v5, v14, :cond_2d

    .line 690
    .line 691
    const/16 v14, 0x11

    .line 692
    .line 693
    if-ne v5, v14, :cond_24

    .line 694
    .line 695
    goto/16 :goto_1c

    .line 696
    .line 697
    :cond_24
    const/16 v14, 0x1b

    .line 698
    .line 699
    if-eq v5, v14, :cond_2c

    .line 700
    .line 701
    const/16 v14, 0x31

    .line 702
    .line 703
    if-ne v5, v14, :cond_25

    .line 704
    .line 705
    add-int/lit8 v14, v13, 0x1

    .line 706
    .line 707
    move-object/from16 v28, v0

    .line 708
    .line 709
    const/4 v0, 0x1

    .line 710
    goto/16 :goto_1a

    .line 711
    .line 712
    :cond_25
    const/16 v14, 0xc

    .line 713
    .line 714
    if-eq v5, v14, :cond_29

    .line 715
    .line 716
    const/16 v14, 0x1e

    .line 717
    .line 718
    if-eq v5, v14, :cond_29

    .line 719
    .line 720
    const/16 v14, 0x2c

    .line 721
    .line 722
    if-ne v5, v14, :cond_26

    .line 723
    .line 724
    goto :goto_18

    .line 725
    :cond_26
    const/16 v14, 0x32

    .line 726
    .line 727
    if-ne v5, v14, :cond_28

    .line 728
    .line 729
    add-int/lit8 v14, v13, 0x1

    .line 730
    .line 731
    add-int/lit8 v28, v21, 0x1

    .line 732
    .line 733
    aput v20, v16, v21

    .line 734
    .line 735
    div-int/lit8 v21, v20, 0x3

    .line 736
    .line 737
    aget-object v13, v15, v13

    .line 738
    .line 739
    add-int v21, v21, v21

    .line 740
    .line 741
    aput-object v13, v12, v21

    .line 742
    .line 743
    if-eqz v2, :cond_27

    .line 744
    .line 745
    add-int/lit8 v21, v21, 0x1

    .line 746
    .line 747
    add-int/lit8 v13, v14, 0x1

    .line 748
    .line 749
    aget-object v14, v15, v14

    .line 750
    .line 751
    aput-object v14, v12, v21

    .line 752
    .line 753
    move-object v14, v1

    .line 754
    move/from16 v21, v28

    .line 755
    .line 756
    move-object/from16 v28, v0

    .line 757
    .line 758
    goto :goto_1e

    .line 759
    :cond_27
    move v13, v14

    .line 760
    move/from16 v21, v28

    .line 761
    .line 762
    const/4 v2, 0x0

    .line 763
    move-object/from16 v28, v0

    .line 764
    .line 765
    goto :goto_1d

    .line 766
    :cond_28
    move-object/from16 v28, v0

    .line 767
    .line 768
    const/4 v0, 0x1

    .line 769
    goto :goto_1d

    .line 770
    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/sc;->f()I

    .line 771
    .line 772
    .line 773
    move-result v14

    .line 774
    move-object/from16 v28, v0

    .line 775
    .line 776
    const/4 v0, 0x1

    .line 777
    if-eq v14, v0, :cond_2b

    .line 778
    .line 779
    if-eqz v2, :cond_2a

    .line 780
    .line 781
    goto :goto_19

    .line 782
    :cond_2a
    move-object v14, v1

    .line 783
    const/4 v2, 0x0

    .line 784
    goto :goto_1e

    .line 785
    :cond_2b
    :goto_19
    add-int/lit8 v14, v13, 0x1

    .line 786
    .line 787
    div-int/lit8 v24, v20, 0x3

    .line 788
    .line 789
    add-int v24, v24, v24

    .line 790
    .line 791
    add-int/lit8 v24, v24, 0x1

    .line 792
    .line 793
    aget-object v13, v15, v13

    .line 794
    .line 795
    aput-object v13, v12, v24

    .line 796
    .line 797
    goto :goto_1b

    .line 798
    :cond_2c
    move-object/from16 v28, v0

    .line 799
    .line 800
    const/4 v0, 0x1

    .line 801
    add-int/lit8 v14, v13, 0x1

    .line 802
    .line 803
    :goto_1a
    div-int/lit8 v24, v20, 0x3

    .line 804
    .line 805
    add-int v24, v24, v24

    .line 806
    .line 807
    add-int/lit8 v24, v24, 0x1

    .line 808
    .line 809
    aget-object v13, v15, v13

    .line 810
    .line 811
    aput-object v13, v12, v24

    .line 812
    .line 813
    :goto_1b
    move v13, v14

    .line 814
    goto :goto_1d

    .line 815
    :cond_2d
    :goto_1c
    move-object/from16 v28, v0

    .line 816
    .line 817
    const/4 v0, 0x1

    .line 818
    div-int/lit8 v14, v20, 0x3

    .line 819
    .line 820
    add-int/2addr v14, v14

    .line 821
    add-int/2addr v14, v0

    .line 822
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    move-result-object v24

    .line 826
    aput-object v24, v12, v14

    .line 827
    .line 828
    :goto_1d
    move-object v14, v1

    .line 829
    :goto_1e
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 830
    .line 831
    .line 832
    move-result-wide v0

    .line 833
    long-to-int v0, v0

    .line 834
    and-int/lit16 v1, v8, 0x1000

    .line 835
    .line 836
    const v9, 0xfffff

    .line 837
    .line 838
    .line 839
    if-eqz v1, :cond_31

    .line 840
    .line 841
    const/16 v1, 0x11

    .line 842
    .line 843
    if-gt v5, v1, :cond_31

    .line 844
    .line 845
    add-int/lit8 v1, v6, 0x1

    .line 846
    .line 847
    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    .line 848
    .line 849
    .line 850
    move-result v6

    .line 851
    const v9, 0xd800

    .line 852
    .line 853
    .line 854
    if-lt v6, v9, :cond_2f

    .line 855
    .line 856
    and-int/lit16 v6, v6, 0x1fff

    .line 857
    .line 858
    const/16 v23, 0xd

    .line 859
    .line 860
    :goto_1f
    add-int/lit8 v29, v1, 0x1

    .line 861
    .line 862
    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    if-lt v1, v9, :cond_2e

    .line 867
    .line 868
    and-int/lit16 v1, v1, 0x1fff

    .line 869
    .line 870
    shl-int v1, v1, v23

    .line 871
    .line 872
    or-int/2addr v6, v1

    .line 873
    add-int/lit8 v23, v23, 0xd

    .line 874
    .line 875
    move/from16 v1, v29

    .line 876
    .line 877
    goto :goto_1f

    .line 878
    :cond_2e
    shl-int v1, v1, v23

    .line 879
    .line 880
    or-int/2addr v6, v1

    .line 881
    goto :goto_20

    .line 882
    :cond_2f
    move/from16 v29, v1

    .line 883
    .line 884
    :goto_20
    add-int v1, v7, v7

    .line 885
    .line 886
    div-int/lit8 v23, v6, 0x20

    .line 887
    .line 888
    add-int v1, v1, v23

    .line 889
    .line 890
    aget-object v9, v15, v1

    .line 891
    .line 892
    move/from16 v30, v2

    .line 893
    .line 894
    instance-of v2, v9, Ljava/lang/reflect/Field;

    .line 895
    .line 896
    if-eqz v2, :cond_30

    .line 897
    .line 898
    check-cast v9, Ljava/lang/reflect/Field;

    .line 899
    .line 900
    goto :goto_21

    .line 901
    :cond_30
    check-cast v9, Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/lc;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    aput-object v9, v15, v1

    .line 908
    .line 909
    :goto_21
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 910
    .line 911
    .line 912
    move-result-wide v1

    .line 913
    long-to-int v1, v1

    .line 914
    rem-int/lit8 v6, v6, 0x20

    .line 915
    .line 916
    move v9, v1

    .line 917
    const v1, 0xd800

    .line 918
    .line 919
    .line 920
    goto :goto_22

    .line 921
    :cond_31
    move/from16 v30, v2

    .line 922
    .line 923
    const v1, 0xd800

    .line 924
    .line 925
    .line 926
    move/from16 v29, v6

    .line 927
    .line 928
    const/4 v6, 0x0

    .line 929
    :goto_22
    const/16 v2, 0x12

    .line 930
    .line 931
    if-lt v5, v2, :cond_32

    .line 932
    .line 933
    const/16 v2, 0x31

    .line 934
    .line 935
    if-gt v5, v2, :cond_32

    .line 936
    .line 937
    add-int/lit8 v2, v22, 0x1

    .line 938
    .line 939
    aput v0, v16, v22

    .line 940
    .line 941
    move/from16 v22, v2

    .line 942
    .line 943
    :cond_32
    move/from16 v2, v30

    .line 944
    .line 945
    :goto_23
    add-int/lit8 v23, v20, 0x1

    .line 946
    .line 947
    aput v4, v11, v20

    .line 948
    .line 949
    add-int/lit8 v4, v23, 0x1

    .line 950
    .line 951
    and-int/lit16 v1, v8, 0x200

    .line 952
    .line 953
    if-eqz v1, :cond_33

    .line 954
    .line 955
    const/high16 v1, 0x20000000

    .line 956
    .line 957
    goto :goto_24

    .line 958
    :cond_33
    const/4 v1, 0x0

    .line 959
    :goto_24
    and-int/lit16 v8, v8, 0x100

    .line 960
    .line 961
    if-eqz v8, :cond_34

    .line 962
    .line 963
    const/high16 v8, 0x10000000

    .line 964
    .line 965
    goto :goto_25

    .line 966
    :cond_34
    const/4 v8, 0x0

    .line 967
    :goto_25
    if-eqz v2, :cond_35

    .line 968
    .line 969
    const/high16 v2, -0x80000000

    .line 970
    .line 971
    goto :goto_26

    .line 972
    :cond_35
    const/4 v2, 0x0

    .line 973
    :goto_26
    shl-int/lit8 v5, v5, 0x14

    .line 974
    .line 975
    or-int/2addr v1, v8

    .line 976
    or-int/2addr v1, v2

    .line 977
    or-int/2addr v1, v5

    .line 978
    or-int/2addr v0, v1

    .line 979
    aput v0, v11, v23

    .line 980
    .line 981
    add-int/lit8 v0, v4, 0x1

    .line 982
    .line 983
    shl-int/lit8 v1, v6, 0x14

    .line 984
    .line 985
    or-int/2addr v1, v9

    .line 986
    aput v1, v11, v4

    .line 987
    .line 988
    move/from16 v20, v0

    .line 989
    .line 990
    move v9, v13

    .line 991
    move-object v1, v14

    .line 992
    move/from16 v2, v25

    .line 993
    .line 994
    move/from16 v14, v26

    .line 995
    .line 996
    move-object/from16 v0, v28

    .line 997
    .line 998
    move/from16 v4, v29

    .line 999
    .line 1000
    move/from16 v13, v32

    .line 1001
    .line 1002
    const v5, 0xd800

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_b

    .line 1006
    .line 1007
    :cond_36
    move-object/from16 v28, v0

    .line 1008
    .line 1009
    move/from16 v32, v13

    .line 1010
    .line 1011
    move/from16 v26, v14

    .line 1012
    .line 1013
    new-instance v0, Lcom/google/android/gms/internal/measurement/lc;

    .line 1014
    .line 1015
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/sc;->e()Lcom/google/android/gms/internal/measurement/ic;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v14

    .line 1019
    const/4 v15, 0x0

    .line 1020
    move-object v9, v0

    .line 1021
    move-object v10, v11

    .line 1022
    move-object v11, v12

    .line 1023
    move/from16 v12, v32

    .line 1024
    .line 1025
    move/from16 v13, v26

    .line 1026
    .line 1027
    move-object/from16 v19, p2

    .line 1028
    .line 1029
    move-object/from16 v20, p3

    .line 1030
    .line 1031
    move-object/from16 v21, p4

    .line 1032
    .line 1033
    move-object/from16 v22, p5

    .line 1034
    .line 1035
    move-object/from16 v23, p6

    .line 1036
    .line 1037
    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/measurement/lc;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/ic;Z[IIILcom/google/android/gms/internal/measurement/nc;Lcom/google/android/gms/internal/measurement/tb;Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/dc;)V

    .line 1038
    .line 1039
    .line 1040
    return-object v0

    .line 1041
    :cond_37
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 1042
    .line 1043
    .line 1044
    const/4 v0, 0x0

    .line 1045
    throw v0
.end method

.method private static B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/lit8 v3, v3, 0xb

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    add-int/2addr v3, v4

    .line 60
    add-int/lit8 v3, v3, 0x1d

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    add-int/2addr v3, v4

    .line 69
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const-string v3, "Field "

    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " for "

    .line 81
    .line 82
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, " not found. Known fields are "

    .line 89
    .line 90
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v2
.end method

.method private final C(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p3, v4

    .line 80
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 85
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    aget p1, p1, p3

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    add-int/lit8 p3, p3, 0x26

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    add-int/2addr p3, v1

    .line 111
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .line 113
    .line 114
    const-string p3, "Source subfield "

    .line 115
    .line 116
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, " is present but null: "

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method private final D(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 2
    .line 3
    aget v1, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v3, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v4, v2

    .line 23
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/lc;->u(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v0

    .line 84
    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p3, v0, p3

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/lit8 v0, v0, 0x26

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    add-int/2addr v0, v1

    .line 113
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .line 115
    .line 116
    const-string v0, "Source subfield "

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p3, " is present but null: "

    .line 125
    .line 126
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method private final E(I)Lcom/google/android/gms/internal/measurement/tc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/measurement/tc;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qc;->a()Lcom/google/android/gms/internal/measurement/qc;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-object v1, v0, v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/qc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v0, p1

    .line 28
    .line 29
    return-object v1
.end method

.method private final F(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private final G(I)Lcom/google/android/gms/internal/measurement/kb;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/measurement/kb;

    .line 11
    .line 12
    return-object p1
.end method

.method private final H(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final I(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final J(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p3, v1

    .line 26
    int-to-long v1, p3

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/tc;->zza()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final K(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lc;->u(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/tc;)Z
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/tc;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private final M(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private final N(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private static O(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static i(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/hb;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/measurement/hb;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private static j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "Mutating immutable message: "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method private static k(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Double;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static l(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static m(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static n(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static o(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final p(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private final q(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private final r(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->N(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int v2, v0, v1

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    const-wide/32 v4, 0xfffff

    .line 12
    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v4, :cond_14

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    return v6

    .line 49
    :cond_0
    return v5

    .line 50
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    return v6

    .line 59
    :cond_1
    return v5

    .line 60
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    return v6

    .line 67
    :cond_2
    return v5

    .line 68
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    cmp-long p1, p1, v2

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return v6

    .line 77
    :cond_3
    return v5

    .line 78
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    return v6

    .line 85
    :cond_4
    return v5

    .line 86
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    return v6

    .line 93
    :cond_5
    return v5

    .line 94
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    return v6

    .line 101
    :cond_6
    return v5

    .line 102
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/ka;->b:Lcom/google/android/gms/internal/measurement/ka;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/ka;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    return v6

    .line 115
    :cond_7
    return v5

    .line 116
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    return v6

    .line 123
    :cond_8
    return v5

    .line 124
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    instance-of p2, p1, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    check-cast p1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_9

    .line 139
    .line 140
    return v6

    .line 141
    :cond_9
    return v5

    .line 142
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/ka;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/gms/internal/measurement/ka;->b:Lcom/google/android/gms/internal/measurement/ka;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/ka;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    return v6

    .line 155
    :cond_b
    return v5

    .line 156
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    return v6

    .line 174
    :cond_d
    return v5

    .line 175
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    cmp-long p1, p1, v2

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    return v6

    .line 184
    :cond_e
    return v5

    .line 185
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    return v6

    .line 192
    :cond_f
    return v5

    .line 193
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    cmp-long p1, p1, v2

    .line 198
    .line 199
    if-eqz p1, :cond_10

    .line 200
    .line 201
    return v6

    .line 202
    :cond_10
    return v5

    .line 203
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide p1

    .line 207
    cmp-long p1, p1, v2

    .line 208
    .line 209
    if-eqz p1, :cond_11

    .line 210
    .line 211
    return v6

    .line 212
    :cond_11
    return v5

    .line 213
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_12

    .line 222
    .line 223
    return v6

    .line 224
    :cond_12
    return v5

    .line 225
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    cmp-long p1, p1, v2

    .line 234
    .line 235
    if-eqz p1, :cond_13

    .line 236
    .line 237
    return v6

    .line 238
    :cond_13
    return v5

    .line 239
    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    .line 240
    .line 241
    shl-int p2, v6, p2

    .line 242
    .line 243
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    and-int/2addr p1, p2

    .line 248
    if-eqz p1, :cond_15

    .line 249
    .line 250
    return v6

    .line 251
    :cond_15
    return v5

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
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

.method private final s(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/lc;->N(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p2

    .line 9
    int-to-long v0, v0

    .line 10
    const-wide/32 v2, 0xfffff

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    shl-int p2, v3, p2

    .line 26
    .line 27
    or-int/2addr p2, v2

    .line 28
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final t(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->N(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method private final u(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/lc;->N(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final v(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v3, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    mul-int/lit8 v4, v3, 0x3

    .line 15
    .line 16
    aget v5, v0, v4

    .line 17
    .line 18
    if-ne p1, v5, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    if-ge p1, v5, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v3, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v2
.end method

.method private static final w([BIILcom/google/android/gms/internal/measurement/pd;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/y9;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/pd;->c:Lcom/google/android/gms/internal/measurement/pd;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    packed-switch p3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string p1, "unsupported field type."

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    iget p1, p5, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->g([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qc;->a()Lcom/google/android/gms/internal/measurement/qc;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/qc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/z9;->h(Lcom/google/android/gms/internal/measurement/tc;[BIILcom/google/android/gms/internal/measurement/y9;)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->f([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 85
    .line 86
    const-wide/16 p3, 0x0

    .line 87
    .line 88
    cmp-long p1, p1, p3

    .line 89
    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const/4 p1, 0x0

    .line 95
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    .line 103
    .line 104
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    .line 118
    .line 119
    .line 120
    move-result-wide p0

    .line 121
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    iget p1, p5, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 146
    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    .line 155
    .line 156
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    .line 172
    .line 173
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 178
    .line 179
    .line 180
    move-result-wide p0

    .line 181
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 186
    .line 187
    :goto_1
    move p0, p2

    .line 188
    :goto_2
    return p0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/rd;->z(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/ka;

    .line 12
    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/rd;->k(ILcom/google/android/gms/internal/measurement/ka;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fd;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->a()Lcom/google/android/gms/internal/measurement/fd;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->b()Lcom/google/android/gms/internal/measurement/fd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    array-length v3, v2

    if-ge v11, v3, :cond_1b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    move-result v4

    .line 2
    aget v13, v2, v11

    add-int/lit8 v5, v11, 0x2

    .line 3
    aget v2, v2, v5

    and-int v5, v2, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v4, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v15, v2

    move v14, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v3, v10

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/measurement/ab;->K:Lcom/google/android/gms/internal/measurement/ab;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ab;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/measurement/ab;->X:Lcom/google/android/gms/internal/measurement/ab;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ab;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_19

    .line 8
    :pswitch_0
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ic;

    .line 10
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    .line 11
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/pa;->g(ILcom/google/android/gms/internal/measurement/ic;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v0

    goto/16 :goto_13

    .line 12
    :pswitch_1
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 13
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    .line 16
    :pswitch_2
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 17
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    goto/16 :goto_16

    .line 20
    :pswitch_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_18

    .line 22
    :pswitch_4
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_17

    .line 24
    :pswitch_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 25
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    .line 28
    :pswitch_6
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 29
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    move-result v1

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    goto/16 :goto_16

    .line 32
    :pswitch_7
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 33
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ka;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v1

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_14

    .line 37
    :pswitch_8
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/vc;->E(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v0

    goto/16 :goto_13

    .line 40
    :pswitch_9
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 41
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/ka;

    if-eqz v2, :cond_4

    .line 42
    check-cast v1, Lcom/google/android/gms/internal/measurement/ka;

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_14

    .line 46
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->b(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_16

    .line 49
    :pswitch_a
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_15

    .line 51
    :pswitch_b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_17

    .line 53
    :pswitch_c
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_18

    .line 55
    :pswitch_d
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 56
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 58
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    .line 59
    :pswitch_e
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 60
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 62
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    .line 63
    :pswitch_f
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 64
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    .line 67
    :pswitch_10
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_17

    .line 69
    :pswitch_11
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_18

    .line 71
    :pswitch_12
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->F(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    .line 73
    check-cast v1, Lcom/google/android/gms/internal/measurement/bc;

    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_11

    .line 75
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v9

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v13, v4, v3}, Lcom/google/android/gms/internal/measurement/bc;->d(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 77
    :pswitch_13
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    .line 79
    sget v2, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v3, v9

    move v4, v3

    :goto_4
    if-ge v3, v2, :cond_7

    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ic;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/measurement/pa;->g(ILcom/google/android/gms/internal/measurement/ic;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v12, v4

    goto/16 :goto_19

    .line 82
    :pswitch_14
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->v(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 84
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 86
    :pswitch_15
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->z(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 88
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 90
    :pswitch_16
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 92
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 94
    :pswitch_17
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 98
    :pswitch_18
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->w(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 102
    :pswitch_19
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->y(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 104
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 106
    :pswitch_1a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 109
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 111
    :pswitch_1b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 113
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 115
    :pswitch_1c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 117
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_6

    .line 119
    :pswitch_1d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->x(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 121
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 122
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_6

    .line 123
    :pswitch_1e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->u(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 125
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_6

    .line 127
    :pswitch_1f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->t(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 129
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_6

    .line 131
    :pswitch_20
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 133
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_6

    .line 135
    :pswitch_21
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v13, 0x3

    .line 137
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    .line 138
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_7
    add-int/2addr v12, v1

    goto/16 :goto_19

    .line 139
    :pswitch_22
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    move v0, v9

    goto/16 :goto_13

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    .line 142
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->v(Ljava/util/List;)I

    move-result v0

    .line 143
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    :goto_9
    mul-int/2addr v1, v2

    goto/16 :goto_16

    .line 144
    :pswitch_23
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    .line 147
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->z(Ljava/util/List;)I

    move-result v0

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_9

    .line 149
    :pswitch_24
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->D(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 151
    :pswitch_25
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 152
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->B(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 153
    :pswitch_26
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->w(Ljava/util/List;)I

    move-result v0

    .line 157
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_9

    .line 158
    :pswitch_27
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    .line 161
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->y(Ljava/util/List;)I

    move-result v0

    .line 162
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_9

    .line 163
    :pswitch_28
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 164
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_7

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    .line 166
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    .line 167
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ka;

    .line 169
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v3

    .line 170
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 171
    :pswitch_29
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    .line 172
    sget v2, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_c

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    .line 174
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_b
    if-ge v4, v2, :cond_f

    .line 175
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 176
    check-cast v5, Lcom/google/android/gms/internal/measurement/ic;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/pa;->d(Lcom/google/android/gms/internal/measurement/ic;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    add-int/2addr v12, v3

    goto/16 :goto_19

    .line 177
    :pswitch_2a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_11

    :cond_10
    shl-int/lit8 v2, v13, 0x3

    .line 179
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/sb;

    if-eqz v3, :cond_12

    .line 180
    check-cast v0, Lcom/google/android/gms/internal/measurement/sb;

    move v3, v9

    :goto_d
    if-ge v3, v1, :cond_18

    .line 181
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/sb;->f()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ka;

    if-eqz v5, :cond_11

    .line 182
    check-cast v4, Lcom/google/android/gms/internal/measurement/ka;

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v4

    .line 184
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_e

    .line 185
    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/pa;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_12
    move v3, v9

    :goto_f
    if-ge v3, v1, :cond_18

    .line 186
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ka;

    if-eqz v5, :cond_13

    .line 187
    check-cast v4, Lcom/google/android/gms/internal/measurement/ka;

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v4

    .line 189
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_10

    .line 190
    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/pa;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 191
    :pswitch_2b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_8

    :cond_14
    shl-int/lit8 v1, v13, 0x3

    .line 194
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_13

    .line 195
    :pswitch_2c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->B(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 197
    :pswitch_2d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->D(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 199
    :pswitch_2e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_8

    :cond_15
    shl-int/lit8 v2, v13, 0x3

    .line 202
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->x(Ljava/util/List;)I

    move-result v0

    .line 203
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_9

    .line 204
    :pswitch_2f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v2, v13, 0x3

    .line 207
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->u(Ljava/util/List;)I

    move-result v0

    .line 208
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto/16 :goto_9

    .line 209
    :pswitch_30
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 210
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    :goto_11
    move v2, v9

    goto :goto_12

    :cond_17
    shl-int/lit8 v1, v13, 0x3

    .line 212
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/vc;->t(Ljava/util/List;)I

    move-result v2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_18
    :goto_12
    add-int/2addr v12, v2

    goto/16 :goto_19

    .line 215
    :pswitch_31
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->B(ILjava/util/List;Z)I

    move-result v0

    goto :goto_13

    .line 217
    :pswitch_32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/vc;->D(ILjava/util/List;Z)I

    move-result v0

    :goto_13
    add-int/2addr v12, v0

    goto/16 :goto_19

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 220
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ic;

    .line 221
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    .line 222
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/pa;->g(ILcom/google/android/gms/internal/measurement/ic;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v0

    goto :goto_13

    :pswitch_34
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 223
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 224
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 225
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 226
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_35
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 228
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 229
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 230
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 232
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 234
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_38
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 236
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 237
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 238
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_39
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 239
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 240
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 241
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 242
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_3a
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 244
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ka;

    .line 245
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v1

    .line 247
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    :goto_14
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_13

    :pswitch_3b
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 249
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 250
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/vc;->E(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_3c
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 252
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/ka;

    if-eqz v2, :cond_19

    .line 253
    check-cast v1, Lcom/google/android/gms/internal/measurement/ka;

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 255
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    move-result v1

    .line 256
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v2

    goto :goto_14

    .line 257
    :cond_19
    check-cast v1, Ljava/lang/String;

    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 259
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->b(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_16

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 260
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 261
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    :goto_15
    add-int/2addr v0, v15

    goto/16 :goto_13

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 263
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 265
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_40
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 267
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 268
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 269
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto :goto_16

    :pswitch_41
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 271
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 272
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 273
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    goto :goto_16

    :pswitch_42
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 275
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 276
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    .line 277
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/pa;->a(J)I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    goto/16 :goto_13

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 279
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    :goto_17
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_13

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    .line 281
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_13

    :cond_1a
    :goto_19
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    .line 282
    :cond_1b
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fd;->h()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    if-nez v0, :cond_1c

    return v12

    .line 284
    :cond_1c
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final b(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    move v1, v8

    .line 10
    move v10, v1

    .line 11
    move v0, v9

    .line 12
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/lc;->h:I

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ge v10, v2, :cond_c

    .line 17
    .line 18
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/lc;->g:[I

    .line 19
    .line 20
    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 21
    .line 22
    aget v12, v2, v10

    .line 23
    .line 24
    aget v13, v4, v12

    .line 25
    .line 26
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 27
    .line 28
    .line 29
    move-result v14

    .line 30
    add-int/lit8 v2, v12, 0x2

    .line 31
    .line 32
    aget v2, v4, v2

    .line 33
    .line 34
    and-int v4, v2, v9

    .line 35
    .line 36
    ushr-int/lit8 v2, v2, 0x14

    .line 37
    .line 38
    shl-int v15, v3, v2

    .line 39
    .line 40
    if-eq v4, v0, :cond_1

    .line 41
    .line 42
    if-eq v4, v9, :cond_0

    .line 43
    .line 44
    int-to-long v0, v4

    .line 45
    sget-object v2, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 46
    .line 47
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_0
    move/from16 v17, v1

    .line 52
    .line 53
    move/from16 v16, v4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move/from16 v16, v0

    .line 57
    .line 58
    move/from16 v17, v1

    .line 59
    .line 60
    :goto_1
    const/high16 v0, 0x10000000

    .line 61
    .line 62
    and-int/2addr v0, v14

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    move v2, v12

    .line 70
    move/from16 v3, v16

    .line 71
    .line 72
    move/from16 v4, v17

    .line 73
    .line 74
    move v5, v15

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    return v8

    .line 83
    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/16 v1, 0x9

    .line 88
    .line 89
    if-eq v0, v1, :cond_a

    .line 90
    .line 91
    const/16 v1, 0x11

    .line 92
    .line 93
    if-eq v0, v1, :cond_a

    .line 94
    .line 95
    const/16 v1, 0x1b

    .line 96
    .line 97
    if-eq v0, v1, :cond_8

    .line 98
    .line 99
    const/16 v1, 0x3c

    .line 100
    .line 101
    if-eq v0, v1, :cond_7

    .line 102
    .line 103
    const/16 v1, 0x44

    .line 104
    .line 105
    if-eq v0, v1, :cond_7

    .line 106
    .line 107
    const/16 v1, 0x31

    .line 108
    .line 109
    if-eq v0, v1, :cond_8

    .line 110
    .line 111
    const/16 v1, 0x32

    .line 112
    .line 113
    if-eq v0, v1, :cond_4

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_4
    and-int v0, v14, v9

    .line 118
    .line 119
    int-to-long v0, v0

    .line 120
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_b

    .line 131
    .line 132
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/lc;->F(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/google/android/gms/internal/measurement/bc;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bc;->e()Lcom/google/android/gms/internal/measurement/ac;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ac;->c:Lcom/google/android/gms/internal/measurement/pd;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/pd;->a()Lcom/google/android/gms/internal/measurement/qd;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget-object v2, Lcom/google/android/gms/internal/measurement/qd;->i:Lcom/google/android/gms/internal/measurement/qd;

    .line 149
    .line 150
    if-ne v1, v2, :cond_b

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-nez v11, :cond_6

    .line 171
    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qc;->a()Lcom/google/android/gms/internal/measurement/qc;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/qc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    move-object v11, v2

    .line 185
    :cond_6
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/tc;->b(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_5

    .line 190
    .line 191
    return v8

    .line 192
    :cond_7
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_b

    .line 197
    .line 198
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/lc;->L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/tc;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_b

    .line 207
    .line 208
    return v8

    .line 209
    :cond_8
    and-int v0, v14, v9

    .line 210
    .line 211
    int-to-long v0, v0

    .line 212
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_b

    .line 223
    .line 224
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move v2, v8

    .line 229
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-ge v2, v3, :cond_b

    .line 234
    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/tc;->b(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_9

    .line 244
    .line 245
    return v8

    .line 246
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    move-object/from16 v0, p0

    .line 250
    .line 251
    move-object/from16 v1, p1

    .line 252
    .line 253
    move v2, v12

    .line 254
    move/from16 v3, v16

    .line 255
    .line 256
    move/from16 v4, v17

    .line 257
    .line 258
    move v5, v15

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_b

    .line 264
    .line 265
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/lc;->L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/tc;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_b

    .line 274
    .line 275
    return v8

    .line 276
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 277
    .line 278
    move/from16 v0, v16

    .line 279
    .line 280
    move/from16 v1, v17

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 285
    .line 286
    if-nez v0, :cond_d

    .line 287
    .line 288
    return v3

    .line 289
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    throw v11
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lc;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_4

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v3, v2

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    int-to-long v3, v3

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/lc;->u(Ljava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/lc;->u(Ljava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 80
    .line 81
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/google/android/gms/internal/measurement/nb;

    .line 103
    .line 104
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/google/android/gms/internal/measurement/nb;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-lez v5, :cond_1

    .line 119
    .line 120
    if-lez v6, :cond_1

    .line 121
    .line 122
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_0

    .line 127
    .line 128
    add-int/2addr v6, v5

    .line 129
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/measurement/nb;->u(I)Lcom/google/android/gms/internal/measurement/nb;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    :cond_1
    if-gtz v5, :cond_2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    move-object v2, v1

    .line 140
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->l(Ljava/lang/Object;JJ)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 193
    .line 194
    .line 195
    move-result-wide v1

    .line 196
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->l(Ljava/lang/Object;JJ)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_3

    .line 209
    .line 210
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_3

    .line 227
    .line 228
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 233
    .line 234
    .line 235
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_3

    .line 245
    .line 246
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 251
    .line 252
    .line 253
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_3

    .line 263
    .line 264
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    .line 287
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_3

    .line 304
    .line 305
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->n(Ljava/lang/Object;JZ)V

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_2

    .line 316
    .line 317
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_3

    .line 322
    .line 323
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 328
    .line 329
    .line 330
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_3

    .line 339
    .line 340
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->l(Ljava/lang/Object;JJ)V

    .line 345
    .line 346
    .line 347
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_3

    .line 356
    .line 357
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->j(Ljava/lang/Object;JI)V

    .line 362
    .line 363
    .line 364
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_3

    .line 373
    .line 374
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 375
    .line 376
    .line 377
    move-result-wide v1

    .line 378
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->l(Ljava/lang/Object;JJ)V

    .line 379
    .line 380
    .line 381
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_3

    .line 390
    .line 391
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 392
    .line 393
    .line 394
    move-result-wide v1

    .line 395
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->l(Ljava/lang/Object;JJ)V

    .line 396
    .line 397
    .line 398
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 399
    .line 400
    .line 401
    goto :goto_2

    .line 402
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_3

    .line 407
    .line 408
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ld;->p(Ljava/lang/Object;JF)V

    .line 413
    .line 414
    .line 415
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 416
    .line 417
    .line 418
    goto :goto_2

    .line 419
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_3

    .line 424
    .line 425
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 426
    .line 427
    .line 428
    move-result-wide v1

    .line 429
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ld;->r(Ljava/lang/Object;JD)V

    .line 430
    .line 431
    .line 432
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lc;->s(Ljava/lang/Object;I)V

    .line 433
    .line 434
    .line 435
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->j:Lcom/google/android/gms/internal/measurement/ed;

    .line 440
    .line 441
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/vc;->d(Lcom/google/android/gms/internal/measurement/ed;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 445
    .line 446
    if-eqz v0, :cond_5

    .line 447
    .line 448
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->k:Lcom/google/android/gms/internal/measurement/va;

    .line 449
    .line 450
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/vc;->c(Lcom/google/android/gms/internal/measurement/va;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_5
    return-void

    .line 454
    nop

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x25

    .line 24
    .line 25
    const/16 v7, 0x20

    .line 26
    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x35

    .line 39
    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    mul-int/lit8 v1, v1, 0x35

    .line 57
    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    mul-int/lit8 v1, v1, 0x35

    .line 73
    .line 74
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x35

    .line 87
    .line 88
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    mul-int/lit8 v1, v1, 0x35

    .line 103
    .line 104
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x35

    .line 117
    .line 118
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    mul-int/lit8 v1, v1, 0x35

    .line 131
    .line 132
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_1

    .line 143
    .line 144
    mul-int/lit8 v1, v1, 0x35

    .line 145
    .line 146
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_1

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x35

    .line 163
    .line 164
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_1

    .line 179
    .line 180
    mul-int/lit8 v1, v1, 0x35

    .line 181
    .line 182
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_1

    .line 199
    .line 200
    mul-int/lit8 v1, v1, 0x35

    .line 201
    .line 202
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->o(Ljava/lang/Object;J)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ob;->b(Z)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    goto/16 :goto_3

    .line 211
    .line 212
    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_1

    .line 217
    .line 218
    mul-int/lit8 v1, v1, 0x35

    .line 219
    .line 220
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_1

    .line 231
    .line 232
    mul-int/lit8 v1, v1, 0x35

    .line 233
    .line 234
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v2

    .line 238
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_1

    .line 247
    .line 248
    mul-int/lit8 v1, v1, 0x35

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_1

    .line 261
    .line 262
    mul-int/lit8 v1, v1, 0x35

    .line 263
    .line 264
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_1

    .line 277
    .line 278
    mul-int/lit8 v1, v1, 0x35

    .line 279
    .line 280
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v2

    .line 284
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    mul-int/lit8 v1, v1, 0x35

    .line 295
    .line 296
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->l(Ljava/lang/Object;J)F

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_1

    .line 311
    .line 312
    mul-int/lit8 v1, v1, 0x35

    .line 313
    .line 314
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/lc;->k(Ljava/lang/Object;J)D

    .line 315
    .line 316
    .line 317
    move-result-wide v2

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 319
    .line 320
    .line 321
    move-result-wide v2

    .line 322
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 327
    .line 328
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 339
    .line 340
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 351
    .line 352
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    goto :goto_1

    .line 363
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 364
    .line 365
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 370
    .line 371
    goto/16 :goto_2

    .line 372
    .line 373
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 374
    .line 375
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 382
    .line 383
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 384
    .line 385
    .line 386
    move-result-wide v2

    .line 387
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 392
    .line 393
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    goto/16 :goto_3

    .line 398
    .line 399
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 400
    .line 401
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 408
    .line 409
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    goto/16 :goto_3

    .line 414
    .line 415
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 416
    .line 417
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    goto/16 :goto_3

    .line 426
    .line 427
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 428
    .line 429
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    if-eqz v2, :cond_0

    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    :cond_0
    :goto_1
    add-int/2addr v1, v6

    .line 440
    goto :goto_4

    .line 441
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 442
    .line 443
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    goto :goto_3

    .line 454
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 455
    .line 456
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ob;->b(Z)I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    goto :goto_3

    .line 465
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 466
    .line 467
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    goto :goto_3

    .line 472
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 473
    .line 474
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 475
    .line 476
    .line 477
    move-result-wide v2

    .line 478
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 479
    .line 480
    goto :goto_2

    .line 481
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 482
    .line 483
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    goto :goto_3

    .line 488
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 489
    .line 490
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 491
    .line 492
    .line 493
    move-result-wide v2

    .line 494
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 495
    .line 496
    goto :goto_2

    .line 497
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 498
    .line 499
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 500
    .line 501
    .line 502
    move-result-wide v2

    .line 503
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 504
    .line 505
    goto :goto_2

    .line 506
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 507
    .line 508
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    goto :goto_3

    .line 517
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 518
    .line 519
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 520
    .line 521
    .line 522
    move-result-wide v2

    .line 523
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 524
    .line 525
    .line 526
    move-result-wide v2

    .line 527
    sget-object v4, Lcom/google/android/gms/internal/measurement/ob;->b:[B

    .line 528
    .line 529
    :goto_2
    ushr-long v4, v2, v7

    .line 530
    .line 531
    xor-long/2addr v2, v4

    .line 532
    long-to-int v2, v2

    .line 533
    :goto_3
    add-int/2addr v1, v2

    .line 534
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 539
    .line 540
    move-object v0, p1

    .line 541
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 542
    .line 543
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    add-int/2addr v1, v0

    .line 550
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 551
    .line 552
    if-nez v0, :cond_3

    .line 553
    .line 554
    return v1

    .line 555
    :cond_3
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    const/4 p1, 0x0

    .line 559
    throw p1

    .line 560
    nop

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final e(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lc;->i(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/hb;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/hb;->q(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/measurement/v9;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->k()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 29
    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const v3, 0xfffff

    .line 38
    .line 39
    .line 40
    and-int/2addr v3, v2

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-long v3, v3

    .line 46
    const/16 v5, 0x9

    .line 47
    .line 48
    if-eq v2, v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x3c

    .line 51
    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    const/16 v5, 0x44

    .line 55
    .line 56
    if-eq v2, v5, :cond_2

    .line 57
    .line 58
    packed-switch v2, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    move-object v6, v5

    .line 71
    check-cast v6, Lcom/google/android/gms/internal/measurement/cc;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/cc;->e()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/google/android/gms/internal/measurement/nb;

    .line 85
    .line 86
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/nb;->e()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    aget v2, v0, v1

    .line 91
    .line 92
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    sget-object v5, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 103
    .line 104
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/tc;->e(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/lc;->r(Ljava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v5, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 123
    .line 124
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/tc;->e(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->j:Lcom/google/android/gms/internal/measurement/ed;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ed;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->k:Lcom/google/android/gms/internal/measurement/va;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/va;->a(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_2
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/y9;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/lc;->z(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/y9;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 8
    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 12
    .line 13
    sget-object v10, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    .line 14
    .line 15
    const v11, 0xfffff

    .line 16
    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    move v0, v11

    .line 20
    move v1, v12

    .line 21
    move v13, v1

    .line 22
    :goto_0
    array-length v2, v9

    .line 23
    if-ge v13, v2, :cond_4

    .line 24
    .line 25
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    aget v14, v9, v13

    .line 34
    .line 35
    const/16 v4, 0x11

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-gt v3, v4, :cond_2

    .line 39
    .line 40
    add-int/lit8 v4, v13, 0x2

    .line 41
    .line 42
    aget v4, v9, v4

    .line 43
    .line 44
    and-int v15, v4, v11

    .line 45
    .line 46
    if-eq v15, v0, :cond_1

    .line 47
    .line 48
    if-ne v15, v11, :cond_0

    .line 49
    .line 50
    move v0, v12

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    int-to-long v0, v15

    .line 53
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_1
    move v1, v0

    .line 58
    move v0, v15

    .line 59
    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    .line 60
    .line 61
    shl-int v4, v5, v4

    .line 62
    .line 63
    move v15, v0

    .line 64
    move/from16 v16, v1

    .line 65
    .line 66
    move/from16 v17, v4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v15, v0

    .line 70
    move/from16 v16, v1

    .line 71
    .line 72
    move/from16 v17, v12

    .line 73
    .line 74
    :goto_2
    and-int v0, v2, v11

    .line 75
    .line 76
    int-to-long v1, v0

    .line 77
    packed-switch v3, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :pswitch_0
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :pswitch_1
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->t(IJ)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :pswitch_2
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->E(II)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :pswitch_3
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->I(IJ)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :pswitch_4
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->m(II)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :pswitch_5
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->D(II)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :pswitch_6
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->B(II)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :pswitch_7
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lcom/google/android/gms/internal/measurement/ka;

    .line 202
    .line 203
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->k(ILcom/google/android/gms/internal/measurement/ka;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :pswitch_8
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_3

    .line 213
    .line 214
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :pswitch_9
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_3

    .line 232
    .line 233
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v14, v0, v8}, Lcom/google/android/gms/internal/measurement/lc;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :pswitch_a
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_3

    .line 247
    .line 248
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->o(Ljava/lang/Object;J)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->H(IZ)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_5

    .line 256
    .line 257
    :pswitch_b
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_3

    .line 262
    .line 263
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->b(II)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_5

    .line 271
    .line 272
    :pswitch_c
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_3

    .line 277
    .line 278
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 279
    .line 280
    .line 281
    move-result-wide v0

    .line 282
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->l(IJ)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :pswitch_d
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    .line 293
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->m(Ljava/lang/Object;J)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->d(II)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :pswitch_e
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_3

    .line 307
    .line 308
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v0

    .line 312
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->s(IJ)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_5

    .line 316
    .line 317
    :pswitch_f
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_3

    .line 322
    .line 323
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->n(Ljava/lang/Object;J)J

    .line 324
    .line 325
    .line 326
    move-result-wide v0

    .line 327
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->q(IJ)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_5

    .line 331
    .line 332
    :pswitch_10
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_3

    .line 337
    .line 338
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->l(Ljava/lang/Object;J)F

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->K(IF)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_5

    .line 346
    .line 347
    :pswitch_11
    invoke-direct {v6, v7, v14, v13}, Lcom/google/android/gms/internal/measurement/lc;->t(Ljava/lang/Object;II)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_3

    .line 352
    .line 353
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/lc;->k(Ljava/lang/Object;J)D

    .line 354
    .line 355
    .line 356
    move-result-wide v0

    .line 357
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->f(ID)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_5

    .line 361
    .line 362
    :pswitch_12
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v0, :cond_3

    .line 367
    .line 368
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->F(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Lcom/google/android/gms/internal/measurement/bc;

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bc;->e()Lcom/google/android/gms/internal/measurement/ac;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    .line 379
    .line 380
    invoke-interface {v8, v14, v1, v0}, Lcom/google/android/gms/internal/measurement/rd;->o(ILcom/google/android/gms/internal/measurement/ac;Ljava/util/Map;)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_5

    .line 384
    .line 385
    :pswitch_13
    aget v0, v9, v13

    .line 386
    .line 387
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/util/List;

    .line 392
    .line 393
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    sget v3, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 398
    .line 399
    if-eqz v1, :cond_3

    .line 400
    .line 401
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_3

    .line 406
    .line 407
    move v3, v12

    .line 408
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-ge v3, v4, :cond_3

    .line 413
    .line 414
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    move-object v5, v8

    .line 419
    check-cast v5, Lcom/google/android/gms/internal/measurement/qa;

    .line 420
    .line 421
    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/qa;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 422
    .line 423
    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    .line 426
    goto :goto_3

    .line 427
    :pswitch_14
    aget v0, v9, v13

    .line 428
    .line 429
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Ljava/util/List;

    .line 434
    .line 435
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_5

    .line 439
    .line 440
    :pswitch_15
    aget v0, v9, v13

    .line 441
    .line 442
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Ljava/util/List;

    .line 447
    .line 448
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :pswitch_16
    aget v0, v9, v13

    .line 454
    .line 455
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Ljava/util/List;

    .line 460
    .line 461
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_5

    .line 465
    .line 466
    :pswitch_17
    aget v0, v9, v13

    .line 467
    .line 468
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    check-cast v1, Ljava/util/List;

    .line 473
    .line 474
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_5

    .line 478
    .line 479
    :pswitch_18
    aget v0, v9, v13

    .line 480
    .line 481
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    check-cast v1, Ljava/util/List;

    .line 486
    .line 487
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_5

    .line 491
    .line 492
    :pswitch_19
    aget v0, v9, v13

    .line 493
    .line 494
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Ljava/util/List;

    .line 499
    .line 500
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_5

    .line 504
    .line 505
    :pswitch_1a
    aget v0, v9, v13

    .line 506
    .line 507
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    check-cast v1, Ljava/util/List;

    .line 512
    .line 513
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_5

    .line 517
    .line 518
    :pswitch_1b
    aget v0, v9, v13

    .line 519
    .line 520
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Ljava/util/List;

    .line 525
    .line 526
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :pswitch_1c
    aget v0, v9, v13

    .line 532
    .line 533
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/util/List;

    .line 538
    .line 539
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :pswitch_1d
    aget v0, v9, v13

    .line 545
    .line 546
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    check-cast v1, Ljava/util/List;

    .line 551
    .line 552
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :pswitch_1e
    aget v0, v9, v13

    .line 558
    .line 559
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    check-cast v1, Ljava/util/List;

    .line 564
    .line 565
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_5

    .line 569
    .line 570
    :pswitch_1f
    aget v0, v9, v13

    .line 571
    .line 572
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    check-cast v1, Ljava/util/List;

    .line 577
    .line 578
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_5

    .line 582
    .line 583
    :pswitch_20
    aget v0, v9, v13

    .line 584
    .line 585
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    check-cast v1, Ljava/util/List;

    .line 590
    .line 591
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :pswitch_21
    aget v0, v9, v13

    .line 597
    .line 598
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Ljava/util/List;

    .line 603
    .line 604
    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/measurement/vc;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_5

    .line 608
    .line 609
    :pswitch_22
    aget v0, v9, v13

    .line 610
    .line 611
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    check-cast v1, Ljava/util/List;

    .line 616
    .line 617
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_5

    .line 621
    .line 622
    :pswitch_23
    aget v0, v9, v13

    .line 623
    .line 624
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/util/List;

    .line 629
    .line 630
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_5

    .line 634
    .line 635
    :pswitch_24
    aget v0, v9, v13

    .line 636
    .line 637
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    check-cast v1, Ljava/util/List;

    .line 642
    .line 643
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_5

    .line 647
    .line 648
    :pswitch_25
    aget v0, v9, v13

    .line 649
    .line 650
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    check-cast v1, Ljava/util/List;

    .line 655
    .line 656
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_5

    .line 660
    .line 661
    :pswitch_26
    aget v0, v9, v13

    .line 662
    .line 663
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    check-cast v1, Ljava/util/List;

    .line 668
    .line 669
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_5

    .line 673
    .line 674
    :pswitch_27
    aget v0, v9, v13

    .line 675
    .line 676
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    check-cast v1, Ljava/util/List;

    .line 681
    .line 682
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_5

    .line 686
    .line 687
    :pswitch_28
    aget v0, v9, v13

    .line 688
    .line 689
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    check-cast v1, Ljava/util/List;

    .line 694
    .line 695
    sget v2, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 696
    .line 697
    if-eqz v1, :cond_3

    .line 698
    .line 699
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    if-nez v2, :cond_3

    .line 704
    .line 705
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->e(ILjava/util/List;)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_5

    .line 709
    .line 710
    :pswitch_29
    aget v0, v9, v13

    .line 711
    .line 712
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    check-cast v1, Ljava/util/List;

    .line 717
    .line 718
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    sget v3, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 723
    .line 724
    if-eqz v1, :cond_3

    .line 725
    .line 726
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-nez v3, :cond_3

    .line 731
    .line 732
    move v3, v12

    .line 733
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    if-ge v3, v4, :cond_3

    .line 738
    .line 739
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    move-object v5, v8

    .line 744
    check-cast v5, Lcom/google/android/gms/internal/measurement/qa;

    .line 745
    .line 746
    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/qa;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 747
    .line 748
    .line 749
    add-int/lit8 v3, v3, 0x1

    .line 750
    .line 751
    goto :goto_4

    .line 752
    :pswitch_2a
    aget v0, v9, v13

    .line 753
    .line 754
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    check-cast v1, Ljava/util/List;

    .line 759
    .line 760
    sget v2, Lcom/google/android/gms/internal/measurement/vc;->b:I

    .line 761
    .line 762
    if-eqz v1, :cond_3

    .line 763
    .line 764
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    if-nez v2, :cond_3

    .line 769
    .line 770
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->C(ILjava/util/List;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_5

    .line 774
    .line 775
    :pswitch_2b
    aget v0, v9, v13

    .line 776
    .line 777
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    check-cast v1, Ljava/util/List;

    .line 782
    .line 783
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_5

    .line 787
    .line 788
    :pswitch_2c
    aget v0, v9, v13

    .line 789
    .line 790
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    check-cast v1, Ljava/util/List;

    .line 795
    .line 796
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_5

    .line 800
    .line 801
    :pswitch_2d
    aget v0, v9, v13

    .line 802
    .line 803
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    check-cast v1, Ljava/util/List;

    .line 808
    .line 809
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_5

    .line 813
    .line 814
    :pswitch_2e
    aget v0, v9, v13

    .line 815
    .line 816
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    check-cast v1, Ljava/util/List;

    .line 821
    .line 822
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_5

    .line 826
    .line 827
    :pswitch_2f
    aget v0, v9, v13

    .line 828
    .line 829
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    check-cast v1, Ljava/util/List;

    .line 834
    .line 835
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_5

    .line 839
    .line 840
    :pswitch_30
    aget v0, v9, v13

    .line 841
    .line 842
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Ljava/util/List;

    .line 847
    .line 848
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_5

    .line 852
    .line 853
    :pswitch_31
    aget v0, v9, v13

    .line 854
    .line 855
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    check-cast v1, Ljava/util/List;

    .line 860
    .line 861
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_5

    .line 865
    .line 866
    :pswitch_32
    aget v0, v9, v13

    .line 867
    .line 868
    invoke-virtual {v10, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    check-cast v1, Ljava/util/List;

    .line 873
    .line 874
    invoke-static {v0, v1, v8, v12}, Lcom/google/android/gms/internal/measurement/vc;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/rd;Z)V

    .line 875
    .line 876
    .line 877
    goto/16 :goto_5

    .line 878
    .line 879
    :pswitch_33
    move-object/from16 v0, p0

    .line 880
    .line 881
    move-wide v4, v1

    .line 882
    move-object/from16 v1, p1

    .line 883
    .line 884
    move v2, v13

    .line 885
    move v3, v15

    .line 886
    move-wide v11, v4

    .line 887
    move/from16 v4, v16

    .line 888
    .line 889
    move/from16 v5, v17

    .line 890
    .line 891
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-eqz v0, :cond_3

    .line 896
    .line 897
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->G(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_5

    .line 909
    .line 910
    :pswitch_34
    move-wide v11, v1

    .line 911
    move-object/from16 v0, p0

    .line 912
    .line 913
    move-object/from16 v1, p1

    .line 914
    .line 915
    move v2, v13

    .line 916
    move v3, v15

    .line 917
    move/from16 v4, v16

    .line 918
    .line 919
    move/from16 v5, v17

    .line 920
    .line 921
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-eqz v0, :cond_3

    .line 926
    .line 927
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 928
    .line 929
    .line 930
    move-result-wide v0

    .line 931
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->t(IJ)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_5

    .line 935
    .line 936
    :pswitch_35
    move-wide v11, v1

    .line 937
    move-object/from16 v0, p0

    .line 938
    .line 939
    move-object/from16 v1, p1

    .line 940
    .line 941
    move v2, v13

    .line 942
    move v3, v15

    .line 943
    move/from16 v4, v16

    .line 944
    .line 945
    move/from16 v5, v17

    .line 946
    .line 947
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    if-eqz v0, :cond_3

    .line 952
    .line 953
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->E(II)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_5

    .line 961
    .line 962
    :pswitch_36
    move-wide v11, v1

    .line 963
    move-object/from16 v0, p0

    .line 964
    .line 965
    move-object/from16 v1, p1

    .line 966
    .line 967
    move v2, v13

    .line 968
    move v3, v15

    .line 969
    move/from16 v4, v16

    .line 970
    .line 971
    move/from16 v5, v17

    .line 972
    .line 973
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-eqz v0, :cond_3

    .line 978
    .line 979
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 980
    .line 981
    .line 982
    move-result-wide v0

    .line 983
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->I(IJ)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_5

    .line 987
    .line 988
    :pswitch_37
    move-wide v11, v1

    .line 989
    move-object/from16 v0, p0

    .line 990
    .line 991
    move-object/from16 v1, p1

    .line 992
    .line 993
    move v2, v13

    .line 994
    move v3, v15

    .line 995
    move/from16 v4, v16

    .line 996
    .line 997
    move/from16 v5, v17

    .line 998
    .line 999
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v0

    .line 1003
    if-eqz v0, :cond_3

    .line 1004
    .line 1005
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->m(II)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_5

    .line 1013
    .line 1014
    :pswitch_38
    move-wide v11, v1

    .line 1015
    move-object/from16 v0, p0

    .line 1016
    .line 1017
    move-object/from16 v1, p1

    .line 1018
    .line 1019
    move v2, v13

    .line 1020
    move v3, v15

    .line 1021
    move/from16 v4, v16

    .line 1022
    .line 1023
    move/from16 v5, v17

    .line 1024
    .line 1025
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    if-eqz v0, :cond_3

    .line 1030
    .line 1031
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->D(II)V

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_5

    .line 1039
    .line 1040
    :pswitch_39
    move-wide v11, v1

    .line 1041
    move-object/from16 v0, p0

    .line 1042
    .line 1043
    move-object/from16 v1, p1

    .line 1044
    .line 1045
    move v2, v13

    .line 1046
    move v3, v15

    .line 1047
    move/from16 v4, v16

    .line 1048
    .line 1049
    move/from16 v5, v17

    .line 1050
    .line 1051
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    if-eqz v0, :cond_3

    .line 1056
    .line 1057
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1058
    .line 1059
    .line 1060
    move-result v0

    .line 1061
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->B(II)V

    .line 1062
    .line 1063
    .line 1064
    goto/16 :goto_5

    .line 1065
    .line 1066
    :pswitch_3a
    move-wide v11, v1

    .line 1067
    move-object/from16 v0, p0

    .line 1068
    .line 1069
    move-object/from16 v1, p1

    .line 1070
    .line 1071
    move v2, v13

    .line 1072
    move v3, v15

    .line 1073
    move/from16 v4, v16

    .line 1074
    .line 1075
    move/from16 v5, v17

    .line 1076
    .line 1077
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v0

    .line 1081
    if-eqz v0, :cond_3

    .line 1082
    .line 1083
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    check-cast v0, Lcom/google/android/gms/internal/measurement/ka;

    .line 1088
    .line 1089
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->k(ILcom/google/android/gms/internal/measurement/ka;)V

    .line 1090
    .line 1091
    .line 1092
    goto/16 :goto_5

    .line 1093
    .line 1094
    :pswitch_3b
    move-wide v11, v1

    .line 1095
    move-object/from16 v0, p0

    .line 1096
    .line 1097
    move-object/from16 v1, p1

    .line 1098
    .line 1099
    move v2, v13

    .line 1100
    move v3, v15

    .line 1101
    move/from16 v4, v16

    .line 1102
    .line 1103
    move/from16 v5, v17

    .line 1104
    .line 1105
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v0

    .line 1109
    if-eqz v0, :cond_3

    .line 1110
    .line 1111
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;)V

    .line 1120
    .line 1121
    .line 1122
    goto/16 :goto_5

    .line 1123
    .line 1124
    :pswitch_3c
    move-wide v11, v1

    .line 1125
    move-object/from16 v0, p0

    .line 1126
    .line 1127
    move-object/from16 v1, p1

    .line 1128
    .line 1129
    move v2, v13

    .line 1130
    move v3, v15

    .line 1131
    move/from16 v4, v16

    .line 1132
    .line 1133
    move/from16 v5, v17

    .line 1134
    .line 1135
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v0

    .line 1139
    if-eqz v0, :cond_3

    .line 1140
    .line 1141
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-static {v14, v0, v8}, Lcom/google/android/gms/internal/measurement/lc;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_5

    .line 1149
    .line 1150
    :pswitch_3d
    move-wide v11, v1

    .line 1151
    move-object/from16 v0, p0

    .line 1152
    .line 1153
    move-object/from16 v1, p1

    .line 1154
    .line 1155
    move v2, v13

    .line 1156
    move v3, v15

    .line 1157
    move/from16 v4, v16

    .line 1158
    .line 1159
    move/from16 v5, v17

    .line 1160
    .line 1161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v0

    .line 1165
    if-eqz v0, :cond_3

    .line 1166
    .line 1167
    invoke-static {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->H(IZ)V

    .line 1172
    .line 1173
    .line 1174
    goto/16 :goto_5

    .line 1175
    .line 1176
    :pswitch_3e
    move-wide v11, v1

    .line 1177
    move-object/from16 v0, p0

    .line 1178
    .line 1179
    move-object/from16 v1, p1

    .line 1180
    .line 1181
    move v2, v13

    .line 1182
    move v3, v15

    .line 1183
    move/from16 v4, v16

    .line 1184
    .line 1185
    move/from16 v5, v17

    .line 1186
    .line 1187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    if-eqz v0, :cond_3

    .line 1192
    .line 1193
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->b(II)V

    .line 1198
    .line 1199
    .line 1200
    goto/16 :goto_5

    .line 1201
    .line 1202
    :pswitch_3f
    move-wide v11, v1

    .line 1203
    move-object/from16 v0, p0

    .line 1204
    .line 1205
    move-object/from16 v1, p1

    .line 1206
    .line 1207
    move v2, v13

    .line 1208
    move v3, v15

    .line 1209
    move/from16 v4, v16

    .line 1210
    .line 1211
    move/from16 v5, v17

    .line 1212
    .line 1213
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    if-eqz v0, :cond_3

    .line 1218
    .line 1219
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v0

    .line 1223
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->l(IJ)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_5

    .line 1227
    .line 1228
    :pswitch_40
    move-wide v11, v1

    .line 1229
    move-object/from16 v0, p0

    .line 1230
    .line 1231
    move-object/from16 v1, p1

    .line 1232
    .line 1233
    move v2, v13

    .line 1234
    move v3, v15

    .line 1235
    move/from16 v4, v16

    .line 1236
    .line 1237
    move/from16 v5, v17

    .line 1238
    .line 1239
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v0

    .line 1243
    if-eqz v0, :cond_3

    .line 1244
    .line 1245
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->d(II)V

    .line 1250
    .line 1251
    .line 1252
    goto/16 :goto_5

    .line 1253
    .line 1254
    :pswitch_41
    move-wide v11, v1

    .line 1255
    move-object/from16 v0, p0

    .line 1256
    .line 1257
    move-object/from16 v1, p1

    .line 1258
    .line 1259
    move v2, v13

    .line 1260
    move v3, v15

    .line 1261
    move/from16 v4, v16

    .line 1262
    .line 1263
    move/from16 v5, v17

    .line 1264
    .line 1265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v0

    .line 1269
    if-eqz v0, :cond_3

    .line 1270
    .line 1271
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v0

    .line 1275
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->s(IJ)V

    .line 1276
    .line 1277
    .line 1278
    goto :goto_5

    .line 1279
    :pswitch_42
    move-wide v11, v1

    .line 1280
    move-object/from16 v0, p0

    .line 1281
    .line 1282
    move-object/from16 v1, p1

    .line 1283
    .line 1284
    move v2, v13

    .line 1285
    move v3, v15

    .line 1286
    move/from16 v4, v16

    .line 1287
    .line 1288
    move/from16 v5, v17

    .line 1289
    .line 1290
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    if-eqz v0, :cond_3

    .line 1295
    .line 1296
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v0

    .line 1300
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->q(IJ)V

    .line 1301
    .line 1302
    .line 1303
    goto :goto_5

    .line 1304
    :pswitch_43
    move-wide v11, v1

    .line 1305
    move-object/from16 v0, p0

    .line 1306
    .line 1307
    move-object/from16 v1, p1

    .line 1308
    .line 1309
    move v2, v13

    .line 1310
    move v3, v15

    .line 1311
    move/from16 v4, v16

    .line 1312
    .line 1313
    move/from16 v5, v17

    .line 1314
    .line 1315
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_3

    .line 1320
    .line 1321
    invoke-static {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    invoke-interface {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/rd;->K(IF)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_5

    .line 1329
    :pswitch_44
    move-wide v11, v1

    .line 1330
    move-object/from16 v0, p0

    .line 1331
    .line 1332
    move-object/from16 v1, p1

    .line 1333
    .line 1334
    move v2, v13

    .line 1335
    move v3, v15

    .line 1336
    move/from16 v4, v16

    .line 1337
    .line 1338
    move/from16 v5, v17

    .line 1339
    .line 1340
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/lc;->q(Ljava/lang/Object;IIII)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_3

    .line 1345
    .line 1346
    invoke-static {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 1347
    .line 1348
    .line 1349
    move-result-wide v0

    .line 1350
    invoke-interface {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/rd;->f(ID)V

    .line 1351
    .line 1352
    .line 1353
    :cond_3
    :goto_5
    add-int/lit8 v13, v13, 0x3

    .line 1354
    .line 1355
    move v0, v15

    .line 1356
    move/from16 v1, v16

    .line 1357
    .line 1358
    const v11, 0xfffff

    .line 1359
    .line 1360
    .line 1361
    const/4 v12, 0x0

    .line 1362
    goto/16 :goto_0

    .line 1363
    .line 1364
    :cond_4
    move-object v0, v7

    .line 1365
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 1366
    .line 1367
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 1368
    .line 1369
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/fd;->f(Lcom/google/android/gms/internal/measurement/rd;)V

    .line 1370
    .line 1371
    .line 1372
    return-void

    .line 1373
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 1374
    .line 1375
    .line 1376
    const/4 v0, 0x0

    .line 1377
    throw v0

    .line 1378
    nop

    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const v3, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-long v4, v4

    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/lc;->N(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v6, v2, :cond_0

    .line 42
    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_1

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v2, v2, v4

    .line 125
    .line 126
    if-nez v2, :cond_0

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_0

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_0

    .line 153
    .line 154
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v2, v2, v4

    .line 163
    .line 164
    if-nez v2, :cond_0

    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    .line 174
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_0

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_0

    .line 191
    .line 192
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_0

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_0

    .line 209
    .line 210
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_0

    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_0

    .line 227
    .line 228
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_0

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_0

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_0

    .line 271
    .line 272
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/vc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_0

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_0

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->m(Ljava/lang/Object;J)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-ne v2, v3, :cond_0

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_0

    .line 311
    .line 312
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ne v2, v3, :cond_0

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_0

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v4

    .line 338
    cmp-long v2, v2, v4

    .line 339
    .line 340
    if-nez v2, :cond_0

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_0

    .line 349
    .line 350
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->i(Ljava/lang/Object;J)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-ne v2, v3, :cond_0

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_0

    .line 366
    .line 367
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    cmp-long v2, v2, v4

    .line 376
    .line 377
    if-nez v2, :cond_0

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    .line 386
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 387
    .line 388
    .line 389
    move-result-wide v2

    .line 390
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->k(Ljava/lang/Object;J)J

    .line 391
    .line 392
    .line 393
    move-result-wide v4

    .line 394
    cmp-long v2, v2, v4

    .line 395
    .line 396
    if-nez v2, :cond_0

    .line 397
    .line 398
    goto :goto_3

    .line 399
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_0

    .line 404
    .line 405
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->o(Ljava/lang/Object;J)F

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-ne v2, v3, :cond_0

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/lc;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_0

    .line 429
    .line 430
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 435
    .line 436
    .line 437
    move-result-wide v2

    .line 438
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/ld;->q(Ljava/lang/Object;J)D

    .line 439
    .line 440
    .line 441
    move-result-wide v4

    .line 442
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 443
    .line 444
    .line 445
    move-result-wide v4

    .line 446
    cmp-long v2, v2, v4

    .line 447
    .line 448
    if-nez v2, :cond_0

    .line 449
    .line 450
    goto :goto_3

    .line 451
    :cond_0
    :goto_2
    return v0

    .line 452
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_2
    move-object v1, p1

    .line 457
    check-cast v1, Lcom/google/android/gms/internal/measurement/hb;

    .line 458
    .line 459
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 460
    .line 461
    check-cast p2, Lcom/google/android/gms/internal/measurement/hb;

    .line 462
    .line 463
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 464
    .line 465
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    if-nez p2, :cond_3

    .line 470
    .line 471
    return v0

    .line 472
    :cond_3
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    .line 473
    .line 474
    if-nez p2, :cond_4

    .line 475
    .line 476
    const/4 p1, 0x1

    .line 477
    return p1

    .line 478
    :cond_4
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    const/4 p1, 0x0

    .line 482
    throw p1

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final z(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/y9;)I
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/lc;->j(Ljava/lang/Object;)V

    sget-object v13, Lcom/google/android/gms/internal/measurement/lc;->m:Lsun/misc/Unsafe;

    move/from16 v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    const-string v8, "Failed to parse the message."

    const/4 v15, 0x3

    const/16 v18, 0x0

    if-ge v2, v10, :cond_73

    add-int/lit8 v5, v2, 0x1

    .line 2
    aget-byte v2, v9, v2

    if-gez v2, :cond_0

    .line 3
    invoke-static {v2, v9, v5, v12}, Lcom/google/android/gms/internal/measurement/z9;->b(I[BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v5, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    goto :goto_1

    :cond_0
    move/from16 v30, v5

    move v5, v2

    move/from16 v2, v30

    :goto_1
    ushr-int/lit8 v14, v5, 0x3

    if-le v14, v3, :cond_2

    div-int/2addr v4, v15

    iget v3, v1, Lcom/google/android/gms/internal/measurement/lc;->c:I

    if-lt v14, v3, :cond_1

    iget v3, v1, Lcom/google/android/gms/internal/measurement/lc;->d:I

    if-gt v14, v3, :cond_1

    .line 4
    invoke-direct {v1, v14, v4}, Lcom/google/android/gms/internal/measurement/lc;->v(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    move v4, v3

    goto :goto_3

    .line 5
    :cond_2
    iget v3, v1, Lcom/google/android/gms/internal/measurement/lc;->c:I

    if-lt v14, v3, :cond_3

    iget v3, v1, Lcom/google/android/gms/internal/measurement/lc;->d:I

    if-gt v14, v3, :cond_3

    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, v14, v3}, Lcom/google/android/gms/internal/measurement/lc;->v(II)I

    move-result v4

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :cond_3
    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_4
    if-ne v4, v3, :cond_4

    move-object v10, v0

    move v4, v2

    move/from16 v16, v3

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v19, v8

    move-object v0, v13

    move v13, v14

    const/4 v14, 0x0

    move v8, v5

    goto/16 :goto_45

    :cond_4
    and-int/lit8 v3, v5, 0x7

    .line 7
    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    add-int/lit8 v19, v4, 0x1

    move/from16 v20, v5

    .line 8
    aget v5, v15, v19

    move-object/from16 v19, v8

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/lc;->O(I)I

    move-result v8

    const v16, 0xfffff

    and-int v11, v5, v16

    int-to-long v10, v11

    move/from16 v21, v14

    const/high16 v22, 0x20000000

    const-wide/16 v23, 0x0

    const-string v14, ""

    move-object/from16 v26, v14

    const-string v14, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v14

    const/16 v14, 0x11

    if-gt v8, v14, :cond_12

    add-int/lit8 v14, v4, 0x2

    .line 9
    aget v14, v15, v14

    ushr-int/lit8 v15, v14, 0x14

    const/16 v25, 0x1

    shl-int v15, v25, v15

    const v1, 0xfffff

    and-int/2addr v14, v1

    move/from16 v16, v2

    if-eq v14, v7, :cond_7

    if-eq v7, v1, :cond_5

    int-to-long v1, v7

    .line 10
    invoke-virtual {v13, v0, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v1, 0xfffff

    :cond_5
    if-ne v14, v1, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    int-to-long v6, v14

    .line 11
    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v6, v2

    goto :goto_5

    :cond_7
    move v14, v7

    :goto_5
    packed-switch v8, :pswitch_data_0

    const/4 v2, 0x3

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    or-int v10, v6, v15

    .line 12
    invoke-direct {v8, v0, v14}, Lcom/google/android/gms/internal/measurement/lc;->H(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    shl-int/lit8 v2, v21, 0x3

    or-int/lit8 v15, v2, 0x4

    .line 13
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move v5, v7

    move/from16 v6, p4

    move v7, v15

    move-object v15, v8

    move-object/from16 v8, p6

    .line 14
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/z9;->k(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;[BIIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    .line 15
    invoke-direct {v15, v0, v14, v11}, Lcom/google/android/gms/internal/measurement/lc;->I(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v11, p5

    move v5, v1

    move v6, v10

    move v4, v14

    move-object v1, v15

    goto/16 :goto_a

    :pswitch_0
    if-nez v3, :cond_8

    or-int v8, v6, v15

    move/from16 v2, v16

    .line 16
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v15

    iget-wide v2, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 17
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    move-result-wide v6

    move-object v2, v13

    const/16 v16, -0x1

    move-object/from16 v3, p1

    move/from16 v17, v14

    move/from16 v1, v20

    move v14, v4

    move-wide v4, v10

    .line 18
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v10, p4

    move/from16 v11, p5

    move v5, v1

    move v6, v8

    move v4, v14

    move v2, v15

    goto :goto_6

    :cond_8
    move/from16 v17, v14

    move/from16 v2, v16

    move/from16 v1, v20

    const/16 v16, -0x1

    move v14, v4

    goto/16 :goto_9

    :pswitch_1
    move/from16 v17, v14

    move/from16 v2, v16

    move/from16 v1, v20

    const/16 v16, -0x1

    move v14, v4

    if-nez v3, :cond_b

    or-int/2addr v6, v15

    .line 19
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    move-result v3

    .line 21
    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v10, p4

    move/from16 v11, p5

    move v5, v1

    move v4, v14

    :goto_6
    move/from16 v7, v17

    move/from16 v3, v21

    :goto_7
    move-object/from16 v1, p0

    goto/16 :goto_0

    :pswitch_2
    move/from16 v17, v14

    move/from16 v2, v16

    move/from16 v1, v20

    const/16 v16, -0x1

    move v14, v4

    if-nez v3, :cond_b

    .line 22
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    const v20, 0xfffff

    move-object/from16 v8, p0

    .line 23
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/measurement/lc;->G(I)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v4

    const/high16 v7, -0x80000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/kb;->a(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    .line 24
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/lc;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v4

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/measurement/fd;->j(ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_a
    :goto_8
    or-int/2addr v6, v15

    .line 25
    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_10

    :cond_b
    :goto_9
    move-object/from16 v15, p0

    move v7, v2

    goto/16 :goto_13

    :pswitch_3
    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v2, v16

    const/16 v16, -0x1

    move v14, v4

    const/4 v4, 0x2

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v4, :cond_c

    or-int/2addr v6, v15

    .line 26
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->g([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_4
    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v2, v16

    const/16 v16, -0x1

    move v14, v4

    const/4 v4, 0x2

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v4, :cond_c

    or-int v10, v6, v15

    .line 28
    invoke-direct {v8, v0, v14}, Lcom/google/android/gms/internal/measurement/lc;->H(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 29
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    move v7, v2

    move-object v2, v11

    move-object/from16 v4, p2

    move v5, v7

    move/from16 v6, p4

    move-object/from16 v7, p6

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;[BIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    .line 31
    invoke-direct {v8, v0, v14, v11}, Lcom/google/android/gms/internal/measurement/lc;->I(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v11, p5

    move v5, v1

    move-object v1, v8

    move v6, v10

    move v4, v14

    :goto_a
    move/from16 v7, v17

    move/from16 v3, v21

    :goto_b
    move/from16 v10, p4

    goto/16 :goto_0

    :cond_c
    move v7, v2

    goto/16 :goto_12

    :pswitch_5
    const/4 v2, 0x2

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    and-int v2, v5, v22

    if-eqz v2, :cond_d

    or-int v2, v6, v15

    .line 32
    invoke-static {v9, v7, v12}, Lcom/google/android/gms/internal/measurement/z9;->f([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    move v6, v2

    move v2, v3

    goto :goto_d

    .line 33
    :cond_d
    invoke-static {v9, v7, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v3, :cond_f

    or-int v4, v6, v15

    if-nez v3, :cond_e

    move-object/from16 v5, v26

    .line 34
    iput-object v5, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    goto :goto_c

    :cond_e
    new-instance v5, Ljava/lang/String;

    .line 35
    sget-object v6, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v2, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    add-int/2addr v2, v3

    :goto_c
    move v6, v4

    .line 36
    :goto_d
    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 37
    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_10

    .line 38
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    move-object/from16 v2, v27

    .line 39
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    :pswitch_6
    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-nez v3, :cond_11

    or-int/2addr v6, v15

    .line 41
    invoke-static {v9, v7, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    cmp-long v3, v3, v23

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    .line 42
    :goto_e
    invoke-static {v0, v10, v11, v3}, Lcom/google/android/gms/internal/measurement/ld;->n(Ljava/lang/Object;JZ)V

    goto/16 :goto_10

    :pswitch_7
    const/4 v2, 0x5

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    add-int/lit8 v2, v7, 0x4

    or-int/2addr v6, v15

    .line 43
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_10

    :pswitch_8
    const/4 v2, 0x1

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    add-int/lit8 v18, v7, 0x8

    or-int/2addr v15, v6

    .line 44
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v6

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v4, v10

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_f

    :pswitch_9
    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-nez v3, :cond_11

    or-int/2addr v6, v15

    .line 45
    invoke-static {v9, v7, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 46
    invoke-virtual {v13, v0, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_10

    :pswitch_a
    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-nez v3, :cond_11

    or-int/2addr v15, v6

    .line 47
    invoke-static {v9, v7, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v18

    iget-wide v6, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v4, v10

    .line 48
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    move/from16 v10, p4

    move/from16 v11, p5

    move v5, v1

    move-object v1, v8

    move v4, v14

    move v6, v15

    move/from16 v7, v17

    move/from16 v2, v18

    goto :goto_11

    :pswitch_b
    const/4 v2, 0x5

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    add-int/lit8 v2, v7, 0x4

    or-int/2addr v6, v15

    .line 49
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 50
    invoke-static {v0, v10, v11, v3}, Lcom/google/android/gms/internal/measurement/ld;->p(Ljava/lang/Object;JF)V

    goto :goto_10

    :pswitch_c
    const/4 v2, 0x1

    move-object/from16 v8, p0

    move/from16 v17, v14

    move/from16 v7, v16

    const/16 v16, -0x1

    move v14, v4

    move/from16 v30, v20

    move/from16 v20, v1

    move/from16 v1, v30

    if-ne v3, v2, :cond_11

    add-int/lit8 v2, v7, 0x8

    or-int/2addr v6, v15

    .line 51
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 52
    invoke-static {v0, v10, v11, v3, v4}, Lcom/google/android/gms/internal/measurement/ld;->r(Ljava/lang/Object;JD)V

    :goto_10
    move/from16 v10, p4

    move/from16 v11, p5

    move v5, v1

    move-object v1, v8

    move v4, v14

    move/from16 v7, v17

    :goto_11
    move/from16 v3, v21

    goto/16 :goto_0

    :cond_11
    :goto_12
    move-object v15, v8

    :goto_13
    move/from16 v11, p5

    move-object v10, v0

    move v8, v1

    move/from16 v20, v6

    move v4, v7

    move-object v0, v13

    move-object v1, v15

    move/from16 v25, v17

    move/from16 v13, v21

    goto/16 :goto_45

    :cond_12
    move/from16 v17, v2

    move v14, v4

    move/from16 v25, v7

    move-object/from16 v2, v27

    const/16 v16, -0x1

    move-object v4, v1

    move/from16 v1, v20

    move/from16 v20, v6

    move-object/from16 v6, v26

    const/16 v7, 0x1b

    if-ne v8, v7, :cond_17

    const/4 v7, 0x2

    if-ne v3, v7, :cond_15

    .line 53
    invoke-virtual {v13, v0, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/nb;

    .line 54
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    move-result v3

    if-nez v3, :cond_14

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_13

    const/16 v3, 0xa

    goto :goto_14

    :cond_13
    add-int/2addr v3, v3

    .line 56
    :goto_14
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/nb;->u(I)Lcom/google/android/gms/internal/measurement/nb;

    move-result-object v2

    .line 57
    invoke-virtual {v13, v0, v10, v11, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v7, v2

    .line 58
    invoke-direct {v4, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v2

    move v3, v1

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v5, v17

    move/from16 v6, p4

    move-object/from16 v8, p6

    .line 59
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/z9;->n(Lcom/google/android/gms/internal/measurement/tc;I[BIILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move/from16 v11, p5

    move v5, v1

    move-object v1, v10

    move v4, v14

    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v7, v25

    goto/16 :goto_b

    :cond_15
    move-object v10, v4

    move/from16 v10, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    :cond_16
    move-object/from16 v13, v19

    goto/16 :goto_3a

    :cond_17
    move-object v7, v4

    const/16 v4, 0x31

    const-string v7, "Protocol message had invalid UTF-8."

    move-object/from16 v26, v15

    const-string v15, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v8, v4, :cond_59

    int-to-long v4, v5

    .line 60
    invoke-virtual {v13, v0, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v27, v7

    move-object/from16 v7, v22

    check-cast v7, Lcom/google/android/gms/internal/measurement/nb;

    .line 61
    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    move-result v22

    if-nez v22, :cond_18

    .line 62
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    move-object/from16 v28, v6

    add-int v6, v22, v22

    .line 63
    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/measurement/nb;->u(I)Lcom/google/android/gms/internal/measurement/nb;

    move-result-object v6

    .line 64
    invoke-virtual {v13, v0, v10, v11, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v10, v6

    goto :goto_15

    :cond_18
    move-object/from16 v28, v6

    move-object v10, v7

    :goto_15
    packed-switch v8, :pswitch_data_1

    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x3

    if-ne v3, v2, :cond_56

    and-int/lit8 v2, v1, -0x8

    or-int/lit8 v15, v2, 0x4

    .line 65
    invoke-direct {v7, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v17

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move v4, v11

    move/from16 v5, p4

    move v6, v15

    move-object/from16 v19, v13

    move-object v13, v7

    move-object/from16 v7, p6

    .line 66
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->i(Lcom/google/android/gms/internal/measurement/tc;[BIIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 67
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :pswitch_d
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1b

    .line 68
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 69
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    move/from16 v11, v17

    .line 70
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v3, v2

    :goto_16
    if-ge v2, v3, :cond_19

    .line 71
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 72
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    goto :goto_16

    :cond_19
    if-ne v2, v3, :cond_1a

    move/from16 v8, p4

    goto/16 :goto_1a

    .line 73
    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 74
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    :cond_1b
    move/from16 v11, v17

    if-nez v3, :cond_1c

    .line 76
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 77
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    .line 78
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 79
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    move/from16 v8, p4

    :goto_17
    if-ge v2, v8, :cond_20

    .line 80
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v4, :cond_20

    .line 81
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    move-result-wide v3

    .line 82
    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    goto :goto_17

    :cond_1c
    move/from16 v8, p4

    goto/16 :goto_21

    :pswitch_e
    move/from16 v8, p4

    move/from16 v11, v17

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1f

    .line 83
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 84
    check-cast v10, Lcom/google/android/gms/internal/measurement/ib;

    .line 85
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v3, v2

    :goto_18
    if-ge v2, v3, :cond_1d

    .line 86
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    goto :goto_18

    :cond_1d
    if-ne v2, v3, :cond_1e

    goto :goto_1a

    .line 88
    :cond_1e
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 89
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    :cond_1f
    if-nez v3, :cond_29

    .line 91
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 92
    check-cast v10, Lcom/google/android/gms/internal/measurement/ib;

    .line 93
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 94
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    :goto_19
    if-ge v2, v8, :cond_20

    .line 95
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v4, :cond_20

    .line 96
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    move-result v3

    .line 97
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    goto :goto_19

    :cond_20
    :goto_1a
    move-object/from16 v29, v13

    goto/16 :goto_20

    :pswitch_f
    move/from16 v8, p4

    move/from16 v11, v17

    const/4 v2, 0x2

    if-ne v3, v2, :cond_21

    .line 98
    invoke-static {v9, v11, v10, v12}, Lcom/google/android/gms/internal/measurement/z9;->m([BILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move-object/from16 v15, p0

    goto :goto_1b

    :cond_21
    if-nez v3, :cond_29

    move v2, v1

    move-object/from16 v3, p2

    move v4, v11

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v15, p0

    move-object/from16 v7, p6

    .line 99
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->l(I[BIILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    .line 100
    :goto_1b
    invoke-direct {v15, v14}, Lcom/google/android/gms/internal/measurement/lc;->G(I)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v3

    iget-object v4, v15, Lcom/google/android/gms/internal/measurement/lc;->j:Lcom/google/android/gms/internal/measurement/ed;

    .line 101
    sget v5, Lcom/google/android/gms/internal/measurement/vc;->b:I

    if-eqz v3, :cond_27

    .line 102
    instance-of v5, v10, Ljava/util/RandomAccess;

    if-eqz v5, :cond_25

    .line 103
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v17, v2

    move-object/from16 v2, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1c
    if-ge v6, v5, :cond_24

    .line 104
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v3, v15}, Lcom/google/android/gms/internal/measurement/kb;->a(I)Z

    move-result v22

    if-eqz v22, :cond_23

    if-eq v6, v7, :cond_22

    .line 105
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v7, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v29, v13

    move/from16 v13, v21

    goto :goto_1d

    :cond_23
    move-object/from16 v29, v13

    move/from16 v13, v21

    .line 106
    invoke-static {v0, v13, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/vc;->e(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ed;)Ljava/lang/Object;

    move-result-object v2

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v15, p0

    move/from16 v21, v13

    move-object/from16 v13, v29

    goto :goto_1c

    :cond_24
    move-object/from16 v29, v13

    move/from16 v13, v21

    if-eq v7, v5, :cond_28

    .line 107
    invoke-interface {v10, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1f

    :cond_25
    move/from16 v17, v2

    move-object/from16 v29, v13

    move/from16 v13, v21

    .line 108
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v5, v18

    :cond_26
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/measurement/kb;->a(I)Z

    move-result v7

    if-nez v7, :cond_26

    .line 110
    invoke-static {v0, v13, v6, v5, v4}, Lcom/google/android/gms/internal/measurement/vc;->e(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ed;)Ljava/lang/Object;

    move-result-object v5

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    :cond_27
    move/from16 v17, v2

    move-object/from16 v29, v13

    move/from16 v13, v21

    :cond_28
    :goto_1f
    move/from16 v21, v13

    move/from16 v2, v17

    :goto_20
    move-object/from16 v13, p0

    goto/16 :goto_36

    :cond_29
    :goto_21
    move-object/from16 v29, v13

    move-object/from16 v13, p0

    goto/16 :goto_35

    :pswitch_10
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move/from16 v13, v21

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 112
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_30

    .line 113
    array-length v5, v9

    sub-int/2addr v5, v3

    if-gt v4, v5, :cond_2f

    if-nez v4, :cond_2a

    .line 114
    sget-object v4, Lcom/google/android/gms/internal/measurement/ka;->b:Lcom/google/android/gms/internal/measurement/ka;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 115
    :cond_2a
    invoke-static {v9, v3, v4}, Lcom/google/android/gms/internal/measurement/ka;->o([BII)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v3, v4

    :goto_23
    if-ge v3, v8, :cond_2e

    .line 116
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v4

    iget v5, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v5, :cond_2e

    .line 117
    invoke-static {v9, v4, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_2d

    .line 118
    array-length v5, v9

    sub-int/2addr v5, v3

    if-gt v4, v5, :cond_2c

    if-nez v4, :cond_2b

    .line 119
    sget-object v4, Lcom/google/android/gms/internal/measurement/ka;->b:Lcom/google/android/gms/internal/measurement/ka;

    .line 120
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 121
    :cond_2b
    invoke-static {v9, v3, v4}, Lcom/google/android/gms/internal/measurement/ka;->o([BII)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 122
    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 123
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 125
    :cond_2d
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 126
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0

    :cond_2e
    move v2, v3

    move/from16 v21, v13

    goto/16 :goto_2f

    .line 128
    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 129
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    :cond_30
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 132
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 133
    throw v0

    :pswitch_11
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move/from16 v13, v21

    const/4 v2, 0x2

    if-ne v3, v2, :cond_31

    .line 134
    invoke-direct {v7, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v2

    move v3, v1

    move-object/from16 v4, p2

    move v5, v11

    move/from16 v6, p4

    move-object v15, v7

    move-object v7, v10

    move v10, v8

    move/from16 v21, v13

    move-object/from16 v13, v19

    move-object/from16 v8, p6

    .line 135
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/z9;->n(Lcom/google/android/gms/internal/measurement/tc;I[BIILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move v8, v10

    :goto_24
    move-object v13, v15

    goto/16 :goto_36

    :cond_31
    move/from16 v21, v13

    :goto_25
    move-object v13, v7

    goto/16 :goto_35

    :pswitch_12
    move-object/from16 v15, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3e

    const-wide/32 v6, 0x20000000

    and-long v3, v4, v6

    cmp-long v3, v3, v23

    if-nez v3, :cond_36

    .line 136
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_35

    if-nez v4, :cond_32

    move-object/from16 v6, v28

    .line 137
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_32
    move-object/from16 v6, v28

    .line 138
    new-instance v5, Ljava/lang/String;

    .line 139
    sget-object v7, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 140
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/2addr v3, v4

    :goto_27
    if-ge v3, v8, :cond_3b

    .line 141
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v4

    iget v5, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v5, :cond_3b

    .line 142
    invoke-static {v9, v4, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_34

    if-nez v4, :cond_33

    .line 143
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_33
    new-instance v5, Ljava/lang/String;

    .line 144
    sget-object v7, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 145
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 146
    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 147
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 148
    throw v0

    .line 149
    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 150
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    :cond_36
    move-object/from16 v6, v28

    .line 152
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_3d

    if-nez v4, :cond_37

    .line 153
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_37
    add-int v5, v3, v4

    .line 154
    invoke-static {v9, v3, v5}, Lcom/google/android/gms/internal/measurement/od;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 155
    new-instance v7, Ljava/lang/String;

    move/from16 v17, v5

    .line 156
    sget-object v5, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 157
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    move/from16 v3, v17

    :goto_29
    if-ge v3, v8, :cond_3b

    .line 158
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v4

    iget v5, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v5, :cond_3b

    .line 159
    invoke-static {v9, v4, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v4, :cond_3a

    if-nez v4, :cond_38

    .line 160
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_38
    add-int v5, v3, v4

    .line 161
    invoke-static {v9, v3, v5}, Lcom/google/android/gms/internal/measurement/od;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 162
    new-instance v7, Ljava/lang/String;

    move/from16 v17, v5

    .line 163
    sget-object v5, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 165
    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    move-object/from16 v2, v27

    .line 166
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 167
    throw v0

    .line 168
    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 169
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 170
    throw v0

    :cond_3b
    move v2, v3

    move-object/from16 v19, v13

    goto/16 :goto_24

    :cond_3c
    move-object/from16 v2, v27

    .line 171
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 172
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 173
    throw v0

    .line 174
    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 175
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0

    :cond_3e
    move-object/from16 v19, v13

    move-object v13, v15

    goto/16 :goto_35

    :pswitch_13
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_41

    .line 177
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 178
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 179
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_40

    if-ne v2, v3, :cond_3f

    goto/16 :goto_2e

    .line 180
    :cond_3f
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 181
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 182
    throw v0

    .line 183
    :cond_40
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    .line 184
    throw v18

    :cond_41
    if-eqz v3, :cond_42

    goto/16 :goto_34

    .line 185
    :cond_42
    sget v0, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 186
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 187
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    iget-wide v0, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 188
    throw v18

    :pswitch_14
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_46

    .line 189
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 190
    check-cast v10, Lcom/google/android/gms/internal/measurement/ib;

    .line 191
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int v4, v2, v3

    .line 192
    array-length v5, v9

    if-gt v4, v5, :cond_45

    .line 193
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ib;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v5, v3

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/ib;->l(I)V

    :goto_2a
    if-ge v2, v4, :cond_43

    .line 194
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_2a

    :cond_43
    if-ne v2, v4, :cond_44

    goto/16 :goto_2e

    .line 195
    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 196
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 198
    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 199
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 200
    throw v0

    :cond_46
    const/4 v2, 0x5

    if-ne v3, v2, :cond_56

    add-int/lit8 v2, v11, 0x4

    .line 201
    sget v3, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 202
    check-cast v10, Lcom/google/android/gms/internal/measurement/ib;

    .line 203
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    :goto_2b
    if-ge v2, v8, :cond_4b

    .line 204
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v4, :cond_4b

    .line 205
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/measurement/ib;->x(I)V

    add-int/lit8 v2, v3, 0x4

    goto :goto_2b

    :pswitch_15
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4a

    .line 206
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 207
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    .line 208
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int v4, v2, v3

    .line 209
    array-length v5, v9

    if-gt v4, v5, :cond_49

    .line 210
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/wb;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/wb;->x(I)V

    :goto_2c
    if-ge v2, v4, :cond_47

    .line 211
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_2c

    :cond_47
    if-ne v2, v4, :cond_48

    goto :goto_2e

    .line 212
    :cond_48
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 213
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 214
    throw v0

    .line 215
    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 216
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 217
    throw v0

    :cond_4a
    const/4 v2, 0x1

    if-ne v3, v2, :cond_56

    add-int/lit8 v2, v11, 0x8

    .line 218
    sget v3, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 219
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    .line 220
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    :goto_2d
    if-ge v2, v8, :cond_4b

    .line 221
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v4, :cond_4b

    .line 222
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    add-int/lit8 v2, v3, 0x8

    goto :goto_2d

    :pswitch_16
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4c

    .line 223
    invoke-static {v9, v11, v10, v12}, Lcom/google/android/gms/internal/measurement/z9;->m([BILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    :cond_4b
    :goto_2e
    move-object/from16 v19, v13

    :goto_2f
    move-object v13, v7

    goto/16 :goto_36

    :cond_4c
    if-nez v3, :cond_56

    move v2, v1

    move-object/from16 v3, p2

    move v4, v11

    move/from16 v5, p4

    move-object v6, v10

    move-object v10, v7

    move-object/from16 v7, p6

    .line 224
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->l(I[BIILcom/google/android/gms/internal/measurement/nb;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move-object/from16 v19, v13

    move-object v13, v10

    goto/16 :goto_36

    :pswitch_17
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4f

    .line 225
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 226
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    .line 227
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v3, v2

    :goto_30
    if-ge v2, v3, :cond_4d

    .line 228
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 229
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    goto :goto_30

    :cond_4d
    if-ne v2, v3, :cond_4e

    goto :goto_2e

    .line 230
    :cond_4e
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 231
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 232
    throw v0

    :cond_4f
    if-nez v3, :cond_56

    .line 233
    sget v2, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 234
    check-cast v10, Lcom/google/android/gms/internal/measurement/wb;

    .line 235
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 236
    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    :goto_31
    if-ge v2, v8, :cond_4b

    .line 237
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v4, :cond_4b

    .line 238
    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 239
    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/measurement/wb;->i(J)V

    goto :goto_31

    :pswitch_18
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_51

    .line 240
    sget v0, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 241
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 242
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v0, v1

    .line 243
    array-length v1, v9

    if-le v0, v1, :cond_50

    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 244
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 245
    throw v0

    .line 246
    :cond_50
    throw v18

    :cond_51
    const/4 v2, 0x5

    if-eq v3, v2, :cond_52

    goto :goto_32

    .line 247
    :cond_52
    sget v0, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 248
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 249
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 250
    throw v18

    :pswitch_19
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v29, v13

    move/from16 v11, v17

    move-object/from16 v13, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_54

    .line 251
    sget v0, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 252
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 253
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    add-int/2addr v0, v1

    .line 254
    array-length v1, v9

    if-le v0, v1, :cond_53

    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 255
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 256
    throw v0

    .line 257
    :cond_53
    throw v18

    :cond_54
    const/4 v2, 0x1

    if-eq v3, v2, :cond_55

    :goto_32
    goto :goto_34

    .line 258
    :cond_55
    sget v0, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 259
    invoke-static {v10}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 260
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 261
    throw v18

    :goto_33
    if-ge v2, v8, :cond_57

    .line 262
    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v4

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ne v1, v3, :cond_57

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v6, v15

    move-object/from16 v7, p6

    .line 263
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->i(Lcom/google/android/gms/internal/measurement/tc;[BIIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 264
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_56
    :goto_34
    move-object/from16 v19, v13

    goto/16 :goto_25

    :goto_35
    move v2, v11

    :cond_57
    :goto_36
    if-eq v2, v11, :cond_58

    move/from16 v11, p5

    move v5, v1

    move v10, v8

    move-object v1, v13

    move v4, v14

    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v7, v25

    move-object/from16 v13, v29

    goto/16 :goto_0

    :cond_58
    move/from16 v11, p5

    move-object v10, v0

    move v8, v1

    move v4, v2

    move-object v1, v13

    move/from16 v13, v21

    move-object/from16 v0, v29

    goto/16 :goto_45

    :cond_59
    move-object/from16 v27, v7

    move-object/from16 v29, v13

    move-object/from16 v13, p0

    move v7, v5

    move-wide v4, v10

    move/from16 v11, v17

    move/from16 v10, p4

    const/16 v2, 0x32

    if-ne v8, v2, :cond_64

    const/4 v2, 0x2

    if-ne v3, v2, :cond_16

    .line 265
    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/measurement/lc;->F(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v8, v29

    .line 266
    invoke-virtual {v8, v0, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 267
    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/measurement/cc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/cc;->f()Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->a()Lcom/google/android/gms/internal/measurement/cc;

    move-result-object v6

    .line 268
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/cc;->c()Lcom/google/android/gms/internal/measurement/cc;

    move-result-object v6

    .line 269
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/measurement/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v8, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v6

    .line 271
    :cond_5a
    check-cast v2, Lcom/google/android/gms/internal/measurement/bc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bc;->e()Lcom/google/android/gms/internal/measurement/ac;

    move-result-object v7

    .line 272
    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/measurement/cc;

    .line 273
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-ltz v3, :cond_63

    sub-int v4, v10, v2

    if-gt v3, v4, :cond_63

    add-int v15, v2, v3

    .line 274
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/ac;->b:Ljava/lang/Object;

    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/ac;->d:Ljava/lang/Object;

    move-object v4, v3

    move-object v3, v5

    :goto_37
    if-ge v2, v15, :cond_60

    move-object/from16 v17, v3

    add-int/lit8 v3, v2, 0x1

    .line 275
    aget-byte v2, v9, v2

    if-gez v2, :cond_5b

    .line 276
    invoke-static {v2, v9, v3, v12}, Lcom/google/android/gms/internal/measurement/z9;->b(I[BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    move/from16 v30, v3

    move v3, v2

    move/from16 v2, v30

    :cond_5b
    move-object/from16 v22, v4

    ushr-int/lit8 v4, v2, 0x3

    move-object/from16 v23, v6

    and-int/lit8 v6, v2, 0x7

    move-object/from16 v29, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_5f

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5e

    :cond_5c
    move-object v13, v7

    move-object/from16 v0, v22

    move-object/from16 v8, v23

    move-object/from16 v22, v5

    :cond_5d
    move-object/from16 v5, v17

    goto :goto_38

    .line 277
    :cond_5e
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/ac;->c:Lcom/google/android/gms/internal/measurement/pd;

    .line 278
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/pd;->b()I

    move-result v4

    if-ne v6, v4, :cond_5c

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v2, p2

    move-object/from16 v0, v22

    move/from16 v4, p4

    move-object/from16 v22, v5

    move-object v5, v8

    move-object/from16 v8, v23

    move-object v13, v7

    move-object/from16 v7, p6

    .line 279
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/lc;->w([BIILcom/google/android/gms/internal/measurement/pd;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    move-object v4, v0

    goto :goto_39

    :cond_5f
    move-object v13, v7

    move-object/from16 v0, v22

    move-object/from16 v8, v23

    move-object/from16 v22, v5

    iget-object v5, v13, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/pd;

    .line 280
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/pd;->b()I

    move-result v4

    if-ne v6, v4, :cond_5d

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v0, v17

    move/from16 v4, p4

    move-object/from16 v7, p6

    .line 281
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/lc;->w([BIILcom/google/android/gms/internal/measurement/pd;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    move-object v3, v0

    goto :goto_39

    .line 282
    :goto_38
    invoke-static {v2, v9, v3, v10, v12}, Lcom/google/android/gms/internal/measurement/z9;->p(I[BIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move-object v4, v0

    move-object v3, v5

    :goto_39
    move-object v6, v8

    move-object v7, v13

    move-object/from16 v5, v22

    move-object/from16 v8, v29

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    goto/16 :goto_37

    :cond_60
    move-object v5, v3

    move-object v0, v4

    move-object/from16 v29, v8

    move-object v8, v6

    if-ne v2, v15, :cond_62

    .line 283
    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v15, v11, :cond_61

    move-object/from16 v0, p1

    move/from16 v11, p5

    move v5, v1

    move v4, v14

    move v2, v15

    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v7, v25

    move-object/from16 v13, v29

    goto/16 :goto_7

    :cond_61
    move-object/from16 v10, p1

    move/from16 v11, p5

    move v8, v1

    move v4, v15

    move/from16 v13, v21

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    goto/16 :goto_45

    .line 284
    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    move-object/from16 v13, v19

    .line 285
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 286
    throw v0

    .line 287
    :cond_63
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 288
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 289
    throw v0

    :goto_3a
    move-object/from16 v10, p1

    move v8, v1

    move v4, v11

    move-object/from16 v19, v13

    move/from16 v13, v21

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v11, p5

    goto/16 :goto_45

    :cond_64
    move-object/from16 v13, v19

    move-object/from16 v0, v29

    add-int/lit8 v2, v14, 0x2

    .line 290
    aget v2, v26, v2

    const v15, 0xfffff

    and-int/2addr v2, v15

    move-object/from16 v26, v6

    move/from16 v17, v7

    int-to-long v6, v2

    packed-switch v8, :pswitch_data_2

    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    move-object/from16 v1, p0

    goto/16 :goto_43

    :pswitch_1a
    const/4 v2, 0x3

    if-ne v3, v2, :cond_65

    and-int/lit8 v2, v1, -0x8

    or-int/lit8 v7, v2, 0x4

    move-object/from16 v8, p0

    move-object/from16 v6, p1

    move/from16 v5, v21

    .line 291
    invoke-direct {v8, v6, v5, v14}, Lcom/google/android/gms/internal/measurement/lc;->J(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    .line 292
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    move-object v2, v4

    move-object v15, v4

    move-object/from16 v4, p2

    move-object/from16 v19, v13

    move v13, v5

    move v5, v11

    move-object v10, v6

    move/from16 v6, p4

    move/from16 v21, v1

    move-object v1, v8

    move-object/from16 v8, p6

    .line 293
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/z9;->k(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;[BIIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    .line 294
    invoke-direct {v1, v10, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/lc;->K(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_3b

    :cond_65
    move-object/from16 v10, p1

    move-object/from16 v19, v13

    move/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, p0

    goto :goto_3c

    :pswitch_1b
    move-object/from16 v10, p1

    move-object/from16 v19, v13

    move/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, p0

    if-nez v3, :cond_66

    .line 295
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    move v8, v2

    iget-wide v2, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 296
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/ma;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v10, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 297
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v2, v8

    goto :goto_3b

    :pswitch_1c
    move-object/from16 v10, p1

    move-object/from16 v19, v13

    move/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, p0

    if-nez v3, :cond_66

    .line 298
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 299
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ma;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 300
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3b
    move/from16 v17, v14

    move/from16 v8, v21

    goto/16 :goto_44

    :cond_66
    :goto_3c
    move/from16 v17, v14

    move/from16 v8, v21

    goto/16 :goto_43

    :pswitch_1d
    move-object/from16 v10, p1

    move-object/from16 v19, v13

    move/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, p0

    if-nez v3, :cond_69

    .line 301
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 302
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/measurement/lc;->G(I)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v8

    if-eqz v8, :cond_68

    invoke-interface {v8, v3}, Lcom/google/android/gms/internal/measurement/kb;->a(I)Z

    move-result v8

    if-eqz v8, :cond_67

    goto :goto_3d

    .line 303
    :cond_67
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/lc;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v4

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v8, v21

    invoke-virtual {v4, v8, v3}, Lcom/google/android/gms/internal/measurement/fd;->j(ILjava/lang/Object;)V

    goto :goto_3e

    :cond_68
    :goto_3d
    move/from16 v8, v21

    .line 304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 305
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :cond_69
    move/from16 v8, v21

    goto/16 :goto_41

    :pswitch_1e
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v13, v21

    const/4 v2, 0x2

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6d

    .line 306
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->g([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v3

    iget-object v15, v12, Lcom/google/android/gms/internal/measurement/y9;->c:Ljava/lang/Object;

    .line 307
    invoke-virtual {v0, v10, v4, v5, v15}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 308
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v2, v3

    goto :goto_3e

    :pswitch_1f
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v13, v21

    const/4 v2, 0x2

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6d

    .line 309
    invoke-direct {v1, v10, v13, v14}, Lcom/google/android/gms/internal/measurement/lc;->J(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v15

    .line 310
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/measurement/lc;->E(I)Lcom/google/android/gms/internal/measurement/tc;

    move-result-object v3

    move-object v2, v15

    move-object/from16 v4, p2

    move v5, v11

    move/from16 v6, p4

    move-object/from16 v7, p6

    .line 311
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/tc;[BIILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    .line 312
    invoke-direct {v1, v10, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/lc;->K(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_3e
    move/from16 v17, v14

    goto/16 :goto_44

    :pswitch_20
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v13, v21

    const/4 v2, 0x2

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6d

    .line 313
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    if-nez v3, :cond_6a

    move-object/from16 v15, v26

    .line 314
    invoke-virtual {v0, v10, v4, v5, v15}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v17, v14

    goto :goto_40

    :cond_6a
    and-int v15, v17, v22

    move/from16 v17, v14

    add-int v14, v2, v3

    if-eqz v15, :cond_6c

    .line 315
    invoke-static {v9, v2, v14}, Lcom/google/android/gms/internal/measurement/od;->a([BII)Z

    move-result v15

    if-eqz v15, :cond_6b

    goto :goto_3f

    .line 316
    :cond_6b
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    move-object/from16 v2, v27

    .line 317
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 318
    throw v0

    .line 319
    :cond_6c
    :goto_3f
    new-instance v15, Ljava/lang/String;

    move/from16 v21, v14

    .line 320
    sget-object v14, Lcom/google/android/gms/internal/measurement/ob;->a:Ljava/nio/charset/Charset;

    invoke-direct {v15, v9, v2, v3, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 321
    invoke-virtual {v0, v10, v4, v5, v15}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, v21

    .line 322
    :goto_40
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :cond_6d
    :goto_41
    move/from16 v17, v14

    goto/16 :goto_43

    :pswitch_21
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    move-object/from16 v1, p0

    if-nez v3, :cond_6f

    .line 323
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v14, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    cmp-long v3, v14, v23

    if-eqz v3, :cond_6e

    const/4 v3, 0x1

    goto :goto_42

    :cond_6e
    const/4 v3, 0x0

    .line 324
    :goto_42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 325
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :pswitch_22
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    const/4 v2, 0x5

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6f

    add-int/lit8 v2, v11, 0x4

    .line 326
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 327
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :pswitch_23
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    const/4 v2, 0x1

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6f

    add-int/lit8 v2, v11, 0x8

    .line 328
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 329
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :pswitch_24
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    move-object/from16 v1, p0

    if-nez v3, :cond_6f

    .line 330
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->a([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/y9;->a:I

    .line 331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 332
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :pswitch_25
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    move-object/from16 v1, p0

    if-nez v3, :cond_6f

    .line 333
    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/measurement/z9;->c([BILcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    iget-wide v14, v12, Lcom/google/android/gms/internal/measurement/y9;->b:J

    .line 334
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 335
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :pswitch_26
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    const/4 v2, 0x5

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6f

    add-int/lit8 v2, v11, 0x4

    .line 336
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 337
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 338
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :pswitch_27
    move-object/from16 v10, p1

    move v8, v1

    move-object/from16 v19, v13

    move/from16 v17, v14

    move/from16 v13, v21

    const/4 v2, 0x1

    move-object/from16 v1, p0

    if-ne v3, v2, :cond_6f

    add-int/lit8 v2, v11, 0x8

    .line 339
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/measurement/z9;->e([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 340
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v10, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 341
    invoke-virtual {v0, v10, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :cond_6f
    :goto_43
    move v2, v11

    :goto_44
    if-eq v2, v11, :cond_70

    move/from16 v11, p5

    move v5, v8

    move v3, v13

    move/from16 v4, v17

    goto :goto_47

    :cond_70
    move/from16 v11, p5

    move v4, v2

    move/from16 v14, v17

    :goto_45
    if-ne v8, v11, :cond_71

    if-eqz v11, :cond_71

    move v2, v4

    move v5, v8

    move/from16 v6, v20

    move/from16 v7, v25

    goto :goto_48

    .line 342
    :cond_71
    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/lc;->f:Z

    if-eqz v2, :cond_72

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/y9;->d:Lcom/google/android/gms/internal/measurement/ua;

    .line 343
    sget-object v3, Lcom/google/android/gms/internal/measurement/ua;->c:Lcom/google/android/gms/internal/measurement/ua;

    .line 344
    sget v3, Lcom/google/android/gms/internal/measurement/qc;->d:I

    sget-object v3, Lcom/google/android/gms/internal/measurement/ua;->c:Lcom/google/android/gms/internal/measurement/ua;

    if-eq v2, v3, :cond_72

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/lc;->e:Lcom/google/android/gms/internal/measurement/ic;

    .line 345
    sget v5, Lcom/google/android/gms/internal/measurement/z9;->b:I

    .line 346
    invoke-virtual {v2, v3, v13}, Lcom/google/android/gms/internal/measurement/ua;->b(Lcom/google/android/gms/internal/measurement/ic;I)Lcom/google/android/gms/internal/measurement/gb;

    .line 347
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/lc;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v6

    move v2, v8

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 348
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->o(I[BIILcom/google/android/gms/internal/measurement/fd;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    goto :goto_46

    .line 349
    :cond_72
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/lc;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fd;

    move-result-object v6

    move v2, v8

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 350
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/z9;->o(I[BIILcom/google/android/gms/internal/measurement/fd;Lcom/google/android/gms/internal/measurement/y9;)I

    move-result v2

    :goto_46
    move v5, v8

    move v3, v13

    move v4, v14

    :goto_47
    move/from16 v6, v20

    move/from16 v7, v25

    move-object v13, v0

    move-object v0, v10

    goto/16 :goto_b

    :cond_73
    move-object v10, v0

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v19, v8

    move-object v0, v13

    :goto_48
    const v3, 0xfffff

    if-eq v7, v3, :cond_74

    int-to-long v3, v7

    .line 351
    invoke-virtual {v0, v10, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_74
    iget v0, v1, Lcom/google/android/gms/internal/measurement/lc;->h:I

    move-object/from16 v3, v18

    :goto_49
    iget v4, v1, Lcom/google/android/gms/internal/measurement/lc;->i:I

    if-ge v0, v4, :cond_78

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/lc;->g:[I

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/lc;->j:Lcom/google/android/gms/internal/measurement/ed;

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/lc;->a:[I

    .line 352
    aget v4, v4, v0

    .line 353
    aget v7, v7, v4

    .line 354
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/lc;->M(I)I

    move-result v8

    const v9, 0xfffff

    and-int/2addr v8, v9

    int-to-long v12, v8

    .line 355
    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/ld;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_77

    .line 356
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/lc;->G(I)Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v12

    if-eqz v12, :cond_77

    .line 357
    check-cast v8, Lcom/google/android/gms/internal/measurement/cc;

    .line 358
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/lc;->F(I)Ljava/lang/Object;

    move-result-object v4

    .line 359
    check-cast v4, Lcom/google/android/gms/internal/measurement/bc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bc;->e()Lcom/google/android/gms/internal/measurement/ac;

    move-result-object v4

    .line 360
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_77

    .line 361
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/google/android/gms/internal/measurement/kb;->a(I)Z

    move-result v14

    if-nez v14, :cond_76

    if-nez v3, :cond_75

    .line 363
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 364
    :cond_75
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v14, v15}, Lcom/google/android/gms/internal/measurement/bc;->c(Lcom/google/android/gms/internal/measurement/ac;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    .line 365
    sget-object v15, Lcom/google/android/gms/internal/measurement/ka;->b:Lcom/google/android/gms/internal/measurement/ka;

    .line 366
    new-array v15, v14, [B

    .line 367
    sget v16, Lcom/google/android/gms/internal/measurement/pa;->d:I

    .line 368
    new-instance v9, Lcom/google/android/gms/internal/measurement/na;

    const/4 v1, 0x0

    invoke-direct {v9, v15, v1, v14}, Lcom/google/android/gms/internal/measurement/na;-><init>([BII)V

    .line 369
    :try_start_0
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v4, v14, v13}, Lcom/google/android/gms/internal/measurement/bc;->b(Lcom/google/android/gms/internal/measurement/pa;Lcom/google/android/gms/internal/measurement/ac;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    invoke-static {v9, v15}, Lcom/google/android/gms/internal/measurement/ha;->a(Lcom/google/android/gms/internal/measurement/pa;[B)Lcom/google/android/gms/internal/measurement/ka;

    move-result-object v9

    const/4 v13, 0x3

    shl-int/lit8 v14, v7, 0x3

    .line 371
    move-object v15, v3

    check-cast v15, Lcom/google/android/gms/internal/measurement/fd;

    const/16 v16, 0x2

    or-int/lit8 v14, v14, 0x2

    .line 372
    invoke-virtual {v15, v14, v9}, Lcom/google/android/gms/internal/measurement/fd;->j(ILjava/lang/Object;)V

    .line 373
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    const v9, 0xfffff

    goto :goto_4b

    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/RuntimeException;

    .line 375
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_76
    :goto_4b
    move-object/from16 v1, p0

    goto :goto_4a

    :cond_77
    const/4 v1, 0x0

    const/4 v13, 0x3

    const/16 v16, 0x2

    .line 376
    check-cast v3, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_49

    :cond_78
    if-eqz v3, :cond_79

    .line 377
    move-object v0, v10

    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    :cond_79
    if-nez v11, :cond_7b

    move/from16 v0, p4

    if-ne v2, v0, :cond_7a

    goto :goto_4c

    :cond_7a
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    move-object/from16 v1, v19

    .line 378
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 379
    throw v0

    :cond_7b
    move/from16 v0, p4

    move-object/from16 v1, v19

    if-gt v2, v0, :cond_7c

    if-ne v5, v11, :cond_7c

    :goto_4c
    return v2

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/measurement/qb;

    .line 380
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 381
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lc;->e:Lcom/google/android/gms/internal/measurement/ic;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->l()Lcom/google/android/gms/internal/measurement/hb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
