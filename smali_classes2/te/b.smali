.class public final Lte/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lte/b;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method private final b(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x66

    const/4 v2, 0x0

    if-gt v0, p1, :cond_1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public a(Lne/u$a;)Lne/a0;
    .locals 13

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    const-string v2, "chain"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lte/g;

    .line 11
    .line 12
    invoke-virtual {p1}, Lte/g;->g()Lse/c;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lte/g;->i()Lne/y;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lne/y;->a()Lne/z;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v2, p1}, Lse/c;->u(Lne/y;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lne/y;->g()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-static {v9}, Lte/f;->a(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_3

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const-string v9, "100-continue"

    .line 50
    .line 51
    const-string v10, "Expect"

    .line 52
    .line 53
    invoke-virtual {p1, v10}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-static {v9, v10, v7}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    invoke-virtual {v2}, Lse/c;->f()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v7}, Lse/c;->q(Z)Lne/a0$a;

    .line 67
    .line 68
    .line 69
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :try_start_1
    invoke-virtual {v2}, Lse/c;->s()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    move v10, v6

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    move v10, v7

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    move v10, v7

    .line 79
    move-object v9, v8

    .line 80
    :goto_0
    if-nez v9, :cond_2

    .line 81
    .line 82
    :try_start_2
    invoke-virtual {v3}, Lne/z;->c()Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_1

    .line 87
    .line 88
    invoke-virtual {v2}, Lse/c;->f()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1, v7}, Lse/c;->c(Lne/y;Z)Laf/y0;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-static {v11}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v3, v11}, Lne/z;->e(Laf/e;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v2, p1, v6}, Lse/c;->c(Lne/y;Z)Laf/y0;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-static {v11}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v3, v11}, Lne/z;->e(Laf/e;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v11}, Laf/y0;->close()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v2}, Lse/c;->o()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lse/c;->h()Lse/f;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v11}, Lse/f;->v()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-nez v11, :cond_4

    .line 130
    .line 131
    invoke-virtual {v2}, Lse/c;->n()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lse/c;->o()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    .line 137
    .line 138
    move v10, v7

    .line 139
    move-object v9, v8

    .line 140
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 141
    .line 142
    :try_start_4
    invoke-virtual {v3}, Lne/z;->c()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_6

    .line 147
    .line 148
    :cond_5
    invoke-virtual {v2}, Lse/c;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 149
    .line 150
    .line 151
    :cond_6
    move-object v3, v8

    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v3

    .line 154
    goto :goto_2

    .line 155
    :catch_2
    move-exception v3

    .line 156
    move v10, v7

    .line 157
    move-object v9, v8

    .line 158
    :goto_2
    instance-of v11, v3, Lve/a;

    .line 159
    .line 160
    if-nez v11, :cond_13

    .line 161
    .line 162
    invoke-virtual {v2}, Lse/c;->k()Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-eqz v11, :cond_12

    .line 167
    .line 168
    :goto_3
    if-nez v9, :cond_7

    .line 169
    .line 170
    :try_start_5
    invoke-virtual {v2, v6}, Lse/c;->q(Z)Lne/a0$a;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v9}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    if-eqz v10, :cond_7

    .line 178
    .line 179
    invoke-virtual {v2}, Lse/c;->s()V

    .line 180
    .line 181
    .line 182
    move v10, v6

    .line 183
    :cond_7
    invoke-virtual {v9, p1}, Lne/a0$a;->s(Lne/y;)Lne/a0$a;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {v2}, Lse/c;->h()Lse/f;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v11}, Lse/f;->r()Lne/r;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v9, v11}, Lne/a0$a;->j(Lne/r;)Lne/a0$a;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v9, v4, v5}, Lne/a0$a;->t(J)Lne/a0$a;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v11

    .line 207
    invoke-virtual {v9, v11, v12}, Lne/a0$a;->r(J)Lne/a0$a;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v9}, Lne/a0$a;->c()Lne/a0;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-virtual {v9}, Lne/a0;->f()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-direct {p0, v11}, Lte/b;->b(I)Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-eqz v12, :cond_9

    .line 224
    .line 225
    invoke-virtual {v2, v6}, Lse/c;->q(Z)Lne/a0$a;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v6}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    if-eqz v10, :cond_8

    .line 233
    .line 234
    invoke-virtual {v2}, Lse/c;->s()V

    .line 235
    .line 236
    .line 237
    :cond_8
    invoke-virtual {v6, p1}, Lne/a0$a;->s(Lne/y;)Lne/a0$a;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v2}, Lse/c;->h()Lse/f;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v6}, Lse/f;->r()Lne/r;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {p1, v6}, Lne/a0$a;->j(Lne/r;)Lne/a0$a;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1, v4, v5}, Lne/a0$a;->t(J)Lne/a0$a;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v4

    .line 261
    invoke-virtual {p1, v4, v5}, Lne/a0$a;->r(J)Lne/a0$a;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v9}, Lne/a0;->f()I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    :cond_9
    invoke-virtual {v2, v9}, Lse/c;->r(Lne/a0;)V

    .line 274
    .line 275
    .line 276
    iget-boolean p1, p0, Lte/b;->a:Z

    .line 277
    .line 278
    if-eqz p1, :cond_a

    .line 279
    .line 280
    const/16 p1, 0x65

    .line 281
    .line 282
    if-ne v11, p1, :cond_a

    .line 283
    .line 284
    invoke-virtual {v9}, Lne/a0;->w()Lne/a0$a;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    sget-object v4, Loe/d;->c:Lne/b0;

    .line 289
    .line 290
    invoke-virtual {p1, v4}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    goto :goto_4

    .line 299
    :cond_a
    invoke-virtual {v9}, Lne/a0;->w()Lne/a0$a;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {v2, v9}, Lse/c;->p(Lne/a0;)Lne/b0;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {p1, v4}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    :goto_4
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v4, v0}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v1, v4, v7}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_b

    .line 328
    .line 329
    const/4 v4, 0x2

    .line 330
    invoke-static {p1, v0, v8, v4, v8}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v1, v0, v7}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_c

    .line 339
    .line 340
    :cond_b
    invoke-virtual {v2}, Lse/c;->n()V

    .line 341
    .line 342
    .line 343
    :cond_c
    const/16 v0, 0xcc

    .line 344
    .line 345
    if-eq v11, v0, :cond_d

    .line 346
    .line 347
    const/16 v0, 0xcd

    .line 348
    .line 349
    if-ne v11, v0, :cond_10

    .line 350
    .line 351
    :cond_d
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-nez v0, :cond_e

    .line 356
    .line 357
    const-wide/16 v0, -0x1

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_e
    invoke-virtual {v0}, Lne/b0;->c()J

    .line 361
    .line 362
    .line 363
    move-result-wide v0

    .line 364
    :goto_5
    const-wide/16 v4, 0x0

    .line 365
    .line 366
    cmp-long v0, v0, v4

    .line 367
    .line 368
    if-lez v0, :cond_10

    .line 369
    .line 370
    new-instance v0, Ljava/net/ProtocolException;

    .line 371
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v2, "HTTP "

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v2, " had non-zero Content-Length: "

    .line 386
    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    if-nez p1, :cond_f

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_f
    invoke-virtual {p1}, Lne/b0;->c()J

    .line 398
    .line 399
    .line 400
    move-result-wide v4

    .line 401
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    :goto_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 416
    :cond_10
    return-object p1

    .line 417
    :catch_3
    move-exception p1

    .line 418
    if-eqz v3, :cond_11

    .line 419
    .line 420
    invoke-static {v3, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 421
    .line 422
    .line 423
    throw v3

    .line 424
    :cond_11
    throw p1

    .line 425
    :cond_12
    throw v3

    .line 426
    :cond_13
    throw v3
.end method
