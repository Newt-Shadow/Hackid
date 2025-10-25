.class final Lcom/google/android/gms/internal/play_billing/v;
.super Lcom/google/android/gms/internal/play_billing/m;
.source "SourceFile"


# static fields
.field static final g:Lcom/google/android/gms/internal/play_billing/m;


# instance fields
.field private final transient d:Ljava/lang/Object;

.field final transient e:[Ljava/lang/Object;

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/v;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/v;->g:Lcom/google/android/gms/internal/play_billing/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/v;->e:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    return-void
.end method

.method static h(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/l;)Lcom/google/android/gms/internal/play_billing/v;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/v;->g:Lcom/google/android/gms/internal/play_billing/m;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/play_billing/v;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v0, v5, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v4

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v2, v1, v5

    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/play_billing/v;

    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    array-length v6, v1

    .line 39
    shr-int/2addr v6, v5

    .line 40
    const-string v7, "index"

    .line 41
    .line 42
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/b;->b(IILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x2

    .line 46
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const v8, 0x2ccccccc

    .line 51
    .line 52
    .line 53
    if-ge v7, v8, :cond_2

    .line 54
    .line 55
    add-int/lit8 v8, v7, -0x1

    .line 56
    .line 57
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    :goto_0
    add-int/2addr v8, v8

    .line 62
    int-to-double v9, v8

    .line 63
    const-wide v11, 0x3fe6666666666666L    # 0.7

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    mul-double/2addr v9, v11

    .line 69
    int-to-double v11, v7

    .line 70
    cmpg-double v9, v9, v11

    .line 71
    .line 72
    if-gez v9, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    .line 76
    .line 77
    if-ge v7, v8, :cond_18

    .line 78
    .line 79
    :cond_3
    if-ne v0, v5, :cond_4

    .line 80
    .line 81
    aget-object v0, v1, v4

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    aget-object v7, v1, v5

    .line 87
    .line 88
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/play_billing/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move v0, v5

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :cond_4
    add-int/lit8 v7, v8, -0x1

    .line 98
    .line 99
    const/16 v9, 0x80

    .line 100
    .line 101
    const/4 v10, -0x1

    .line 102
    if-gt v8, v9, :cond_a

    .line 103
    .line 104
    new-array v8, v8, [B

    .line 105
    .line 106
    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 107
    .line 108
    .line 109
    move v9, v4

    .line 110
    move v10, v9

    .line 111
    :goto_1
    if-ge v9, v0, :cond_8

    .line 112
    .line 113
    add-int v11, v10, v10

    .line 114
    .line 115
    add-int v12, v9, v9

    .line 116
    .line 117
    aget-object v13, v1, v12

    .line 118
    .line 119
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    xor-int/2addr v12, v5

    .line 123
    aget-object v12, v1, v12

    .line 124
    .line 125
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    :goto_2
    and-int/2addr v14, v7

    .line 140
    aget-byte v15, v8, v14

    .line 141
    .line 142
    const/16 v4, 0xff

    .line 143
    .line 144
    and-int/2addr v15, v4

    .line 145
    if-ne v15, v4, :cond_6

    .line 146
    .line 147
    int-to-byte v4, v11

    .line 148
    aput-byte v4, v8, v14

    .line 149
    .line 150
    if-ge v10, v9, :cond_5

    .line 151
    .line 152
    aput-object v13, v1, v11

    .line 153
    .line 154
    xor-int/lit8 v4, v11, 0x1

    .line 155
    .line 156
    aput-object v12, v1, v4

    .line 157
    .line 158
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    aget-object v4, v1, v15

    .line 162
    .line 163
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    xor-int/lit8 v3, v15, 0x1

    .line 170
    .line 171
    new-instance v4, Lcom/google/android/gms/internal/play_billing/k;

    .line 172
    .line 173
    aget-object v11, v1, v3

    .line 174
    .line 175
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-direct {v4, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    aput-object v12, v1, v3

    .line 182
    .line 183
    move-object v3, v4

    .line 184
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 189
    .line 190
    const/4 v4, 0x0

    .line 191
    goto :goto_2

    .line 192
    :cond_8
    if-ne v10, v0, :cond_9

    .line 193
    .line 194
    move-object v3, v8

    .line 195
    goto/16 :goto_b

    .line 196
    .line 197
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    filled-new-array {v8, v4, v3}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    goto/16 :goto_b

    .line 206
    .line 207
    :cond_a
    const v4, 0x8000

    .line 208
    .line 209
    .line 210
    if-gt v8, v4, :cond_10

    .line 211
    .line 212
    new-array v4, v8, [S

    .line 213
    .line 214
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 215
    .line 216
    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v9, 0x0

    .line 219
    :goto_4
    if-ge v8, v0, :cond_e

    .line 220
    .line 221
    add-int v10, v9, v9

    .line 222
    .line 223
    add-int v11, v8, v8

    .line 224
    .line 225
    aget-object v12, v1, v11

    .line 226
    .line 227
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    xor-int/2addr v11, v5

    .line 231
    aget-object v11, v1, v11

    .line 232
    .line 233
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    :goto_5
    and-int/2addr v13, v7

    .line 248
    aget-short v14, v4, v13

    .line 249
    .line 250
    int-to-char v14, v14

    .line 251
    const v15, 0xffff

    .line 252
    .line 253
    .line 254
    if-ne v14, v15, :cond_c

    .line 255
    .line 256
    int-to-short v14, v10

    .line 257
    aput-short v14, v4, v13

    .line 258
    .line 259
    if-ge v9, v8, :cond_b

    .line 260
    .line 261
    aput-object v12, v1, v10

    .line 262
    .line 263
    xor-int/lit8 v10, v10, 0x1

    .line 264
    .line 265
    aput-object v11, v1, v10

    .line 266
    .line 267
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_c
    aget-object v15, v1, v14

    .line 271
    .line 272
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    if-eqz v15, :cond_d

    .line 277
    .line 278
    xor-int/lit8 v3, v14, 0x1

    .line 279
    .line 280
    new-instance v10, Lcom/google/android/gms/internal/play_billing/k;

    .line 281
    .line 282
    aget-object v13, v1, v3

    .line 283
    .line 284
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    aput-object v11, v1, v3

    .line 291
    .line 292
    move-object v3, v10

    .line 293
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_e
    if-ne v9, v0, :cond_f

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    filled-new-array {v4, v7, v3}, [Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    goto :goto_b

    .line 311
    :cond_10
    new-array v4, v8, [I

    .line 312
    .line 313
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([II)V

    .line 314
    .line 315
    .line 316
    const/4 v8, 0x0

    .line 317
    const/4 v9, 0x0

    .line 318
    :goto_7
    if-ge v8, v0, :cond_14

    .line 319
    .line 320
    add-int v11, v9, v9

    .line 321
    .line 322
    add-int v12, v8, v8

    .line 323
    .line 324
    aget-object v13, v1, v12

    .line 325
    .line 326
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    xor-int/2addr v12, v5

    .line 330
    aget-object v12, v1, v12

    .line 331
    .line 332
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    :goto_8
    and-int/2addr v14, v7

    .line 347
    aget v15, v4, v14

    .line 348
    .line 349
    if-ne v15, v10, :cond_12

    .line 350
    .line 351
    aput v11, v4, v14

    .line 352
    .line 353
    if-ge v9, v8, :cond_11

    .line 354
    .line 355
    aput-object v13, v1, v11

    .line 356
    .line 357
    xor-int/lit8 v11, v11, 0x1

    .line 358
    .line 359
    aput-object v12, v1, v11

    .line 360
    .line 361
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_12
    aget-object v10, v1, v15

    .line 365
    .line 366
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-eqz v10, :cond_13

    .line 371
    .line 372
    xor-int/lit8 v3, v15, 0x1

    .line 373
    .line 374
    new-instance v10, Lcom/google/android/gms/internal/play_billing/k;

    .line 375
    .line 376
    aget-object v11, v1, v3

    .line 377
    .line 378
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    aput-object v12, v1, v3

    .line 385
    .line 386
    move-object v3, v10

    .line 387
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 388
    .line 389
    const/4 v10, -0x1

    .line 390
    goto :goto_7

    .line 391
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 392
    .line 393
    const/4 v10, -0x1

    .line 394
    goto :goto_8

    .line 395
    :cond_14
    if-ne v9, v0, :cond_15

    .line 396
    .line 397
    :goto_a
    move-object v3, v4

    .line 398
    goto :goto_b

    .line 399
    :cond_15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    filled-new-array {v4, v7, v3}, [Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    :goto_b
    instance-of v4, v3, [Ljava/lang/Object;

    .line 408
    .line 409
    if-eqz v4, :cond_17

    .line 410
    .line 411
    check-cast v3, [Ljava/lang/Object;

    .line 412
    .line 413
    aget-object v0, v3, v6

    .line 414
    .line 415
    check-cast v0, Lcom/google/android/gms/internal/play_billing/k;

    .line 416
    .line 417
    if-eqz v2, :cond_16

    .line 418
    .line 419
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/l;->c:Lcom/google/android/gms/internal/play_billing/k;

    .line 420
    .line 421
    const/4 v0, 0x0

    .line 422
    aget-object v0, v3, v0

    .line 423
    .line 424
    aget-object v2, v3, v5

    .line 425
    .line 426
    check-cast v2, Ljava/lang/Integer;

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    add-int v3, v2, v2

    .line 433
    .line 434
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    move-object v3, v0

    .line 439
    move v0, v2

    .line 440
    goto :goto_c

    .line 441
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/k;->a()Ljava/lang/IllegalArgumentException;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    throw v0

    .line 446
    :cond_17
    :goto_c
    new-instance v2, Lcom/google/android/gms/internal/play_billing/v;

    .line 447
    .line 448
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 449
    .line 450
    .line 451
    return-object v2

    .line 452
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 453
    .line 454
    const-string v1, "collection too large"

    .line 455
    .line 456
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/play_billing/g;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/u;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/v;->e:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/u;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method final e()Lcom/google/android/gms/internal/play_billing/n;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/v;->e:[Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/play_billing/s;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/s;-><init>(Lcom/google/android/gms/internal/play_billing/m;[Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v2
.end method

.method final f()Lcom/google/android/gms/internal/play_billing/n;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/u;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/v;->e:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/u;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/t;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/t;-><init>(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/j;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/v;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v1, v2, v1

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v1, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v1, v4

    .line 47
    add-int/lit8 v6, v1, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_1
    and-int/2addr v1, v6

    .line 58
    aget-byte v5, v4, v1

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v2, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v2, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v1, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v1, v4

    .line 90
    add-int/lit8 v6, v1, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_2
    and-int/2addr v1, v6

    .line 101
    aget-short v5, v4, v1

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v2, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v2, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v1, [I

    .line 127
    .line 128
    array-length v4, v1

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/f;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v1, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v2, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v2, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/v;->f:I

    return v0
.end method
