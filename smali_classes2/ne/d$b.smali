.class public final Lne/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lne/d$b;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v1, p3, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static {p2, v2, v5, v3, v4}, Lrd/n;->M(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return p3

    .line 23
    :cond_0
    move p3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method


# virtual methods
.method public final b(Lne/s;)Lne/d;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "headers"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lne/s;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v5, 0x1

    .line 15
    move v8, v5

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, -0x1

    .line 21
    const/4 v13, -0x1

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, -0x1

    .line 27
    .line 28
    const/16 v18, -0x1

    .line 29
    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    const/16 v21, 0x0

    .line 35
    .line 36
    :goto_0
    if-ge v7, v2, :cond_12

    .line 37
    .line 38
    add-int/lit8 v22, v7, 0x1

    .line 39
    .line 40
    invoke-virtual {v1, v7}, Lne/s;->i(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v7}, Lne/s;->m(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v6, "Cache-Control"

    .line 49
    .line 50
    invoke-static {v3, v6, v5}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move-object v9, v7

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    const-string v6, "Pragma"

    .line 62
    .line 63
    invoke-static {v3, v6, v5}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_11

    .line 68
    .line 69
    :goto_1
    const/4 v8, 0x0

    .line 70
    :goto_2
    const/4 v3, 0x0

    .line 71
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-ge v3, v6, :cond_11

    .line 76
    .line 77
    const-string v6, "=,;"

    .line 78
    .line 79
    invoke-direct {v0, v7, v6, v3}, Lne/d$b;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 88
    .line 89
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eq v6, v5, :cond_4

    .line 105
    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const/16 v1, 0x2c

    .line 111
    .line 112
    if-eq v5, v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v5, 0x3b

    .line 119
    .line 120
    if-ne v1, v5, :cond_2

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 124
    .line 125
    invoke-static {v7, v6}, Loe/d;->C(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-ge v1, v5, :cond_3

    .line 134
    .line 135
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const/16 v6, 0x22

    .line 140
    .line 141
    if-ne v5, v6, :cond_3

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    const/16 v25, 0x22

    .line 146
    .line 147
    const/16 v27, 0x0

    .line 148
    .line 149
    const/16 v28, 0x4

    .line 150
    .line 151
    const/16 v29, 0x0

    .line 152
    .line 153
    move-object/from16 v24, v7

    .line 154
    .line 155
    move/from16 v26, v1

    .line 156
    .line 157
    invoke-static/range {v24 .. v29}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v4, 0x1

    .line 169
    add-int/2addr v5, v4

    .line 170
    goto :goto_5

    .line 171
    :cond_3
    const-string v5, ",;"

    .line 172
    .line 173
    invoke-direct {v0, v7, v5, v1}, Lne/d$b;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto :goto_5

    .line 193
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 194
    .line 195
    move v5, v6

    .line 196
    const/4 v1, 0x0

    .line 197
    :goto_5
    const-string v4, "no-cache"

    .line 198
    .line 199
    const/4 v6, 0x1

    .line 200
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_5

    .line 205
    .line 206
    move-object/from16 v1, p1

    .line 207
    .line 208
    move v3, v5

    .line 209
    move v5, v6

    .line 210
    move v10, v5

    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :cond_5
    const-string v4, "no-store"

    .line 214
    .line 215
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_6

    .line 220
    .line 221
    move-object/from16 v1, p1

    .line 222
    .line 223
    move v3, v5

    .line 224
    move v5, v6

    .line 225
    move v11, v5

    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :cond_6
    const-string v4, "max-age"

    .line 229
    .line 230
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_8

    .line 235
    .line 236
    const/4 v4, -0x1

    .line 237
    invoke-static {v1, v4}, Loe/d;->U(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    :cond_7
    :goto_6
    move-object/from16 v1, p1

    .line 242
    .line 243
    move v3, v5

    .line 244
    move v5, v6

    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_8
    const-string v4, "s-maxage"

    .line 248
    .line 249
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_9

    .line 254
    .line 255
    const/4 v4, -0x1

    .line 256
    invoke-static {v1, v4}, Loe/d;->U(Ljava/lang/String;I)I

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    goto :goto_6

    .line 261
    :cond_9
    const-string v4, "private"

    .line 262
    .line 263
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_a

    .line 268
    .line 269
    move-object/from16 v1, p1

    .line 270
    .line 271
    move v3, v5

    .line 272
    move v5, v6

    .line 273
    move v14, v5

    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_a
    const-string v4, "public"

    .line 277
    .line 278
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_b

    .line 283
    .line 284
    move-object/from16 v1, p1

    .line 285
    .line 286
    move v3, v5

    .line 287
    move v5, v6

    .line 288
    move v15, v5

    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_b
    const-string v4, "must-revalidate"

    .line 292
    .line 293
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    move v3, v5

    .line 302
    move v5, v6

    .line 303
    move/from16 v16, v5

    .line 304
    .line 305
    goto/16 :goto_3

    .line 306
    .line 307
    :cond_c
    const-string v4, "max-stale"

    .line 308
    .line 309
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_d

    .line 314
    .line 315
    const v3, 0x7fffffff

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v3}, Loe/d;->U(Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v17

    .line 322
    goto :goto_6

    .line 323
    :cond_d
    const-string v4, "min-fresh"

    .line 324
    .line 325
    invoke-static {v4, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_e

    .line 330
    .line 331
    const/4 v4, -0x1

    .line 332
    invoke-static {v1, v4}, Loe/d;->U(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v18

    .line 336
    goto :goto_6

    .line 337
    :cond_e
    const/4 v4, -0x1

    .line 338
    const-string v1, "only-if-cached"

    .line 339
    .line 340
    invoke-static {v1, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_f

    .line 345
    .line 346
    move-object/from16 v1, p1

    .line 347
    .line 348
    move v3, v5

    .line 349
    move v5, v6

    .line 350
    move/from16 v19, v5

    .line 351
    .line 352
    goto/16 :goto_3

    .line 353
    .line 354
    :cond_f
    const-string v1, "no-transform"

    .line 355
    .line 356
    invoke-static {v1, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_10

    .line 361
    .line 362
    move-object/from16 v1, p1

    .line 363
    .line 364
    move v3, v5

    .line 365
    move v5, v6

    .line 366
    move/from16 v20, v5

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_10
    const-string v1, "immutable"

    .line 371
    .line 372
    invoke-static {v1, v3, v6}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_7

    .line 377
    .line 378
    move-object/from16 v1, p1

    .line 379
    .line 380
    move v3, v5

    .line 381
    move v5, v6

    .line 382
    move/from16 v21, v5

    .line 383
    .line 384
    goto/16 :goto_3

    .line 385
    .line 386
    :cond_11
    const/4 v4, -0x1

    .line 387
    move-object/from16 v1, p1

    .line 388
    .line 389
    move/from16 v7, v22

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_12
    if-nez v8, :cond_13

    .line 394
    .line 395
    const/16 v22, 0x0

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_13
    move-object/from16 v22, v9

    .line 399
    .line 400
    :goto_7
    new-instance v1, Lne/d;

    .line 401
    .line 402
    const/16 v23, 0x0

    .line 403
    .line 404
    move-object v9, v1

    .line 405
    invoke-direct/range {v9 .. v23}, Lne/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 406
    .line 407
    .line 408
    return-object v1
.end method
