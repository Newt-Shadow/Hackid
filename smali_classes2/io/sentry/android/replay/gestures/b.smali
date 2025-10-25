.class public final Lio/sentry/android/replay/gestures/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/gestures/b$a;
    }
.end annotation


# static fields
.field public static final e:Lio/sentry/android/replay/gestures/b$a;

.field public static final f:I


# instance fields
.field private final a:Lio/sentry/transport/p;

.field private final b:Ljava/util/LinkedHashMap;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/gestures/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/gestures/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/gestures/b;->e:Lio/sentry/android/replay/gestures/b$a;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/gestures/b;->f:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/p;)V
    .locals 1

    .line 1
    const-string v0, "dateProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/android/replay/gestures/b;->a:Lio/sentry/transport/p;

    .line 10
    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lio/sentry/android/replay/u;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "event"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "recorderConfig"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    const/4 v5, -0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v2, :cond_c

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-eq v2, v8, :cond_a

    .line 30
    .line 31
    const/4 v9, 0x2

    .line 32
    if-eq v2, v9, :cond_1

    .line 33
    .line 34
    const/4 v8, 0x3

    .line 35
    if-eq v2, v8, :cond_0

    .line 36
    .line 37
    const/4 v8, 0x5

    .line 38
    if-eq v2, v8, :cond_c

    .line 39
    .line 40
    const/4 v4, 0x6

    .line 41
    if-eq v2, v4, :cond_a

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    iget-object v2, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lio/sentry/rrweb/e;

    .line 51
    .line 52
    invoke-direct {v2}, Lio/sentry/rrweb/e;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, Lio/sentry/android/replay/gestures/b;->a:Lio/sentry/transport/p;

    .line 56
    .line 57
    invoke-interface {v4}, Lio/sentry/transport/p;->a()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {v2, v4, v5}, Lio/sentry/rrweb/b;->f(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->e()F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    mul-float/2addr v4, v5

    .line 73
    invoke-virtual {v2, v4}, Lio/sentry/rrweb/e;->u(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->f()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    mul-float/2addr v1, v3

    .line 85
    invoke-virtual {v2, v1}, Lio/sentry/rrweb/e;->v(F)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v7}, Lio/sentry/rrweb/e;->q(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v7}, Lio/sentry/rrweb/e;->s(I)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lio/sentry/rrweb/e$b;->TouchCancel:Lio/sentry/rrweb/e$b;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lio/sentry/rrweb/e;->r(Lio/sentry/rrweb/e$b;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_1
    iget-object v2, v0, Lio/sentry/android/replay/gestures/b;->a:Lio/sentry/transport/p;

    .line 106
    .line 107
    invoke-interface {v2}, Lio/sentry/transport/p;->a()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    iget-wide v11, v0, Lio/sentry/android/replay/gestures/b;->d:J

    .line 112
    .line 113
    const-wide/16 v13, 0x0

    .line 114
    .line 115
    cmp-long v2, v11, v13

    .line 116
    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    const/16 v2, 0x32

    .line 120
    .line 121
    int-to-long v7, v2

    .line 122
    add-long/2addr v11, v7

    .line 123
    cmp-long v2, v11, v9

    .line 124
    .line 125
    if-lez v2, :cond_2

    .line 126
    .line 127
    return-object v6

    .line 128
    :cond_2
    iput-wide v9, v0, Lio/sentry/android/replay/gestures/b;->d:J

    .line 129
    .line 130
    iget-object v2, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v7, "currentPositions.keys"

    .line 137
    .line 138
    invoke-static {v2, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_5

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Ljava/lang/Integer;

    .line 156
    .line 157
    const-string v8, "pId"

    .line 158
    .line 159
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-ne v8, v5, :cond_3

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    iget-wide v11, v0, Lio/sentry/android/replay/gestures/b;->c:J

    .line 174
    .line 175
    cmp-long v11, v11, v13

    .line 176
    .line 177
    if-nez v11, :cond_4

    .line 178
    .line 179
    iput-wide v9, v0, Lio/sentry/android/replay/gestures/b;->c:J

    .line 180
    .line 181
    :cond_4
    iget-object v11, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v7}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    check-cast v7, Ljava/util/Collection;

    .line 191
    .line 192
    new-instance v11, Lio/sentry/rrweb/f$b;

    .line 193
    .line 194
    invoke-direct {v11}, Lio/sentry/rrweb/f$b;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->e()F

    .line 202
    .line 203
    .line 204
    move-result v17

    .line 205
    mul-float v12, v12, v17

    .line 206
    .line 207
    invoke-virtual {v11, v12}, Lio/sentry/rrweb/f$b;->i(F)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->f()F

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    mul-float/2addr v8, v12

    .line 219
    invoke-virtual {v11, v8}, Lio/sentry/rrweb/f$b;->j(F)V

    .line 220
    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    invoke-virtual {v11, v8}, Lio/sentry/rrweb/f$b;->f(I)V

    .line 224
    .line 225
    .line 226
    iget-wide v5, v0, Lio/sentry/android/replay/gestures/b;->c:J

    .line 227
    .line 228
    sub-long v5, v9, v5

    .line 229
    .line 230
    invoke-virtual {v11, v5, v6}, Lio/sentry/rrweb/f$b;->g(J)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    :goto_1
    const/4 v5, -0x1

    .line 237
    const/4 v6, 0x0

    .line 238
    goto :goto_0

    .line 239
    :cond_5
    iget-wide v1, v0, Lio/sentry/android/replay/gestures/b;->c:J

    .line 240
    .line 241
    sub-long v1, v9, v1

    .line 242
    .line 243
    const-wide/16 v5, 0x1f4

    .line 244
    .line 245
    cmp-long v3, v1, v5

    .line 246
    .line 247
    if-lez v3, :cond_9

    .line 248
    .line 249
    new-instance v6, Ljava/util/ArrayList;

    .line 250
    .line 251
    iget-object v3, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    iget-object v3, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 261
    .line 262
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_8

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    check-cast v5, Ljava/util/Map$Entry;

    .line 281
    .line 282
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    check-cast v7, Ljava/lang/Number;

    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    const/4 v11, 0x1

    .line 303
    xor-int/2addr v8, v11

    .line 304
    if-eqz v8, :cond_6

    .line 305
    .line 306
    new-instance v8, Lio/sentry/rrweb/f;

    .line 307
    .line 308
    invoke-direct {v8}, Lio/sentry/rrweb/f;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v9, v10}, Lio/sentry/rrweb/b;->f(J)V

    .line 312
    .line 313
    .line 314
    new-instance v12, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-static {v5, v4}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 317
    .line 318
    .line 319
    move-result v15

    .line 320
    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    if-eqz v15, :cond_7

    .line 332
    .line 333
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    check-cast v15, Lio/sentry/rrweb/f$b;

    .line 338
    .line 339
    invoke-virtual {v15}, Lio/sentry/rrweb/f$b;->e()J

    .line 340
    .line 341
    .line 342
    move-result-wide v16

    .line 343
    move-object/from16 p1, v5

    .line 344
    .line 345
    sub-long v4, v16, v1

    .line 346
    .line 347
    invoke-virtual {v15, v4, v5}, Lio/sentry/rrweb/f$b;->g(J)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v12, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-object/from16 v5, p1

    .line 354
    .line 355
    const/16 v4, 0xa

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_7
    invoke-virtual {v8, v12}, Lio/sentry/rrweb/f;->n(Ljava/util/List;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v8, v7}, Lio/sentry/rrweb/f;->m(I)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    iget-object v4, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 368
    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    check-cast v4, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 383
    .line 384
    .line 385
    const/16 v4, 0xa

    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_8
    iput-wide v13, v0, Lio/sentry/android/replay/gestures/b;->c:J

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_9
    const/4 v6, 0x0

    .line 392
    :goto_4
    return-object v6

    .line 393
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    const/4 v5, -0x1

    .line 406
    if-ne v4, v5, :cond_b

    .line 407
    .line 408
    const/4 v5, 0x0

    .line 409
    return-object v5

    .line 410
    :cond_b
    iget-object v5, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 411
    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    new-instance v5, Lio/sentry/rrweb/e;

    .line 420
    .line 421
    invoke-direct {v5}, Lio/sentry/rrweb/e;-><init>()V

    .line 422
    .line 423
    .line 424
    iget-object v6, v0, Lio/sentry/android/replay/gestures/b;->a:Lio/sentry/transport/p;

    .line 425
    .line 426
    invoke-interface {v6}, Lio/sentry/transport/p;->a()J

    .line 427
    .line 428
    .line 429
    move-result-wide v6

    .line 430
    invoke-virtual {v5, v6, v7}, Lio/sentry/rrweb/b;->f(J)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->e()F

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    mul-float/2addr v6, v7

    .line 442
    invoke-virtual {v5, v6}, Lio/sentry/rrweb/e;->u(F)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->f()F

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    mul-float/2addr v1, v3

    .line 454
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->v(F)V

    .line 455
    .line 456
    .line 457
    const/4 v1, 0x0

    .line 458
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->q(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v5, v2}, Lio/sentry/rrweb/e;->s(I)V

    .line 462
    .line 463
    .line 464
    sget-object v1, Lio/sentry/rrweb/e$b;->TouchEnd:Lio/sentry/rrweb/e$b;

    .line 465
    .line 466
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->r(Lio/sentry/rrweb/e$b;)V

    .line 467
    .line 468
    .line 469
    invoke-static {v5}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    goto :goto_5

    .line 474
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    const/4 v5, -0x1

    .line 487
    if-ne v4, v5, :cond_d

    .line 488
    .line 489
    const/4 v5, 0x0

    .line 490
    return-object v5

    .line 491
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    iget-object v6, v0, Lio/sentry/android/replay/gestures/b;->b:Ljava/util/LinkedHashMap;

    .line 496
    .line 497
    new-instance v7, Ljava/util/ArrayList;

    .line 498
    .line 499
    const/16 v8, 0xa

    .line 500
    .line 501
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    new-instance v5, Lio/sentry/rrweb/e;

    .line 508
    .line 509
    invoke-direct {v5}, Lio/sentry/rrweb/e;-><init>()V

    .line 510
    .line 511
    .line 512
    iget-object v6, v0, Lio/sentry/android/replay/gestures/b;->a:Lio/sentry/transport/p;

    .line 513
    .line 514
    invoke-interface {v6}, Lio/sentry/transport/p;->a()J

    .line 515
    .line 516
    .line 517
    move-result-wide v6

    .line 518
    invoke-virtual {v5, v6, v7}, Lio/sentry/rrweb/b;->f(J)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->e()F

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    mul-float/2addr v6, v7

    .line 530
    invoke-virtual {v5, v6}, Lio/sentry/rrweb/e;->u(F)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/u;->f()F

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    mul-float/2addr v1, v3

    .line 542
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->v(F)V

    .line 543
    .line 544
    .line 545
    const/4 v1, 0x0

    .line 546
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->q(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5, v2}, Lio/sentry/rrweb/e;->s(I)V

    .line 550
    .line 551
    .line 552
    sget-object v1, Lio/sentry/rrweb/e$b;->TouchStart:Lio/sentry/rrweb/e$b;

    .line 553
    .line 554
    invoke-virtual {v5, v1}, Lio/sentry/rrweb/e;->r(Lio/sentry/rrweb/e$b;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v5}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    :goto_5
    return-object v6
.end method
