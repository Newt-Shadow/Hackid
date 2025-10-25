.class public final Lse/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lse/g;

.field private final b:Lne/a;

.field private final c:Lse/e;

.field private final d:Lne/q;

.field private e:Lse/j$b;

.field private f:Lse/j;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lne/c0;


# direct methods
.method public constructor <init>(Lse/g;Lne/a;Lse/e;Lne/q;)V
    .locals 1

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "address"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lse/d;->a:Lse/g;

    .line 25
    .line 26
    iput-object p2, p0, Lse/d;->b:Lne/a;

    .line 27
    .line 28
    iput-object p3, p0, Lse/d;->c:Lse/e;

    .line 29
    .line 30
    iput-object p4, p0, Lse/d;->d:Lne/q;

    .line 31
    .line 32
    return-void
.end method

.method private final b(IIIIZ)Lse/f;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 3
    .line 4
    invoke-virtual {v0}, Lse/e;->q()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_e

    .line 9
    .line 10
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Lse/e;->l()Lse/f;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_6

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    invoke-virtual {v2}, Lse/f;->p()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lse/f;->z()Lne/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lne/c0;->a()Lne/a;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lne/a;->l()Lne/t;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p0, v5}, Lse/d;->g(Lne/t;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v5, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object v5, v1, Lse/d;->c:Lse/e;

    .line 50
    .line 51
    invoke-virtual {v5}, Lse/e;->u()Ljava/net/Socket;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_1
    sget-object v6, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit v2

    .line 58
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 59
    .line 60
    invoke-virtual {v6}, Lse/e;->l()Lse/f;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-nez v5, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v0, v3

    .line 70
    :goto_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_3
    const-string v0, "Check failed."

    .line 74
    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2

    .line 85
    :cond_4
    if-nez v5, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-static {v5}, Loe/d;->m(Ljava/net/Socket;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    iget-object v5, v1, Lse/d;->d:Lne/q;

    .line 92
    .line 93
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 94
    .line 95
    invoke-virtual {v5, v6, v2}, Lne/q;->k(Lne/e;Lne/i;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    monitor-exit v2

    .line 101
    throw v0

    .line 102
    :cond_6
    :goto_4
    iput v3, v1, Lse/d;->g:I

    .line 103
    .line 104
    iput v3, v1, Lse/d;->h:I

    .line 105
    .line 106
    iput v3, v1, Lse/d;->i:I

    .line 107
    .line 108
    iget-object v2, v1, Lse/d;->a:Lse/g;

    .line 109
    .line 110
    iget-object v5, v1, Lse/d;->b:Lne/a;

    .line 111
    .line 112
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 113
    .line 114
    invoke-virtual {v2, v5, v6, v4, v3}, Lse/g;->a(Lne/a;Lse/e;Ljava/util/List;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 121
    .line 122
    invoke-virtual {v0}, Lse/e;->l()Lse/f;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v1, Lse/d;->d:Lne/q;

    .line 130
    .line 131
    iget-object v3, v1, Lse/d;->c:Lse/e;

    .line 132
    .line 133
    invoke-virtual {v2, v3, v0}, Lne/q;->j(Lne/e;Lne/i;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :cond_7
    iget-object v2, v1, Lse/d;->j:Lne/c0;

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iput-object v4, v1, Lse/d;->j:Lne/c0;

    .line 145
    .line 146
    :goto_5
    move-object v5, v4

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    iget-object v2, v1, Lse/d;->e:Lse/j$b;

    .line 149
    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lse/j$b;->b()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    iget-object v2, v1, Lse/d;->e:Lse/j$b;

    .line 162
    .line 163
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Lse/j$b;->c()Lne/c0;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_5

    .line 171
    :cond_9
    iget-object v2, v1, Lse/d;->f:Lse/j;

    .line 172
    .line 173
    if-nez v2, :cond_a

    .line 174
    .line 175
    new-instance v2, Lse/j;

    .line 176
    .line 177
    iget-object v5, v1, Lse/d;->b:Lne/a;

    .line 178
    .line 179
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 180
    .line 181
    invoke-virtual {v6}, Lse/e;->k()Lne/w;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lne/w;->r()Lse/h;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v7, v1, Lse/d;->c:Lse/e;

    .line 190
    .line 191
    iget-object v8, v1, Lse/d;->d:Lne/q;

    .line 192
    .line 193
    invoke-direct {v2, v5, v6, v7, v8}, Lse/j;-><init>(Lne/a;Lse/h;Lne/e;Lne/q;)V

    .line 194
    .line 195
    .line 196
    iput-object v2, v1, Lse/d;->f:Lse/j;

    .line 197
    .line 198
    :cond_a
    invoke-virtual {v2}, Lse/j;->c()Lse/j$b;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iput-object v2, v1, Lse/d;->e:Lse/j$b;

    .line 203
    .line 204
    invoke-virtual {v2}, Lse/j$b;->a()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 209
    .line 210
    invoke-virtual {v6}, Lse/e;->q()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_d

    .line 215
    .line 216
    iget-object v6, v1, Lse/d;->a:Lse/g;

    .line 217
    .line 218
    iget-object v7, v1, Lse/d;->b:Lne/a;

    .line 219
    .line 220
    iget-object v8, v1, Lse/d;->c:Lse/e;

    .line 221
    .line 222
    invoke-virtual {v6, v7, v8, v5, v3}, Lse/g;->a(Lne/a;Lse/e;Ljava/util/List;Z)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_b

    .line 227
    .line 228
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 229
    .line 230
    invoke-virtual {v0}, Lse/e;->l()Lse/f;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v2, v1, Lse/d;->d:Lne/q;

    .line 238
    .line 239
    iget-object v3, v1, Lse/d;->c:Lse/e;

    .line 240
    .line 241
    invoke-virtual {v2, v3, v0}, Lne/q;->j(Lne/e;Lne/i;)V

    .line 242
    .line 243
    .line 244
    return-object v0

    .line 245
    :cond_b
    invoke-virtual {v2}, Lse/j$b;->c()Lne/c0;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    :goto_6
    new-instance v3, Lse/f;

    .line 250
    .line 251
    iget-object v6, v1, Lse/d;->a:Lse/g;

    .line 252
    .line 253
    invoke-direct {v3, v6, v2}, Lse/f;-><init>(Lse/g;Lne/c0;)V

    .line 254
    .line 255
    .line 256
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 257
    .line 258
    invoke-virtual {v6, v3}, Lse/e;->w(Lse/f;)V

    .line 259
    .line 260
    .line 261
    :try_start_1
    iget-object v12, v1, Lse/d;->c:Lse/e;

    .line 262
    .line 263
    iget-object v13, v1, Lse/d;->d:Lne/q;

    .line 264
    .line 265
    move-object v6, v3

    .line 266
    move v7, p1

    .line 267
    move/from16 v8, p2

    .line 268
    .line 269
    move/from16 v9, p3

    .line 270
    .line 271
    move/from16 v10, p4

    .line 272
    .line 273
    move/from16 v11, p5

    .line 274
    .line 275
    invoke-virtual/range {v6 .. v13}, Lse/f;->f(IIIIZLne/e;Lne/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 276
    .line 277
    .line 278
    iget-object v6, v1, Lse/d;->c:Lse/e;

    .line 279
    .line 280
    invoke-virtual {v6, v4}, Lse/e;->w(Lse/f;)V

    .line 281
    .line 282
    .line 283
    iget-object v4, v1, Lse/d;->c:Lse/e;

    .line 284
    .line 285
    invoke-virtual {v4}, Lse/e;->k()Lne/w;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v4}, Lne/w;->r()Lse/h;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v3}, Lse/f;->z()Lne/c0;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-virtual {v4, v6}, Lse/h;->a(Lne/c0;)V

    .line 298
    .line 299
    .line 300
    iget-object v4, v1, Lse/d;->a:Lse/g;

    .line 301
    .line 302
    iget-object v6, v1, Lse/d;->b:Lne/a;

    .line 303
    .line 304
    iget-object v7, v1, Lse/d;->c:Lse/e;

    .line 305
    .line 306
    invoke-virtual {v4, v6, v7, v5, v0}, Lse/g;->a(Lne/a;Lse/e;Ljava/util/List;Z)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_c

    .line 311
    .line 312
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 313
    .line 314
    invoke-virtual {v0}, Lse/e;->l()Lse/f;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iput-object v2, v1, Lse/d;->j:Lne/c0;

    .line 322
    .line 323
    invoke-virtual {v3}, Lse/f;->D()Ljava/net/Socket;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-static {v2}, Loe/d;->m(Ljava/net/Socket;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v1, Lse/d;->d:Lne/q;

    .line 331
    .line 332
    iget-object v3, v1, Lse/d;->c:Lse/e;

    .line 333
    .line 334
    invoke-virtual {v2, v3, v0}, Lne/q;->j(Lne/e;Lne/i;)V

    .line 335
    .line 336
    .line 337
    return-object v0

    .line 338
    :cond_c
    monitor-enter v3

    .line 339
    :try_start_2
    iget-object v0, v1, Lse/d;->a:Lse/g;

    .line 340
    .line 341
    invoke-virtual {v0, v3}, Lse/g;->e(Lse/f;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, v1, Lse/d;->c:Lse/e;

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Lse/e;->a(Lse/f;)V

    .line 347
    .line 348
    .line 349
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    .line 351
    monitor-exit v3

    .line 352
    iget-object v0, v1, Lse/d;->d:Lne/q;

    .line 353
    .line 354
    iget-object v2, v1, Lse/d;->c:Lse/e;

    .line 355
    .line 356
    invoke-virtual {v0, v2, v3}, Lne/q;->j(Lne/e;Lne/i;)V

    .line 357
    .line 358
    .line 359
    return-object v3

    .line 360
    :catchall_1
    move-exception v0

    .line 361
    monitor-exit v3

    .line 362
    throw v0

    .line 363
    :catchall_2
    move-exception v0

    .line 364
    iget-object v2, v1, Lse/d;->c:Lse/e;

    .line 365
    .line 366
    invoke-virtual {v2, v4}, Lse/e;->w(Lse/f;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 371
    .line 372
    const-string v2, "Canceled"

    .line 373
    .line 374
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 379
    .line 380
    const-string v2, "Canceled"

    .line 381
    .line 382
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v0
.end method

.method private final c(IIIIZZ)Lse/f;
    .locals 2

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lse/d;->b(IIIIZ)Lse/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p6}, Lse/f;->u(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lse/f;->y()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lse/d;->j:Lne/c0;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lse/d;->e:Lse/j$b;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Lse/j$b;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lse/d;->f:Lse/j;

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {v0}, Lse/j;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_2
    if-eqz v1, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    const-string p2, "exhausted all routes"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method private final f()Lne/c0;
    .locals 4

    .line 1
    iget v0, p0, Lse/d;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gt v0, v2, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lse/d;->h:I

    .line 8
    .line 9
    if-gt v0, v2, :cond_4

    .line 10
    .line 11
    iget v0, p0, Lse/d;->i:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lse/d;->c:Lse/e;

    .line 17
    .line 18
    invoke-virtual {v0}, Lse/e;->l()Lse/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-virtual {v0}, Lse/f;->q()I

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-object v1

    .line 34
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lse/f;->z()Lne/c0;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lne/c0;->a()Lne/a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lne/a;->l()Lne/t;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lse/d;->d()Lne/a;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lne/a;->l()Lne/t;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Loe/d;->j(Lne/t;Lne/t;)Z

    .line 55
    .line 56
    .line 57
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lse/f;->z()Lne/c0;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit v0

    .line 67
    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0

    .line 70
    throw v1

    .line 71
    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Lne/w;Lte/g;)Lte/d;
    .locals 8

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chain"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lte/g;->f()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p2}, Lte/g;->h()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p2}, Lte/g;->j()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p1}, Lne/w;->x()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p1}, Lne/w;->D()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lte/g;->i()Lne/y;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lne/y;->g()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "GET"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    move v7, v0

    .line 51
    move-object v1, p0

    .line 52
    invoke-direct/range {v1 .. v7}, Lse/d;->c(IIIIZZ)Lse/f;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p1, p2}, Lse/f;->w(Lne/w;Lte/g;)Lte/d;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Lse/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p0, p1}, Lse/d;->h(Ljava/io/IOException;)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lse/i;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Lse/i;->c()Ljava/io/IOException;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0, p2}, Lse/d;->h(Ljava/io/IOException;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final d()Lne/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/d;->b:Lne/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget v0, p0, Lse/d;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lse/d;->h:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lse/d;->i:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lse/d;->j:Lne/c0;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-direct {p0}, Lse/d;->f()Lne/c0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-object v0, p0, Lse/d;->j:Lne/c0;

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    iget-object v0, p0, Lse/d;->e:Lse/j$b;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v0}, Lse/j$b;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v2, :cond_4

    .line 40
    .line 41
    move v1, v2

    .line 42
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v0, p0, Lse/d;->f:Lse/j;

    .line 46
    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    invoke-virtual {v0}, Lse/j;->a()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    return v0
.end method

.method public final g(Lne/t;)Z
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/d;->b:Lne/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lne/t;->l()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Lne/t;->l()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lne/t;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lse/d;->j:Lne/c0;

    .line 8
    .line 9
    instance-of v0, p1, Lve/n;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lve/n;

    .line 15
    .line 16
    iget-object v0, v0, Lve/n;->a:Lve/b;

    .line 17
    .line 18
    sget-object v1, Lve/b;->j:Lve/b;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lse/d;->g:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Lse/d;->g:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of p1, p1, Lve/a;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget p1, p0, Lse/d;->h:I

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    iput p1, p0, Lse/d;->h:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p1, p0, Lse/d;->i:I

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    iput p1, p0, Lse/d;->i:I

    .line 45
    .line 46
    :goto_0
    return-void
.end method
