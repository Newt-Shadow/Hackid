.class public final Lio/sentry/z2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/z2$b;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/z2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/z2;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lio/sentry/z2;

    .line 6
    .line 7
    invoke-direct {v2}, Lio/sentry/z2;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v4, v3

    .line 15
    move-object v5, v4

    .line 16
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    sget-object v7, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 21
    .line 22
    if-ne v6, v7, :cond_2

    .line 23
    .line 24
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    const-string v7, "segment_id"

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    new-instance v4, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v0, v1, v4, v6}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 56
    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    invoke-interface {v0, v6}, Lio/sentry/l2;->p(Z)V

    .line 60
    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/util/List;

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    invoke-interface {v0, v8}, Lio/sentry/l2;->p(Z)V

    .line 70
    .line 71
    .line 72
    if-eqz v7, :cond_f

    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_f

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    instance-of v9, v7, Ljava/util/Map;

    .line 98
    .line 99
    if-eqz v9, :cond_e

    .line 100
    .line 101
    check-cast v7, Ljava/util/Map;

    .line 102
    .line 103
    new-instance v9, Lio/sentry/util/o;

    .line 104
    .line 105
    invoke-direct {v9, v7}, Lio/sentry/util/o;-><init>(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_e

    .line 121
    .line 122
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Ljava/util/Map$Entry;

    .line 127
    .line 128
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    check-cast v12, Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const-string v13, "type"

    .line 139
    .line 140
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_d

    .line 145
    .line 146
    invoke-static {}, Lio/sentry/rrweb/c;->values()[Lio/sentry/rrweb/c;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    check-cast v11, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    aget-object v11, v12, v11

    .line 157
    .line 158
    sget-object v12, Lio/sentry/z2$a;->b:[I

    .line 159
    .line 160
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    aget v12, v12, v13

    .line 165
    .line 166
    const-string v13, "data"

    .line 167
    .line 168
    const/4 v14, 0x2

    .line 169
    if-eq v12, v6, :cond_9

    .line 170
    .line 171
    if-eq v12, v14, :cond_8

    .line 172
    .line 173
    const/4 v15, 0x3

    .line 174
    const-string v8, "Unsupported rrweb event type %s"

    .line 175
    .line 176
    if-eq v12, v15, :cond_3

    .line 177
    .line 178
    sget-object v12, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 179
    .line 180
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-interface {v1, v12, v8, v11}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_3
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    check-cast v12, Ljava/util/Map;

    .line 194
    .line 195
    if-nez v12, :cond_4

    .line 196
    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    :cond_4
    const-string v13, "tag"

    .line 202
    .line 203
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    check-cast v12, Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v12, :cond_d

    .line 210
    .line 211
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    const/4 v15, -0x1

    .line 216
    sparse-switch v13, :sswitch_data_0

    .line 217
    .line 218
    .line 219
    :goto_3
    move v14, v15

    .line 220
    goto :goto_4

    .line 221
    :sswitch_0
    const-string v13, "breadcrumb"

    .line 222
    .line 223
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-nez v12, :cond_7

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :sswitch_1
    const-string v13, "video"

    .line 231
    .line 232
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-nez v12, :cond_5

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_5
    move v14, v6

    .line 240
    goto :goto_4

    .line 241
    :sswitch_2
    const-string v13, "performanceSpan"

    .line 242
    .line 243
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-nez v12, :cond_6

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_6
    const/4 v14, 0x0

    .line 251
    :cond_7
    :goto_4
    packed-switch v14, :pswitch_data_0

    .line 252
    .line 253
    .line 254
    sget-object v12, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 255
    .line 256
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-interface {v1, v12, v8, v11}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_5

    .line 264
    .line 265
    :pswitch_0
    new-instance v8, Lio/sentry/rrweb/a$a;

    .line 266
    .line 267
    invoke-direct {v8}, Lio/sentry/rrweb/a$a;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/a$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/a;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto/16 :goto_5

    .line 278
    .line 279
    :pswitch_1
    new-instance v8, Lio/sentry/rrweb/j$a;

    .line 280
    .line 281
    invoke-direct {v8}, Lio/sentry/rrweb/j$a;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/j$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/j;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :pswitch_2
    new-instance v8, Lio/sentry/rrweb/i$a;

    .line 293
    .line 294
    invoke-direct {v8}, Lio/sentry/rrweb/i$a;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/i$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/i;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_8
    new-instance v8, Lio/sentry/rrweb/g$a;

    .line 306
    .line 307
    invoke-direct {v8}, Lio/sentry/rrweb/g$a;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/g$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/g;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_9
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    check-cast v8, Ljava/util/Map;

    .line 323
    .line 324
    if-nez v8, :cond_a

    .line 325
    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    :cond_a
    const-string v11, "source"

    .line 331
    .line 332
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    check-cast v8, Ljava/lang/Integer;

    .line 337
    .line 338
    if-eqz v8, :cond_d

    .line 339
    .line 340
    invoke-static {}, Lio/sentry/rrweb/d$b;->values()[Lio/sentry/rrweb/d$b;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    aget-object v8, v11, v8

    .line 349
    .line 350
    sget-object v11, Lio/sentry/z2$a;->a:[I

    .line 351
    .line 352
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 353
    .line 354
    .line 355
    move-result v12

    .line 356
    aget v11, v11, v12

    .line 357
    .line 358
    if-eq v11, v6, :cond_c

    .line 359
    .line 360
    if-eq v11, v14, :cond_b

    .line 361
    .line 362
    sget-object v11, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 363
    .line 364
    const-string v12, "Unsupported rrweb incremental snapshot type %s"

    .line 365
    .line 366
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-interface {v1, v11, v12, v8}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_b
    new-instance v8, Lio/sentry/rrweb/f$a;

    .line 375
    .line 376
    invoke-direct {v8}, Lio/sentry/rrweb/f$a;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/f$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/f;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_c
    new-instance v8, Lio/sentry/rrweb/e$a;

    .line 388
    .line 389
    invoke-direct {v8}, Lio/sentry/rrweb/e$a;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/e$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/e;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    :cond_d
    :goto_5
    const/4 v8, 0x0

    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_e
    const/4 v8, 0x0

    .line 403
    goto/16 :goto_1

    .line 404
    .line 405
    :cond_f
    invoke-virtual {v2, v5}, Lio/sentry/z2;->c(Ljava/lang/Integer;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v3}, Lio/sentry/z2;->b(Ljava/util/List;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v4}, Lio/sentry/z2;->d(Ljava/util/Map;)V

    .line 412
    .line 413
    .line 414
    return-object v2

    .line 415
    :sswitch_data_0
    .sparse-switch
        -0xd791c66 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x41f73003 -> :sswitch_0
    .end sparse-switch

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
