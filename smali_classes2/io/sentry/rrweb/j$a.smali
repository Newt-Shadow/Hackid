.class public final Lio/sentry/rrweb/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/j;
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

.method private c(Lio/sentry/rrweb/j;Lio/sentry/l2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 10
    .line 11
    if-ne v1, v2, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    const-string v2, "payload"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    const-string v2, "tag"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p2}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    :cond_2
    invoke-static {p1, v1}, Lio/sentry/rrweb/j;->g(Lio/sentry/rrweb/j;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/rrweb/j$a;->d(Lio/sentry/rrweb/j;Lio/sentry/l2;Lio/sentry/ILogger;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/j;->v(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Lio/sentry/l2;->r()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private d(Lio/sentry/rrweb/j;Lio/sentry/l2;Lio/sentry/ILogger;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 10
    .line 11
    if-ne v1, v2, :cond_17

    .line 12
    .line 13
    invoke-interface {p2}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, -0x1

    .line 26
    sparse-switch v2, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v2, "frameRateType"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    const/16 v4, 0xb

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :sswitch_1
    const-string v2, "encoding"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    const/16 v4, 0xa

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :sswitch_2
    const-string v2, "frameRate"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    const/16 v4, 0x9

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_3
    const-string v2, "width"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_3
    const/16 v4, 0x8

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :sswitch_4
    const-string v2, "size"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v4, 0x7

    .line 97
    goto :goto_1

    .line 98
    :sswitch_5
    const-string v2, "left"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v4, 0x6

    .line 108
    goto :goto_1

    .line 109
    :sswitch_6
    const-string v2, "top"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    const/4 v4, 0x5

    .line 119
    goto :goto_1

    .line 120
    :sswitch_7
    const-string v2, "frameCount"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    const/4 v4, 0x4

    .line 130
    goto :goto_1

    .line 131
    :sswitch_8
    const-string v2, "container"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_8

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_8
    const/4 v4, 0x3

    .line 141
    goto :goto_1

    .line 142
    :sswitch_9
    const-string v2, "height"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_9

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_9
    const/4 v4, 0x2

    .line 152
    goto :goto_1

    .line 153
    :sswitch_a
    const-string v2, "segmentId"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_a

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_a
    const/4 v4, 0x1

    .line 163
    goto :goto_1

    .line 164
    :sswitch_b
    const-string v2, "duration"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_b

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_b
    move v4, v3

    .line 174
    :goto_1
    const-string v2, ""

    .line 175
    .line 176
    packed-switch v4, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    if-nez v0, :cond_c

    .line 180
    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-nez v1, :cond_d

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_d
    move-object v2, v1

    .line 199
    :goto_2
    invoke-static {p1, v2}, Lio/sentry/rrweb/j;->h(Lio/sentry/rrweb/j;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-nez v1, :cond_e

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_e
    move-object v2, v1

    .line 212
    :goto_3
    invoke-static {p1, v2}, Lio/sentry/rrweb/j;->o(Lio/sentry/rrweb/j;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_f

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    :goto_4
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->s(Lio/sentry/rrweb/j;I)I

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_3
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-nez v1, :cond_10

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    :goto_5
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->q(Lio/sentry/rrweb/j;I)I

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_4
    invoke-interface {p2}, Lio/sentry/l2;->M()Ljava/lang/Long;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-nez v1, :cond_11

    .line 254
    .line 255
    const-wide/16 v1, 0x0

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 259
    .line 260
    .line 261
    move-result-wide v1

    .line 262
    :goto_6
    invoke-static {p1, v1, v2}, Lio/sentry/rrweb/j;->l(Lio/sentry/rrweb/j;J)J

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_5
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-nez v1, :cond_12

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    :goto_7
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->j(Lio/sentry/rrweb/j;I)I

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_6
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-nez v1, :cond_13

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    :goto_8
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->k(Lio/sentry/rrweb/j;I)I

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :pswitch_7
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-nez v1, :cond_14

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    :goto_9
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->r(Lio/sentry/rrweb/j;I)I

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :pswitch_8
    invoke-interface {p2}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-nez v1, :cond_15

    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_15
    move-object v2, v1

    .line 323
    :goto_a
    invoke-static {p1, v2}, Lio/sentry/rrweb/j;->n(Lio/sentry/rrweb/j;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :pswitch_9
    invoke-interface {p2}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-nez v1, :cond_16

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    :goto_b
    invoke-static {p1, v3}, Lio/sentry/rrweb/j;->p(Lio/sentry/rrweb/j;I)I

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :pswitch_a
    invoke-interface {p2}, Lio/sentry/l2;->j0()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    invoke-static {p1, v1}, Lio/sentry/rrweb/j;->i(Lio/sentry/rrweb/j;I)I

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :pswitch_b
    invoke-interface {p2}, Lio/sentry/l2;->E0()J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    invoke-static {p1, v1, v2}, Lio/sentry/rrweb/j;->m(Lio/sentry/rrweb/j;J)J

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_17
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/j;->B(Ljava/util/Map;)V

    .line 363
    .line 364
    .line 365
    invoke-interface {p2}, Lio/sentry/l2;->r()V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_b
        -0x61065852 -> :sswitch_a
        -0x48c76ed9 -> :sswitch_9
        -0x187eb37f -> :sswitch_8
        -0x11ac6c5e -> :sswitch_7
        0x1c155 -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x35e001 -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x207cebed -> :sswitch_2
        0x65ff2d53 -> :sswitch_1
        0x7f4330c7 -> :sswitch_0
    .end sparse-switch

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/j$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/j;
    .locals 5

    .line 1
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/j;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/sentry/rrweb/b$a;

    .line 10
    .line 11
    invoke-direct {v1}, Lio/sentry/rrweb/b$a;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 20
    .line 21
    if-ne v3, v4, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    const-string v4, "data"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, v0, v3, p1, p2}, Lio/sentry/rrweb/b$a;->a(Lio/sentry/rrweb/b;Ljava/lang/String;Lio/sentry/l2;Lio/sentry/ILogger;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p1, p2, v2, v3}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/rrweb/j$a;->c(Lio/sentry/rrweb/j;Lio/sentry/l2;Lio/sentry/ILogger;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0, v2}, Lio/sentry/rrweb/j;->F(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
