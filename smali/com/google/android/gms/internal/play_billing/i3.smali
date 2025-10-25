.class final Lcom/google/android/gms/internal/play_billing/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/q3;


# static fields
.field private static final o:[I

.field private static final p:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/play_billing/f3;

.field private final f:Z

.field private final g:[I

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/gms/internal/play_billing/u2;

.field private final k:Lcom/google/android/gms/internal/play_billing/v3;

.field private final l:Lcom/google/android/gms/internal/play_billing/r1;

.field private final m:Lcom/google/android/gms/internal/play_billing/k3;

.field private final n:Lcom/google/android/gms/internal/play_billing/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i3;->o:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/f4;->l()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/f3;IZ[IIILcom/google/android/gms/internal/play_billing/k3;Lcom/google/android/gms/internal/play_billing/u2;Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/a3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/i3;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/i3;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/i3;->d:I

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/play_billing/r1;->c(Lcom/google/android/gms/internal/play_billing/f3;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/play_billing/i3;->g:[I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/i3;->h:I

    iput p10, p0, Lcom/google/android/gms/internal/play_billing/i3;->i:I

    iput-object p11, p0, Lcom/google/android/gms/internal/play_billing/i3;->m:Lcom/google/android/gms/internal/play_billing/k3;

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/i3;->j:Lcom/google/android/gms/internal/play_billing/u2;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    iput-object p14, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/i3;->e:Lcom/google/android/gms/internal/play_billing/f3;

    iput-object p15, p0, Lcom/google/android/gms/internal/play_billing/i3;->n:Lcom/google/android/gms/internal/play_billing/a3;

    return-void
.end method

.method static A(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/c3;Lcom/google/android/gms/internal/play_billing/k3;Lcom/google/android/gms/internal/play_billing/u2;Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/a3;)Lcom/google/android/gms/internal/play_billing/i3;
    .locals 33

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/p3;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/p3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/p3;->a()Ljava/lang/String;

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
    sget-object v7, Lcom/google/android/gms/internal/play_billing/i3;->o:[I

    .line 73
    .line 74
    move v11, v3

    .line 75
    move v12, v11

    .line 76
    move v13, v12

    .line 77
    move v14, v13

    .line 78
    move/from16 v16, v14

    .line 79
    .line 80
    move/from16 v18, v16

    .line 81
    .line 82
    move-object/from16 v17, v7

    .line 83
    .line 84
    move/from16 v7, v18

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lt v4, v5, :cond_6

    .line 95
    .line 96
    and-int/lit16 v4, v4, 0x1fff

    .line 97
    .line 98
    const/16 v9, 0xd

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-lt v7, v5, :cond_5

    .line 107
    .line 108
    and-int/lit16 v7, v7, 0x1fff

    .line 109
    .line 110
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    add-int/lit8 v9, v9, 0xd

    .line 113
    .line 114
    move v7, v10

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    shl-int/2addr v7, v9

    .line 117
    or-int/2addr v4, v7

    .line 118
    move v7, v10

    .line 119
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-lt v7, v5, :cond_8

    .line 126
    .line 127
    and-int/lit16 v7, v7, 0x1fff

    .line 128
    .line 129
    const/16 v10, 0xd

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-lt v9, v5, :cond_7

    .line 138
    .line 139
    and-int/lit16 v9, v9, 0x1fff

    .line 140
    .line 141
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    add-int/lit8 v10, v10, 0xd

    .line 144
    .line 145
    move v9, v11

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    shl-int/2addr v9, v10

    .line 148
    or-int/2addr v7, v9

    .line 149
    move v9, v11

    .line 150
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 151
    .line 152
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v9, v5, :cond_a

    .line 157
    .line 158
    and-int/lit16 v9, v9, 0x1fff

    .line 159
    .line 160
    const/16 v11, 0xd

    .line 161
    .line 162
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-lt v10, v5, :cond_9

    .line 169
    .line 170
    and-int/lit16 v10, v10, 0x1fff

    .line 171
    .line 172
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    add-int/lit8 v11, v11, 0xd

    .line 175
    .line 176
    move v10, v12

    .line 177
    goto :goto_4

    .line 178
    :cond_9
    shl-int/2addr v10, v11

    .line 179
    or-int/2addr v9, v10

    .line 180
    move v10, v12

    .line 181
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-lt v10, v5, :cond_c

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x1fff

    .line 190
    .line 191
    const/16 v12, 0xd

    .line 192
    .line 193
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 194
    .line 195
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-lt v11, v5, :cond_b

    .line 200
    .line 201
    and-int/lit16 v11, v11, 0x1fff

    .line 202
    .line 203
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    add-int/lit8 v12, v12, 0xd

    .line 206
    .line 207
    move v11, v13

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    shl-int/2addr v11, v12

    .line 210
    or-int/2addr v10, v11

    .line 211
    move v11, v13

    .line 212
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 213
    .line 214
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v11, v5, :cond_e

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1fff

    .line 221
    .line 222
    const/16 v13, 0xd

    .line 223
    .line 224
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 225
    .line 226
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-lt v12, v5, :cond_d

    .line 231
    .line 232
    and-int/lit16 v12, v12, 0x1fff

    .line 233
    .line 234
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    add-int/lit8 v13, v13, 0xd

    .line 237
    .line 238
    move v12, v14

    .line 239
    goto :goto_6

    .line 240
    :cond_d
    shl-int/2addr v12, v13

    .line 241
    or-int/2addr v11, v12

    .line 242
    move v12, v14

    .line 243
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 244
    .line 245
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v12, v5, :cond_10

    .line 250
    .line 251
    and-int/lit16 v12, v12, 0x1fff

    .line 252
    .line 253
    const/16 v14, 0xd

    .line 254
    .line 255
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 256
    .line 257
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-lt v13, v5, :cond_f

    .line 262
    .line 263
    and-int/lit16 v13, v13, 0x1fff

    .line 264
    .line 265
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    add-int/lit8 v14, v14, 0xd

    .line 268
    .line 269
    move v13, v15

    .line 270
    goto :goto_7

    .line 271
    :cond_f
    shl-int/2addr v13, v14

    .line 272
    or-int/2addr v12, v13

    .line 273
    move v13, v15

    .line 274
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 275
    .line 276
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-lt v13, v5, :cond_12

    .line 281
    .line 282
    and-int/lit16 v13, v13, 0x1fff

    .line 283
    .line 284
    const/16 v15, 0xd

    .line 285
    .line 286
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-lt v14, v5, :cond_11

    .line 293
    .line 294
    and-int/lit16 v14, v14, 0x1fff

    .line 295
    .line 296
    shl-int/2addr v14, v15

    .line 297
    or-int/2addr v13, v14

    .line 298
    add-int/lit8 v15, v15, 0xd

    .line 299
    .line 300
    move/from16 v14, v16

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_11
    shl-int/2addr v14, v15

    .line 304
    or-int/2addr v13, v14

    .line 305
    move/from16 v14, v16

    .line 306
    .line 307
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lt v14, v5, :cond_14

    .line 314
    .line 315
    and-int/lit16 v14, v14, 0x1fff

    .line 316
    .line 317
    const/16 v16, 0xd

    .line 318
    .line 319
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 320
    .line 321
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-lt v15, v5, :cond_13

    .line 326
    .line 327
    and-int/lit16 v15, v15, 0x1fff

    .line 328
    .line 329
    shl-int v15, v15, v16

    .line 330
    .line 331
    or-int/2addr v14, v15

    .line 332
    add-int/lit8 v16, v16, 0xd

    .line 333
    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    shl-int v15, v15, v16

    .line 338
    .line 339
    or-int/2addr v14, v15

    .line 340
    move/from16 v15, v17

    .line 341
    .line 342
    :cond_14
    add-int v16, v14, v12

    .line 343
    .line 344
    add-int v13, v16, v13

    .line 345
    .line 346
    add-int v16, v4, v4

    .line 347
    .line 348
    add-int v16, v16, v7

    .line 349
    .line 350
    new-array v7, v13, [I

    .line 351
    .line 352
    move-object/from16 v17, v7

    .line 353
    .line 354
    move v13, v9

    .line 355
    move/from16 v18, v14

    .line 356
    .line 357
    move v7, v4

    .line 358
    move v14, v10

    .line 359
    move v4, v15

    .line 360
    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/p3;->b()[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/p3;->zza()Lcom/google/android/gms/internal/play_billing/f3;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    add-int v19, v18, v12

    .line 375
    .line 376
    add-int v12, v11, v11

    .line 377
    .line 378
    mul-int/lit8 v11, v11, 0x3

    .line 379
    .line 380
    new-array v11, v11, [I

    .line 381
    .line 382
    new-array v12, v12, [Ljava/lang/Object;

    .line 383
    .line 384
    move/from16 v20, v3

    .line 385
    .line 386
    move/from16 v21, v20

    .line 387
    .line 388
    move/from16 v22, v18

    .line 389
    .line 390
    move/from16 v23, v19

    .line 391
    .line 392
    :goto_b
    if-ge v4, v2, :cond_36

    .line 393
    .line 394
    add-int/lit8 v24, v4, 0x1

    .line 395
    .line 396
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-lt v4, v5, :cond_16

    .line 401
    .line 402
    and-int/lit16 v4, v4, 0x1fff

    .line 403
    .line 404
    move/from16 v3, v24

    .line 405
    .line 406
    const/16 v24, 0xd

    .line 407
    .line 408
    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-lt v3, v5, :cond_15

    .line 415
    .line 416
    and-int/lit16 v3, v3, 0x1fff

    .line 417
    .line 418
    shl-int v3, v3, v24

    .line 419
    .line 420
    or-int/2addr v4, v3

    .line 421
    add-int/lit8 v24, v24, 0xd

    .line 422
    .line 423
    move/from16 v3, v25

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_15
    shl-int v3, v3, v24

    .line 427
    .line 428
    or-int/2addr v4, v3

    .line 429
    move/from16 v3, v25

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_16
    move/from16 v3, v24

    .line 433
    .line 434
    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 435
    .line 436
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-lt v3, v5, :cond_18

    .line 441
    .line 442
    and-int/lit16 v3, v3, 0x1fff

    .line 443
    .line 444
    move/from16 v8, v24

    .line 445
    .line 446
    const/16 v24, 0xd

    .line 447
    .line 448
    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 449
    .line 450
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    if-lt v8, v5, :cond_17

    .line 455
    .line 456
    and-int/lit16 v8, v8, 0x1fff

    .line 457
    .line 458
    shl-int v8, v8, v24

    .line 459
    .line 460
    or-int/2addr v3, v8

    .line 461
    add-int/lit8 v24, v24, 0xd

    .line 462
    .line 463
    move/from16 v8, v25

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_17
    shl-int v8, v8, v24

    .line 467
    .line 468
    or-int/2addr v3, v8

    .line 469
    move/from16 v8, v25

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_18
    move/from16 v8, v24

    .line 473
    .line 474
    :goto_f
    and-int/lit16 v6, v3, 0x400

    .line 475
    .line 476
    if-eqz v6, :cond_19

    .line 477
    .line 478
    add-int/lit8 v6, v20, 0x1

    .line 479
    .line 480
    aput v21, v17, v20

    .line 481
    .line 482
    move/from16 v20, v6

    .line 483
    .line 484
    :cond_19
    and-int/lit16 v6, v3, 0xff

    .line 485
    .line 486
    and-int/lit16 v5, v3, 0x800

    .line 487
    .line 488
    move/from16 v26, v2

    .line 489
    .line 490
    const/16 v2, 0x33

    .line 491
    .line 492
    if-lt v6, v2, :cond_23

    .line 493
    .line 494
    add-int/lit8 v2, v8, 0x1

    .line 495
    .line 496
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 497
    .line 498
    .line 499
    move-result v8

    .line 500
    move/from16 v27, v2

    .line 501
    .line 502
    const v2, 0xd800

    .line 503
    .line 504
    .line 505
    if-lt v8, v2, :cond_1b

    .line 506
    .line 507
    and-int/lit16 v8, v8, 0x1fff

    .line 508
    .line 509
    const/16 v30, 0xd

    .line 510
    .line 511
    move/from16 v32, v27

    .line 512
    .line 513
    move/from16 v27, v8

    .line 514
    .line 515
    move/from16 v8, v32

    .line 516
    .line 517
    :goto_10
    add-int/lit8 v31, v8, 0x1

    .line 518
    .line 519
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    if-lt v8, v2, :cond_1a

    .line 524
    .line 525
    and-int/lit16 v2, v8, 0x1fff

    .line 526
    .line 527
    shl-int v2, v2, v30

    .line 528
    .line 529
    or-int v27, v27, v2

    .line 530
    .line 531
    add-int/lit8 v30, v30, 0xd

    .line 532
    .line 533
    move/from16 v8, v31

    .line 534
    .line 535
    const v2, 0xd800

    .line 536
    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_1a
    shl-int v2, v8, v30

    .line 540
    .line 541
    or-int v8, v27, v2

    .line 542
    .line 543
    move/from16 v2, v31

    .line 544
    .line 545
    goto :goto_11

    .line 546
    :cond_1b
    move/from16 v2, v27

    .line 547
    .line 548
    :goto_11
    move/from16 v27, v2

    .line 549
    .line 550
    add-int/lit8 v2, v6, -0x33

    .line 551
    .line 552
    move/from16 v30, v14

    .line 553
    .line 554
    const/16 v14, 0x9

    .line 555
    .line 556
    if-eq v2, v14, :cond_1f

    .line 557
    .line 558
    const/16 v14, 0x11

    .line 559
    .line 560
    if-ne v2, v14, :cond_1c

    .line 561
    .line 562
    goto :goto_13

    .line 563
    :cond_1c
    const/16 v14, 0xc

    .line 564
    .line 565
    if-ne v2, v14, :cond_20

    .line 566
    .line 567
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/p3;->f()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    const/4 v14, 0x1

    .line 572
    if-eq v2, v14, :cond_1e

    .line 573
    .line 574
    if-eqz v5, :cond_1d

    .line 575
    .line 576
    goto :goto_12

    .line 577
    :cond_1d
    const/4 v5, 0x0

    .line 578
    goto :goto_15

    .line 579
    :cond_1e
    :goto_12
    add-int/lit8 v2, v16, 0x1

    .line 580
    .line 581
    div-int/lit8 v24, v21, 0x3

    .line 582
    .line 583
    add-int v24, v24, v24

    .line 584
    .line 585
    add-int/lit8 v24, v24, 0x1

    .line 586
    .line 587
    aget-object v16, v10, v16

    .line 588
    .line 589
    aput-object v16, v12, v24

    .line 590
    .line 591
    goto :goto_14

    .line 592
    :cond_1f
    :goto_13
    const/4 v14, 0x1

    .line 593
    add-int/lit8 v2, v16, 0x1

    .line 594
    .line 595
    div-int/lit8 v24, v21, 0x3

    .line 596
    .line 597
    add-int v24, v24, v24

    .line 598
    .line 599
    add-int/lit8 v28, v24, 0x1

    .line 600
    .line 601
    aget-object v14, v10, v16

    .line 602
    .line 603
    aput-object v14, v12, v28

    .line 604
    .line 605
    :goto_14
    move/from16 v16, v2

    .line 606
    .line 607
    :cond_20
    :goto_15
    add-int/2addr v8, v8

    .line 608
    aget-object v2, v10, v8

    .line 609
    .line 610
    instance-of v14, v2, Ljava/lang/reflect/Field;

    .line 611
    .line 612
    if-eqz v14, :cond_21

    .line 613
    .line 614
    check-cast v2, Ljava/lang/reflect/Field;

    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_21
    check-cast v2, Ljava/lang/String;

    .line 618
    .line 619
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/i3;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    aput-object v2, v10, v8

    .line 624
    .line 625
    :goto_16
    move/from16 v31, v13

    .line 626
    .line 627
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 628
    .line 629
    .line 630
    move-result-wide v13

    .line 631
    long-to-int v2, v13

    .line 632
    add-int/lit8 v8, v8, 0x1

    .line 633
    .line 634
    aget-object v13, v10, v8

    .line 635
    .line 636
    instance-of v14, v13, Ljava/lang/reflect/Field;

    .line 637
    .line 638
    if-eqz v14, :cond_22

    .line 639
    .line 640
    check-cast v13, Ljava/lang/reflect/Field;

    .line 641
    .line 642
    goto :goto_17

    .line 643
    :cond_22
    check-cast v13, Ljava/lang/String;

    .line 644
    .line 645
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/i3;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 646
    .line 647
    .line 648
    move-result-object v13

    .line 649
    aput-object v13, v10, v8

    .line 650
    .line 651
    :goto_17
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 652
    .line 653
    .line 654
    move-result-wide v13

    .line 655
    long-to-int v8, v13

    .line 656
    move-object/from16 v29, v1

    .line 657
    .line 658
    move/from16 v24, v8

    .line 659
    .line 660
    move/from16 v25, v27

    .line 661
    .line 662
    const/4 v8, 0x0

    .line 663
    move-object/from16 v27, v0

    .line 664
    .line 665
    goto/16 :goto_23

    .line 666
    .line 667
    :cond_23
    move/from16 v31, v13

    .line 668
    .line 669
    move/from16 v30, v14

    .line 670
    .line 671
    add-int/lit8 v2, v16, 0x1

    .line 672
    .line 673
    aget-object v13, v10, v16

    .line 674
    .line 675
    check-cast v13, Ljava/lang/String;

    .line 676
    .line 677
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/i3;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 678
    .line 679
    .line 680
    move-result-object v13

    .line 681
    const/16 v14, 0x9

    .line 682
    .line 683
    if-eq v6, v14, :cond_2d

    .line 684
    .line 685
    const/16 v14, 0x11

    .line 686
    .line 687
    if-ne v6, v14, :cond_24

    .line 688
    .line 689
    goto/16 :goto_1d

    .line 690
    .line 691
    :cond_24
    const/16 v14, 0x1b

    .line 692
    .line 693
    if-eq v6, v14, :cond_2c

    .line 694
    .line 695
    const/16 v14, 0x31

    .line 696
    .line 697
    if-ne v6, v14, :cond_25

    .line 698
    .line 699
    add-int/lit8 v14, v2, 0x1

    .line 700
    .line 701
    move-object/from16 v27, v0

    .line 702
    .line 703
    const/4 v0, 0x1

    .line 704
    goto :goto_1b

    .line 705
    :cond_25
    const/16 v14, 0xc

    .line 706
    .line 707
    if-eq v6, v14, :cond_29

    .line 708
    .line 709
    const/16 v14, 0x1e

    .line 710
    .line 711
    if-eq v6, v14, :cond_29

    .line 712
    .line 713
    const/16 v14, 0x2c

    .line 714
    .line 715
    if-ne v6, v14, :cond_26

    .line 716
    .line 717
    goto :goto_19

    .line 718
    :cond_26
    const/16 v14, 0x32

    .line 719
    .line 720
    if-ne v6, v14, :cond_28

    .line 721
    .line 722
    add-int/lit8 v14, v2, 0x1

    .line 723
    .line 724
    add-int/lit8 v27, v22, 0x1

    .line 725
    .line 726
    aput v21, v17, v22

    .line 727
    .line 728
    div-int/lit8 v22, v21, 0x3

    .line 729
    .line 730
    aget-object v2, v10, v2

    .line 731
    .line 732
    add-int v22, v22, v22

    .line 733
    .line 734
    aput-object v2, v12, v22

    .line 735
    .line 736
    if-eqz v5, :cond_27

    .line 737
    .line 738
    add-int/lit8 v22, v22, 0x1

    .line 739
    .line 740
    add-int/lit8 v2, v14, 0x1

    .line 741
    .line 742
    aget-object v14, v10, v14

    .line 743
    .line 744
    aput-object v14, v12, v22

    .line 745
    .line 746
    move/from16 v22, v27

    .line 747
    .line 748
    goto :goto_18

    .line 749
    :cond_27
    move v2, v14

    .line 750
    move/from16 v22, v27

    .line 751
    .line 752
    const/4 v5, 0x0

    .line 753
    :cond_28
    :goto_18
    move-object/from16 v27, v0

    .line 754
    .line 755
    const/4 v0, 0x1

    .line 756
    goto :goto_1e

    .line 757
    :cond_29
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/p3;->f()I

    .line 758
    .line 759
    .line 760
    move-result v14

    .line 761
    move-object/from16 v27, v0

    .line 762
    .line 763
    const/4 v0, 0x1

    .line 764
    if-eq v14, v0, :cond_2b

    .line 765
    .line 766
    if-eqz v5, :cond_2a

    .line 767
    .line 768
    goto :goto_1a

    .line 769
    :cond_2a
    const/4 v5, 0x0

    .line 770
    goto :goto_1e

    .line 771
    :cond_2b
    :goto_1a
    add-int/lit8 v14, v2, 0x1

    .line 772
    .line 773
    div-int/lit8 v24, v21, 0x3

    .line 774
    .line 775
    add-int v24, v24, v24

    .line 776
    .line 777
    add-int/lit8 v24, v24, 0x1

    .line 778
    .line 779
    aget-object v2, v10, v2

    .line 780
    .line 781
    aput-object v2, v12, v24

    .line 782
    .line 783
    goto :goto_1c

    .line 784
    :cond_2c
    move-object/from16 v27, v0

    .line 785
    .line 786
    const/4 v0, 0x1

    .line 787
    add-int/lit8 v14, v2, 0x1

    .line 788
    .line 789
    :goto_1b
    div-int/lit8 v24, v21, 0x3

    .line 790
    .line 791
    add-int v24, v24, v24

    .line 792
    .line 793
    add-int/lit8 v24, v24, 0x1

    .line 794
    .line 795
    aget-object v2, v10, v2

    .line 796
    .line 797
    aput-object v2, v12, v24

    .line 798
    .line 799
    :goto_1c
    move v2, v14

    .line 800
    goto :goto_1e

    .line 801
    :cond_2d
    :goto_1d
    move-object/from16 v27, v0

    .line 802
    .line 803
    const/4 v0, 0x1

    .line 804
    div-int/lit8 v14, v21, 0x3

    .line 805
    .line 806
    add-int/2addr v14, v14

    .line 807
    add-int/2addr v14, v0

    .line 808
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    move-result-object v24

    .line 812
    aput-object v24, v12, v14

    .line 813
    .line 814
    :goto_1e
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 815
    .line 816
    .line 817
    move-result-wide v13

    .line 818
    long-to-int v13, v13

    .line 819
    and-int/lit16 v14, v3, 0x1000

    .line 820
    .line 821
    const v24, 0xfffff

    .line 822
    .line 823
    .line 824
    if-eqz v14, :cond_31

    .line 825
    .line 826
    const/16 v14, 0x11

    .line 827
    .line 828
    if-gt v6, v14, :cond_31

    .line 829
    .line 830
    add-int/lit8 v14, v8, 0x1

    .line 831
    .line 832
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 833
    .line 834
    .line 835
    move-result v8

    .line 836
    const v0, 0xd800

    .line 837
    .line 838
    .line 839
    if-lt v8, v0, :cond_2f

    .line 840
    .line 841
    and-int/lit16 v8, v8, 0x1fff

    .line 842
    .line 843
    const/16 v24, 0xd

    .line 844
    .line 845
    :goto_1f
    add-int/lit8 v25, v14, 0x1

    .line 846
    .line 847
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 848
    .line 849
    .line 850
    move-result v14

    .line 851
    if-lt v14, v0, :cond_2e

    .line 852
    .line 853
    and-int/lit16 v14, v14, 0x1fff

    .line 854
    .line 855
    shl-int v14, v14, v24

    .line 856
    .line 857
    or-int/2addr v8, v14

    .line 858
    add-int/lit8 v24, v24, 0xd

    .line 859
    .line 860
    move/from16 v14, v25

    .line 861
    .line 862
    goto :goto_1f

    .line 863
    :cond_2e
    shl-int v14, v14, v24

    .line 864
    .line 865
    or-int/2addr v8, v14

    .line 866
    goto :goto_20

    .line 867
    :cond_2f
    move/from16 v25, v14

    .line 868
    .line 869
    :goto_20
    add-int v14, v7, v7

    .line 870
    .line 871
    div-int/lit8 v24, v8, 0x20

    .line 872
    .line 873
    add-int v14, v14, v24

    .line 874
    .line 875
    aget-object v0, v10, v14

    .line 876
    .line 877
    move-object/from16 v29, v1

    .line 878
    .line 879
    instance-of v1, v0, Ljava/lang/reflect/Field;

    .line 880
    .line 881
    if-eqz v1, :cond_30

    .line 882
    .line 883
    check-cast v0, Ljava/lang/reflect/Field;

    .line 884
    .line 885
    goto :goto_21

    .line 886
    :cond_30
    check-cast v0, Ljava/lang/String;

    .line 887
    .line 888
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/play_billing/i3;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    aput-object v0, v10, v14

    .line 893
    .line 894
    :goto_21
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 895
    .line 896
    .line 897
    move-result-wide v0

    .line 898
    long-to-int v0, v0

    .line 899
    rem-int/lit8 v8, v8, 0x20

    .line 900
    .line 901
    move/from16 v24, v0

    .line 902
    .line 903
    goto :goto_22

    .line 904
    :cond_31
    move-object/from16 v29, v1

    .line 905
    .line 906
    move/from16 v25, v8

    .line 907
    .line 908
    const/4 v8, 0x0

    .line 909
    :goto_22
    const/16 v0, 0x12

    .line 910
    .line 911
    if-lt v6, v0, :cond_32

    .line 912
    .line 913
    const/16 v0, 0x31

    .line 914
    .line 915
    if-gt v6, v0, :cond_32

    .line 916
    .line 917
    add-int/lit8 v0, v23, 0x1

    .line 918
    .line 919
    aput v13, v17, v23

    .line 920
    .line 921
    move/from16 v23, v0

    .line 922
    .line 923
    :cond_32
    move/from16 v16, v2

    .line 924
    .line 925
    move v2, v13

    .line 926
    :goto_23
    add-int/lit8 v0, v21, 0x1

    .line 927
    .line 928
    aput v4, v11, v21

    .line 929
    .line 930
    add-int/lit8 v1, v0, 0x1

    .line 931
    .line 932
    and-int/lit16 v4, v3, 0x200

    .line 933
    .line 934
    if-eqz v4, :cond_33

    .line 935
    .line 936
    const/high16 v4, 0x20000000

    .line 937
    .line 938
    goto :goto_24

    .line 939
    :cond_33
    const/4 v4, 0x0

    .line 940
    :goto_24
    and-int/lit16 v3, v3, 0x100

    .line 941
    .line 942
    if-eqz v3, :cond_34

    .line 943
    .line 944
    const/high16 v3, 0x10000000

    .line 945
    .line 946
    goto :goto_25

    .line 947
    :cond_34
    const/4 v3, 0x0

    .line 948
    :goto_25
    if-eqz v5, :cond_35

    .line 949
    .line 950
    const/high16 v5, -0x80000000

    .line 951
    .line 952
    goto :goto_26

    .line 953
    :cond_35
    const/4 v5, 0x0

    .line 954
    :goto_26
    shl-int/lit8 v6, v6, 0x14

    .line 955
    .line 956
    or-int/2addr v3, v4

    .line 957
    or-int/2addr v3, v5

    .line 958
    or-int/2addr v3, v6

    .line 959
    or-int/2addr v2, v3

    .line 960
    aput v2, v11, v0

    .line 961
    .line 962
    add-int/lit8 v21, v1, 0x1

    .line 963
    .line 964
    shl-int/lit8 v0, v8, 0x14

    .line 965
    .line 966
    or-int v0, v0, v24

    .line 967
    .line 968
    aput v0, v11, v1

    .line 969
    .line 970
    move/from16 v4, v25

    .line 971
    .line 972
    move/from16 v2, v26

    .line 973
    .line 974
    move-object/from16 v0, v27

    .line 975
    .line 976
    move-object/from16 v1, v29

    .line 977
    .line 978
    move/from16 v14, v30

    .line 979
    .line 980
    move/from16 v13, v31

    .line 981
    .line 982
    const/4 v3, 0x0

    .line 983
    const v5, 0xd800

    .line 984
    .line 985
    .line 986
    goto/16 :goto_b

    .line 987
    .line 988
    :cond_36
    move-object/from16 v27, v0

    .line 989
    .line 990
    move/from16 v31, v13

    .line 991
    .line 992
    move/from16 v30, v14

    .line 993
    .line 994
    new-instance v0, Lcom/google/android/gms/internal/play_billing/i3;

    .line 995
    .line 996
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/play_billing/p3;->zza()Lcom/google/android/gms/internal/play_billing/f3;

    .line 997
    .line 998
    .line 999
    move-result-object v14

    .line 1000
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/play_billing/p3;->f()I

    .line 1001
    .line 1002
    .line 1003
    move-result v15

    .line 1004
    const/16 v16, 0x0

    .line 1005
    .line 1006
    move-object v9, v0

    .line 1007
    move-object v10, v11

    .line 1008
    move-object v11, v12

    .line 1009
    move/from16 v12, v31

    .line 1010
    .line 1011
    move/from16 v13, v30

    .line 1012
    .line 1013
    move-object/from16 v20, p2

    .line 1014
    .line 1015
    move-object/from16 v21, p3

    .line 1016
    .line 1017
    move-object/from16 v22, p4

    .line 1018
    .line 1019
    move-object/from16 v23, p5

    .line 1020
    .line 1021
    move-object/from16 v24, p6

    .line 1022
    .line 1023
    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/play_billing/i3;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/f3;IZ[IIILcom/google/android/gms/internal/play_billing/k3;Lcom/google/android/gms/internal/play_billing/u2;Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/a3;)V

    .line 1024
    .line 1025
    .line 1026
    return-object v0

    .line 1027
    :cond_37
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 1028
    .line 1029
    .line 1030
    const/4 v0, 0x0

    .line 1031
    throw v0
.end method

.method private static B(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static C(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static D(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private final E(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

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

.method private final F(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 17
    .line 18
    aget v4, v4, v3

    .line 19
    .line 20
    if-ne p1, v4, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    if-ge p1, v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v2, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method private static G(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final H(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

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

.method private static I(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private final J(I)Lcom/google/android/gms/internal/play_billing/f2;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/play_billing/f2;

    .line 11
    .line 12
    return-object p1
.end method

.method private final K(I)Lcom/google/android/gms/internal/play_billing/q3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->b:[Ljava/lang/Object;

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
    check-cast v1, Lcom/google/android/gms/internal/play_billing/q3;

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
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n3;->a()Lcom/google/android/gms/internal/play_billing/n3;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/n3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/q3;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i3;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v0, v1, p1

    .line 30
    .line 31
    return-object v0
.end method

.method private final L(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private final M(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

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
    sget-object p2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

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
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final N(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

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
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private static O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

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
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Field "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " for "

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " not found. Known fields are "

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method private static j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

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

.method private final k(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

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
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    sget-object v1, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

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
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

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
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

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
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

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
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

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
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "Source subfield "

    .line 100
    .line 101
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " is present but null: "

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method private final l(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 2
    .line 3
    aget v0, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v1, v2

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v3, v1

    .line 23
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->n(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/q3;->h()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v0

    .line 84
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/q3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 89
    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    aget p1, p1, p3

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Source subfield "

    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " is present but null: "

    .line 112
    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method private final m(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->E(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final n(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->E(I)I

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
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final o(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final p(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/i3;->n(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final q(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

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

.method private final r(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->E(I)I

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
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    sget-object p2, Lcom/google/android/gms/internal/play_billing/e1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/e1;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/gms/internal/play_billing/e1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/e1;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

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
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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

.method private final s(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

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

.method private static t(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/q3;)Z
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
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/q3;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static u(Ljava/lang/Object;)Z
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
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/b2;->y()Z

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

.method private final v(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/i3;->E(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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

.method private static w(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static final x(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V
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
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/m4;->p(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 12
    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/m4;->n(ILcom/google/android/gms/internal/play_billing/e1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static z(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w3;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzc:Lcom/google/android/gms/internal/play_billing/w3;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w3;->c()Lcom/google/android/gms/internal/play_billing/w3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w3;->f()Lcom/google/android/gms/internal/play_billing/w3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/b2;->zzc:Lcom/google/android/gms/internal/play_billing/w3;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i3;->u(Ljava/lang/Object;)Z

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
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/b2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/b2;->w(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/play_billing/o0;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/b2;->u()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 29
    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

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
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

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
    check-cast v6, Lcom/google/android/gms/internal/play_billing/z2;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/z2;->c()V

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
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i3;->j:Lcom/google/android/gms/internal/play_billing/u2;

    .line 81
    .line 82
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/u2;->a(Ljava/lang/Object;J)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 87
    .line 88
    aget v2, v2, v1

    .line 89
    .line 90
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v5, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 101
    .line 102
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/q3;->a(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v5, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 121
    .line 122
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/q3;->a(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->g(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    return-void

    .line 147
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
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/i3;->h:I

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ge v10, v2, :cond_b

    .line 17
    .line 18
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i3;->g:[I

    .line 19
    .line 20
    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 21
    .line 22
    aget v12, v2, v10

    .line 23
    .line 24
    aget v13, v4, v12

    .line 25
    .line 26
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 27
    .line 28
    .line 29
    move-result v14

    .line 30
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 31
    .line 32
    add-int/lit8 v4, v12, 0x2

    .line 33
    .line 34
    aget v2, v2, v4

    .line 35
    .line 36
    and-int v4, v2, v9

    .line 37
    .line 38
    ushr-int/lit8 v2, v2, 0x14

    .line 39
    .line 40
    shl-int v15, v3, v2

    .line 41
    .line 42
    if-eq v4, v0, :cond_1

    .line 43
    .line 44
    if-eq v4, v9, :cond_0

    .line 45
    .line 46
    int-to-long v0, v4

    .line 47
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 48
    .line 49
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :cond_0
    move/from16 v17, v1

    .line 54
    .line 55
    move/from16 v16, v4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move/from16 v16, v0

    .line 59
    .line 60
    move/from16 v17, v1

    .line 61
    .line 62
    :goto_1
    const/high16 v0, 0x10000000

    .line 63
    .line 64
    and-int/2addr v0, v14

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move-object/from16 v0, p0

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    move v2, v12

    .line 72
    move/from16 v3, v16

    .line 73
    .line 74
    move/from16 v4, v17

    .line 75
    .line 76
    move v5, v15

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    return v8

    .line 85
    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x9

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x11

    .line 94
    .line 95
    if-eq v0, v1, :cond_9

    .line 96
    .line 97
    const/16 v1, 0x1b

    .line 98
    .line 99
    if-eq v0, v1, :cond_7

    .line 100
    .line 101
    const/16 v1, 0x3c

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x44

    .line 106
    .line 107
    if-eq v0, v1, :cond_6

    .line 108
    .line 109
    const/16 v1, 0x31

    .line 110
    .line 111
    if-eq v0, v1, :cond_7

    .line 112
    .line 113
    const/16 v1, 0x32

    .line 114
    .line 115
    if-eq v0, v1, :cond_4

    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :cond_4
    and-int v0, v14, v9

    .line 120
    .line 121
    int-to-long v0, v0

    .line 122
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/google/android/gms/internal/play_billing/z2;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/i3;->L(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    throw v11

    .line 143
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/i3;->t(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/q3;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_a

    .line 158
    .line 159
    return v8

    .line 160
    :cond_7
    and-int v0, v14, v9

    .line 161
    .line 162
    int-to-long v0, v0

    .line 163
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_a

    .line 174
    .line 175
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    move v2, v8

    .line 180
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-ge v2, v3, :cond_a

    .line 185
    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/q3;->b(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-nez v3, :cond_8

    .line 195
    .line 196
    return v8

    .line 197
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    move-object/from16 v0, p0

    .line 201
    .line 202
    move-object/from16 v1, p1

    .line 203
    .line 204
    move v2, v12

    .line 205
    move/from16 v3, v16

    .line 206
    .line 207
    move/from16 v4, v17

    .line 208
    .line 209
    move v5, v15

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/i3;->t(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/q3;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_a

    .line 225
    .line 226
    return v8

    .line 227
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 228
    .line 229
    move/from16 v0, v16

    .line 230
    .line 231
    move/from16 v1, v17

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 236
    .line 237
    if-nez v0, :cond_c

    .line 238
    .line 239
    return v3

    .line 240
    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 243
    .line 244
    .line 245
    throw v11
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v11, v2, :cond_1b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    move-result v4

    iget-object v5, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    add-int/lit8 v13, v11, 0x2

    .line 2
    aget v14, v5, v11

    .line 3
    aget v5, v5, v13

    and-int v13, v5, v10

    const/16 v15, 0x11

    const/16 v16, 0x1

    if-gt v4, v15, :cond_2

    if-eq v13, v0, :cond_1

    if-ne v13, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v13

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v16, v5

    move v13, v0

    move v15, v1

    goto :goto_2

    :cond_2
    move v13, v0

    move v15, v1

    move v5, v9

    :goto_2
    and-int v0, v2, v10

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/v1;->M:Lcom/google/android/gms/internal/play_billing/v1;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/v1;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/v1;->Z:Lcom/google/android/gms/internal/play_billing/v1;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/v1;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_18

    .line 8
    :pswitch_0
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/f3;

    .line 10
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    .line 11
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/m1;->t(ILcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v0

    goto/16 :goto_12

    .line 12
    :pswitch_1
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 13
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    .line 16
    :pswitch_2
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 17
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    goto/16 :goto_15

    .line 20
    :pswitch_3
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_17

    .line 22
    :pswitch_4
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_16

    .line 24
    :pswitch_5
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 25
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    .line 28
    :pswitch_6
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 29
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    move-result v1

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    goto/16 :goto_15

    .line 32
    :pswitch_7
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 33
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v1

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_13

    .line 37
    :pswitch_8
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/s3;->n(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v0

    goto/16 :goto_12

    .line 40
    :pswitch_9
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 41
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v2, :cond_4

    .line 42
    check-cast v1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_13

    .line 46
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->v(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    .line 49
    :pswitch_a
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_14

    .line 51
    :pswitch_b
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_16

    .line 53
    :pswitch_c
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_17

    .line 55
    :pswitch_d
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 56
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 58
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    .line 59
    :pswitch_e
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 60
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 62
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    .line 63
    :pswitch_f
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 64
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    .line 67
    :pswitch_10
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_16

    .line 69
    :pswitch_11
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_17

    .line 71
    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->L(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/play_billing/z2;

    .line 73
    invoke-static {v1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/z2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_18

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    throw v3

    .line 78
    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    .line 80
    sget v2, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_4

    :cond_6
    move v3, v9

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_7

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/f3;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/play_billing/m1;->t(ILcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/2addr v12, v4

    goto/16 :goto_18

    .line 83
    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->p(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 85
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 87
    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->o(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 89
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 91
    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 93
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 95
    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 97
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 99
    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->g(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 101
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 103
    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->q(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 106
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 107
    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 110
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 112
    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 114
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 116
    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_5

    .line 120
    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 122
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_5

    .line 124
    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->r(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 126
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_5

    .line 128
    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 130
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_5

    .line 132
    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 134
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_5

    .line 136
    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 138
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    .line 139
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_6
    add-int/2addr v12, v1

    goto/16 :goto_18

    .line 140
    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_7
    move v0, v9

    goto/16 :goto_12

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    .line 143
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->p(Ljava/util/List;)I

    move-result v0

    .line 144
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    :goto_8
    mul-int/2addr v1, v2

    goto/16 :goto_15

    .line 145
    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    .line 148
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->o(Ljava/util/List;)I

    move-result v0

    .line 149
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_8

    .line 150
    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->j(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 152
    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->h(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 154
    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    .line 157
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->g(Ljava/util/List;)I

    move-result v0

    .line 158
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_8

    .line 159
    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    .line 162
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->q(Ljava/util/List;)I

    move-result v0

    .line 163
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_8

    .line 164
    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    .line 167
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    .line 168
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/e1;

    .line 170
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v3

    .line 171
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 172
    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    .line 173
    sget v2, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_b

    :cond_e
    shl-int/lit8 v3, v14, 0x3

    .line 175
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_a
    if-ge v4, v2, :cond_f

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 177
    check-cast v5, Lcom/google/android/gms/internal/play_billing/f3;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/m1;->u(Lcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    add-int/2addr v12, v3

    goto/16 :goto_18

    .line 178
    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_10

    :cond_10
    shl-int/lit8 v2, v14, 0x3

    .line 180
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/o2;

    if-eqz v3, :cond_12

    .line 181
    check-cast v0, Lcom/google/android/gms/internal/play_billing/o2;

    move v3, v9

    :goto_c
    if-ge v3, v1, :cond_18

    .line 182
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/play_billing/o2;->P(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v5, :cond_11

    .line 183
    check-cast v4, Lcom/google/android/gms/internal/play_billing/e1;

    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v4

    .line 185
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_d

    .line 186
    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/m1;->v(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    move v3, v9

    :goto_e
    if-ge v3, v1, :cond_18

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v5, :cond_13

    .line 188
    check-cast v4, Lcom/google/android/gms/internal/play_billing/e1;

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v4

    .line 190
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_f

    .line 191
    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/m1;->v(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 192
    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_7

    :cond_14
    shl-int/lit8 v1, v14, 0x3

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    goto/16 :goto_12

    .line 196
    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->h(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 198
    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->j(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 200
    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_7

    :cond_15
    shl-int/lit8 v2, v14, 0x3

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->l(Ljava/util/List;)I

    move-result v0

    .line 204
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_8

    .line 205
    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 206
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_7

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    .line 208
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->r(Ljava/util/List;)I

    move-result v0

    .line 209
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto/16 :goto_8

    .line 210
    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 211
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    :goto_10
    move v2, v9

    goto :goto_11

    :cond_17
    shl-int/lit8 v1, v14, 0x3

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s3;->m(Ljava/util/List;)I

    move-result v2

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_18
    :goto_11
    add-int/2addr v12, v2

    goto/16 :goto_18

    .line 216
    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->h(ILjava/util/List;Z)I

    move-result v0

    goto :goto_12

    .line 218
    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 219
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/play_billing/s3;->j(ILjava/util/List;Z)I

    move-result v0

    :goto_12
    add-int/2addr v12, v0

    goto/16 :goto_18

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v13

    move v4, v15

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 221
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/f3;

    .line 222
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    .line 223
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/m1;->t(ILcom/google/android/gms/internal/play_billing/f3;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v0

    goto :goto_12

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 225
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 227
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 229
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 231
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    goto/16 :goto_15

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 237
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 239
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto/16 :goto_15

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 241
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 243
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v1

    goto/16 :goto_15

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 245
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v1

    .line 248
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    :goto_13
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_12

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 250
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/s3;->n(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)I

    move-result v0

    goto/16 :goto_12

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 253
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v2, :cond_19

    .line 254
    check-cast v1, Lcom/google/android/gms/internal/play_billing/e1;

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    move-result v1

    .line 257
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v2

    goto :goto_13

    .line 258
    :cond_19
    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 260
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/m1;->v(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 268
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 270
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto :goto_15

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 272
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 274
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    goto :goto_15

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 276
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 277
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    .line 278
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    goto/16 :goto_12

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    :goto_16
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_12

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    move-result v0

    :goto_17
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_12

    :cond_1a
    :goto_18
    add-int/lit8 v11, v11, 0x3

    move v0, v13

    move v1, v15

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    .line 283
    :cond_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 284
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/v3;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    if-nez v0, :cond_1c

    return v12

    :cond_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 286
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    throw v3

    nop

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

.method public final d(Ljava/lang/Object;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v0, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 13
    .line 14
    const v4, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aget v3, v3, v0

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    const/16 v6, 0x25

    .line 26
    .line 27
    const/16 v7, 0x20

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x35

    .line 41
    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    mul-int/lit8 v1, v1, 0x35

    .line 59
    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    mul-int/lit8 v1, v1, 0x35

    .line 89
    .line 90
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    mul-int/lit8 v1, v1, 0x35

    .line 105
    .line 106
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x35

    .line 119
    .line 120
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_1

    .line 145
    .line 146
    mul-int/lit8 v1, v1, 0x35

    .line 147
    .line 148
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_1

    .line 163
    .line 164
    mul-int/lit8 v1, v1, 0x35

    .line 165
    .line 166
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_1

    .line 181
    .line 182
    mul-int/lit8 v1, v1, 0x35

    .line 183
    .line 184
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_1

    .line 201
    .line 202
    mul-int/lit8 v1, v1, 0x35

    .line 203
    .line 204
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->w(Ljava/lang/Object;J)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/j2;->a(Z)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    goto/16 :goto_3

    .line 213
    .line 214
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_1

    .line 219
    .line 220
    mul-int/lit8 v1, v1, 0x35

    .line 221
    .line 222
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_1

    .line 233
    .line 234
    mul-int/lit8 v1, v1, 0x35

    .line 235
    .line 236
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    mul-int/lit8 v1, v1, 0x35

    .line 251
    .line 252
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    mul-int/lit8 v1, v1, 0x35

    .line 265
    .line 266
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v2

    .line 270
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_1

    .line 279
    .line 280
    mul-int/lit8 v1, v1, 0x35

    .line 281
    .line 282
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v2

    .line 286
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_1

    .line 295
    .line 296
    mul-int/lit8 v1, v1, 0x35

    .line 297
    .line 298
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->C(Ljava/lang/Object;J)F

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_1

    .line 313
    .line 314
    mul-int/lit8 v1, v1, 0x35

    .line 315
    .line 316
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/i3;->B(Ljava/lang/Object;J)D

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 341
    .line 342
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 353
    .line 354
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-eqz v2, :cond_0

    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    goto :goto_1

    .line 365
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 366
    .line 367
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 376
    .line 377
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    goto/16 :goto_3

    .line 382
    .line 383
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 384
    .line 385
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 394
    .line 395
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 402
    .line 403
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 410
    .line 411
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    goto/16 :goto_3

    .line 416
    .line 417
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 418
    .line 419
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    goto/16 :goto_3

    .line 428
    .line 429
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 430
    .line 431
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-eqz v2, :cond_0

    .line 436
    .line 437
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    :cond_0
    :goto_1
    add-int/2addr v1, v6

    .line 442
    goto :goto_4

    .line 443
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 444
    .line 445
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    check-cast v2, Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    goto :goto_3

    .line 456
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 457
    .line 458
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/j2;->a(Z)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    goto :goto_3

    .line 467
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 468
    .line 469
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    goto :goto_3

    .line 474
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 475
    .line 476
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 477
    .line 478
    .line 479
    move-result-wide v2

    .line 480
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 481
    .line 482
    goto :goto_2

    .line 483
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 484
    .line 485
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    goto :goto_3

    .line 490
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 491
    .line 492
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 497
    .line 498
    goto :goto_2

    .line 499
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 500
    .line 501
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 502
    .line 503
    .line 504
    move-result-wide v2

    .line 505
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 506
    .line 507
    goto :goto_2

    .line 508
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 509
    .line 510
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    goto :goto_3

    .line 519
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 520
    .line 521
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

    .line 522
    .line 523
    .line 524
    move-result-wide v2

    .line 525
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 526
    .line 527
    .line 528
    move-result-wide v2

    .line 529
    sget-object v4, Lcom/google/android/gms/internal/play_billing/j2;->d:[B

    .line 530
    .line 531
    :goto_2
    ushr-long v4, v2, v7

    .line 532
    .line 533
    xor-long/2addr v2, v4

    .line 534
    long-to-int v2, v2

    .line 535
    :goto_3
    add-int/2addr v1, v2

    .line 536
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    .line 537
    .line 538
    goto/16 :goto_0

    .line 539
    .line 540
    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 541
    .line 542
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 543
    .line 544
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    add-int/2addr v1, v0

    .line 553
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 554
    .line 555
    if-nez v0, :cond_3

    .line 556
    .line 557
    return v1

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 559
    .line 560
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 561
    .line 562
    .line 563
    const/4 p1, 0x0

    .line 564
    throw p1

    .line 565
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

.method public final e(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V
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
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    iget-object v10, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 13
    .line 14
    sget-object v11, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 15
    .line 16
    const v12, 0xfffff

    .line 17
    .line 18
    .line 19
    move v0, v12

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    :goto_0
    array-length v2, v10

    .line 23
    if-ge v14, v2, :cond_5

    .line 24
    .line 25
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 30
    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    aget v15, v3, v14

    .line 36
    .line 37
    const/16 v5, 0x11

    .line 38
    .line 39
    const/4 v13, 0x1

    .line 40
    if-gt v4, v5, :cond_2

    .line 41
    .line 42
    add-int/lit8 v5, v14, 0x2

    .line 43
    .line 44
    aget v3, v3, v5

    .line 45
    .line 46
    and-int v5, v3, v12

    .line 47
    .line 48
    if-eq v5, v0, :cond_1

    .line 49
    .line 50
    if-ne v5, v12, :cond_0

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    int-to-long v0, v5

    .line 55
    invoke-virtual {v11, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_1
    move v1, v0

    .line 60
    move v0, v5

    .line 61
    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    .line 62
    .line 63
    shl-int v3, v13, v3

    .line 64
    .line 65
    move/from16 v16, v0

    .line 66
    .line 67
    move/from16 v17, v1

    .line 68
    .line 69
    move v5, v3

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move/from16 v16, v0

    .line 72
    .line 73
    move/from16 v17, v1

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    :goto_2
    and-int v0, v2, v12

    .line 77
    .line 78
    int-to-long v2, v0

    .line 79
    packed-switch v4, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :pswitch_0
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :pswitch_1
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->J(IJ)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :pswitch_2
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->o(II)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :pswitch_3
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->s(IJ)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :pswitch_4
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->A(II)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :pswitch_5
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->d(II)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :pswitch_6
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_4

    .line 183
    .line 184
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->k(II)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    :pswitch_7
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/google/android/gms/internal/play_billing/e1;

    .line 204
    .line 205
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->n(ILcom/google/android/gms/internal/play_billing/e1;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :pswitch_8
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->u(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :pswitch_9
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_4

    .line 234
    .line 235
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/play_billing/i3;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :pswitch_a
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_4

    .line 249
    .line 250
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->w(Ljava/lang/Object;J)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->m(IZ)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_5

    .line 258
    .line 259
    :pswitch_b
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_4

    .line 264
    .line 265
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->b(II)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :pswitch_c
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_4

    .line 279
    .line 280
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v0

    .line 284
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->H(IJ)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :pswitch_d
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_4

    .line 294
    .line 295
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->D(Ljava/lang/Object;J)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->y(II)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :pswitch_e
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_4

    .line 309
    .line 310
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 311
    .line 312
    .line 313
    move-result-wide v0

    .line 314
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->E(IJ)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_5

    .line 318
    .line 319
    :pswitch_f
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_4

    .line 324
    .line 325
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->I(Ljava/lang/Object;J)J

    .line 326
    .line 327
    .line 328
    move-result-wide v0

    .line 329
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->q(IJ)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_5

    .line 333
    .line 334
    :pswitch_10
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_4

    .line 339
    .line 340
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->C(Ljava/lang/Object;J)F

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->B(IF)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_5

    .line 348
    .line 349
    :pswitch_11
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_4

    .line 354
    .line 355
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/i3;->B(Ljava/lang/Object;J)D

    .line 356
    .line 357
    .line 358
    move-result-wide v0

    .line 359
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->f(ID)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_5

    .line 363
    .line 364
    :pswitch_12
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-nez v0, :cond_3

    .line 369
    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :cond_3
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->L(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    throw v9

    .line 380
    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 381
    .line 382
    aget v0, v0, v14

    .line 383
    .line 384
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Ljava/util/List;

    .line 389
    .line 390
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    sget v3, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 395
    .line 396
    if-eqz v1, :cond_4

    .line 397
    .line 398
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-nez v3, :cond_4

    .line 403
    .line 404
    const/4 v3, 0x0

    .line 405
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-ge v3, v4, :cond_4

    .line 410
    .line 411
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    move-object v5, v8

    .line 416
    check-cast v5, Lcom/google/android/gms/internal/play_billing/n1;

    .line 417
    .line 418
    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/n1;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 419
    .line 420
    .line 421
    add-int/lit8 v3, v3, 0x1

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 425
    .line 426
    aget v0, v0, v14

    .line 427
    .line 428
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    check-cast v1, Ljava/util/List;

    .line 433
    .line 434
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_5

    .line 438
    .line 439
    :pswitch_15
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 440
    .line 441
    aget v0, v0, v14

    .line 442
    .line 443
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Ljava/util/List;

    .line 448
    .line 449
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_5

    .line 453
    .line 454
    :pswitch_16
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 455
    .line 456
    aget v0, v0, v14

    .line 457
    .line 458
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Ljava/util/List;

    .line 463
    .line 464
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_5

    .line 468
    .line 469
    :pswitch_17
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 470
    .line 471
    aget v0, v0, v14

    .line 472
    .line 473
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    check-cast v1, Ljava/util/List;

    .line 478
    .line 479
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->F(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_5

    .line 483
    .line 484
    :pswitch_18
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 485
    .line 486
    aget v0, v0, v14

    .line 487
    .line 488
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, Ljava/util/List;

    .line 493
    .line 494
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_5

    .line 498
    .line 499
    :pswitch_19
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 500
    .line 501
    aget v0, v0, v14

    .line 502
    .line 503
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Ljava/util/List;

    .line 508
    .line 509
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_5

    .line 513
    .line 514
    :pswitch_1a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 515
    .line 516
    aget v0, v0, v14

    .line 517
    .line 518
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Ljava/util/List;

    .line 523
    .line 524
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_5

    .line 528
    .line 529
    :pswitch_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 530
    .line 531
    aget v0, v0, v14

    .line 532
    .line 533
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/util/List;

    .line 538
    .line 539
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :pswitch_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 545
    .line 546
    aget v0, v0, v14

    .line 547
    .line 548
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    check-cast v1, Ljava/util/List;

    .line 553
    .line 554
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_5

    .line 558
    .line 559
    :pswitch_1d
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 560
    .line 561
    aget v0, v0, v14

    .line 562
    .line 563
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Ljava/util/List;

    .line 568
    .line 569
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_5

    .line 573
    .line 574
    :pswitch_1e
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 575
    .line 576
    aget v0, v0, v14

    .line 577
    .line 578
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    check-cast v1, Ljava/util/List;

    .line 583
    .line 584
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_5

    .line 588
    .line 589
    :pswitch_1f
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 590
    .line 591
    aget v0, v0, v14

    .line 592
    .line 593
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    check-cast v1, Ljava/util/List;

    .line 598
    .line 599
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->E(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_5

    .line 603
    .line 604
    :pswitch_20
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 605
    .line 606
    aget v0, v0, v14

    .line 607
    .line 608
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    check-cast v1, Ljava/util/List;

    .line 613
    .line 614
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_5

    .line 618
    .line 619
    :pswitch_21
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 620
    .line 621
    aget v0, v0, v14

    .line 622
    .line 623
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    check-cast v1, Ljava/util/List;

    .line 628
    .line 629
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_5

    .line 633
    .line 634
    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 635
    .line 636
    aget v0, v0, v14

    .line 637
    .line 638
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Ljava/util/List;

    .line 643
    .line 644
    const/4 v4, 0x0

    .line 645
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_5

    .line 649
    .line 650
    :pswitch_23
    const/4 v4, 0x0

    .line 651
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 652
    .line 653
    aget v0, v0, v14

    .line 654
    .line 655
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    check-cast v1, Ljava/util/List;

    .line 660
    .line 661
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 662
    .line 663
    .line 664
    goto/16 :goto_5

    .line 665
    .line 666
    :pswitch_24
    const/4 v4, 0x0

    .line 667
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 668
    .line 669
    aget v0, v0, v14

    .line 670
    .line 671
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    check-cast v1, Ljava/util/List;

    .line 676
    .line 677
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 678
    .line 679
    .line 680
    goto/16 :goto_5

    .line 681
    .line 682
    :pswitch_25
    const/4 v4, 0x0

    .line 683
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 684
    .line 685
    aget v0, v0, v14

    .line 686
    .line 687
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    check-cast v1, Ljava/util/List;

    .line 692
    .line 693
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->F(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_5

    .line 697
    .line 698
    :pswitch_26
    const/4 v4, 0x0

    .line 699
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 700
    .line 701
    aget v0, v0, v14

    .line 702
    .line 703
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    check-cast v1, Ljava/util/List;

    .line 708
    .line 709
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_5

    .line 713
    .line 714
    :pswitch_27
    const/4 v4, 0x0

    .line 715
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 716
    .line 717
    aget v0, v0, v14

    .line 718
    .line 719
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    check-cast v1, Ljava/util/List;

    .line 724
    .line 725
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/s3;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_5

    .line 729
    .line 730
    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 731
    .line 732
    aget v0, v0, v14

    .line 733
    .line 734
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    check-cast v1, Ljava/util/List;

    .line 739
    .line 740
    sget v2, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 741
    .line 742
    if-eqz v1, :cond_4

    .line 743
    .line 744
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-nez v2, :cond_4

    .line 749
    .line 750
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->l(ILjava/util/List;)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_5

    .line 754
    .line 755
    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 756
    .line 757
    aget v0, v0, v14

    .line 758
    .line 759
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    check-cast v1, Ljava/util/List;

    .line 764
    .line 765
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    sget v3, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 770
    .line 771
    if-eqz v1, :cond_4

    .line 772
    .line 773
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    if-nez v3, :cond_4

    .line 778
    .line 779
    const/4 v4, 0x0

    .line 780
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    if-ge v4, v3, :cond_4

    .line 785
    .line 786
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    move-object v5, v8

    .line 791
    check-cast v5, Lcom/google/android/gms/internal/play_billing/n1;

    .line 792
    .line 793
    invoke-virtual {v5, v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/n1;->u(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 794
    .line 795
    .line 796
    add-int/lit8 v4, v4, 0x1

    .line 797
    .line 798
    goto :goto_4

    .line 799
    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 800
    .line 801
    aget v0, v0, v14

    .line 802
    .line 803
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    check-cast v1, Ljava/util/List;

    .line 808
    .line 809
    sget v2, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 810
    .line 811
    if-eqz v1, :cond_4

    .line 812
    .line 813
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    if-nez v2, :cond_4

    .line 818
    .line 819
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->e(ILjava/util/List;)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_5

    .line 823
    .line 824
    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 825
    .line 826
    aget v0, v0, v14

    .line 827
    .line 828
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    check-cast v1, Ljava/util/List;

    .line 833
    .line 834
    const/4 v13, 0x0

    .line 835
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_5

    .line 839
    .line 840
    :pswitch_2c
    const/4 v13, 0x0

    .line 841
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 842
    .line 843
    aget v0, v0, v14

    .line 844
    .line 845
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    check-cast v1, Ljava/util/List;

    .line 850
    .line 851
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_5

    .line 855
    .line 856
    :pswitch_2d
    const/4 v13, 0x0

    .line 857
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 858
    .line 859
    aget v0, v0, v14

    .line 860
    .line 861
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    check-cast v1, Ljava/util/List;

    .line 866
    .line 867
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 868
    .line 869
    .line 870
    goto/16 :goto_5

    .line 871
    .line 872
    :pswitch_2e
    const/4 v13, 0x0

    .line 873
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 874
    .line 875
    aget v0, v0, v14

    .line 876
    .line 877
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Ljava/util/List;

    .line 882
    .line 883
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 884
    .line 885
    .line 886
    goto/16 :goto_5

    .line 887
    .line 888
    :pswitch_2f
    const/4 v13, 0x0

    .line 889
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 890
    .line 891
    aget v0, v0, v14

    .line 892
    .line 893
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Ljava/util/List;

    .line 898
    .line 899
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->e(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_5

    .line 903
    .line 904
    :pswitch_30
    const/4 v13, 0x0

    .line 905
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 906
    .line 907
    aget v0, v0, v14

    .line 908
    .line 909
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    check-cast v1, Ljava/util/List;

    .line 914
    .line 915
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->E(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_5

    .line 919
    .line 920
    :pswitch_31
    const/4 v13, 0x0

    .line 921
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 922
    .line 923
    aget v0, v0, v14

    .line 924
    .line 925
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    check-cast v1, Ljava/util/List;

    .line 930
    .line 931
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_5

    .line 935
    .line 936
    :pswitch_32
    const/4 v13, 0x0

    .line 937
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 938
    .line 939
    aget v0, v0, v14

    .line 940
    .line 941
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    check-cast v1, Ljava/util/List;

    .line 946
    .line 947
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/s3;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/m4;Z)V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_5

    .line 951
    .line 952
    :pswitch_33
    const/4 v13, 0x0

    .line 953
    move-object/from16 v0, p0

    .line 954
    .line 955
    move-object/from16 v1, p1

    .line 956
    .line 957
    move-wide v3, v2

    .line 958
    move v2, v14

    .line 959
    move-wide v12, v3

    .line 960
    move/from16 v3, v16

    .line 961
    .line 962
    move/from16 v4, v17

    .line 963
    .line 964
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    if-eqz v0, :cond_4

    .line 969
    .line 970
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_5

    .line 982
    .line 983
    :pswitch_34
    move-wide v12, v2

    .line 984
    move-object/from16 v0, p0

    .line 985
    .line 986
    move-object/from16 v1, p1

    .line 987
    .line 988
    move v2, v14

    .line 989
    move/from16 v3, v16

    .line 990
    .line 991
    move/from16 v4, v17

    .line 992
    .line 993
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    if-eqz v0, :cond_4

    .line 998
    .line 999
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1000
    .line 1001
    .line 1002
    move-result-wide v0

    .line 1003
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->J(IJ)V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_5

    .line 1007
    .line 1008
    :pswitch_35
    move-wide v12, v2

    .line 1009
    move-object/from16 v0, p0

    .line 1010
    .line 1011
    move-object/from16 v1, p1

    .line 1012
    .line 1013
    move v2, v14

    .line 1014
    move/from16 v3, v16

    .line 1015
    .line 1016
    move/from16 v4, v17

    .line 1017
    .line 1018
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    if-eqz v0, :cond_4

    .line 1023
    .line 1024
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->o(II)V

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_5

    .line 1032
    .line 1033
    :pswitch_36
    move-wide v12, v2

    .line 1034
    move-object/from16 v0, p0

    .line 1035
    .line 1036
    move-object/from16 v1, p1

    .line 1037
    .line 1038
    move v2, v14

    .line 1039
    move/from16 v3, v16

    .line 1040
    .line 1041
    move/from16 v4, v17

    .line 1042
    .line 1043
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-eqz v0, :cond_4

    .line 1048
    .line 1049
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1050
    .line 1051
    .line 1052
    move-result-wide v0

    .line 1053
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->s(IJ)V

    .line 1054
    .line 1055
    .line 1056
    goto/16 :goto_5

    .line 1057
    .line 1058
    :pswitch_37
    move-wide v12, v2

    .line 1059
    move-object/from16 v0, p0

    .line 1060
    .line 1061
    move-object/from16 v1, p1

    .line 1062
    .line 1063
    move v2, v14

    .line 1064
    move/from16 v3, v16

    .line 1065
    .line 1066
    move/from16 v4, v17

    .line 1067
    .line 1068
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    if-eqz v0, :cond_4

    .line 1073
    .line 1074
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->A(II)V

    .line 1079
    .line 1080
    .line 1081
    goto/16 :goto_5

    .line 1082
    .line 1083
    :pswitch_38
    move-wide v12, v2

    .line 1084
    move-object/from16 v0, p0

    .line 1085
    .line 1086
    move-object/from16 v1, p1

    .line 1087
    .line 1088
    move v2, v14

    .line 1089
    move/from16 v3, v16

    .line 1090
    .line 1091
    move/from16 v4, v17

    .line 1092
    .line 1093
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-eqz v0, :cond_4

    .line 1098
    .line 1099
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1100
    .line 1101
    .line 1102
    move-result v0

    .line 1103
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->d(II)V

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_5

    .line 1107
    .line 1108
    :pswitch_39
    move-wide v12, v2

    .line 1109
    move-object/from16 v0, p0

    .line 1110
    .line 1111
    move-object/from16 v1, p1

    .line 1112
    .line 1113
    move v2, v14

    .line 1114
    move/from16 v3, v16

    .line 1115
    .line 1116
    move/from16 v4, v17

    .line 1117
    .line 1118
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-eqz v0, :cond_4

    .line 1123
    .line 1124
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1125
    .line 1126
    .line 1127
    move-result v0

    .line 1128
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->k(II)V

    .line 1129
    .line 1130
    .line 1131
    goto/16 :goto_5

    .line 1132
    .line 1133
    :pswitch_3a
    move-wide v12, v2

    .line 1134
    move-object/from16 v0, p0

    .line 1135
    .line 1136
    move-object/from16 v1, p1

    .line 1137
    .line 1138
    move v2, v14

    .line 1139
    move/from16 v3, v16

    .line 1140
    .line 1141
    move/from16 v4, v17

    .line 1142
    .line 1143
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    if-eqz v0, :cond_4

    .line 1148
    .line 1149
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    check-cast v0, Lcom/google/android/gms/internal/play_billing/e1;

    .line 1154
    .line 1155
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->n(ILcom/google/android/gms/internal/play_billing/e1;)V

    .line 1156
    .line 1157
    .line 1158
    goto/16 :goto_5

    .line 1159
    .line 1160
    :pswitch_3b
    move-wide v12, v2

    .line 1161
    move-object/from16 v0, p0

    .line 1162
    .line 1163
    move-object/from16 v1, p1

    .line 1164
    .line 1165
    move v2, v14

    .line 1166
    move/from16 v3, v16

    .line 1167
    .line 1168
    move/from16 v4, v17

    .line 1169
    .line 1170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    if-eqz v0, :cond_4

    .line 1175
    .line 1176
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->u(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;)V

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_5

    .line 1188
    .line 1189
    :pswitch_3c
    move-wide v12, v2

    .line 1190
    move-object/from16 v0, p0

    .line 1191
    .line 1192
    move-object/from16 v1, p1

    .line 1193
    .line 1194
    move v2, v14

    .line 1195
    move/from16 v3, v16

    .line 1196
    .line 1197
    move/from16 v4, v17

    .line 1198
    .line 1199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    if-eqz v0, :cond_4

    .line 1204
    .line 1205
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/play_billing/i3;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_5

    .line 1213
    .line 1214
    :pswitch_3d
    move-wide v12, v2

    .line 1215
    move-object/from16 v0, p0

    .line 1216
    .line 1217
    move-object/from16 v1, p1

    .line 1218
    .line 1219
    move v2, v14

    .line 1220
    move/from16 v3, v16

    .line 1221
    .line 1222
    move/from16 v4, v17

    .line 1223
    .line 1224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    if-eqz v0, :cond_4

    .line 1229
    .line 1230
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v0

    .line 1234
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->m(IZ)V

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_5

    .line 1238
    .line 1239
    :pswitch_3e
    move-wide v12, v2

    .line 1240
    move-object/from16 v0, p0

    .line 1241
    .line 1242
    move-object/from16 v1, p1

    .line 1243
    .line 1244
    move v2, v14

    .line 1245
    move/from16 v3, v16

    .line 1246
    .line 1247
    move/from16 v4, v17

    .line 1248
    .line 1249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_4

    .line 1254
    .line 1255
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->b(II)V

    .line 1260
    .line 1261
    .line 1262
    goto/16 :goto_5

    .line 1263
    .line 1264
    :pswitch_3f
    move-wide v12, v2

    .line 1265
    move-object/from16 v0, p0

    .line 1266
    .line 1267
    move-object/from16 v1, p1

    .line 1268
    .line 1269
    move v2, v14

    .line 1270
    move/from16 v3, v16

    .line 1271
    .line 1272
    move/from16 v4, v17

    .line 1273
    .line 1274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v0

    .line 1278
    if-eqz v0, :cond_4

    .line 1279
    .line 1280
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1281
    .line 1282
    .line 1283
    move-result-wide v0

    .line 1284
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->H(IJ)V

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_5

    .line 1288
    .line 1289
    :pswitch_40
    move-wide v12, v2

    .line 1290
    move-object/from16 v0, p0

    .line 1291
    .line 1292
    move-object/from16 v1, p1

    .line 1293
    .line 1294
    move v2, v14

    .line 1295
    move/from16 v3, v16

    .line 1296
    .line 1297
    move/from16 v4, v17

    .line 1298
    .line 1299
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    if-eqz v0, :cond_4

    .line 1304
    .line 1305
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1306
    .line 1307
    .line 1308
    move-result v0

    .line 1309
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->y(II)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_5

    .line 1313
    .line 1314
    :pswitch_41
    move-wide v12, v2

    .line 1315
    move-object/from16 v0, p0

    .line 1316
    .line 1317
    move-object/from16 v1, p1

    .line 1318
    .line 1319
    move v2, v14

    .line 1320
    move/from16 v3, v16

    .line 1321
    .line 1322
    move/from16 v4, v17

    .line 1323
    .line 1324
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v0

    .line 1328
    if-eqz v0, :cond_4

    .line 1329
    .line 1330
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1331
    .line 1332
    .line 1333
    move-result-wide v0

    .line 1334
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->E(IJ)V

    .line 1335
    .line 1336
    .line 1337
    goto :goto_5

    .line 1338
    :pswitch_42
    move-wide v12, v2

    .line 1339
    move-object/from16 v0, p0

    .line 1340
    .line 1341
    move-object/from16 v1, p1

    .line 1342
    .line 1343
    move v2, v14

    .line 1344
    move/from16 v3, v16

    .line 1345
    .line 1346
    move/from16 v4, v17

    .line 1347
    .line 1348
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    if-eqz v0, :cond_4

    .line 1353
    .line 1354
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1355
    .line 1356
    .line 1357
    move-result-wide v0

    .line 1358
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->q(IJ)V

    .line 1359
    .line 1360
    .line 1361
    goto :goto_5

    .line 1362
    :pswitch_43
    move-wide v12, v2

    .line 1363
    move-object/from16 v0, p0

    .line 1364
    .line 1365
    move-object/from16 v1, p1

    .line 1366
    .line 1367
    move v2, v14

    .line 1368
    move/from16 v3, v16

    .line 1369
    .line 1370
    move/from16 v4, v17

    .line 1371
    .line 1372
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    if-eqz v0, :cond_4

    .line 1377
    .line 1378
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

    .line 1379
    .line 1380
    .line 1381
    move-result v0

    .line 1382
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/m4;->B(IF)V

    .line 1383
    .line 1384
    .line 1385
    goto :goto_5

    .line 1386
    :pswitch_44
    move-wide v12, v2

    .line 1387
    move-object/from16 v0, p0

    .line 1388
    .line 1389
    move-object/from16 v1, p1

    .line 1390
    .line 1391
    move v2, v14

    .line 1392
    move/from16 v3, v16

    .line 1393
    .line 1394
    move/from16 v4, v17

    .line 1395
    .line 1396
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/i3;->s(Ljava/lang/Object;IIII)Z

    .line 1397
    .line 1398
    .line 1399
    move-result v0

    .line 1400
    if-eqz v0, :cond_4

    .line 1401
    .line 1402
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

    .line 1403
    .line 1404
    .line 1405
    move-result-wide v0

    .line 1406
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/m4;->f(ID)V

    .line 1407
    .line 1408
    .line 1409
    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x3

    .line 1410
    .line 1411
    move/from16 v0, v16

    .line 1412
    .line 1413
    move/from16 v1, v17

    .line 1414
    .line 1415
    const v12, 0xfffff

    .line 1416
    .line 1417
    .line 1418
    goto/16 :goto_0

    .line 1419
    .line 1420
    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 1421
    .line 1422
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v1

    .line 1426
    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/play_billing/v3;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V

    .line 1427
    .line 1428
    .line 1429
    return-void

    .line 1430
    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 1431
    .line 1432
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 1433
    .line 1434
    .line 1435
    throw v9

    .line 1436
    nop

    .line 1437
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

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i3;->j(Ljava/lang/Object;)V

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
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v2, v1

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v3, v3, v0

    .line 28
    .line 29
    int-to-long v4, v2

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->l(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->n(Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->l(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->v(Ljava/lang/Object;II)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->n(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    .line 82
    .line 83
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a3;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i3;->j:Lcom/google/android/gms/internal/play_billing/u2;

    .line 101
    .line 102
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/u2;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->k(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->w(Ljava/lang/Object;JJ)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->w(Ljava/lang/Object;JJ)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    .line 172
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    .line 208
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    .line 226
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->k(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    .line 249
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->r(Ljava/lang/Object;JZ)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    .line 285
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    .line 302
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->w(Ljava/lang/Object;JJ)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    .line 319
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->v(Ljava/lang/Object;JI)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->w(Ljava/lang/Object;JJ)V

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_0

    .line 352
    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->w(Ljava/lang/Object;JJ)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/f4;->u(Ljava/lang/Object;JF)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 378
    .line 379
    .line 380
    goto :goto_1

    .line 381
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/i3;->r(Ljava/lang/Object;I)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    .line 387
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/f4;->t(Ljava/lang/Object;JD)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/i3;->m(Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 402
    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/s3;->v(Lcom/google/android/gms/internal/play_billing/v3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 407
    .line 408
    if-nez p1, :cond_2

    .line 409
    .line 410
    return-void

    .line 411
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 412
    .line 413
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 414
    .line 415
    .line 416
    const/4 p1, 0x0

    .line 417
    throw p1

    .line 418
    nop

    .line 419
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

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/r0;)V
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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/i3;->y(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/r0;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->e:Lcom/google/android/gms/internal/play_billing/f3;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/b2;->m()Lcom/google/android/gms/internal/play_billing/b2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

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
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

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
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->E(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v6, v2, :cond_0

    .line 42
    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_0

    .line 153
    .line 154
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    .line 174
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_0

    .line 191
    .line 192
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_0

    .line 209
    .line 210
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_0

    .line 227
    .line 228
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_0

    .line 271
    .line 272
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_0

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->B(Ljava/lang/Object;J)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_0

    .line 311
    .line 312
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_0

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_0

    .line 349
    .line 350
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->h(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_0

    .line 366
    .line 367
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    .line 386
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

    .line 387
    .line 388
    .line 389
    move-result-wide v2

    .line 390
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->i(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_0

    .line 404
    .line 405
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

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
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->g(Ljava/lang/Object;J)F

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i3;->q(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_0

    .line 429
    .line 430
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

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
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/f4;->f(Ljava/lang/Object;J)D

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
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 457
    .line 458
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 463
    .line 464
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-nez v1, :cond_3

    .line 473
    .line 474
    return v0

    .line 475
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    .line 476
    .line 477
    if-nez v0, :cond_4

    .line 478
    .line 479
    const/4 p1, 0x1

    .line 480
    return p1

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 482
    .line 483
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 484
    .line 485
    .line 486
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/i3;->l:Lcom/google/android/gms/internal/play_billing/r1;

    .line 487
    .line 488
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 489
    .line 490
    .line 491
    const/4 p1, 0x0

    .line 492
    throw p1

    .line 493
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

.method final y(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/r0;)I
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i3;->j(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v1, p3

    move v3, v10

    move v4, v3

    move v5, v4

    const/4 v2, -0x1

    const v6, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v1, v14, :cond_7a

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    .line 3
    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/s0;->i(I[BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    goto :goto_1

    :cond_0
    move/from16 v33, v4

    move v4, v1

    move/from16 v1, v33

    :goto_1
    ushr-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-le v8, v2, :cond_2

    div-int/2addr v3, v9

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/i3;->c:I

    if-lt v8, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/i3;->d:I

    if-gt v8, v2, :cond_1

    .line 4
    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/i3;->F(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 5
    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/play_billing/i3;->c:I

    if-lt v8, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/i3;->d:I

    if-gt v8, v2, :cond_3

    .line 6
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/i3;->F(II)I

    move-result v2

    :goto_2
    move v3, v2

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_3
    if-ne v3, v2, :cond_4

    move v3, v1

    move/from16 v18, v2

    move/from16 v21, v5

    move/from16 v17, v6

    move v1, v8

    move/from16 v19, v10

    move-object/from16 v30, v11

    move-object v5, v12

    move v8, v13

    :goto_4
    move-object v6, v15

    goto/16 :goto_42

    :cond_4
    and-int/lit8 v2, v4, 0x7

    .line 7
    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    add-int/lit8 v19, v3, 0x1

    .line 8
    aget v10, v9, v19

    move/from16 v19, v4

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/i3;->G(I)I

    move-result v4

    const v17, 0xfffff

    and-int v13, v10, v17

    int-to-long v13, v13

    move/from16 v21, v8

    const/high16 v22, 0x20000000

    const-wide/16 v23, 0x0

    const-string v8, ""

    move-object/from16 v27, v8

    const/16 v8, 0x11

    if-gt v4, v8, :cond_1d

    add-int/lit8 v8, v3, 0x2

    .line 9
    aget v8, v9, v8

    ushr-int/lit8 v9, v8, 0x14

    const/16 v25, 0x1

    shl-int v9, v25, v9

    move/from16 v30, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    move-wide/from16 v31, v13

    if-eq v8, v6, :cond_7

    if-eq v6, v10, :cond_5

    int-to-long v13, v6

    .line 10
    invoke-virtual {v11, v7, v13, v14, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    if-ne v8, v10, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    int-to-long v5, v8

    .line 11
    invoke-virtual {v11, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_5
    move/from16 v17, v8

    goto :goto_6

    :cond_7
    move/from16 v17, v6

    :goto_6
    packed-switch v4, :pswitch_data_0

    move v6, v1

    move v14, v3

    move/from16 v13, v19

    const/4 v1, 0x3

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    or-int/2addr v5, v9

    .line 12
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/play_billing/i3;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v21, 0x3

    or-int/lit8 v2, v2, 0x4

    .line 13
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v9

    move/from16 v3, v21

    const v4, 0xfffff

    move-object v8, v1

    const/16 v18, -0x1

    move/from16 v19, v10

    move-object/from16 v10, p2

    move/from16 p3, v5

    move-object v5, v11

    move v11, v6

    move-object v6, v12

    move/from16 v12, p4

    move/from16 v20, v13

    move v13, v2

    move/from16 v2, p4

    move v6, v14

    move-object/from16 v14, p6

    .line 14
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/s0;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;[BIIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v8

    .line 15
    invoke-direct {v0, v7, v6, v1}, Lcom/google/android/gms/internal/play_billing/i3;->o(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p5

    move-object/from16 v12, p6

    move v14, v2

    move v2, v3

    move-object v11, v5

    move v3, v6

    move v1, v8

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, p3

    goto/16 :goto_0

    :pswitch_0
    if-nez v2, :cond_8

    or-int v8, v5, v9

    .line 16
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v9

    iget-wide v1, v12, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->b(J)J

    move-result-wide v5

    move-object v1, v11

    const/4 v13, -0x1

    move-object/from16 v2, p1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    .line 18
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v1, v9

    goto/16 :goto_8

    :cond_8
    move/from16 v2, p4

    move v9, v1

    move v6, v3

    move v8, v5

    move v4, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v19

    goto/16 :goto_9

    :pswitch_1
    move v14, v3

    move/from16 v13, v19

    if-nez v2, :cond_b

    or-int/2addr v5, v9

    .line 19
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)I

    move-result v2

    move-wide/from16 v3, v31

    .line 21
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    if-nez v2, :cond_b

    .line 22
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 23
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/play_billing/i3;->J(I)Lcom/google/android/gms/internal/play_billing/f2;

    move-result-object v6

    const/high16 v8, -0x80000000

    and-int v8, v30, v8

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    .line 24
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/play_billing/f2;->a(I)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    .line 25
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i3;->z(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w3;

    move-result-object v3

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v13, v2}, Lcom/google/android/gms/internal/play_billing/w3;->j(ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    :goto_7
    or-int/2addr v5, v9

    .line 26
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v6, 0x2

    if-ne v2, v6, :cond_b

    or-int/2addr v5, v9

    .line 27
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/s0;->a([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    .line 28
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move v14, v3

    move/from16 v13, v19

    const/4 v6, 0x2

    if-ne v2, v6, :cond_b

    or-int v8, v5, v9

    .line 29
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/play_billing/i3;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v2

    move v6, v1

    move-object v1, v9

    move-object/from16 v3, p2

    move v4, v6

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;[BIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    .line 32
    invoke-direct {v0, v7, v14, v9}, Lcom/google/android/gms/internal/play_billing/i3;->o(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v8

    :goto_8
    move v4, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v2, v21

    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_b
    move/from16 v2, p4

    move v9, v1

    move v8, v5

    move v4, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    :goto_9
    move/from16 v3, v21

    goto/16 :goto_11

    :pswitch_5
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1a

    and-int v1, v30, v22

    if-eqz v1, :cond_17

    .line 33
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v2, :cond_16

    or-int/2addr v5, v9

    if-nez v2, :cond_c

    move-object/from16 v8, v27

    .line 34
    iput-object v8, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    move/from16 v28, v5

    const/4 v10, 0x0

    goto/16 :goto_f

    .line 35
    :cond_c
    sget v6, Lcom/google/android/gms/internal/play_billing/l4;->b:I

    .line 36
    array-length v6, v15

    sub-int v8, v6, v1

    or-int v9, v1, v2

    sub-int/2addr v8, v2

    or-int/2addr v8, v9

    if-ltz v8, :cond_15

    add-int v6, v1, v2

    .line 37
    new-array v2, v2, [C

    const/4 v8, 0x0

    :goto_a
    if-ge v1, v6, :cond_d

    .line 38
    aget-byte v9, v15, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/g4;->d(B)Z

    move-result v16

    if-eqz v16, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v8, 0x1

    int-to-char v9, v9

    .line 39
    aput-char v9, v2, v8

    move/from16 v8, v16

    goto :goto_a

    :cond_d
    :goto_b
    if-ge v1, v6, :cond_14

    add-int/lit8 v9, v1, 0x1

    .line 40
    aget-byte v1, v15, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/g4;->d(B)Z

    move-result v16

    if-eqz v16, :cond_e

    add-int/lit8 v16, v8, 0x1

    int-to-char v1, v1

    .line 41
    aput-char v1, v2, v8

    move v1, v9

    :goto_c
    move/from16 v8, v16

    if-ge v1, v6, :cond_d

    .line 42
    aget-byte v9, v15, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/g4;->d(B)Z

    move-result v16

    if-eqz v16, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v8, 0x1

    int-to-char v9, v9

    .line 43
    aput-char v9, v2, v8

    goto :goto_c

    :cond_e
    const/16 v10, -0x20

    if-ge v1, v10, :cond_10

    if-ge v9, v6, :cond_f

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v16, v9, 0x1

    .line 44
    aget-byte v9, v15, v9

    invoke-static {v1, v9, v2, v8}, Lcom/google/android/gms/internal/play_billing/g4;->c(BB[CI)V

    move v8, v10

    move/from16 v1, v16

    :goto_d
    const v10, 0xfffff

    goto :goto_b

    .line 45
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_10
    const/16 v10, -0x10

    if-ge v1, v10, :cond_12

    add-int/lit8 v10, v6, -0x1

    if-ge v9, v10, :cond_11

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v16, v9, 0x1

    .line 46
    aget-byte v9, v15, v9

    add-int/lit8 v19, v16, 0x1

    move/from16 v28, v5

    aget-byte v5, v15, v16

    invoke-static {v1, v9, v5, v2, v8}, Lcom/google/android/gms/internal/play_billing/g4;->b(BBB[CI)V

    move v8, v10

    move/from16 v1, v19

    goto :goto_e

    .line 47
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_12
    move/from16 v28, v5

    add-int/lit8 v5, v6, -0x2

    if-ge v9, v5, :cond_13

    add-int/lit8 v5, v9, 0x1

    .line 48
    aget-byte v23, v15, v9

    add-int/lit8 v9, v5, 0x1

    aget-byte v24, v15, v5

    add-int/lit8 v5, v9, 0x1

    aget-byte v25, v15, v9

    move/from16 v22, v1

    move-object/from16 v26, v2

    move/from16 v27, v8

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/play_billing/g4;->a(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    move v1, v5

    :goto_e
    move/from16 v5, v28

    goto :goto_d

    .line 49
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_14
    move/from16 v28, v5

    .line 50
    new-instance v1, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v1, v2, v10, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    move v1, v6

    :goto_f
    move/from16 v5, v28

    goto :goto_10

    .line 51
    :cond_15
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_17
    move-object/from16 v8, v27

    const/4 v10, 0x0

    .line 54
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v2, :cond_19

    or-int/2addr v5, v9

    if-nez v2, :cond_18

    .line 55
    iput-object v8, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    goto :goto_10

    :cond_18
    new-instance v6, Ljava/lang/String;

    .line 56
    sget-object v8, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v15, v1, v2, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    add-int/2addr v1, v2

    .line 57
    :goto_10
    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    .line 58
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_13

    .line 59
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_1a
    move/from16 v2, p4

    move v8, v5

    move v9, v6

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    move/from16 v3, v21

    const v4, 0xfffff

    :goto_11
    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_16

    :pswitch_6
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int/2addr v5, v9

    .line 60
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget-wide v8, v12, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    cmp-long v2, v8, v23

    if-eqz v2, :cond_1b

    const/4 v8, 0x1

    goto :goto_12

    :cond_1b
    move v8, v10

    .line 61
    :goto_12
    invoke-static {v7, v3, v4, v8}, Lcom/google/android/gms/internal/play_billing/f4;->r(Ljava/lang/Object;JZ)V

    goto/16 :goto_13

    :pswitch_7
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v1, 0x5

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v9

    .line 62
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v2

    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_13

    :pswitch_8
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v8, v6, 0x8

    or-int/2addr v9, v5

    .line 63
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v5

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v8

    move v5, v9

    goto/16 :goto_13

    :pswitch_9
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int/2addr v5, v9

    .line 64
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 65
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_13

    :pswitch_a
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int v8, v5, v9

    .line 66
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v9

    iget-wide v5, v12, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    move-object v1, v11

    move-object/from16 v2, p1

    .line 67
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v1, v9

    goto :goto_13

    :pswitch_b
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v1, 0x5

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v9

    .line 68
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 69
    invoke-static {v7, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/f4;->u(Ljava/lang/Object;JF)V

    goto :goto_13

    :pswitch_c
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v31

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x8

    or-int/2addr v5, v9

    .line 70
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 71
    invoke-static {v7, v3, v4, v8, v9}, Lcom/google/android/gms/internal/play_billing/f4;->t(Ljava/lang/Object;JD)V

    :goto_13
    move v4, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v2, v21

    :goto_14
    move/from16 v14, p4

    :goto_15
    move/from16 v13, p5

    goto/16 :goto_0

    :cond_1c
    move/from16 v2, p4

    move v8, v5

    move v9, v6

    move/from16 v19, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    move/from16 v3, v21

    const v4, 0xfffff

    const/16 v18, -0x1

    :goto_16
    move-object/from16 v30, v5

    move v10, v6

    move/from16 v21, v8

    move-object v6, v15

    move/from16 v4, v20

    move/from16 v8, p5

    move-object v5, v1

    move v1, v3

    move v3, v9

    goto/16 :goto_42

    :cond_1d
    move/from16 v17, v6

    move/from16 v30, v10

    move/from16 v20, v19

    move-object/from16 v8, v27

    const/16 v18, -0x1

    const/16 v19, 0x0

    move v6, v3

    move/from16 v3, v21

    move/from16 v21, v5

    move-object v5, v11

    move-wide v10, v13

    move/from16 v14, p4

    move v13, v1

    move-object v1, v12

    const/16 v12, 0x1b

    const/16 v27, 0xa

    if-ne v4, v12, :cond_21

    const/4 v12, 0x2

    if-ne v2, v12, :cond_20

    .line 72
    invoke-virtual {v5, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/i2;

    .line 73
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/i2;->f()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_17

    :cond_1e
    add-int v27, v4, v4

    :goto_17
    move/from16 v4, v27

    .line 75
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/i2;->j(I)Lcom/google/android/gms/internal/play_billing/i2;

    move-result-object v2

    .line 76
    invoke-virtual {v5, v7, v10, v11, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    :cond_1f
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v8

    move/from16 v9, v20

    move-object/from16 v10, p2

    move v11, v13

    const v4, 0xfffff

    move/from16 v12, p4

    move-object v13, v2

    move v2, v14

    move-object/from16 v14, p6

    .line 78
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/s0;->e(Lcom/google/android/gms/internal/play_billing/q3;I[BIILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v8

    move/from16 v13, p5

    move-object v12, v1

    move v14, v2

    move v2, v3

    move-object v11, v5

    move v3, v6

    move v1, v8

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, v21

    goto/16 :goto_0

    :cond_20
    move-object/from16 v30, v5

    move/from16 v5, v20

    move/from16 v33, v13

    move-object v13, v1

    move v1, v6

    move/from16 v6, v33

    goto/16 :goto_34

    :cond_21
    const/16 v12, 0x31

    if-gt v4, v12, :cond_67

    move/from16 v31, v6

    move/from16 v12, v30

    move-object/from16 v30, v5

    int-to-long v5, v12

    sget-object v9, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 79
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/i2;

    .line 80
    invoke-interface {v12}, Lcom/google/android/gms/internal/play_billing/i2;->f()Z

    move-result v22

    if-nez v22, :cond_23

    .line 81
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_22

    goto :goto_18

    :cond_22
    add-int v27, v22, v22

    :goto_18
    move/from16 v32, v3

    move/from16 v3, v27

    .line 82
    invoke-interface {v12, v3}, Lcom/google/android/gms/internal/play_billing/i2;->j(I)Lcom/google/android/gms/internal/play_billing/i2;

    move-result-object v3

    .line 83
    invoke-virtual {v9, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v12, v3

    goto :goto_19

    :cond_23
    move/from16 v32, v3

    :goto_19
    packed-switch v4, :pswitch_data_1

    move v7, v13

    move/from16 v9, v20

    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_64

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v20, v1, 0x4

    .line 84
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v22

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->c(Lcom/google/android/gms/internal/play_billing/q3;[BIIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    .line 86
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    :pswitch_d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 87
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 88
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v3, v2

    if-lt v2, v3, :cond_25

    if-ne v2, v3, :cond_24

    goto :goto_1b

    .line 89
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 90
    :cond_25
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    iget-wide v1, v1, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 91
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->b(J)J

    throw v16

    :cond_26
    if-eqz v2, :cond_27

    goto/16 :goto_1e

    .line 92
    :cond_27
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 93
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    iget-wide v1, v1, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 94
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i1;->b(J)J

    throw v16

    :pswitch_e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 95
    check-cast v12, Lcom/google/android/gms/internal/play_billing/c2;

    .line 96
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v3, v2

    :goto_1a
    if-ge v2, v3, :cond_28

    .line 97
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    goto :goto_1a

    :cond_28
    if-ne v2, v3, :cond_29

    :goto_1b
    move v7, v13

    move/from16 v9, v20

    goto :goto_1d

    .line 99
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_2a
    if-nez v2, :cond_2d

    .line 100
    check-cast v12, Lcom/google/android/gms/internal/play_billing/c2;

    .line 101
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 102
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    :goto_1c
    if-ge v2, v14, :cond_2b

    .line 103
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    move/from16 v11, v20

    if-ne v11, v4, :cond_2c

    .line 104
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)I

    move-result v3

    .line 105
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    move/from16 v20, v11

    goto :goto_1c

    :cond_2b
    move/from16 v11, v20

    :cond_2c
    move v9, v11

    move v7, v13

    :goto_1d
    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    move v1, v2

    goto/16 :goto_33

    :cond_2d
    :goto_1e
    move v7, v13

    move/from16 v9, v20

    goto/16 :goto_25

    :pswitch_f
    move/from16 v11, v20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 106
    invoke-static {v15, v13, v12, v1}, Lcom/google/android/gms/internal/play_billing/s0;->f([BILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    move-object v10, v1

    move/from16 v8, v31

    move/from16 v9, v32

    goto :goto_1f

    :cond_2e
    if-nez v2, :cond_36

    move-object v10, v1

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v9, v32

    move v3, v13

    move/from16 v4, p4

    move-object/from16 v8, v30

    move-object v5, v12

    move/from16 v8, v31

    move-object/from16 v6, p6

    .line 107
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->j(I[BIILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    .line 108
    :goto_1f
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/i3;->J(I)Lcom/google/android/gms/internal/play_billing/f2;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/i3;->k:Lcom/google/android/gms/internal/play_billing/v3;

    .line 109
    sget v4, Lcom/google/android/gms/internal/play_billing/s3;->d:I

    if-eqz v1, :cond_34

    .line 110
    instance-of v4, v12, Ljava/util/RandomAccess;

    if-eqz v4, :cond_32

    .line 111
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move/from16 p3, v2

    move-object/from16 v2, v16

    move/from16 v5, v19

    move v6, v5

    :goto_20
    if-ge v5, v4, :cond_31

    .line 112
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/f2;->a(I)Z

    move-result v20

    if-eqz v20, :cond_30

    if-eq v5, v6, :cond_2f

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 115
    :cond_30
    invoke-static {v7, v9, v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->u(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/v3;)Ljava/lang/Object;

    move-result-object v2

    :goto_21
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_20

    :cond_31
    if-eq v6, v4, :cond_35

    .line 116
    invoke-interface {v12, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_23

    :cond_32
    move/from16 p3, v2

    .line 117
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    :cond_33
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 119
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/play_billing/f2;->a(I)Z

    move-result v5

    if-nez v5, :cond_33

    .line 120
    invoke-static {v7, v9, v4, v2, v3}, Lcom/google/android/gms/internal/play_billing/s3;->u(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/v3;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    :cond_34
    move/from16 p3, v2

    :cond_35
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v7, v13

    :goto_24
    move-object v13, v10

    move v10, v8

    move v8, v9

    move v9, v11

    move-object/from16 v11, v30

    goto/16 :goto_33

    :cond_36
    move-object/from16 v0, p0

    move v9, v11

    move v7, v13

    :goto_25
    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    goto/16 :goto_32

    :pswitch_10
    move-object v10, v1

    move/from16 v11, v20

    move/from16 v8, v31

    move/from16 v9, v32

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3e

    .line 122
    invoke-static {v15, v13, v10}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v1, :cond_3d

    .line 123
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_3c

    if-nez v1, :cond_37

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/play_billing/e1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 125
    :cond_37
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/e1;->t([BII)Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/2addr v0, v1

    :goto_27
    if-ge v0, v14, :cond_3b

    .line 126
    invoke-static {v15, v0, v10}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ne v11, v2, :cond_3b

    .line 127
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v1, :cond_3a

    .line 128
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_39

    if-nez v1, :cond_38

    .line 129
    sget-object v1, Lcom/google/android/gms/internal/play_billing/e1;->b:Lcom/google/android/gms/internal/play_billing/e1;

    .line 130
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 131
    :cond_38
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/e1;->t([BII)Lcom/google/android/gms/internal/play_billing/e1;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 132
    :cond_39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v0

    throw v0

    .line 133
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v0

    throw v0

    :cond_3b
    move v1, v0

    move v7, v13

    move-object/from16 v0, p0

    goto :goto_24

    .line 134
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v0

    throw v0

    .line 135
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v0

    throw v0

    :pswitch_11
    move-object v10, v1

    move/from16 v11, v20

    move/from16 v8, v31

    move/from16 v9, v32

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3e

    move-object/from16 v0, p0

    .line 136
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v1

    move v3, v8

    move-object/from16 v4, v30

    move-object v8, v1

    move v1, v9

    move v9, v11

    move-object v2, v10

    move-object/from16 v10, p2

    move v5, v11

    move v11, v13

    move-object v6, v12

    move/from16 v12, p4

    move v7, v13

    move-object v13, v6

    move v6, v14

    move-object/from16 v14, p6

    .line 137
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/s0;->e(Lcom/google/android/gms/internal/play_billing/q3;I[BIILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v8

    move-object v13, v2

    move v10, v3

    move-object v11, v4

    move v9, v5

    move v14, v6

    move/from16 v33, v8

    move v8, v1

    move/from16 v1, v33

    goto/16 :goto_33

    :cond_3e
    move-object/from16 v0, p0

    move v7, v13

    move-object v13, v10

    move v10, v8

    move v8, v9

    move v9, v11

    move-object/from16 v11, v30

    goto/16 :goto_32

    :pswitch_12
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v4, v30

    move/from16 v3, v31

    const/4 v10, 0x2

    move-object v13, v1

    move/from16 v1, v32

    if-ne v2, v10, :cond_4a

    const-wide/32 v10, 0x20000000

    and-long/2addr v5, v10

    cmp-long v2, v5, v23

    if-nez v2, :cond_43

    .line 138
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v5, :cond_42

    if-nez v5, :cond_3f

    .line 139
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 140
    :cond_3f
    new-instance v6, Ljava/lang/String;

    .line 141
    sget-object v10, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v15, v2, v5, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v2, v5

    :goto_29
    if-ge v2, v14, :cond_56

    .line 143
    invoke-static {v15, v2, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ne v9, v6, :cond_56

    .line 144
    invoke-static {v15, v5, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v5, :cond_41

    if-nez v5, :cond_40

    .line 145
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_40
    new-instance v6, Ljava/lang/String;

    .line 146
    sget-object v10, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v15, v2, v5, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 147
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 148
    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 149
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 150
    :cond_43
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v5, :cond_49

    if-nez v5, :cond_44

    .line 151
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_44
    add-int v6, v2, v5

    .line 152
    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/play_billing/l4;->e([BII)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 153
    new-instance v10, Ljava/lang/String;

    .line 154
    sget-object v11, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 155
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    move v2, v6

    :goto_2b
    if-ge v2, v14, :cond_56

    .line 156
    invoke-static {v15, v2, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ne v9, v6, :cond_56

    .line 157
    invoke-static {v15, v5, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ltz v5, :cond_47

    if-nez v5, :cond_45

    .line 158
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_45
    add-int v6, v2, v5

    .line 159
    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/play_billing/l4;->e([BII)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 160
    new-instance v10, Ljava/lang/String;

    .line 161
    sget-object v11, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 162
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 163
    :cond_46
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 164
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 165
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 166
    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->d()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_4a
    :goto_2c
    move v8, v1

    move v10, v3

    move-object v11, v4

    goto/16 :goto_32

    :pswitch_13
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v4, v30

    move/from16 v3, v31

    const/4 v5, 0x2

    move-object v13, v1

    move/from16 v1, v32

    if-ne v2, v5, :cond_4d

    .line 167
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 168
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v5, v2

    if-lt v2, v5, :cond_4c

    if-ne v2, v5, :cond_4b

    goto/16 :goto_2f

    .line 169
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 170
    :cond_4c
    invoke-static {v15, v2, v13}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    .line 171
    throw v16

    :cond_4d
    if-eqz v2, :cond_4e

    goto :goto_2c

    .line 172
    :cond_4e
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 173
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    iget-wide v1, v13, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 174
    throw v16

    :pswitch_14
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v4, v30

    move/from16 v3, v31

    const/4 v5, 0x2

    move-object v13, v1

    move/from16 v1, v32

    if-ne v2, v5, :cond_51

    .line 175
    check-cast v12, Lcom/google/android/gms/internal/play_billing/c2;

    .line 176
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v5, v2

    :goto_2d
    if-ge v2, v5, :cond_4f

    .line 177
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_2d

    :cond_4f
    if-ne v2, v5, :cond_50

    goto :goto_2f

    .line 178
    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_51
    const/4 v5, 0x5

    if-ne v2, v5, :cond_4a

    add-int/lit8 v2, v7, 0x4

    .line 179
    check-cast v12, Lcom/google/android/gms/internal/play_billing/c2;

    .line 180
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    :goto_2e
    if-ge v2, v14, :cond_56

    .line 181
    invoke-static {v15, v2, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ne v9, v6, :cond_56

    .line 182
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/play_billing/c2;->x(I)V

    add-int/lit8 v2, v5, 0x4

    goto :goto_2e

    :pswitch_15
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v4, v30

    move/from16 v3, v31

    const/4 v5, 0x2

    move-object v13, v1

    move/from16 v1, v32

    if-ne v2, v5, :cond_54

    .line 183
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 184
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v5, v2

    if-lt v2, v5, :cond_53

    if-ne v2, v5, :cond_52

    :goto_2f
    goto :goto_30

    .line 185
    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 186
    :cond_53
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    throw v16

    :cond_54
    const/4 v5, 0x1

    if-eq v2, v5, :cond_55

    goto/16 :goto_2c

    .line 187
    :cond_55
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 188
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    throw v16

    :pswitch_16
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v4, v30

    move/from16 v3, v31

    const/4 v5, 0x2

    move-object v13, v1

    move/from16 v1, v32

    if-ne v2, v5, :cond_57

    .line 189
    invoke-static {v15, v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/s0;->f([BILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    :cond_56
    :goto_30
    move v8, v1

    move v1, v2

    move v10, v3

    move-object v11, v4

    goto/16 :goto_33

    :cond_57
    if-nez v2, :cond_4a

    move v8, v1

    move v1, v9

    move-object/from16 v2, p2

    move v10, v3

    move v3, v7

    move-object v11, v4

    move/from16 v4, p4

    move-object v5, v12

    move-object/from16 v6, p6

    .line 190
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->j(I[BIILcom/google/android/gms/internal/play_billing/i2;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    goto/16 :goto_33

    :pswitch_17
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5a

    .line 191
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 192
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_59

    if-ne v1, v2, :cond_58

    goto/16 :goto_33

    .line 193
    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 194
    :cond_59
    invoke-static {v15, v1, v13}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    .line 195
    throw v16

    :cond_5a
    if-eqz v2, :cond_5b

    goto/16 :goto_32

    .line 196
    :cond_5b
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 197
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    iget-wide v1, v13, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 198
    throw v16

    :pswitch_18
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5e

    .line 199
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 200
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_5d

    if-ne v1, v2, :cond_5c

    goto/16 :goto_33

    .line 201
    :cond_5c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 202
    :cond_5d
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 203
    throw v16

    :cond_5e
    const/4 v1, 0x5

    if-eq v2, v1, :cond_5f

    goto :goto_32

    .line 204
    :cond_5f
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 205
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 206
    throw v16

    :pswitch_19
    move v7, v13

    move/from16 v9, v20

    move-object/from16 v11, v30

    move/from16 v10, v31

    move/from16 v8, v32

    move-object v13, v1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_62

    .line 207
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 208
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_61

    if-ne v1, v2, :cond_60

    goto :goto_33

    .line 209
    :cond_60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->g()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 210
    :cond_61
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 211
    throw v16

    :cond_62
    const/4 v1, 0x1

    if-eq v2, v1, :cond_63

    goto :goto_32

    .line 212
    :cond_63
    invoke-static {v12}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 213
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 214
    throw v16

    :goto_31
    if-ge v1, v14, :cond_65

    .line 215
    invoke-static {v15, v1, v13}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v3

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-ne v9, v2, :cond_65

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 216
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->c(Lcom/google/android/gms/internal/play_billing/q3;[BIIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    .line 217
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_64
    :goto_32
    move v1, v7

    :cond_65
    :goto_33
    if-eq v1, v7, :cond_66

    move-object/from16 v7, p1

    move v2, v8

    move v4, v9

    move v3, v10

    move-object v12, v13

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v5, v21

    goto/16 :goto_15

    :cond_66
    move-object/from16 v7, p1

    move v3, v1

    move v1, v8

    move v4, v9

    move-object/from16 v30, v11

    move-object v5, v13

    move-object v6, v15

    move/from16 v8, p5

    goto/16 :goto_42

    :cond_67
    move v7, v13

    move/from16 v12, v30

    move-object v13, v1

    move-object/from16 v30, v5

    move v1, v6

    move/from16 v5, v20

    const/16 v6, 0x32

    if-ne v4, v6, :cond_6a

    const/4 v6, 0x2

    if-ne v2, v6, :cond_69

    .line 218
    sget-object v2, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 219
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->L(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p1

    .line 220
    invoke-virtual {v2, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 221
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/play_billing/z2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z2;->f()Z

    move-result v4

    if-nez v4, :cond_68

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/z2;->a()Lcom/google/android/gms/internal/play_billing/z2;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z2;->b()Lcom/google/android/gms/internal/play_billing/z2;

    move-result-object v4

    .line 223
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/a3;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v2, v7, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    :cond_68
    invoke-static {v1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 226
    throw v16

    :cond_69
    move v6, v7

    move-object/from16 v7, p1

    :goto_34
    move/from16 v8, p5

    move v10, v1

    move v1, v3

    move v4, v5

    move v3, v6

    move-object v5, v13

    goto/16 :goto_4

    :cond_6a
    move v6, v7

    move-object/from16 v7, p1

    add-int/lit8 v20, v1, 0x2

    sget-object v13, Lcom/google/android/gms/internal/play_billing/i3;->p:Lsun/misc/Unsafe;

    .line 227
    aget v9, v9, v20

    const v15, 0xfffff

    and-int/2addr v9, v15

    int-to-long v14, v9

    packed-switch v4, :pswitch_data_2

    :goto_35
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    goto/16 :goto_40

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6b

    and-int/lit8 v2, v5, -0x8

    or-int/lit8 v13, v2, 0x4

    .line 228
    invoke-direct {v0, v7, v3, v1}, Lcom/google/android/gms/internal/play_billing/i3;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 229
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p2

    move v11, v6

    move/from16 v12, p4

    move-object/from16 v4, p6

    move/from16 v15, p4

    move-object/from16 v14, p6

    .line 230
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/s0;->l(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;[BIIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v8

    .line 231
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/i3;->p(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v20, v1

    move v1, v3

    move v9, v6

    move v2, v8

    move-object/from16 v6, p2

    goto/16 :goto_39

    :cond_6b
    move/from16 v15, p4

    goto :goto_35

    :pswitch_1b
    move/from16 v9, p4

    move-object/from16 v4, p6

    if-nez v2, :cond_6c

    move-object/from16 v8, p2

    const v12, 0xfffff

    .line 232
    invoke-static {v8, v6, v4}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    move-object/from16 p3, v13

    iget-wide v12, v4, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 233
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/i1;->b(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-virtual {v13, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v13, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_38

    :cond_6c
    move/from16 v20, v1

    move v1, v3

    move v9, v6

    move-object/from16 v6, p2

    goto/16 :goto_3b

    :pswitch_1c
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v4, p6

    if-nez v2, :cond_6f

    .line 235
    invoke-static {v8, v6, v4}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v12, v4, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 236
    invoke-static {v12}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    invoke-virtual {v13, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_38

    :pswitch_1d
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v4, p6

    if-nez v2, :cond_6f

    .line 238
    invoke-static {v8, v6, v4}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v12, v4, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    move/from16 p3, v2

    .line 239
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->J(I)Lcom/google/android/gms/internal/play_billing/f2;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 240
    invoke-interface {v2, v12}, Lcom/google/android/gms/internal/play_billing/f2;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_36

    .line 241
    :cond_6d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i3;->z(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w3;

    move-result-object v2

    int-to-long v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lcom/google/android/gms/internal/play_billing/w3;->j(ILjava/lang/Object;)V

    goto :goto_37

    .line 242
    :cond_6e
    :goto_36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v7, v10, v11, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 243
    invoke-virtual {v13, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_37
    move/from16 v2, p3

    goto :goto_38

    :pswitch_1e
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v4, p6

    const/4 v12, 0x2

    if-ne v2, v12, :cond_6f

    .line 244
    invoke-static {v8, v6, v4}, Lcom/google/android/gms/internal/play_billing/s0;->a([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget-object v12, v4, Lcom/google/android/gms/internal/play_billing/r0;->c:Ljava/lang/Object;

    .line 245
    invoke-virtual {v13, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 246
    invoke-virtual {v13, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_38
    move/from16 v20, v1

    move v1, v3

    move v9, v6

    move-object v6, v8

    :goto_39
    move/from16 v33, v5

    move-object v5, v4

    move/from16 v4, v33

    goto/16 :goto_41

    :cond_6f
    move/from16 v20, v1

    move v1, v3

    move v9, v6

    goto :goto_3a

    :pswitch_1f
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v4, p6

    const/4 v12, 0x2

    if-ne v2, v12, :cond_70

    .line 247
    invoke-direct {v0, v7, v3, v1}, Lcom/google/android/gms/internal/play_billing/i3;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v10

    .line 248
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/i3;->K(I)Lcom/google/android/gms/internal/play_billing/q3;

    move-result-object v2

    move v11, v1

    move-object v1, v10

    move v12, v3

    move-object/from16 v3, p2

    move-object v13, v4

    move v4, v6

    move v14, v5

    move/from16 v5, p4

    move v9, v6

    move-object/from16 v15, v30

    move-object/from16 v6, p6

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/q3;[BIILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    .line 250
    invoke-direct {v0, v7, v12, v11, v10}, Lcom/google/android/gms/internal/play_billing/i3;->p(Ljava/lang/Object;IILjava/lang/Object;)V

    move v2, v1

    move-object v6, v8

    move/from16 v20, v11

    move v1, v12

    move-object v5, v13

    move v4, v14

    goto/16 :goto_41

    :cond_70
    move v9, v6

    move/from16 v20, v1

    move v1, v3

    :goto_3a
    move-object v6, v8

    :goto_3b
    move/from16 v33, v5

    move-object v5, v4

    move/from16 v4, v33

    goto/16 :goto_40

    :pswitch_20
    move/from16 v20, v1

    move v1, v3

    move v3, v5

    move v9, v6

    const/4 v4, 0x2

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-ne v2, v4, :cond_75

    .line 251
    invoke-static {v6, v9, v5}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v4, v5, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    if-nez v4, :cond_71

    .line 252
    invoke-virtual {v13, v7, v10, v11, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3d

    :cond_71
    and-int v8, v12, v22

    add-int v12, v2, v4

    if-eqz v8, :cond_73

    .line 253
    invoke-static {v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/l4;->e([BII)Z

    move-result v8

    if-eqz v8, :cond_72

    goto :goto_3c

    .line 254
    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->c()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    .line 255
    :cond_73
    :goto_3c
    new-instance v8, Ljava/lang/String;

    move/from16 p3, v12

    .line 256
    sget-object v12, Lcom/google/android/gms/internal/play_billing/j2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v2, v4, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 257
    invoke-virtual {v13, v7, v10, v11, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, p3

    .line 258
    :goto_3d
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v3

    goto/16 :goto_41

    :pswitch_21
    move/from16 v20, v1

    move v1, v3

    move v3, v5

    move v9, v6

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-nez v2, :cond_75

    .line 259
    invoke-static {v6, v9, v5}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    move/from16 p3, v2

    move v4, v3

    iget-wide v2, v5, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    cmp-long v2, v2, v23

    if-eqz v2, :cond_74

    const/16 v29, 0x1

    goto :goto_3e

    :cond_74
    move/from16 v29, v19

    .line 260
    :goto_3e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v7, v10, v11, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3f

    :cond_75
    move v4, v3

    goto/16 :goto_40

    :pswitch_22
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    const/4 v3, 0x5

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-ne v2, v3, :cond_76

    add-int/lit8 v2, v9, 0x4

    .line 262
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 263
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_23
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    const/4 v3, 0x1

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-ne v2, v3, :cond_76

    add-int/lit8 v2, v9, 0x8

    .line 264
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_24
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-nez v2, :cond_76

    .line 266
    invoke-static {v6, v9, v5}, Lcom/google/android/gms/internal/play_billing/s0;->h([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/play_billing/r0;->a:I

    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 268
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_41

    :pswitch_25
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-nez v2, :cond_76

    .line 269
    invoke-static {v6, v9, v5}, Lcom/google/android/gms/internal/play_billing/s0;->k([BILcom/google/android/gms/internal/play_billing/r0;)I

    move-result v2

    move/from16 p3, v2

    iget-wide v2, v5, Lcom/google/android/gms/internal/play_billing/r0;->b:J

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v7, v10, v11, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 271
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3f
    move/from16 v2, p3

    goto :goto_41

    :pswitch_26
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    const/4 v3, 0x5

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-ne v2, v3, :cond_76

    add-int/lit8 v2, v9, 0x4

    .line 272
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/s0;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 273
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v13, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 274
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :pswitch_27
    move/from16 v20, v1

    move v1, v3

    move v4, v5

    move v9, v6

    const/4 v3, 0x1

    move-object/from16 v6, p2

    move-object/from16 v5, p6

    if-ne v2, v3, :cond_76

    add-int/lit8 v2, v9, 0x8

    .line 275
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/s0;->n([BI)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    .line 276
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v13, v7, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 277
    invoke-virtual {v13, v7, v14, v15, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :cond_76
    :goto_40
    move v2, v9

    :goto_41
    if-eq v2, v9, :cond_77

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v5

    move-object v15, v6

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v3, v20

    move/from16 v5, v21

    move-object/from16 v11, v30

    move/from16 v33, v2

    move v2, v1

    move/from16 v1, v33

    goto/16 :goto_0

    :cond_77
    move/from16 v8, p5

    move v3, v2

    move/from16 v10, v20

    :goto_42
    if-ne v4, v8, :cond_78

    if-eqz v8, :cond_78

    move v1, v3

    move/from16 v6, v17

    move/from16 v5, v21

    move-object/from16 v13, v30

    goto/16 :goto_44

    .line 278
    :cond_78
    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/i3;->f:Z

    if-eqz v2, :cond_79

    iget-object v2, v5, Lcom/google/android/gms/internal/play_billing/r0;->d:Lcom/google/android/gms/internal/play_billing/q1;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/q1;->c:Lcom/google/android/gms/internal/play_billing/q1;

    if-eq v2, v9, :cond_79

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/i3;->e:Lcom/google/android/gms/internal/play_billing/f3;

    .line 279
    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/play_billing/q1;->b(Lcom/google/android/gms/internal/play_billing/f3;I)Lcom/google/android/gms/internal/play_billing/a2;

    .line 280
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i3;->z(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w3;

    move-result-object v9

    move v11, v1

    move v1, v4

    move-object/from16 v2, p2

    move v12, v4

    move-object/from16 v13, v30

    move/from16 v4, p4

    move-object v5, v9

    move-object/from16 v6, p6

    .line 281
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->g(I[BIILcom/google/android/gms/internal/play_billing/w3;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    goto :goto_43

    :cond_79
    move v11, v1

    move v12, v4

    move-object/from16 v13, v30

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i3;->z(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/w3;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 283
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/s0;->g(I[BIILcom/google/android/gms/internal/play_billing/w3;Lcom/google/android/gms/internal/play_billing/r0;)I

    move-result v1

    :goto_43
    move-object/from16 v15, p2

    move/from16 v14, p4

    move v3, v10

    move v2, v11

    move v4, v12

    move-object v11, v13

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v5, v21

    move-object/from16 v12, p6

    move v13, v8

    goto/16 :goto_0

    :cond_7a
    move/from16 v21, v5

    move/from16 v17, v6

    move v8, v13

    move-object v13, v11

    :goto_44
    const v2, 0xfffff

    if-eq v6, v2, :cond_7b

    int-to-long v9, v6

    .line 284
    invoke-virtual {v13, v7, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7b
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/i3;->h:I

    :goto_45
    iget v5, v0, Lcom/google/android/gms/internal/play_billing/i3;->i:I

    if-ge v3, v5, :cond_7e

    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/i3;->g:[I

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/i3;->a:[I

    .line 285
    aget v5, v5, v3

    .line 286
    aget v6, v6, v5

    .line 287
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/i3;->H(I)I

    move-result v6

    and-int/2addr v6, v2

    int-to-long v9, v6

    .line 288
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/f4;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7c

    goto :goto_46

    .line 289
    :cond_7c
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/i3;->J(I)Lcom/google/android/gms/internal/play_billing/f2;

    move-result-object v9

    if-nez v9, :cond_7d

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 290
    :cond_7d
    check-cast v6, Lcom/google/android/gms/internal/play_billing/z2;

    .line 291
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/i3;->L(I)Ljava/lang/Object;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 293
    throw v16

    :cond_7e
    if-nez v8, :cond_80

    move/from16 v2, p4

    if-ne v1, v2, :cond_7f

    goto :goto_47

    .line 294
    :cond_7f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->e()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

    :cond_80
    move/from16 v2, p4

    if-gt v1, v2, :cond_81

    if-ne v4, v8, :cond_81

    :goto_47
    return v1

    .line 295
    :cond_81
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->e()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    throw v1

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
