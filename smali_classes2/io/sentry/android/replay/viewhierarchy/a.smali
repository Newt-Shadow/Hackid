.class public final Lio/sentry/android/replay/viewhierarchy/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/sentry/android/replay/viewhierarchy/a;

.field private static b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/viewhierarchy/a;

    invoke-direct {v0}, Lio/sentry/android/replay/viewhierarchy/a;-><init>()V

    sput-object v0, Lio/sentry/android/replay/viewhierarchy/a;->a:Lio/sentry/android/replay/viewhierarchy/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/b;IZLio/sentry/s5;)Lio/sentry/android/replay/viewhierarchy/b;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v4

    .line 26
    :goto_0
    const/4 v6, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    return-object v6

    .line 30
    :cond_1
    if-eqz p4, :cond_2

    .line 31
    .line 32
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-direct {v3, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lio/sentry/android/replay/viewhierarchy/a;->b:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    sget-object v8, Lio/sentry/android/replay/viewhierarchy/a;->b:Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v8, v6

    .line 67
    :goto_1
    invoke-static {v7, v8}, Lio/sentry/android/replay/util/j;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_5

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 84
    .line 85
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v3, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_5

    .line 94
    .line 95
    :cond_4
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-lez v7, :cond_5

    .line 100
    .line 101
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-lez v7, :cond_5

    .line 106
    .line 107
    move/from16 v16, v5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move/from16 v16, v4

    .line 111
    .line 112
    :goto_2
    if-eqz v3, :cond_6

    .line 113
    .line 114
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 115
    .line 116
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v3, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-ne v7, v5, :cond_6

    .line 125
    .line 126
    move v7, v5

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    move v7, v4

    .line 129
    :goto_3
    if-eqz v3, :cond_7

    .line 130
    .line 131
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 132
    .line 133
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v3, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-ne v8, v5, :cond_7

    .line 142
    .line 143
    move v8, v5

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    move v8, v4

    .line 146
    :goto_4
    const/4 v9, 0x0

    .line 147
    if-nez v8, :cond_10

    .line 148
    .line 149
    if-eqz v7, :cond_8

    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_8
    invoke-static/range {p1 .. p1}, Lio/sentry/android/replay/util/j;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    if-eqz v3, :cond_d

    .line 158
    .line 159
    if-eqz v16, :cond_9

    .line 160
    .line 161
    invoke-direct {v0, v1, v5, v2}, Lio/sentry/android/replay/viewhierarchy/a;->d(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/s5;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_9

    .line 166
    .line 167
    move v2, v5

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    move v2, v4

    .line 170
    :goto_5
    if-eqz v12, :cond_a

    .line 171
    .line 172
    invoke-virtual {v12, v5}, Lio/sentry/android/replay/viewhierarchy/b;->g(Z)V

    .line 173
    .line 174
    .line 175
    :cond_a
    iget v6, v15, Landroid/graphics/Rect;->left:I

    .line 176
    .line 177
    int-to-float v6, v6

    .line 178
    iget v7, v15, Landroid/graphics/Rect;->top:I

    .line 179
    .line 180
    int-to-float v7, v7

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-eqz v12, :cond_b

    .line 190
    .line 191
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    move v9, v1

    .line 196
    :cond_b
    if-eqz v2, :cond_c

    .line 197
    .line 198
    invoke-static {v3}, Lio/sentry/android/replay/util/j;->d(Landroidx/compose/ui/graphics/painter/Painter;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_c

    .line 203
    .line 204
    move v11, v5

    .line 205
    goto :goto_6

    .line 206
    :cond_c
    move v11, v4

    .line 207
    :goto_6
    new-instance v13, Lio/sentry/android/replay/viewhierarchy/b$c;

    .line 208
    .line 209
    const/4 v14, 0x1

    .line 210
    move-object v1, v13

    .line 211
    move v2, v6

    .line 212
    move v3, v7

    .line 213
    move v4, v8

    .line 214
    move v5, v10

    .line 215
    move v6, v9

    .line 216
    move/from16 v7, p3

    .line 217
    .line 218
    move-object/from16 v8, p2

    .line 219
    .line 220
    move v9, v11

    .line 221
    move v10, v14

    .line 222
    move/from16 v11, v16

    .line 223
    .line 224
    move-object v12, v15

    .line 225
    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/b$c;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_11

    .line 229
    .line 230
    :cond_d
    if-eqz v16, :cond_e

    .line 231
    .line 232
    invoke-direct {v0, v1, v4, v2}, Lio/sentry/android/replay/viewhierarchy/a;->d(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/s5;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_e

    .line 237
    .line 238
    move v10, v5

    .line 239
    goto :goto_7

    .line 240
    :cond_e
    move v10, v4

    .line 241
    :goto_7
    new-instance v13, Lio/sentry/android/replay/viewhierarchy/b$b;

    .line 242
    .line 243
    iget v2, v15, Landroid/graphics/Rect;->left:I

    .line 244
    .line 245
    int-to-float v2, v2

    .line 246
    iget v3, v15, Landroid/graphics/Rect;->top:I

    .line 247
    .line 248
    int-to-float v3, v3

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v12, :cond_f

    .line 258
    .line 259
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    move v6, v1

    .line 264
    goto :goto_8

    .line 265
    :cond_f
    move v6, v9

    .line 266
    :goto_8
    const/4 v11, 0x0

    .line 267
    move-object v1, v13

    .line 268
    move/from16 v7, p3

    .line 269
    .line 270
    move-object/from16 v8, p2

    .line 271
    .line 272
    move v9, v10

    .line 273
    move v10, v11

    .line 274
    move/from16 v11, v16

    .line 275
    .line 276
    move-object v12, v15

    .line 277
    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/b$b;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_11

    .line 281
    .line 282
    :cond_10
    :goto_9
    if-eqz v16, :cond_11

    .line 283
    .line 284
    invoke-direct {v0, v1, v4, v2}, Lio/sentry/android/replay/viewhierarchy/a;->d(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/s5;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_11

    .line 289
    .line 290
    move v13, v5

    .line 291
    goto :goto_a

    .line 292
    :cond_11
    move v13, v4

    .line 293
    :goto_a
    if-eqz v12, :cond_12

    .line 294
    .line 295
    invoke-virtual {v12, v5}, Lio/sentry/android/replay/viewhierarchy/b;->g(Z)V

    .line 296
    .line 297
    .line 298
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    if-eqz v3, :cond_13

    .line 304
    .line 305
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 306
    .line 307
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-static {v3, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 316
    .line 317
    if-eqz v3, :cond_13

    .line 318
    .line 319
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lxc/Function;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Lid/l;

    .line 324
    .line 325
    if-eqz v3, :cond_13

    .line 326
    .line 327
    invoke-interface {v3, v2}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    check-cast v3, Ljava/lang/Boolean;

    .line 332
    .line 333
    :cond_13
    invoke-static/range {p1 .. p1}, Lio/sentry/android/replay/util/j;->c(Landroidx/compose/ui/node/LayoutNode;)Lio/sentry/android/replay/util/l;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v3}, Lio/sentry/android/replay/util/l;->a()Landroidx/compose/ui/graphics/Color;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-virtual {v3}, Lio/sentry/android/replay/util/l;->b()Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-static {v2}, Lyc/m;->Q(Ljava/util/List;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    check-cast v10, Landroidx/compose/ui/text/TextLayoutResult;

    .line 350
    .line 351
    if-eqz v10, :cond_14

    .line 352
    .line 353
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    if-eqz v10, :cond_14

    .line 358
    .line 359
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    if-eqz v10, :cond_14

    .line 364
    .line 365
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    .line 366
    .line 367
    .line 368
    move-result-wide v10

    .line 369
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    goto :goto_b

    .line 374
    :cond_14
    move-object v10, v6

    .line 375
    :goto_b
    if-eqz v10, :cond_16

    .line 376
    .line 377
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 378
    .line 379
    .line 380
    move-result-wide v17

    .line 381
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 382
    .line 383
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 384
    .line 385
    .line 386
    move-result-wide v19

    .line 387
    cmp-long v11, v17, v19

    .line 388
    .line 389
    if-nez v11, :cond_15

    .line 390
    .line 391
    move v11, v5

    .line 392
    goto :goto_c

    .line 393
    :cond_15
    move v11, v4

    .line 394
    :goto_c
    if-ne v11, v5, :cond_16

    .line 395
    .line 396
    move v4, v5

    .line 397
    :cond_16
    if-eqz v4, :cond_17

    .line 398
    .line 399
    goto :goto_d

    .line 400
    :cond_17
    move-object v8, v10

    .line 401
    :goto_d
    new-instance v19, Lio/sentry/android/replay/viewhierarchy/b$d;

    .line 402
    .line 403
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    xor-int/2addr v4, v5

    .line 408
    if-eqz v4, :cond_18

    .line 409
    .line 410
    if-nez v7, :cond_18

    .line 411
    .line 412
    new-instance v4, Lio/sentry/android/replay/util/b;

    .line 413
    .line 414
    invoke-static {v2}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    .line 419
    .line 420
    invoke-direct {v4, v2, v3}, Lio/sentry/android/replay/util/b;-><init>(Landroidx/compose/ui/text/TextLayoutResult;Z)V

    .line 421
    .line 422
    .line 423
    move-object v2, v4

    .line 424
    goto :goto_e

    .line 425
    :cond_18
    move-object v2, v6

    .line 426
    :goto_e
    if-eqz v8, :cond_19

    .line 427
    .line 428
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 429
    .line 430
    .line 431
    move-result-wide v3

    .line 432
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-static {v3}, Lio/sentry/android/replay/util/n;->g(I)I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    goto :goto_f

    .line 445
    :cond_19
    move-object v3, v6

    .line 446
    :goto_f
    const/4 v4, 0x0

    .line 447
    const/4 v5, 0x0

    .line 448
    iget v6, v15, Landroid/graphics/Rect;->left:I

    .line 449
    .line 450
    int-to-float v6, v6

    .line 451
    iget v7, v15, Landroid/graphics/Rect;->top:I

    .line 452
    .line 453
    int-to-float v7, v7

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    .line 459
    .line 460
    .line 461
    move-result v10

    .line 462
    if-eqz v12, :cond_1a

    .line 463
    .line 464
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    move v11, v1

    .line 469
    goto :goto_10

    .line 470
    :cond_1a
    move v11, v9

    .line 471
    :goto_10
    const/4 v14, 0x1

    .line 472
    const/16 v17, 0xc

    .line 473
    .line 474
    const/16 v18, 0x0

    .line 475
    .line 476
    move-object/from16 v1, v19

    .line 477
    .line 478
    move v9, v10

    .line 479
    move v10, v11

    .line 480
    move/from16 v11, p3

    .line 481
    .line 482
    move-object/from16 v12, p2

    .line 483
    .line 484
    move-object/from16 v20, v15

    .line 485
    .line 486
    move/from16 v15, v16

    .line 487
    .line 488
    move-object/from16 v16, v20

    .line 489
    .line 490
    invoke-direct/range {v1 .. v18}, Lio/sentry/android/replay/viewhierarchy/b$d;-><init>(Lio/sentry/android/replay/util/m;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 491
    .line 492
    .line 493
    move-object/from16 v13, v19

    .line 494
    .line 495
    :goto_11
    return-object v13
.end method

.method private final c(Landroidx/compose/ui/node/LayoutNode;Z)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string p1, "android.widget.ImageView"

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p2, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-ne p2, v0, :cond_1

    .line 25
    .line 26
    move p2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p2, v1

    .line 29
    :goto_0
    if-nez p2, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const-string p1, "android.view.View"

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    const-string p1, "android.widget.TextView"

    .line 58
    .line 59
    :goto_3
    return-object p1
.end method

.method private final d(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/s5;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lio/sentry/android/replay/v;->a:Lio/sentry/android/replay/v;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/sentry/android/replay/v;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "unmask"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    const-string v1, "mask"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/a;->c(Landroidx/compose/ui/node/LayoutNode;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p3}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lio/sentry/u5;->m()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    return v2

    .line 60
    :cond_3
    invoke-virtual {p3}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lio/sentry/u5;->e()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method private final e(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/b;ZLio/sentry/s5;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v9, v2

    .line 27
    :goto_0
    if-ge v9, v1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v10, v3

    .line 34
    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    move-object v3, p0

    .line 37
    move-object v4, v10

    .line 38
    move-object v5, p2

    .line 39
    move v6, v9

    .line 40
    move v7, p3

    .line 41
    move-object v8, p4

    .line 42
    invoke-direct/range {v3 .. v8}, Lio/sentry/android/replay/viewhierarchy/a;->a(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/b;IZLio/sentry/s5;)Lio/sentry/android/replay/viewhierarchy/b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v10, v3, v2, p4}, Lio/sentry/android/replay/viewhierarchy/a;->e(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/b;ZLio/sentry/s5;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2, v0}, Lio/sentry/android/replay/viewhierarchy/b;->f(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/b;Lio/sentry/s5;)Z
    .locals 5

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "view::class.java.name"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "AndroidComposeView"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return v2

    .line 36
    :cond_0
    if-nez p2, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroidx/compose/ui/node/Owner;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    move-object v4, p1

    .line 44
    check-cast v4, Landroidx/compose/ui/node/Owner;

    .line 45
    .line 46
    :cond_2
    if-eqz v4, :cond_4

    .line 47
    .line 48
    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/android/replay/viewhierarchy/a;->e(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/b;ZLio/sentry/s5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    :goto_0
    return v2

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    sget-object p3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 67
    .line 68
    const-string v0, "Error traversing Compose tree. Most likely you\'re using an unsupported version of\nandroidx.compose.ui:ui. The minimum supported version is 1.5.0. If it\'s a newer\nversion, please open a github issue with the version you\'re using, so we can add\nsupport for it."

    .line 69
    .line 70
    new-array v1, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {p2, p3, p1, v0, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return v2
.end method
