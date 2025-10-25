.class final Lb3/g1;
.super Lb3/n;
.source "SourceFile"

# interfaces
.implements Lb3/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/g1$b;,
        Lb3/g1$d;,
        Lb3/g1$c;,
        Lb3/g1$e;
    }
.end annotation


# instance fields
.field private final A:Lb3/m;

.field private final B:Lb3/b4;

.field private final C:Lb3/m4;

.field private final D:Lb3/n4;

.field private final E:J

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:Z

.field private K:I

.field private L:Lb3/x3;

.field private M:Ld4/o0;

.field private N:Z

.field private O:Lb3/m3$b;

.field private P:Lb3/k2;

.field private Q:Lb3/k2;

.field private R:Lb3/x1;

.field private S:Lb3/x1;

.field private T:Landroid/media/AudioTrack;

.field private U:Ljava/lang/Object;

.field private V:Landroid/view/Surface;

.field private W:Landroid/view/SurfaceHolder;

.field private X:Z

.field private Y:Landroid/view/TextureView;

.field private Z:I

.field private a0:I

.field final b:Lw4/i0;

.field private b0:Ly4/g0;

.field final c:Lb3/m3$b;

.field private c0:Le3/e;

.field private final d:Ly4/g;

.field private d0:Le3/e;

.field private final e:Landroid/content/Context;

.field private e0:I

.field private final f:Lb3/m3;

.field private f0:Ld3/e;

.field private final g:[Lb3/t3;

.field private g0:F

.field private final h:Lw4/h0;

.field private h0:Z

.field private final i:Ly4/n;

.field private i0:Lm4/e;

.field private final j:Lb3/t1$f;

.field private j0:Z

.field private final k:Lb3/t1;

.field private k0:Z

.field private final l:Ly4/q;

.field private l0:Z

.field private final m:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private m0:Z

.field private final n:Lb3/g4$b;

.field private n0:Lb3/y;

.field private final o:Ljava/util/List;

.field private o0:Lz4/a0;

.field private final p:Z

.field private p0:Lb3/k2;

.field private final q:Ld4/t$a;

.field private q0:Lb3/j3;

.field private final r:Lc3/a;

.field private r0:I

.field private final s:Landroid/os/Looper;

.field private s0:I

.field private final t:Lx4/e;

.field private t0:J

.field private final u:J

.field private final v:J

.field private final w:Ly4/d;

.field private final x:Lb3/g1$c;

.field private final y:Lb3/g1$d;

.field private final z:Lb3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lb3/u1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lb3/b0$b;Lb3/m3;)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lb3/n;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ly4/g;

    .line 9
    .line 10
    invoke-direct {v2}, Ly4/g;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lb3/g1;->d:Ly4/g;

    .line 14
    .line 15
    :try_start_0
    const-string v3, "ExoPlayerImpl"

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "Init "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, " ["

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, "ExoPlayerLib/2.18.7"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, "] ["

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object v5, Ly4/q0;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, "]"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v3, v4}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lb3/b0$b;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, v1, Lb3/g1;->e:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v4, v0, Lb3/b0$b;->i:Ln6/g;

    .line 79
    .line 80
    iget-object v5, v0, Lb3/b0$b;->b:Ly4/d;

    .line 81
    .line 82
    invoke-interface {v4, v5}, Ln6/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lc3/a;

    .line 87
    .line 88
    iput-object v4, v1, Lb3/g1;->r:Lc3/a;

    .line 89
    .line 90
    iget-object v5, v0, Lb3/b0$b;->k:Ld3/e;

    .line 91
    .line 92
    iput-object v5, v1, Lb3/g1;->f0:Ld3/e;

    .line 93
    .line 94
    iget v5, v0, Lb3/b0$b;->p:I

    .line 95
    .line 96
    iput v5, v1, Lb3/g1;->Z:I

    .line 97
    .line 98
    iget v5, v0, Lb3/b0$b;->q:I

    .line 99
    .line 100
    iput v5, v1, Lb3/g1;->a0:I

    .line 101
    .line 102
    iget-boolean v5, v0, Lb3/b0$b;->o:Z

    .line 103
    .line 104
    iput-boolean v5, v1, Lb3/g1;->h0:Z

    .line 105
    .line 106
    iget-wide v5, v0, Lb3/b0$b;->x:J

    .line 107
    .line 108
    iput-wide v5, v1, Lb3/g1;->E:J

    .line 109
    .line 110
    new-instance v15, Lb3/g1$c;

    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    invoke-direct {v15, v1, v14}, Lb3/g1$c;-><init>(Lb3/g1;Lb3/g1$a;)V

    .line 114
    .line 115
    .line 116
    iput-object v15, v1, Lb3/g1;->x:Lb3/g1$c;

    .line 117
    .line 118
    new-instance v13, Lb3/g1$d;

    .line 119
    .line 120
    invoke-direct {v13, v14}, Lb3/g1$d;-><init>(Lb3/g1$a;)V

    .line 121
    .line 122
    .line 123
    iput-object v13, v1, Lb3/g1;->y:Lb3/g1$d;

    .line 124
    .line 125
    new-instance v6, Landroid/os/Handler;

    .line 126
    .line 127
    iget-object v5, v0, Lb3/b0$b;->j:Landroid/os/Looper;

    .line 128
    .line 129
    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v0, Lb3/b0$b;->d:Ln6/s;

    .line 133
    .line 134
    invoke-interface {v5}, Ln6/s;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    move-object v7, v5

    .line 139
    check-cast v7, Lb3/w3;

    .line 140
    .line 141
    move-object v8, v6

    .line 142
    move-object v9, v15

    .line 143
    move-object v10, v15

    .line 144
    move-object v11, v15

    .line 145
    move-object v12, v15

    .line 146
    invoke-interface/range {v7 .. v12}, Lb3/w3;->a(Landroid/os/Handler;Lz4/y;Ld3/v;Lm4/n;Lt3/e;)[Lb3/t3;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iput-object v7, v1, Lb3/g1;->g:[Lb3/t3;

    .line 151
    .line 152
    array-length v5, v7

    .line 153
    const/4 v12, 0x0

    .line 154
    if-lez v5, :cond_0

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    move v5, v12

    .line 159
    :goto_0
    invoke-static {v5}, Ly4/a;->f(Z)V

    .line 160
    .line 161
    .line 162
    iget-object v5, v0, Lb3/b0$b;->f:Ln6/s;

    .line 163
    .line 164
    invoke-interface {v5}, Ln6/s;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    move-object v10, v5

    .line 169
    check-cast v10, Lw4/h0;

    .line 170
    .line 171
    iput-object v10, v1, Lb3/g1;->h:Lw4/h0;

    .line 172
    .line 173
    iget-object v5, v0, Lb3/b0$b;->e:Ln6/s;

    .line 174
    .line 175
    invoke-interface {v5}, Ln6/s;->get()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ld4/t$a;

    .line 180
    .line 181
    iput-object v5, v1, Lb3/g1;->q:Ld4/t$a;

    .line 182
    .line 183
    iget-object v5, v0, Lb3/b0$b;->h:Ln6/s;

    .line 184
    .line 185
    invoke-interface {v5}, Ln6/s;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    move-object v9, v5

    .line 190
    check-cast v9, Lx4/e;

    .line 191
    .line 192
    iput-object v9, v1, Lb3/g1;->t:Lx4/e;

    .line 193
    .line 194
    iget-boolean v5, v0, Lb3/b0$b;->r:Z

    .line 195
    .line 196
    iput-boolean v5, v1, Lb3/g1;->p:Z

    .line 197
    .line 198
    iget-object v5, v0, Lb3/b0$b;->s:Lb3/x3;

    .line 199
    .line 200
    iput-object v5, v1, Lb3/g1;->L:Lb3/x3;

    .line 201
    .line 202
    move-object/from16 v16, v15

    .line 203
    .line 204
    iget-wide v14, v0, Lb3/b0$b;->t:J

    .line 205
    .line 206
    iput-wide v14, v1, Lb3/g1;->u:J

    .line 207
    .line 208
    iget-wide v14, v0, Lb3/b0$b;->u:J

    .line 209
    .line 210
    iput-wide v14, v1, Lb3/g1;->v:J

    .line 211
    .line 212
    iget-boolean v5, v0, Lb3/b0$b;->y:Z

    .line 213
    .line 214
    iput-boolean v5, v1, Lb3/g1;->N:Z

    .line 215
    .line 216
    iget-object v15, v0, Lb3/b0$b;->j:Landroid/os/Looper;

    .line 217
    .line 218
    iput-object v15, v1, Lb3/g1;->s:Landroid/os/Looper;

    .line 219
    .line 220
    iget-object v14, v0, Lb3/b0$b;->b:Ly4/d;

    .line 221
    .line 222
    iput-object v14, v1, Lb3/g1;->w:Ly4/d;

    .line 223
    .line 224
    if-nez p2, :cond_1

    .line 225
    .line 226
    move-object v5, v1

    .line 227
    goto :goto_1

    .line 228
    :cond_1
    move-object/from16 v5, p2

    .line 229
    .line 230
    :goto_1
    iput-object v5, v1, Lb3/g1;->f:Lb3/m3;

    .line 231
    .line 232
    new-instance v8, Ly4/q;

    .line 233
    .line 234
    new-instance v11, Lb3/t0;

    .line 235
    .line 236
    invoke-direct {v11, v1}, Lb3/t0;-><init>(Lb3/g1;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v8, v15, v14, v11}, Ly4/q;-><init>(Landroid/os/Looper;Ly4/d;Ly4/q$b;)V

    .line 240
    .line 241
    .line 242
    iput-object v8, v1, Lb3/g1;->l:Ly4/q;

    .line 243
    .line 244
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 245
    .line 246
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v8, v1, Lb3/g1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 250
    .line 251
    new-instance v8, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v8, v1, Lb3/g1;->o:Ljava/util/List;

    .line 257
    .line 258
    new-instance v8, Ld4/o0$a;

    .line 259
    .line 260
    invoke-direct {v8, v12}, Ld4/o0$a;-><init>(I)V

    .line 261
    .line 262
    .line 263
    iput-object v8, v1, Lb3/g1;->M:Ld4/o0;

    .line 264
    .line 265
    new-instance v8, Lw4/i0;

    .line 266
    .line 267
    array-length v11, v7

    .line 268
    new-array v11, v11, [Lb3/v3;

    .line 269
    .line 270
    array-length v12, v7

    .line 271
    new-array v12, v12, [Lw4/y;

    .line 272
    .line 273
    move-object/from16 v20, v6

    .line 274
    .line 275
    sget-object v6, Lb3/l4;->b:Lb3/l4;

    .line 276
    .line 277
    move-object/from16 v21, v9

    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    invoke-direct {v8, v11, v12, v6, v9}, Lw4/i0;-><init>([Lb3/v3;[Lw4/y;Lb3/l4;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iput-object v8, v1, Lb3/g1;->b:Lw4/i0;

    .line 284
    .line 285
    new-instance v6, Lb3/g4$b;

    .line 286
    .line 287
    invoke-direct {v6}, Lb3/g4$b;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v6, v1, Lb3/g1;->n:Lb3/g4$b;

    .line 291
    .line 292
    new-instance v6, Lb3/m3$b$a;

    .line 293
    .line 294
    invoke-direct {v6}, Lb3/m3$b$a;-><init>()V

    .line 295
    .line 296
    .line 297
    const/16 v12, 0x15

    .line 298
    .line 299
    new-array v9, v12, [I

    .line 300
    .line 301
    fill-array-data v9, :array_0

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v9}, Lb3/m3$b$a;->c([I)Lb3/m3$b$a;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v10}, Lw4/h0;->d()Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    const/16 v11, 0x1d

    .line 313
    .line 314
    invoke-virtual {v6, v11, v9}, Lb3/m3$b$a;->d(IZ)Lb3/m3$b$a;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-virtual {v6}, Lb3/m3$b$a;->e()Lb3/m3$b;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    iput-object v6, v1, Lb3/g1;->c:Lb3/m3$b;

    .line 323
    .line 324
    new-instance v9, Lb3/m3$b$a;

    .line 325
    .line 326
    invoke-direct {v9}, Lb3/m3$b$a;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v6}, Lb3/m3$b$a;->b(Lb3/m3$b;)Lb3/m3$b$a;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    const/4 v11, 0x4

    .line 334
    invoke-virtual {v6, v11}, Lb3/m3$b$a;->a(I)Lb3/m3$b$a;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    const/16 v9, 0xa

    .line 339
    .line 340
    invoke-virtual {v6, v9}, Lb3/m3$b$a;->a(I)Lb3/m3$b$a;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-virtual {v6}, Lb3/m3$b$a;->e()Lb3/m3$b;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    iput-object v6, v1, Lb3/g1;->O:Lb3/m3$b;

    .line 349
    .line 350
    const/4 v6, 0x0

    .line 351
    invoke-interface {v14, v15, v6}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    iput-object v9, v1, Lb3/g1;->i:Ly4/n;

    .line 356
    .line 357
    new-instance v9, Lb3/y0;

    .line 358
    .line 359
    invoke-direct {v9, v1}, Lb3/y0;-><init>(Lb3/g1;)V

    .line 360
    .line 361
    .line 362
    iput-object v9, v1, Lb3/g1;->j:Lb3/t1$f;

    .line 363
    .line 364
    invoke-static {v8}, Lb3/j3;->j(Lw4/i0;)Lb3/j3;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    iput-object v6, v1, Lb3/g1;->q0:Lb3/j3;

    .line 369
    .line 370
    invoke-interface {v4, v5, v15}, Lc3/a;->I(Lb3/m3;Landroid/os/Looper;)V

    .line 371
    .line 372
    .line 373
    sget v6, Ly4/q0;->a:I

    .line 374
    .line 375
    const/16 v5, 0x1f

    .line 376
    .line 377
    if-ge v6, v5, :cond_2

    .line 378
    .line 379
    new-instance v5, Lc3/t3;

    .line 380
    .line 381
    invoke-direct {v5}, Lc3/t3;-><init>()V

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_2
    iget-boolean v5, v0, Lb3/b0$b;->z:Z

    .line 386
    .line 387
    invoke-static {v3, v1, v5}, Lb3/g1$b;->a(Landroid/content/Context;Lb3/g1;Z)Lc3/t3;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    :goto_2
    move-object/from16 v22, v5

    .line 392
    .line 393
    new-instance v5, Lb3/t1;

    .line 394
    .line 395
    iget-object v11, v0, Lb3/b0$b;->g:Ln6/s;

    .line 396
    .line 397
    invoke-interface {v11}, Ln6/s;->get()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v11

    .line 401
    check-cast v11, Lb3/d2;

    .line 402
    .line 403
    iget v12, v1, Lb3/g1;->F:I

    .line 404
    .line 405
    move-object/from16 v25, v13

    .line 406
    .line 407
    iget-boolean v13, v1, Lb3/g1;->G:Z

    .line 408
    .line 409
    move-object/from16 v26, v14

    .line 410
    .line 411
    iget-object v14, v1, Lb3/g1;->L:Lb3/x3;

    .line 412
    .line 413
    move-object/from16 v27, v15

    .line 414
    .line 415
    iget-object v15, v0, Lb3/b0$b;->v:Lb3/c2;

    .line 416
    .line 417
    move-object/from16 v28, v2

    .line 418
    .line 419
    move-object/from16 v29, v3

    .line 420
    .line 421
    iget-wide v2, v0, Lb3/b0$b;->w:J

    .line 422
    .line 423
    move-wide/from16 v30, v2

    .line 424
    .line 425
    iget-boolean v2, v1, Lb3/g1;->N:Z

    .line 426
    .line 427
    iget-object v3, v0, Lb3/b0$b;->A:Landroid/os/Looper;

    .line 428
    .line 429
    move-object/from16 v32, v5

    .line 430
    .line 431
    move-object/from16 v5, v32

    .line 432
    .line 433
    move v0, v6

    .line 434
    move-object/from16 v33, v20

    .line 435
    .line 436
    const/16 v17, 0x0

    .line 437
    .line 438
    move-object v6, v7

    .line 439
    move-object v7, v10

    .line 440
    move-object/from16 v34, v21

    .line 441
    .line 442
    move-object/from16 v21, v9

    .line 443
    .line 444
    move-object v9, v11

    .line 445
    move-object v11, v10

    .line 446
    move-object/from16 v10, v34

    .line 447
    .line 448
    move-object/from16 v35, v11

    .line 449
    .line 450
    move v11, v12

    .line 451
    move/from16 p2, v0

    .line 452
    .line 453
    const/4 v0, 0x0

    .line 454
    move v12, v13

    .line 455
    move-object/from16 v36, v25

    .line 456
    .line 457
    move-object v13, v4

    .line 458
    move-object/from16 v24, v17

    .line 459
    .line 460
    move-object/from16 v20, v26

    .line 461
    .line 462
    move-object/from16 v37, v16

    .line 463
    .line 464
    move-wide/from16 v16, v30

    .line 465
    .line 466
    move/from16 v18, v2

    .line 467
    .line 468
    move-object/from16 v19, v27

    .line 469
    .line 470
    move-object/from16 v23, v3

    .line 471
    .line 472
    invoke-direct/range {v5 .. v23}, Lb3/t1;-><init>([Lb3/t3;Lw4/h0;Lw4/i0;Lb3/d2;Lx4/e;IZLc3/a;Lb3/x3;Lb3/c2;JZLandroid/os/Looper;Ly4/d;Lb3/t1$f;Lc3/t3;Landroid/os/Looper;)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v2, v32

    .line 476
    .line 477
    iput-object v2, v1, Lb3/g1;->k:Lb3/t1;

    .line 478
    .line 479
    const/high16 v3, 0x3f800000    # 1.0f

    .line 480
    .line 481
    iput v3, v1, Lb3/g1;->g0:F

    .line 482
    .line 483
    iput v0, v1, Lb3/g1;->F:I

    .line 484
    .line 485
    sget-object v3, Lb3/k2;->I:Lb3/k2;

    .line 486
    .line 487
    iput-object v3, v1, Lb3/g1;->P:Lb3/k2;

    .line 488
    .line 489
    iput-object v3, v1, Lb3/g1;->Q:Lb3/k2;

    .line 490
    .line 491
    iput-object v3, v1, Lb3/g1;->p0:Lb3/k2;

    .line 492
    .line 493
    const/4 v3, -0x1

    .line 494
    iput v3, v1, Lb3/g1;->r0:I

    .line 495
    .line 496
    move/from16 v3, p2

    .line 497
    .line 498
    const/16 v5, 0x15

    .line 499
    .line 500
    if-ge v3, v5, :cond_3

    .line 501
    .line 502
    invoke-direct {v1, v0}, Lb3/g1;->i1(I)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    iput v3, v1, Lb3/g1;->e0:I

    .line 507
    .line 508
    goto :goto_3

    .line 509
    :cond_3
    invoke-static/range {v29 .. v29}, Ly4/q0;->F(Landroid/content/Context;)I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    iput v3, v1, Lb3/g1;->e0:I

    .line 514
    .line 515
    :goto_3
    sget-object v3, Lm4/e;->c:Lm4/e;

    .line 516
    .line 517
    iput-object v3, v1, Lb3/g1;->i0:Lm4/e;

    .line 518
    .line 519
    const/4 v3, 0x1

    .line 520
    iput-boolean v3, v1, Lb3/g1;->j0:Z

    .line 521
    .line 522
    invoke-virtual {v1, v4}, Lb3/g1;->x(Lb3/m3$d;)V

    .line 523
    .line 524
    .line 525
    new-instance v5, Landroid/os/Handler;

    .line 526
    .line 527
    move-object/from16 v6, v27

    .line 528
    .line 529
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 530
    .line 531
    .line 532
    move-object/from16 v6, v34

    .line 533
    .line 534
    invoke-interface {v6, v5, v4}, Lx4/e;->b(Landroid/os/Handler;Lx4/e$a;)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v4, v37

    .line 538
    .line 539
    invoke-virtual {v1, v4}, Lb3/g1;->P0(Lb3/b0$a;)V

    .line 540
    .line 541
    .line 542
    move-object/from16 v5, p1

    .line 543
    .line 544
    iget-wide v6, v5, Lb3/b0$b;->c:J

    .line 545
    .line 546
    const-wide/16 v8, 0x0

    .line 547
    .line 548
    cmp-long v8, v6, v8

    .line 549
    .line 550
    if-lez v8, :cond_4

    .line 551
    .line 552
    invoke-virtual {v2, v6, v7}, Lb3/t1;->u(J)V

    .line 553
    .line 554
    .line 555
    :cond_4
    new-instance v2, Lb3/b;

    .line 556
    .line 557
    iget-object v6, v5, Lb3/b0$b;->a:Landroid/content/Context;

    .line 558
    .line 559
    move-object/from16 v7, v33

    .line 560
    .line 561
    invoke-direct {v2, v6, v7, v4}, Lb3/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lb3/b$b;)V

    .line 562
    .line 563
    .line 564
    iput-object v2, v1, Lb3/g1;->z:Lb3/b;

    .line 565
    .line 566
    iget-boolean v6, v5, Lb3/b0$b;->n:Z

    .line 567
    .line 568
    invoke-virtual {v2, v6}, Lb3/b;->b(Z)V

    .line 569
    .line 570
    .line 571
    new-instance v2, Lb3/m;

    .line 572
    .line 573
    iget-object v6, v5, Lb3/b0$b;->a:Landroid/content/Context;

    .line 574
    .line 575
    invoke-direct {v2, v6, v7, v4}, Lb3/m;-><init>(Landroid/content/Context;Landroid/os/Handler;Lb3/m$b;)V

    .line 576
    .line 577
    .line 578
    iput-object v2, v1, Lb3/g1;->A:Lb3/m;

    .line 579
    .line 580
    iget-boolean v6, v5, Lb3/b0$b;->l:Z

    .line 581
    .line 582
    if-eqz v6, :cond_5

    .line 583
    .line 584
    iget-object v14, v1, Lb3/g1;->f0:Ld3/e;

    .line 585
    .line 586
    goto :goto_4

    .line 587
    :cond_5
    move-object/from16 v14, v24

    .line 588
    .line 589
    :goto_4
    invoke-virtual {v2, v14}, Lb3/m;->m(Ld3/e;)V

    .line 590
    .line 591
    .line 592
    new-instance v2, Lb3/b4;

    .line 593
    .line 594
    iget-object v6, v5, Lb3/b0$b;->a:Landroid/content/Context;

    .line 595
    .line 596
    invoke-direct {v2, v6, v7, v4}, Lb3/b4;-><init>(Landroid/content/Context;Landroid/os/Handler;Lb3/b4$b;)V

    .line 597
    .line 598
    .line 599
    iput-object v2, v1, Lb3/g1;->B:Lb3/b4;

    .line 600
    .line 601
    iget-object v4, v1, Lb3/g1;->f0:Ld3/e;

    .line 602
    .line 603
    iget v4, v4, Ld3/e;->c:I

    .line 604
    .line 605
    invoke-static {v4}, Ly4/q0;->f0(I)I

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    invoke-virtual {v2, v4}, Lb3/b4;->h(I)V

    .line 610
    .line 611
    .line 612
    new-instance v4, Lb3/m4;

    .line 613
    .line 614
    iget-object v6, v5, Lb3/b0$b;->a:Landroid/content/Context;

    .line 615
    .line 616
    invoke-direct {v4, v6}, Lb3/m4;-><init>(Landroid/content/Context;)V

    .line 617
    .line 618
    .line 619
    iput-object v4, v1, Lb3/g1;->C:Lb3/m4;

    .line 620
    .line 621
    iget v6, v5, Lb3/b0$b;->m:I

    .line 622
    .line 623
    if-eqz v6, :cond_6

    .line 624
    .line 625
    move v12, v3

    .line 626
    goto :goto_5

    .line 627
    :cond_6
    move v12, v0

    .line 628
    :goto_5
    invoke-virtual {v4, v12}, Lb3/m4;->a(Z)V

    .line 629
    .line 630
    .line 631
    new-instance v4, Lb3/n4;

    .line 632
    .line 633
    iget-object v6, v5, Lb3/b0$b;->a:Landroid/content/Context;

    .line 634
    .line 635
    invoke-direct {v4, v6}, Lb3/n4;-><init>(Landroid/content/Context;)V

    .line 636
    .line 637
    .line 638
    iput-object v4, v1, Lb3/g1;->D:Lb3/n4;

    .line 639
    .line 640
    iget v5, v5, Lb3/b0$b;->m:I

    .line 641
    .line 642
    const/4 v6, 0x2

    .line 643
    if-ne v5, v6, :cond_7

    .line 644
    .line 645
    move v12, v3

    .line 646
    goto :goto_6

    .line 647
    :cond_7
    move v12, v0

    .line 648
    :goto_6
    invoke-virtual {v4, v12}, Lb3/n4;->a(Z)V

    .line 649
    .line 650
    .line 651
    invoke-static {v2}, Lb3/g1;->S0(Lb3/b4;)Lb3/y;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    iput-object v0, v1, Lb3/g1;->n0:Lb3/y;

    .line 656
    .line 657
    sget-object v0, Lz4/a0;->e:Lz4/a0;

    .line 658
    .line 659
    iput-object v0, v1, Lb3/g1;->o0:Lz4/a0;

    .line 660
    .line 661
    sget-object v0, Ly4/g0;->c:Ly4/g0;

    .line 662
    .line 663
    iput-object v0, v1, Lb3/g1;->b0:Ly4/g0;

    .line 664
    .line 665
    iget-object v0, v1, Lb3/g1;->f0:Ld3/e;

    .line 666
    .line 667
    move-object/from16 v5, v35

    .line 668
    .line 669
    invoke-virtual {v5, v0}, Lw4/h0;->h(Ld3/e;)V

    .line 670
    .line 671
    .line 672
    iget v0, v1, Lb3/g1;->e0:I

    .line 673
    .line 674
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    const/16 v2, 0xa

    .line 679
    .line 680
    invoke-direct {v1, v3, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    iget v0, v1, Lb3/g1;->e0:I

    .line 684
    .line 685
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-direct {v1, v6, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 690
    .line 691
    .line 692
    iget-object v0, v1, Lb3/g1;->f0:Ld3/e;

    .line 693
    .line 694
    const/4 v2, 0x3

    .line 695
    invoke-direct {v1, v3, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    iget v0, v1, Lb3/g1;->Z:I

    .line 699
    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    const/4 v2, 0x4

    .line 705
    invoke-direct {v1, v6, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    iget v0, v1, Lb3/g1;->a0:I

    .line 709
    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    const/4 v2, 0x5

    .line 715
    invoke-direct {v1, v6, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    iget-boolean v0, v1, Lb3/g1;->h0:Z

    .line 719
    .line 720
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    const/16 v2, 0x9

    .line 725
    .line 726
    invoke-direct {v1, v3, v2, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    const/4 v0, 0x7

    .line 730
    move-object/from16 v2, v36

    .line 731
    .line 732
    invoke-direct {v1, v6, v0, v2}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    const/4 v0, 0x6

    .line 736
    const/16 v3, 0x8

    .line 737
    .line 738
    invoke-direct {v1, v0, v3, v2}, Lb3/g1;->O1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .line 740
    .line 741
    invoke-virtual/range {v28 .. v28}, Ly4/g;->e()Z

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :catchall_0
    move-exception v0

    .line 746
    iget-object v2, v1, Lb3/g1;->d:Ly4/g;

    .line 747
    .line 748
    invoke-virtual {v2}, Ly4/g;->e()Z

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    nop

    .line 753
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method static synthetic A0(ZI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->c1(ZI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic A1(Lb3/j3;Lb3/m3$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/j3;->g:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lb3/m3$d;->onLoadingChanged(Z)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lb3/j3;->g:Z

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lb3/m3$d;->onIsLoadingChanged(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic B0(Lb3/g1;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb3/g1;->Y1(ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic B1(Lb3/j3;Lb3/m3$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/j3;->l:Z

    .line 2
    .line 3
    iget p0, p0, Lb3/j3;->e:I

    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lb3/m3$d;->onPlayerStateChanged(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic C0(Lb3/g1;)Lb3/b4;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->B:Lb3/b4;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic C1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lb3/j3;->e:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lb3/m3$d;->onPlaybackStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic D0(Lb3/b4;)Lb3/y;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/g1;->S0(Lb3/b4;)Lb3/y;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic D1(Lb3/j3;ILb3/m3$d;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/j3;->l:Z

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lb3/m3$d;->onPlayWhenReadyChanged(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic E0(Lb3/g1;)Lb3/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->n0:Lb3/y;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic E1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lb3/j3;->m:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lb3/m3$d;->onPlaybackSuppressionReasonChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic F0(Lb3/g1;Lb3/y;)Lb3/y;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->n0:Lb3/y;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic F1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/g1;->j1(Lb3/j3;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-interface {p1, p0}, Lb3/m3$d;->onIsPlayingChanged(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic G0(Lb3/g1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/j3;->n:Lb3/l3;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lb3/m3$d;->onPlaybackParametersChanged(Lb3/l3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic H0(Lb3/g1;Le3/e;)Le3/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->c0:Le3/e;

    .line 2
    .line 3
    return-object p1
.end method

.method private H1(Lb3/j3;Lb3/g4;Landroid/util/Pair;)Lb3/j3;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lb3/g4;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v4

    .line 20
    :goto_1
    invoke-static {v3}, Ly4/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    iget-object v5, v3, Lb3/j3;->a:Lb3/g4;

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p2}, Lb3/j3;->i(Lb3/g4;)Lb3/j3;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual/range {p2 .. p2}, Lb3/g4;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lb3/j3;->k()Ld4/t$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v2, v0, Lb3/g1;->t0:J

    .line 42
    .line 43
    invoke-static {v2, v3}, Ly4/q0;->A0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    const-wide/16 v14, 0x0

    .line 48
    .line 49
    sget-object v16, Ld4/u0;->d:Ld4/u0;

    .line 50
    .line 51
    iget-object v2, v0, Lb3/g1;->b:Lw4/i0;

    .line 52
    .line 53
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 54
    .line 55
    .line 56
    move-result-object v18

    .line 57
    move-object v7, v1

    .line 58
    move-wide v8, v12

    .line 59
    move-wide v10, v12

    .line 60
    move-object/from16 v17, v2

    .line 61
    .line 62
    invoke-virtual/range {v6 .. v18}, Lb3/j3;->c(Ld4/t$b;JJJJLd4/u0;Lw4/i0;Ljava/util/List;)Lb3/j3;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-wide v2, v1, Lb3/j3;->r:J

    .line 71
    .line 72
    iput-wide v2, v1, Lb3/j3;->p:J

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    iget-object v3, v6, Lb3/j3;->b:Ld4/t$b;

    .line 76
    .line 77
    iget-object v3, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static/range {p3 .. p3}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/util/Pair;

    .line 84
    .line 85
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    xor-int/2addr v7, v4

    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    new-instance v8, Ld4/t$b;

    .line 95
    .line 96
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-direct {v8, v9}, Ld4/t$b;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v8, v6, Lb3/j3;->b:Ld4/t$b;

    .line 103
    .line 104
    :goto_2
    move-object v14, v8

    .line 105
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v12

    .line 113
    invoke-virtual/range {p0 .. p0}, Lb3/g1;->r()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    invoke-static {v8, v9}, Ly4/q0;->A0(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v8

    .line 121
    invoke-virtual {v5}, Lb3/g4;->u()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    iget-object v2, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 128
    .line 129
    invoke-virtual {v5, v3, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lb3/g4$b;->q()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    sub-long/2addr v8, v2

    .line 138
    :cond_4
    if-nez v7, :cond_b

    .line 139
    .line 140
    cmp-long v2, v12, v8

    .line 141
    .line 142
    if-gez v2, :cond_5

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_5
    if-nez v2, :cond_9

    .line 147
    .line 148
    iget-object v2, v6, Lb3/j3;->k:Ld4/t$b;

    .line 149
    .line 150
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/4 v3, -0x1

    .line 157
    if-eq v2, v3, :cond_6

    .line 158
    .line 159
    iget-object v3, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 160
    .line 161
    invoke-virtual {v1, v2, v3}, Lb3/g4;->j(ILb3/g4$b;)Lb3/g4$b;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget v2, v2, Lb3/g4$b;->c:I

    .line 166
    .line 167
    iget-object v3, v14, Ld4/s;->a:Ljava/lang/Object;

    .line 168
    .line 169
    iget-object v4, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 170
    .line 171
    invoke-virtual {v1, v3, v4}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    iget v3, v3, Lb3/g4$b;->c:I

    .line 176
    .line 177
    if-eq v2, v3, :cond_8

    .line 178
    .line 179
    :cond_6
    iget-object v2, v14, Ld4/s;->a:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object v3, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 182
    .line 183
    invoke-virtual {v1, v2, v3}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14}, Ld4/s;->b()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    iget-object v1, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 193
    .line 194
    iget v2, v14, Ld4/s;->b:I

    .line 195
    .line 196
    iget v3, v14, Ld4/s;->c:I

    .line 197
    .line 198
    invoke-virtual {v1, v2, v3}, Lb3/g4$b;->e(II)J

    .line 199
    .line 200
    .line 201
    move-result-wide v1

    .line 202
    goto :goto_3

    .line 203
    :cond_7
    iget-object v1, v0, Lb3/g1;->n:Lb3/g4$b;

    .line 204
    .line 205
    iget-wide v1, v1, Lb3/g4$b;->d:J

    .line 206
    .line 207
    :goto_3
    iget-wide v8, v6, Lb3/j3;->r:J

    .line 208
    .line 209
    iget-wide v10, v6, Lb3/j3;->r:J

    .line 210
    .line 211
    iget-wide v12, v6, Lb3/j3;->d:J

    .line 212
    .line 213
    iget-wide v3, v6, Lb3/j3;->r:J

    .line 214
    .line 215
    sub-long v3, v1, v3

    .line 216
    .line 217
    iget-object v5, v6, Lb3/j3;->h:Ld4/u0;

    .line 218
    .line 219
    iget-object v15, v6, Lb3/j3;->i:Lw4/i0;

    .line 220
    .line 221
    iget-object v7, v6, Lb3/j3;->j:Ljava/util/List;

    .line 222
    .line 223
    move-object/from16 v18, v7

    .line 224
    .line 225
    move-object v7, v14

    .line 226
    move-object v0, v14

    .line 227
    move-object/from16 v17, v15

    .line 228
    .line 229
    move-wide v14, v3

    .line 230
    move-object/from16 v16, v5

    .line 231
    .line 232
    invoke-virtual/range {v6 .. v18}, Lb3/j3;->c(Ld4/t$b;JJJJLd4/u0;Lw4/i0;Ljava/util/List;)Lb3/j3;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3, v0}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    iput-wide v1, v6, Lb3/j3;->p:J

    .line 241
    .line 242
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 243
    .line 244
    goto/16 :goto_9

    .line 245
    .line 246
    :cond_9
    move-object v0, v14

    .line 247
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    xor-int/2addr v1, v4

    .line 252
    invoke-static {v1}, Ly4/a;->f(Z)V

    .line 253
    .line 254
    .line 255
    iget-wide v1, v6, Lb3/j3;->q:J

    .line 256
    .line 257
    sub-long v3, v12, v8

    .line 258
    .line 259
    sub-long/2addr v1, v3

    .line 260
    const-wide/16 v3, 0x0

    .line 261
    .line 262
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 263
    .line 264
    .line 265
    move-result-wide v14

    .line 266
    iget-wide v1, v6, Lb3/j3;->p:J

    .line 267
    .line 268
    iget-object v3, v6, Lb3/j3;->k:Ld4/t$b;

    .line 269
    .line 270
    iget-object v4, v6, Lb3/j3;->b:Ld4/t$b;

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_a

    .line 277
    .line 278
    add-long v1, v12, v14

    .line 279
    .line 280
    :cond_a
    iget-object v3, v6, Lb3/j3;->h:Ld4/u0;

    .line 281
    .line 282
    iget-object v4, v6, Lb3/j3;->i:Lw4/i0;

    .line 283
    .line 284
    iget-object v5, v6, Lb3/j3;->j:Ljava/util/List;

    .line 285
    .line 286
    move-object v7, v0

    .line 287
    move-wide v8, v12

    .line 288
    move-wide v10, v12

    .line 289
    move-object/from16 v16, v3

    .line 290
    .line 291
    move-object/from16 v17, v4

    .line 292
    .line 293
    move-object/from16 v18, v5

    .line 294
    .line 295
    invoke-virtual/range {v6 .. v18}, Lb3/j3;->c(Ld4/t$b;JJJJLd4/u0;Lw4/i0;Ljava/util/List;)Lb3/j3;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    iput-wide v1, v6, Lb3/j3;->p:J

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_b
    :goto_5
    move-object v0, v14

    .line 303
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    xor-int/2addr v1, v4

    .line 308
    invoke-static {v1}, Ly4/a;->f(Z)V

    .line 309
    .line 310
    .line 311
    const-wide/16 v14, 0x0

    .line 312
    .line 313
    if-eqz v7, :cond_c

    .line 314
    .line 315
    sget-object v1, Ld4/u0;->d:Ld4/u0;

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_c
    iget-object v1, v6, Lb3/j3;->h:Ld4/u0;

    .line 319
    .line 320
    :goto_6
    move-object/from16 v16, v1

    .line 321
    .line 322
    move-object v1, v0

    .line 323
    move-object/from16 v0, p0

    .line 324
    .line 325
    if-eqz v7, :cond_d

    .line 326
    .line 327
    iget-object v2, v0, Lb3/g1;->b:Lw4/i0;

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_d
    iget-object v2, v6, Lb3/j3;->i:Lw4/i0;

    .line 331
    .line 332
    :goto_7
    move-object/from16 v17, v2

    .line 333
    .line 334
    if-eqz v7, :cond_e

    .line 335
    .line 336
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    goto :goto_8

    .line 341
    :cond_e
    iget-object v2, v6, Lb3/j3;->j:Ljava/util/List;

    .line 342
    .line 343
    :goto_8
    move-object/from16 v18, v2

    .line 344
    .line 345
    move-object v7, v1

    .line 346
    move-wide v8, v12

    .line 347
    move-wide v10, v12

    .line 348
    move-wide v2, v12

    .line 349
    invoke-virtual/range {v6 .. v18}, Lb3/j3;->c(Ld4/t$b;JJJJLd4/u0;Lw4/i0;Ljava/util/List;)Lb3/j3;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v4, v1}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    iput-wide v2, v6, Lb3/j3;->p:J

    .line 358
    .line 359
    :goto_9
    return-object v6
.end method

.method static synthetic I0(Lb3/g1;)Lc3/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->r:Lc3/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private I1(Lb3/g4;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput p2, p0, Lb3/g1;->r0:I

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p1, p3, p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-wide/16 p3, 0x0

    .line 19
    .line 20
    :cond_0
    iput-wide p3, p0, Lb3/g1;->t0:J

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lb3/g1;->s0:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    if-eq p2, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lb3/g4;->t()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lt p2, v0, :cond_3

    .line 35
    .line 36
    :cond_2
    iget-boolean p2, p0, Lb3/g1;->G:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lb3/g4;->e(Z)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object p3, p0, Lb3/n;->a:Lb3/g4$d;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Lb3/g4$d;->d()J

    .line 49
    .line 50
    .line 51
    move-result-wide p3

    .line 52
    :cond_3
    move v3, p2

    .line 53
    iget-object v1, p0, Lb3/n;->a:Lb3/g4$d;

    .line 54
    .line 55
    iget-object v2, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 56
    .line 57
    invoke-static {p3, p4}, Ly4/q0;->A0(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    move-object v0, p1

    .line 62
    invoke-virtual/range {v0 .. v5}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method static synthetic J0(Lb3/g1;Lb3/x1;)Lb3/x1;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->R:Lb3/x1;

    .line 2
    .line 3
    return-object p1
.end method

.method private J1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1;->b0:Ly4/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/g0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lb3/g1;->b0:Ly4/g0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly4/g0;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ly4/g0;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Ly4/g0;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lb3/g1;->b0:Ly4/g0;

    .line 23
    .line 24
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 25
    .line 26
    new-instance v1, Lb3/i0;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2}, Lb3/i0;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 p1, 0x18

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method static synthetic K0(Lb3/g1;Lz4/a0;)Lz4/a0;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->o0:Lz4/a0;

    .line 2
    .line 3
    return-object p1
.end method

.method private K1(Lb3/g4;Ld4/t$b;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Ld4/s;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lb3/g4$b;->q()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    add-long/2addr p3, p1

    .line 15
    return-wide p3
.end method

.method static synthetic L0(Lb3/g1;)Ly4/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->l:Ly4/q;

    .line 2
    .line 3
    return-object p0
.end method

.method private L1(II)Lb3/j3;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lb3/g1;->F()Lb3/g4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lb3/g1;->o:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lb3/g1;->H:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    add-int/2addr v3, v4

    .line 19
    iput v3, p0, Lb3/g1;->H:I

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lb3/g1;->M1(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lb3/g1;->T0()Lb3/g4;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v5, p0, Lb3/g1;->q0:Lb3/j3;

    .line 29
    .line 30
    invoke-direct {p0, v1, v3}, Lb3/g1;->b1(Lb3/g4;Lb3/g4;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v5, v3, v1}, Lb3/g1;->H1(Lb3/j3;Lb3/g4;Landroid/util/Pair;)Lb3/j3;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v3, v1, Lb3/j3;->e:I

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    if-eq v3, v4, :cond_0

    .line 42
    .line 43
    if-eq v3, v5, :cond_0

    .line 44
    .line 45
    if-ge p1, p2, :cond_0

    .line 46
    .line 47
    if-ne p2, v2, :cond_0

    .line 48
    .line 49
    iget-object v2, v1, Lb3/j3;->a:Lb3/g4;

    .line 50
    .line 51
    invoke-virtual {v2}, Lb3/g4;->t()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-lt v0, v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    :goto_0
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Lb3/j3;->g(I)Lb3/j3;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 66
    .line 67
    iget-object v2, p0, Lb3/g1;->M:Ld4/o0;

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2, v2}, Lb3/t1;->n0(IILd4/o0;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method static synthetic M0(Lb3/g1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->U:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private M1(II)V
    .locals 2

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    :goto_0
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lb3/g1;->o:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lb3/g1;->M:Ld4/o0;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ld4/o0;->c(II)Ld4/o0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lb3/g1;->M:Ld4/o0;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic N0(Lb3/g1;Le3/e;)Le3/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->d0:Le3/e;

    .line 2
    .line 3
    return-object p1
.end method

.method private N1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1;->Y:Landroid/view/TextureView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lb3/g1;->x:Lb3/g1$c;

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const-string v0, "ExoPlayerImpl"

    .line 15
    .line 16
    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 17
    .line 18
    invoke-static {v0, v2}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lb3/g1;->Y:Landroid/view/TextureView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput-object v1, p0, Lb3/g1;->Y:Landroid/view/TextureView;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lb3/g1;->W:Landroid/view/SurfaceHolder;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lb3/g1;->x:Lb3/g1$c;

    .line 34
    .line 35
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lb3/g1;->W:Landroid/view/SurfaceHolder;

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method private O1(IILjava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/g1;->g:[Lb3/t3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lb3/t3;->h()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ne v4, p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v3}, Lb3/g1;->U0(Lb3/p3$b;)Lb3/p3;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p2}, Lb3/p3;->n(I)Lb3/p3;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p3}, Lb3/p3;->m(Ljava/lang/Object;)Lb3/p3;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lb3/p3;->l()Lb3/p3;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic P(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->w1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private P1()V
    .locals 3

    .line 1
    iget v0, p0, Lb3/g1;->g0:F

    .line 2
    .line 3
    iget-object v1, p0, Lb3/g1;->A:Lb3/m;

    .line 4
    .line 5
    invoke-virtual {v1}, Lb3/m;->g()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0, v2, v1, v0}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic Q(Lb3/g1;Lb3/m3$d;Ly4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb3/g1;->l1(Lb3/m3$d;Ly4/l;)V

    return-void
.end method

.method private Q0(ILjava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lb3/d3$c;

    .line 14
    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ld4/t;

    .line 20
    .line 21
    iget-boolean v4, p0, Lb3/g1;->p:Z

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Lb3/d3$c;-><init>(Ld4/t;Z)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lb3/g1;->o:Ljava/util/List;

    .line 30
    .line 31
    add-int v4, v1, p1

    .line 32
    .line 33
    new-instance v5, Lb3/g1$e;

    .line 34
    .line 35
    iget-object v6, v2, Lb3/d3$c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v2, v2, Lb3/d3$c;->a:Ld4/p;

    .line 38
    .line 39
    invoke-virtual {v2}, Ld4/p;->Z()Lb3/g4;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v5, v6, v2}, Lb3/g1$e;-><init>(Ljava/lang/Object;Lb3/g4;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lb3/g1;->M:Ld4/o0;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {p2, p1, v1}, Ld4/o0;->g(II)Ld4/o0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lb3/g1;->M:Ld4/o0;

    .line 63
    .line 64
    return-object v0
.end method

.method public static synthetic R(FLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->r1(FLb3/m3$d;)V

    return-void
.end method

.method private R0()Lb3/k2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb3/g1;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lb3/g1;->p0:Lb3/k2;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lb3/g4$d;->c:Lb3/f2;

    .line 25
    .line 26
    iget-object v1, p0, Lb3/g1;->p0:Lb3/k2;

    .line 27
    .line 28
    invoke-virtual {v1}, Lb3/k2;->b()Lb3/k2$b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v0, v0, Lb3/f2;->e:Lb3/k2;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lb3/k2$b;->J(Lb3/k2;)Lb3/k2$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lb3/k2$b;->H()Lb3/k2;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static synthetic S(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->C1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private static S0(Lb3/b4;)Lb3/y;
    .locals 3

    .line 1
    new-instance v0, Lb3/y;

    .line 2
    .line 3
    invoke-virtual {p0}, Lb3/b4;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lb3/b4;->c()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v2, v1, p0}, Lb3/y;-><init>(III)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private S1(Ljava/util/List;IJZ)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lb3/g1;->a1()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lb3/g1;->f()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget v4, v11, Lb3/g1;->H:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    add-int/2addr v4, v5

    .line 17
    iput v4, v11, Lb3/g1;->H:I

    .line 18
    .line 19
    iget-object v4, v11, Lb3/g1;->o:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v6, 0x0

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget-object v4, v11, Lb3/g1;->o:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v11, v6, v4}, Lb3/g1;->M1(II)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object/from16 v4, p1

    .line 38
    .line 39
    invoke-direct {v11, v6, v4}, Lb3/g1;->Q0(ILjava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    invoke-direct/range {p0 .. p0}, Lb3/g1;->T0()Lb3/g4;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lb3/g4;->u()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Lb3/g4;->t()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-ge v0, v7, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lb3/b2;

    .line 61
    .line 62
    move-wide/from16 v7, p3

    .line 63
    .line 64
    invoke-direct {v1, v4, v0, v7, v8}, Lb3/b2;-><init>(Lb3/g4;IJ)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    :goto_0
    move-wide/from16 v7, p3

    .line 69
    .line 70
    const/4 v9, -0x1

    .line 71
    if-eqz p5, :cond_3

    .line 72
    .line 73
    iget-boolean v0, v11, Lb3/g1;->G:Z

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Lb3/g4;->e(Z)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    move v14, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v0, v9, :cond_4

    .line 87
    .line 88
    move v14, v1

    .line 89
    move-wide v1, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v14, v0

    .line 92
    move-wide v1, v7

    .line 93
    :goto_1
    iget-object v0, v11, Lb3/g1;->q0:Lb3/j3;

    .line 94
    .line 95
    invoke-direct {v11, v4, v14, v1, v2}, Lb3/g1;->I1(Lb3/g4;IJ)Landroid/util/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-direct {v11, v0, v4, v3}, Lb3/g1;->H1(Lb3/j3;Lb3/g4;Landroid/util/Pair;)Lb3/j3;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v3, v0, Lb3/j3;->e:I

    .line 104
    .line 105
    if-eq v14, v9, :cond_7

    .line 106
    .line 107
    if-eq v3, v5, :cond_7

    .line 108
    .line 109
    invoke-virtual {v4}, Lb3/g4;->u()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    invoke-virtual {v4}, Lb3/g4;->t()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-lt v14, v3, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v3, 0x2

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 125
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lb3/j3;->g(I)Lb3/j3;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v12, v11, Lb3/g1;->k:Lb3/t1;

    .line 130
    .line 131
    invoke-static {v1, v2}, Ly4/q0;->A0(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v15

    .line 135
    iget-object v0, v11, Lb3/g1;->M:Ld4/o0;

    .line 136
    .line 137
    move-object/from16 v17, v0

    .line 138
    .line 139
    invoke-virtual/range {v12 .. v17}, Lb3/t1;->N0(Ljava/util/List;IJLd4/o0;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v11, Lb3/g1;->q0:Lb3/j3;

    .line 143
    .line 144
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 145
    .line 146
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v1, v3, Lb3/j3;->b:Ld4/t$b;

    .line 149
    .line 150
    iget-object v1, v1, Ld4/s;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    iget-object v0, v11, Lb3/g1;->q0:Lb3/j3;

    .line 159
    .line 160
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 161
    .line 162
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move v5, v6

    .line 170
    :goto_4
    const/4 v2, 0x0

    .line 171
    const/4 v4, 0x1

    .line 172
    const/4 v6, 0x0

    .line 173
    const/4 v7, 0x4

    .line 174
    invoke-direct {v11, v3}, Lb3/g1;->Z0(Lb3/j3;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v8

    .line 178
    const/4 v10, -0x1

    .line 179
    const/4 v12, 0x0

    .line 180
    move-object/from16 v0, p0

    .line 181
    .line 182
    move-object v1, v3

    .line 183
    move v3, v4

    .line 184
    move v4, v6

    .line 185
    move v6, v7

    .line 186
    move-wide v7, v8

    .line 187
    move v9, v10

    .line 188
    move v10, v12

    .line 189
    invoke-direct/range {v0 .. v10}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public static synthetic T(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->y1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private T0()Lb3/g4;
    .locals 3

    .line 1
    new-instance v0, Lb3/q3;

    .line 2
    .line 3
    iget-object v1, p0, Lb3/g1;->o:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lb3/g1;->M:Ld4/o0;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lb3/q3;-><init>(Ljava/util/Collection;Ld4/o0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private T1(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lb3/g1;->U1(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb3/g1;->V:Landroid/view/Surface;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic U(IILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb3/g1;->k1(IILb3/m3$d;)V

    return-void
.end method

.method private U0(Lb3/p3$b;)Lb3/p3;
    .locals 9

    .line 1
    invoke-direct {p0}, Lb3/g1;->a1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v8, Lb3/p3;

    .line 6
    .line 7
    iget-object v2, p0, Lb3/g1;->k:Lb3/t1;

    .line 8
    .line 9
    iget-object v1, p0, Lb3/g1;->q0:Lb3/j3;

    .line 10
    .line 11
    iget-object v4, v1, Lb3/j3;->a:Lb3/g4;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    move v5, v0

    .line 18
    iget-object v6, p0, Lb3/g1;->w:Ly4/d;

    .line 19
    .line 20
    invoke-virtual {v2}, Lb3/t1;->B()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    move-object v1, v8

    .line 25
    move-object v3, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lb3/p3;-><init>(Lb3/p3$a;Lb3/p3$b;Lb3/g4;ILy4/d;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    return-object v8
.end method

.method private U1(Ljava/lang/Object;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb3/g1;->g:[Lb3/t3;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x1

    .line 12
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    aget-object v6, v1, v4

    .line 15
    .line 16
    invoke-interface {v6}, Lb3/t3;->h()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x2

    .line 21
    if-ne v7, v8, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v6}, Lb3/g1;->U0(Lb3/p3$b;)Lb3/p3;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6, v5}, Lb3/p3;->n(I)Lb3/p3;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5, p1}, Lb3/p3;->m(Ljava/lang/Object;)Lb3/p3;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lb3/p3;->l()Lb3/p3;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lb3/g1;->U:Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-eq v1, p1, :cond_3

    .line 50
    .line 51
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lb3/p3;

    .line 66
    .line 67
    iget-wide v6, p0, Lb3/g1;->E:J

    .line 68
    .line 69
    invoke-virtual {v1, v6, v7}, Lb3/p3;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 78
    .line 79
    .line 80
    :cond_2
    move v5, v3

    .line 81
    :catch_1
    iget-object v0, p0, Lb3/g1;->U:Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v1, p0, Lb3/g1;->V:Landroid/view/Surface;

    .line 84
    .line 85
    if-ne v0, v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lb3/g1;->V:Landroid/view/Surface;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v5, v3

    .line 95
    :cond_4
    :goto_2
    iput-object p1, p0, Lb3/g1;->U:Ljava/lang/Object;

    .line 96
    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    new-instance p1, Lb3/v1;

    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    invoke-direct {p1, v0}, Lb3/v1;-><init>(I)V

    .line 103
    .line 104
    .line 105
    const/16 v0, 0x3eb

    .line 106
    .line 107
    invoke-static {p1, v0}, Lb3/a0;->i(Ljava/lang/RuntimeException;I)Lb3/a0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, v3, p1}, Lb3/g1;->W1(ZLb3/a0;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public static synthetic V(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->E1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private V0(Lb3/j3;Lb3/j3;ZIZZ)Landroid/util/Pair;
    .locals 6

    .line 1
    iget-object v0, p2, Lb3/j3;->a:Lb3/g4;

    .line 2
    .line 3
    iget-object v1, p1, Lb3/j3;->a:Lb3/g4;

    .line 4
    .line 5
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/util/Pair;

    .line 23
    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroid/util/Pair;

    .line 42
    .line 43
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    iget-object v2, p2, Lb3/j3;->b:Ld4/t$b;

    .line 54
    .line 55
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v4}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget v2, v2, Lb3/g4$b;->c:I

    .line 64
    .line 65
    iget-object v4, p0, Lb3/n;->a:Lb3/g4$d;

    .line 66
    .line 67
    invoke-virtual {v0, v2, v4}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v2, p1, Lb3/j3;->b:Ld4/t$b;

    .line 74
    .line 75
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v4, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v4}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v2, v2, Lb3/g4$b;->c:I

    .line 84
    .line 85
    iget-object v4, p0, Lb3/n;->a:Lb3/g4$d;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v4}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x2

    .line 98
    const/4 v2, 0x1

    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    if-nez p4, :cond_2

    .line 104
    .line 105
    move v5, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    if-eqz p3, :cond_3

    .line 108
    .line 109
    if-ne p4, v2, :cond_3

    .line 110
    .line 111
    move v5, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    if-eqz p5, :cond_4

    .line 114
    .line 115
    :goto_0
    new-instance p1, Landroid/util/Pair;

    .line 116
    .line 117
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_5
    if-eqz p3, :cond_6

    .line 134
    .line 135
    if-nez p4, :cond_6

    .line 136
    .line 137
    iget-object p2, p2, Lb3/j3;->b:Ld4/t$b;

    .line 138
    .line 139
    iget-wide v4, p2, Ld4/s;->d:J

    .line 140
    .line 141
    iget-object p1, p1, Lb3/j3;->b:Ld4/t$b;

    .line 142
    .line 143
    iget-wide p1, p1, Ld4/s;->d:J

    .line 144
    .line 145
    cmp-long p1, v4, p1

    .line 146
    .line 147
    if-gez p1, :cond_6

    .line 148
    .line 149
    new-instance p1, Landroid/util/Pair;

    .line 150
    .line 151
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    const/4 p3, 0x0

    .line 154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_6
    if-eqz p3, :cond_7

    .line 163
    .line 164
    if-ne p4, v2, :cond_7

    .line 165
    .line 166
    if-eqz p6, :cond_7

    .line 167
    .line 168
    new-instance p1, Landroid/util/Pair;

    .line 169
    .line 170
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_7
    new-instance p1, Landroid/util/Pair;

    .line 181
    .line 182
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-object p1
.end method

.method public static synthetic W(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->G1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private W1(ZLb3/a0;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lb3/g1;->o:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0, v0, p1}, Lb3/g1;->L1(II)Lb3/j3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lb3/g1;->q0:Lb3/j3;

    .line 21
    .line 22
    iget-object v1, p1, Lb3/j3;->b:Ld4/t$b;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-wide v1, p1, Lb3/j3;->r:J

    .line 29
    .line 30
    iput-wide v1, p1, Lb3/j3;->p:J

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p1, Lb3/j3;->q:J

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Lb3/j3;->g(I)Lb3/j3;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    move-object v3, p1

    .line 48
    iget p1, p0, Lb3/g1;->H:I

    .line 49
    .line 50
    add-int/2addr p1, v1

    .line 51
    iput p1, p0, Lb3/g1;->H:I

    .line 52
    .line 53
    iget-object p1, p0, Lb3/g1;->k:Lb3/t1;

    .line 54
    .line 55
    invoke-virtual {p1}, Lb3/t1;->g1()V

    .line 56
    .line 57
    .line 58
    iget-object p1, v3, Lb3/j3;->a:Lb3/g4;

    .line 59
    .line 60
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lb3/g1;->q0:Lb3/j3;

    .line 67
    .line 68
    iget-object p1, p1, Lb3/j3;->a:Lb3/g4;

    .line 69
    .line 70
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    move v7, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v7, v0

    .line 79
    :goto_1
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x1

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v8, 0x4

    .line 83
    invoke-direct {p0, v3}, Lb3/g1;->Z0(Lb3/j3;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v9

    .line 87
    const/4 v11, -0x1

    .line 88
    const/4 v12, 0x0

    .line 89
    move-object v2, p0

    .line 90
    invoke-direct/range {v2 .. v12}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static synthetic X(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->F1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private X1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1;->O:Lb3/m3$b;

    .line 2
    .line 3
    iget-object v1, p0, Lb3/g1;->f:Lb3/m3;

    .line 4
    .line 5
    iget-object v2, p0, Lb3/g1;->c:Lb3/m3$b;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ly4/q0;->H(Lb3/m3;Lb3/m3$b;)Lb3/m3$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lb3/g1;->O:Lb3/m3$b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lb3/m3$b;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 20
    .line 21
    new-instance v1, Lb3/x0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lb3/x0;-><init>(Lb3/g1;)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic Y(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->x1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private Y1(ZII)V
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    if-eq p2, v3, :cond_0

    .line 7
    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    :goto_0
    if-eqz v3, :cond_1

    .line 12
    .line 13
    if-eq p2, v2, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_1
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 17
    .line 18
    iget-boolean v4, v0, Lb3/j3;->l:Z

    .line 19
    .line 20
    if-ne v4, v3, :cond_2

    .line 21
    .line 22
    iget v4, v0, Lb3/j3;->m:I

    .line 23
    .line 24
    if-ne v4, v1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget v4, p0, Lb3/g1;->H:I

    .line 28
    .line 29
    add-int/2addr v4, v2

    .line 30
    iput v4, p0, Lb3/g1;->H:I

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Lb3/j3;->d(ZI)Lb3/j3;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v1}, Lb3/t1;->Q0(ZI)V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x5

    .line 45
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/4 v9, -0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v0, p0

    .line 53
    move-object v1, v2

    .line 54
    move v2, v3

    .line 55
    move v3, p3

    .line 56
    invoke-direct/range {v0 .. v10}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic Z(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->B1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private Z0(Lb3/j3;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lb3/j3;->a:Lb3/g4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lb3/g1;->t0:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Ly4/q0;->A0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p1, Lb3/j3;->b:Ld4/t$b;

    .line 17
    .line 18
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-wide v0, p1, Lb3/j3;->r:J

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    iget-object v0, p1, Lb3/j3;->a:Lb3/g4;

    .line 28
    .line 29
    iget-object v1, p1, Lb3/j3;->b:Ld4/t$b;

    .line 30
    .line 31
    iget-wide v2, p1, Lb3/j3;->r:J

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2, v3}, Lb3/g1;->K1(Lb3/g4;Ld4/t$b;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0
.end method

.method private Z1(Lb3/j3;IIZZIJIZ)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p6

    .line 6
    .line 7
    iget-object v10, v7, Lb3/g1;->q0:Lb3/j3;

    .line 8
    .line 9
    iput-object v8, v7, Lb3/g1;->q0:Lb3/j3;

    .line 10
    .line 11
    iget-object v0, v10, Lb3/j3;->a:Lb3/g4;

    .line 12
    .line 13
    iget-object v1, v8, Lb3/j3;->a:Lb3/g4;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lb3/g4;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v11, 0x1

    .line 20
    xor-int/lit8 v12, v0, 0x1

    .line 21
    .line 22
    move-object/from16 v0, p0

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object v2, v10

    .line 27
    move/from16 v3, p5

    .line 28
    .line 29
    move/from16 v4, p6

    .line 30
    .line 31
    move v5, v12

    .line 32
    move/from16 v6, p10

    .line 33
    .line 34
    invoke-direct/range {v0 .. v6}, Lb3/g1;->V0(Lb3/j3;Lb3/j3;ZIZZ)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v2, v7, Lb3/g1;->P:Lb3/k2;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v4, v8, Lb3/j3;->a:Lb3/g4;

    .line 60
    .line 61
    invoke-virtual {v4}, Lb3/g4;->u()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_0

    .line 66
    .line 67
    iget-object v3, v8, Lb3/j3;->a:Lb3/g4;

    .line 68
    .line 69
    iget-object v4, v8, Lb3/j3;->b:Ld4/t$b;

    .line 70
    .line 71
    iget-object v4, v4, Ld4/s;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v5, v7, Lb3/g1;->n:Lb3/g4$b;

    .line 74
    .line 75
    invoke-virtual {v3, v4, v5}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget v3, v3, Lb3/g4$b;->c:I

    .line 80
    .line 81
    iget-object v4, v8, Lb3/j3;->a:Lb3/g4;

    .line 82
    .line 83
    iget-object v5, v7, Lb3/n;->a:Lb3/g4$d;

    .line 84
    .line 85
    invoke-virtual {v4, v3, v5}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v3, v3, Lb3/g4$d;->c:Lb3/f2;

    .line 90
    .line 91
    :cond_0
    sget-object v4, Lb3/k2;->I:Lb3/k2;

    .line 92
    .line 93
    iput-object v4, v7, Lb3/g1;->p0:Lb3/k2;

    .line 94
    .line 95
    :cond_1
    if-nez v1, :cond_2

    .line 96
    .line 97
    iget-object v4, v10, Lb3/j3;->j:Ljava/util/List;

    .line 98
    .line 99
    iget-object v5, v8, Lb3/j3;->j:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    :cond_2
    iget-object v2, v7, Lb3/g1;->p0:Lb3/k2;

    .line 108
    .line 109
    invoke-virtual {v2}, Lb3/k2;->b()Lb3/k2$b;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v4, v8, Lb3/j3;->j:Ljava/util/List;

    .line 114
    .line 115
    invoke-virtual {v2, v4}, Lb3/k2$b;->K(Ljava/util/List;)Lb3/k2$b;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lb3/k2$b;->H()Lb3/k2;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iput-object v2, v7, Lb3/g1;->p0:Lb3/k2;

    .line 124
    .line 125
    invoke-direct/range {p0 .. p0}, Lb3/g1;->R0()Lb3/k2;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_3
    iget-object v4, v7, Lb3/g1;->P:Lb3/k2;

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Lb3/k2;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    xor-int/2addr v4, v11

    .line 136
    iput-object v2, v7, Lb3/g1;->P:Lb3/k2;

    .line 137
    .line 138
    iget-boolean v2, v10, Lb3/j3;->l:Z

    .line 139
    .line 140
    iget-boolean v5, v8, Lb3/j3;->l:Z

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    if-eq v2, v5, :cond_4

    .line 144
    .line 145
    move v2, v11

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    move v2, v6

    .line 148
    :goto_0
    iget v5, v10, Lb3/j3;->e:I

    .line 149
    .line 150
    iget v13, v8, Lb3/j3;->e:I

    .line 151
    .line 152
    if-eq v5, v13, :cond_5

    .line 153
    .line 154
    move v5, v11

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move v5, v6

    .line 157
    :goto_1
    if-nez v5, :cond_6

    .line 158
    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    :cond_6
    invoke-direct/range {p0 .. p0}, Lb3/g1;->b2()V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-boolean v13, v10, Lb3/j3;->g:Z

    .line 165
    .line 166
    iget-boolean v14, v8, Lb3/j3;->g:Z

    .line 167
    .line 168
    if-eq v13, v14, :cond_8

    .line 169
    .line 170
    move v13, v11

    .line 171
    goto :goto_2

    .line 172
    :cond_8
    move v13, v6

    .line 173
    :goto_2
    if-eqz v13, :cond_9

    .line 174
    .line 175
    invoke-direct {v7, v14}, Lb3/g1;->a2(Z)V

    .line 176
    .line 177
    .line 178
    :cond_9
    if-eqz v12, :cond_a

    .line 179
    .line 180
    iget-object v12, v7, Lb3/g1;->l:Ly4/q;

    .line 181
    .line 182
    new-instance v14, Lb3/d1;

    .line 183
    .line 184
    move/from16 v15, p2

    .line 185
    .line 186
    invoke-direct {v14, v8, v15}, Lb3/d1;-><init>(Lb3/j3;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v6, v14}, Ly4/q;->i(ILy4/q$a;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    if-eqz p5, :cond_b

    .line 193
    .line 194
    move/from16 v6, p9

    .line 195
    .line 196
    invoke-direct {v7, v9, v10, v6}, Lb3/g1;->f1(ILb3/j3;I)Lb3/m3$e;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    move-wide/from16 v14, p7

    .line 201
    .line 202
    invoke-direct {v7, v14, v15}, Lb3/g1;->e1(J)Lb3/m3$e;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    iget-object v14, v7, Lb3/g1;->l:Ly4/q;

    .line 207
    .line 208
    new-instance v15, Lb3/m0;

    .line 209
    .line 210
    invoke-direct {v15, v9, v6, v12}, Lb3/m0;-><init>(ILb3/m3$e;Lb3/m3$e;)V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0xb

    .line 214
    .line 215
    invoke-virtual {v14, v6, v15}, Ly4/q;->i(ILy4/q$a;)V

    .line 216
    .line 217
    .line 218
    :cond_b
    if-eqz v1, :cond_c

    .line 219
    .line 220
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 221
    .line 222
    new-instance v6, Lb3/n0;

    .line 223
    .line 224
    invoke-direct {v6, v3, v0}, Lb3/n0;-><init>(Lb3/f2;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v11, v6}, Ly4/q;->i(ILy4/q$a;)V

    .line 228
    .line 229
    .line 230
    :cond_c
    iget-object v0, v10, Lb3/j3;->f:Lb3/a0;

    .line 231
    .line 232
    iget-object v1, v8, Lb3/j3;->f:Lb3/a0;

    .line 233
    .line 234
    if-eq v0, v1, :cond_d

    .line 235
    .line 236
    iget-object v0, v7, Lb3/g1;->l:Ly4/q;

    .line 237
    .line 238
    new-instance v1, Lb3/o0;

    .line 239
    .line 240
    invoke-direct {v1, v8}, Lb3/o0;-><init>(Lb3/j3;)V

    .line 241
    .line 242
    .line 243
    const/16 v3, 0xa

    .line 244
    .line 245
    invoke-virtual {v0, v3, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, v8, Lb3/j3;->f:Lb3/a0;

    .line 249
    .line 250
    if-eqz v0, :cond_d

    .line 251
    .line 252
    iget-object v0, v7, Lb3/g1;->l:Ly4/q;

    .line 253
    .line 254
    new-instance v1, Lb3/p0;

    .line 255
    .line 256
    invoke-direct {v1, v8}, Lb3/p0;-><init>(Lb3/j3;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v3, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 260
    .line 261
    .line 262
    :cond_d
    iget-object v0, v10, Lb3/j3;->i:Lw4/i0;

    .line 263
    .line 264
    iget-object v1, v8, Lb3/j3;->i:Lw4/i0;

    .line 265
    .line 266
    if-eq v0, v1, :cond_e

    .line 267
    .line 268
    iget-object v0, v7, Lb3/g1;->h:Lw4/h0;

    .line 269
    .line 270
    iget-object v1, v1, Lw4/i0;->e:Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lw4/h0;->e(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v7, Lb3/g1;->l:Ly4/q;

    .line 276
    .line 277
    new-instance v1, Lb3/q0;

    .line 278
    .line 279
    invoke-direct {v1, v8}, Lb3/q0;-><init>(Lb3/j3;)V

    .line 280
    .line 281
    .line 282
    const/4 v3, 0x2

    .line 283
    invoke-virtual {v0, v3, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 284
    .line 285
    .line 286
    :cond_e
    if-eqz v4, :cond_f

    .line 287
    .line 288
    iget-object v0, v7, Lb3/g1;->P:Lb3/k2;

    .line 289
    .line 290
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 291
    .line 292
    new-instance v3, Lb3/r0;

    .line 293
    .line 294
    invoke-direct {v3, v0}, Lb3/r0;-><init>(Lb3/k2;)V

    .line 295
    .line 296
    .line 297
    const/16 v0, 0xe

    .line 298
    .line 299
    invoke-virtual {v1, v0, v3}, Ly4/q;->i(ILy4/q$a;)V

    .line 300
    .line 301
    .line 302
    :cond_f
    if-eqz v13, :cond_10

    .line 303
    .line 304
    iget-object v0, v7, Lb3/g1;->l:Ly4/q;

    .line 305
    .line 306
    new-instance v1, Lb3/s0;

    .line 307
    .line 308
    invoke-direct {v1, v8}, Lb3/s0;-><init>(Lb3/j3;)V

    .line 309
    .line 310
    .line 311
    const/4 v3, 0x3

    .line 312
    invoke-virtual {v0, v3, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 313
    .line 314
    .line 315
    :cond_10
    const/4 v0, -0x1

    .line 316
    if-nez v5, :cond_11

    .line 317
    .line 318
    if-eqz v2, :cond_12

    .line 319
    .line 320
    :cond_11
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 321
    .line 322
    new-instance v3, Lb3/u0;

    .line 323
    .line 324
    invoke-direct {v3, v8}, Lb3/u0;-><init>(Lb3/j3;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v0, v3}, Ly4/q;->i(ILy4/q$a;)V

    .line 328
    .line 329
    .line 330
    :cond_12
    if-eqz v5, :cond_13

    .line 331
    .line 332
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 333
    .line 334
    new-instance v3, Lb3/v0;

    .line 335
    .line 336
    invoke-direct {v3, v8}, Lb3/v0;-><init>(Lb3/j3;)V

    .line 337
    .line 338
    .line 339
    const/4 v4, 0x4

    .line 340
    invoke-virtual {v1, v4, v3}, Ly4/q;->i(ILy4/q$a;)V

    .line 341
    .line 342
    .line 343
    :cond_13
    if-eqz v2, :cond_14

    .line 344
    .line 345
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 346
    .line 347
    new-instance v2, Lb3/e1;

    .line 348
    .line 349
    move/from16 v3, p3

    .line 350
    .line 351
    invoke-direct {v2, v8, v3}, Lb3/e1;-><init>(Lb3/j3;I)V

    .line 352
    .line 353
    .line 354
    const/4 v3, 0x5

    .line 355
    invoke-virtual {v1, v3, v2}, Ly4/q;->i(ILy4/q$a;)V

    .line 356
    .line 357
    .line 358
    :cond_14
    iget v1, v10, Lb3/j3;->m:I

    .line 359
    .line 360
    iget v2, v8, Lb3/j3;->m:I

    .line 361
    .line 362
    if-eq v1, v2, :cond_15

    .line 363
    .line 364
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 365
    .line 366
    new-instance v2, Lb3/f1;

    .line 367
    .line 368
    invoke-direct {v2, v8}, Lb3/f1;-><init>(Lb3/j3;)V

    .line 369
    .line 370
    .line 371
    const/4 v3, 0x6

    .line 372
    invoke-virtual {v1, v3, v2}, Ly4/q;->i(ILy4/q$a;)V

    .line 373
    .line 374
    .line 375
    :cond_15
    invoke-static {v10}, Lb3/g1;->j1(Lb3/j3;)Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-static/range {p1 .. p1}, Lb3/g1;->j1(Lb3/j3;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eq v1, v2, :cond_16

    .line 384
    .line 385
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 386
    .line 387
    new-instance v2, Lb3/j0;

    .line 388
    .line 389
    invoke-direct {v2, v8}, Lb3/j0;-><init>(Lb3/j3;)V

    .line 390
    .line 391
    .line 392
    const/4 v3, 0x7

    .line 393
    invoke-virtual {v1, v3, v2}, Ly4/q;->i(ILy4/q$a;)V

    .line 394
    .line 395
    .line 396
    :cond_16
    iget-object v1, v10, Lb3/j3;->n:Lb3/l3;

    .line 397
    .line 398
    iget-object v2, v8, Lb3/j3;->n:Lb3/l3;

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Lb3/l3;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_17

    .line 405
    .line 406
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 407
    .line 408
    new-instance v2, Lb3/k0;

    .line 409
    .line 410
    invoke-direct {v2, v8}, Lb3/k0;-><init>(Lb3/j3;)V

    .line 411
    .line 412
    .line 413
    const/16 v3, 0xc

    .line 414
    .line 415
    invoke-virtual {v1, v3, v2}, Ly4/q;->i(ILy4/q$a;)V

    .line 416
    .line 417
    .line 418
    :cond_17
    if-eqz p4, :cond_18

    .line 419
    .line 420
    iget-object v1, v7, Lb3/g1;->l:Ly4/q;

    .line 421
    .line 422
    new-instance v2, Lb3/l0;

    .line 423
    .line 424
    invoke-direct {v2}, Lb3/l0;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v0, v2}, Ly4/q;->i(ILy4/q$a;)V

    .line 428
    .line 429
    .line 430
    :cond_18
    invoke-direct/range {p0 .. p0}, Lb3/g1;->X1()V

    .line 431
    .line 432
    .line 433
    iget-object v0, v7, Lb3/g1;->l:Ly4/q;

    .line 434
    .line 435
    invoke-virtual {v0}, Ly4/q;->f()V

    .line 436
    .line 437
    .line 438
    iget-boolean v0, v10, Lb3/j3;->o:Z

    .line 439
    .line 440
    iget-boolean v1, v8, Lb3/j3;->o:Z

    .line 441
    .line 442
    if-eq v0, v1, :cond_19

    .line 443
    .line 444
    iget-object v0, v7, Lb3/g1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_19

    .line 455
    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Lb3/b0$a;

    .line 461
    .line 462
    iget-boolean v2, v8, Lb3/j3;->o:Z

    .line 463
    .line 464
    invoke-interface {v1, v2}, Lb3/b0$a;->v(Z)V

    .line 465
    .line 466
    .line 467
    goto :goto_3

    .line 468
    :cond_19
    return-void
.end method

.method public static synthetic a0(Lb3/g1;Lb3/t1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->n1(Lb3/t1$e;)V

    return-void
.end method

.method private a1()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 2
    .line 3
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 4
    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lb3/g1;->r0:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 15
    .line 16
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 17
    .line 18
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 19
    .line 20
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lb3/g4$b;->c:I

    .line 29
    .line 30
    return v0
.end method

.method private a2(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b0(ILb3/m3$e;Lb3/m3$e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lb3/g1;->u1(ILb3/m3$e;Lb3/m3$e;Lb3/m3$d;)V

    return-void
.end method

.method private b1(Lb3/g4;Lb3/g4;)Landroid/util/Pair;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lb3/g1;->r()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v5, -0x1

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p2}, Lb3/g4;->u()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    iget-object v7, p0, Lb3/n;->a:Lb3/g4$d;

    .line 29
    .line 30
    iget-object v8, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 31
    .line 32
    invoke-static {v0, v1}, Ly4/q0;->A0(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    move-object v6, p1

    .line 37
    invoke-virtual/range {v6 .. v11}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/util/Pair;

    .line 46
    .line 47
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p2, v10}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eq v1, v5, :cond_1

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    iget-object v6, p0, Lb3/n;->a:Lb3/g4$d;

    .line 57
    .line 58
    iget-object v7, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 59
    .line 60
    iget v8, p0, Lb3/g1;->F:I

    .line 61
    .line 62
    iget-boolean v9, p0, Lb3/g1;->G:Z

    .line 63
    .line 64
    move-object v11, p1

    .line 65
    move-object v12, p2

    .line 66
    invoke-static/range {v6 .. v12}, Lb3/t1;->y0(Lb3/g4$d;Lb3/g4$b;IZLjava/lang/Object;Lb3/g4;Lb3/g4;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 78
    .line 79
    iget p1, p1, Lb3/g4$b;->c:I

    .line 80
    .line 81
    iget-object v0, p0, Lb3/n;->a:Lb3/g4$d;

    .line 82
    .line 83
    invoke-virtual {p2, p1, v0}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lb3/g4$d;->d()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-direct {p0, p2, p1, v0, v1}, Lb3/g1;->I1(Lb3/g4;IJ)Landroid/util/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lb3/g1;->I1(Lb3/g4;IJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    invoke-virtual {p2}, Lb3/g4;->u()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 p1, 0x0

    .line 116
    :goto_1
    if-eqz p1, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-direct {p0}, Lb3/g1;->a1()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    :goto_2
    if-eqz p1, :cond_6

    .line 124
    .line 125
    move-wide v0, v3

    .line 126
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lb3/g1;->I1(Lb3/g4;IJ)Landroid/util/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method private b2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb3/g1;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lb3/g1;->W0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lb3/g1;->C:Lb3/m4;

    .line 30
    .line 31
    invoke-virtual {p0}, Lb3/g1;->j()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_0
    invoke-virtual {v3, v1}, Lb3/m4;->b(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lb3/g1;->D:Lb3/n4;

    .line 45
    .line 46
    invoke-virtual {p0}, Lb3/g1;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lb3/n4;->b(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Lb3/g1;->C:Lb3/m4;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lb3/m4;->b(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lb3/g1;->D:Lb3/n4;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lb3/n4;->b(Z)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public static synthetic c0(Ld3/e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->p1(Ld3/e;Lb3/m3$d;)V

    return-void
.end method

.method private static c1(ZI)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private c2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1;->d:Ly4/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/g;->b()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lb3/g1;->X0()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lb3/g1;->X0()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 45
    .line 46
    invoke-static {v1, v0}, Ly4/q0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lb3/g1;->j0:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-boolean v1, p0, Lb3/g1;->k0:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 66
    .line 67
    invoke-static {v2, v0, v1}, Ly4/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lb3/g1;->k0:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic d0(Lb3/k2;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->z1(Lb3/k2;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic e0(Lb3/g1;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->s1(Lb3/m3$d;)V

    return-void
.end method

.method private e1(J)Lb3/m3$e;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 6
    .line 7
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 16
    .line 17
    iget-object v1, v0, Lb3/j3;->b:Ld4/t$b;

    .line 18
    .line 19
    iget-object v1, v1, Ld4/s;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 22
    .line 23
    iget-object v3, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 29
    .line 30
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lb3/g1;->q0:Lb3/j3;

    .line 37
    .line 38
    iget-object v3, v3, Lb3/j3;->a:Lb3/g4;

    .line 39
    .line 40
    iget-object v4, p0, Lb3/n;->a:Lb3/g4$d;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v4}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v4, p0, Lb3/n;->a:Lb3/g4$d;

    .line 49
    .line 50
    iget-object v4, v4, Lb3/g4$d;->c:Lb3/f2;

    .line 51
    .line 52
    move v5, v0

    .line 53
    move-object v12, v4

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v3

    .line 56
    move-object v3, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    const/4 v1, -0x1

    .line 60
    move-object v3, v0

    .line 61
    move-object v4, v3

    .line 62
    move v5, v1

    .line 63
    move-object v1, v4

    .line 64
    :goto_0
    invoke-static {p1, p2}, Ly4/q0;->X0(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    new-instance p1, Lb3/m3$e;

    .line 69
    .line 70
    iget-object p2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 71
    .line 72
    iget-object p2, p2, Lb3/j3;->b:Ld4/t$b;

    .line 73
    .line 74
    invoke-virtual {p2}, Ld4/s;->b()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    iget-object p2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 81
    .line 82
    invoke-static {p2}, Lb3/g1;->g1(Lb3/j3;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-static {v8, v9}, Ly4/q0;->X0(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-wide v8, v6

    .line 92
    :goto_1
    iget-object p2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 93
    .line 94
    iget-object p2, p2, Lb3/j3;->b:Ld4/t$b;

    .line 95
    .line 96
    iget v10, p2, Ld4/s;->b:I

    .line 97
    .line 98
    iget v11, p2, Ld4/s;->c:I

    .line 99
    .line 100
    move-object v0, p1

    .line 101
    invoke-direct/range {v0 .. v11}, Lb3/m3$e;-><init>(Ljava/lang/Object;ILb3/f2;Ljava/lang/Object;IJJII)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method public static synthetic f0(ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->q1(ILb3/m3$d;)V

    return-void
.end method

.method private f1(ILb3/j3;I)Lb3/m3$e;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lb3/g4$b;

    .line 6
    .line 7
    invoke-direct {v2}, Lb3/g4$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lb3/j3;->a:Lb3/g4;

    .line 11
    .line 12
    invoke-virtual {v3}, Lb3/g4;->u()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v1, Lb3/j3;->b:Ld4/t$b;

    .line 20
    .line 21
    iget-object v3, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, v1, Lb3/j3;->a:Lb3/g4;

    .line 24
    .line 25
    invoke-virtual {v5, v3, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 26
    .line 27
    .line 28
    iget v5, v2, Lb3/g4$b;->c:I

    .line 29
    .line 30
    iget-object v6, v1, Lb3/j3;->a:Lb3/g4;

    .line 31
    .line 32
    invoke-virtual {v6, v3}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v7, v1, Lb3/j3;->a:Lb3/g4;

    .line 37
    .line 38
    iget-object v8, v0, Lb3/n;->a:Lb3/g4$d;

    .line 39
    .line 40
    invoke-virtual {v7, v5, v8}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v7, v7, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v8, v0, Lb3/n;->a:Lb3/g4$d;

    .line 47
    .line 48
    iget-object v8, v8, Lb3/g4$d;->c:Lb3/f2;

    .line 49
    .line 50
    move-object v9, v3

    .line 51
    move v10, v6

    .line 52
    move-object v6, v7

    .line 53
    move v7, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    move/from16 v7, p3

    .line 57
    .line 58
    move-object v6, v3

    .line 59
    move-object v8, v6

    .line 60
    move-object v9, v8

    .line 61
    move v10, v4

    .line 62
    :goto_0
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object v3, v1, Lb3/j3;->b:Ld4/t$b;

    .line 65
    .line 66
    invoke-virtual {v3}, Ld4/s;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    iget-object v3, v1, Lb3/j3;->b:Ld4/t$b;

    .line 73
    .line 74
    iget v4, v3, Ld4/s;->b:I

    .line 75
    .line 76
    iget v3, v3, Ld4/s;->c:I

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Lb3/g4$b;->e(II)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static/range {p2 .. p2}, Lb3/g1;->g1(Lb3/j3;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    iget-object v3, v1, Lb3/j3;->b:Ld4/t$b;

    .line 88
    .line 89
    iget v3, v3, Ld4/s;->e:I

    .line 90
    .line 91
    if-eq v3, v4, :cond_2

    .line 92
    .line 93
    iget-object v2, v0, Lb3/g1;->q0:Lb3/j3;

    .line 94
    .line 95
    invoke-static {v2}, Lb3/g1;->g1(Lb3/j3;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-wide v3, v2, Lb3/g4$b;->e:J

    .line 101
    .line 102
    iget-wide v11, v2, Lb3/g4$b;->d:J

    .line 103
    .line 104
    add-long v2, v3, v11

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object v3, v1, Lb3/j3;->b:Ld4/t$b;

    .line 108
    .line 109
    invoke-virtual {v3}, Ld4/s;->b()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    iget-wide v2, v1, Lb3/j3;->r:J

    .line 116
    .line 117
    invoke-static/range {p2 .. p2}, Lb3/g1;->g1(Lb3/j3;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-wide v2, v2, Lb3/g4$b;->e:J

    .line 123
    .line 124
    iget-wide v4, v1, Lb3/j3;->r:J

    .line 125
    .line 126
    add-long/2addr v2, v4

    .line 127
    :goto_1
    move-wide v4, v2

    .line 128
    :goto_2
    new-instance v17, Lb3/m3$e;

    .line 129
    .line 130
    invoke-static {v2, v3}, Ly4/q0;->X0(J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    invoke-static {v4, v5}, Ly4/q0;->X0(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v13

    .line 138
    iget-object v1, v1, Lb3/j3;->b:Ld4/t$b;

    .line 139
    .line 140
    iget v15, v1, Ld4/s;->b:I

    .line 141
    .line 142
    iget v1, v1, Ld4/s;->c:I

    .line 143
    .line 144
    move-object/from16 v5, v17

    .line 145
    .line 146
    move/from16 v16, v1

    .line 147
    .line 148
    invoke-direct/range {v5 .. v16}, Lb3/m3$e;-><init>(Ljava/lang/Object;ILb3/f2;Ljava/lang/Object;IJJII)V

    .line 149
    .line 150
    .line 151
    return-object v17
.end method

.method public static synthetic g0(Lb3/f2;ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb3/g1;->v1(Lb3/f2;ILb3/m3$d;)V

    return-void
.end method

.method private static g1(Lb3/j3;)J
    .locals 6

    .line 1
    new-instance v0, Lb3/g4$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lb3/g4$d;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lb3/g4$b;

    .line 7
    .line 8
    invoke-direct {v1}, Lb3/g4$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lb3/j3;->a:Lb3/g4;

    .line 12
    .line 13
    iget-object v3, p0, Lb3/j3;->b:Ld4/t$b;

    .line 14
    .line 15
    iget-object v3, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Lb3/j3;->c:J

    .line 21
    .line 22
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lb3/j3;->a:Lb3/g4;

    .line 32
    .line 33
    iget v1, v1, Lb3/g4$b;->c:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lb3/g4$d;->e()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lb3/g4$b;->q()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v2, p0, Lb3/j3;->c:J

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    :goto_0
    return-wide v0
.end method

.method public static synthetic h0(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1;->A1(Lb3/j3;Lb3/m3$d;)V

    return-void
.end method

.method private h1(Lb3/t1$e;)V
    .locals 11

    .line 1
    iget v1, p0, Lb3/g1;->H:I

    .line 2
    .line 3
    iget v2, p1, Lb3/t1$e;->c:I

    .line 4
    .line 5
    sub-int/2addr v1, v2

    .line 6
    iput v1, p0, Lb3/g1;->H:I

    .line 7
    .line 8
    iget-boolean v2, p1, Lb3/t1$e;->d:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v2, p1, Lb3/t1$e;->e:I

    .line 14
    .line 15
    iput v2, p0, Lb3/g1;->I:I

    .line 16
    .line 17
    iput-boolean v3, p0, Lb3/g1;->J:Z

    .line 18
    .line 19
    :cond_0
    iget-boolean v2, p1, Lb3/t1$e;->f:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v2, p1, Lb3/t1$e;->g:I

    .line 24
    .line 25
    iput v2, p0, Lb3/g1;->K:I

    .line 26
    .line 27
    :cond_1
    if-nez v1, :cond_b

    .line 28
    .line 29
    iget-object v1, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 30
    .line 31
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 32
    .line 33
    iget-object v2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 34
    .line 35
    iget-object v2, v2, Lb3/j3;->a:Lb3/g4;

    .line 36
    .line 37
    invoke-virtual {v2}, Lb3/g4;->u()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    iput v2, p0, Lb3/g1;->r0:I

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    iput-wide v5, p0, Lb3/g1;->t0:J

    .line 56
    .line 57
    iput v4, p0, Lb3/g1;->s0:I

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    move-object v2, v1

    .line 66
    check-cast v2, Lb3/q3;

    .line 67
    .line 68
    invoke-virtual {v2}, Lb3/q3;->I()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iget-object v6, p0, Lb3/g1;->o:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ne v5, v6, :cond_3

    .line 83
    .line 84
    move v5, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move v5, v4

    .line 87
    :goto_0
    invoke-static {v5}, Ly4/a;->f(Z)V

    .line 88
    .line 89
    .line 90
    move v5, v4

    .line 91
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-ge v5, v6, :cond_4

    .line 96
    .line 97
    iget-object v6, p0, Lb3/g1;->o:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lb3/g1$e;

    .line 104
    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lb3/g4;

    .line 110
    .line 111
    invoke-static {v6, v7}, Lb3/g1$e;->c(Lb3/g1$e;Lb3/g4;)Lb3/g4;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-boolean v2, p0, Lb3/g1;->J:Z

    .line 118
    .line 119
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-eqz v2, :cond_a

    .line 125
    .line 126
    iget-object v2, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 127
    .line 128
    iget-object v2, v2, Lb3/j3;->b:Ld4/t$b;

    .line 129
    .line 130
    iget-object v7, p0, Lb3/g1;->q0:Lb3/j3;

    .line 131
    .line 132
    iget-object v7, v7, Lb3/j3;->b:Ld4/t$b;

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    iget-object v2, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 141
    .line 142
    iget-wide v7, v2, Lb3/j3;->d:J

    .line 143
    .line 144
    iget-object v2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 145
    .line 146
    iget-wide v9, v2, Lb3/j3;->r:J

    .line 147
    .line 148
    cmp-long v2, v7, v9

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v3, v4

    .line 154
    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 155
    .line 156
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_8

    .line 161
    .line 162
    iget-object v2, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 163
    .line 164
    iget-object v2, v2, Lb3/j3;->b:Ld4/t$b;

    .line 165
    .line 166
    invoke-virtual {v2}, Ld4/s;->b()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    iget-object v2, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 174
    .line 175
    iget-object v5, v2, Lb3/j3;->b:Ld4/t$b;

    .line 176
    .line 177
    iget-wide v6, v2, Lb3/j3;->d:J

    .line 178
    .line 179
    invoke-direct {p0, v1, v5, v6, v7}, Lb3/g1;->K1(Lb3/g4;Ld4/t$b;J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    :goto_3
    iget-object v1, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 185
    .line 186
    iget-wide v1, v1, Lb3/j3;->d:J

    .line 187
    .line 188
    :goto_4
    move-wide v7, v1

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move-wide v7, v5

    .line 191
    :goto_5
    move v5, v3

    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move-wide v7, v5

    .line 194
    move v5, v4

    .line 195
    :goto_6
    iput-boolean v4, p0, Lb3/g1;->J:Z

    .line 196
    .line 197
    iget-object v1, p1, Lb3/t1$e;->b:Lb3/j3;

    .line 198
    .line 199
    const/4 v2, 0x1

    .line 200
    iget v3, p0, Lb3/g1;->K:I

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    iget v6, p0, Lb3/g1;->I:I

    .line 204
    .line 205
    const/4 v9, -0x1

    .line 206
    const/4 v10, 0x0

    .line 207
    move-object v0, p0

    .line 208
    invoke-direct/range {v0 .. v10}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 209
    .line 210
    .line 211
    :cond_b
    return-void
.end method

.method public static synthetic i0(Lb3/j3;ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb3/g1;->t1(Lb3/j3;ILb3/m3$d;)V

    return-void
.end method

.method private i1(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/16 v3, 0xfa0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x2

    .line 28
    new-instance v0, Landroid/media/AudioTrack;

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move v8, p1

    .line 34
    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public static synthetic j0(Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/g1;->o1(Lb3/m3$d;)V

    return-void
.end method

.method private static j1(Lb3/j3;)Z
    .locals 2

    .line 1
    iget v0, p0, Lb3/j3;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lb3/j3;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lb3/j3;->m:I

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static synthetic k0(Lb3/g1;Lb3/t1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->m1(Lb3/t1$e;)V

    return-void
.end method

.method private static synthetic k1(IILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lb3/m3$d;->onSurfaceSizeChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lb3/j3;ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb3/g1;->D1(Lb3/j3;ILb3/m3$d;)V

    return-void
.end method

.method private synthetic l1(Lb3/m3$d;Ly4/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1;->f:Lb3/m3;

    .line 2
    .line 3
    new-instance v1, Lb3/m3$c;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lb3/m3$c;-><init>(Ly4/l;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lb3/m3$d;->onEvents(Lb3/m3;Lb3/m3$c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic m0(Lb3/g1;Lb3/x1;)Lb3/x1;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->S:Lb3/x1;

    .line 2
    .line 3
    return-object p1
.end method

.method private synthetic m1(Lb3/t1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->h1(Lb3/t1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n0(Lb3/g1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/g1;->h0:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic n1(Lb3/t1$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1;->i:Ly4/n;

    .line 2
    .line 3
    new-instance v1, Lb3/w0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lb3/w0;-><init>(Lb3/g1;Lb3/t1$e;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ly4/n;->b(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic o0(Lb3/g1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb3/g1;->h0:Z

    .line 2
    .line 3
    return p1
.end method

.method private static synthetic o1(Lb3/m3$d;)V
    .locals 2

    .line 1
    new-instance v0, Lb3/v1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lb3/v1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x3eb

    .line 8
    .line 9
    invoke-static {v0, v1}, Lb3/a0;->i(Ljava/lang/RuntimeException;I)Lb3/a0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lb3/m3$d;->onPlayerError(Lb3/i3;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic p0(Lb3/g1;Lm4/e;)Lm4/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->i0:Lm4/e;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic p1(Ld3/e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onAudioAttributesChanged(Ld3/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q0(Lb3/g1;)Lb3/k2;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->p0:Lb3/k2;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic q1(ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onRepeatModeChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Lb3/g1;Lb3/k2;)Lb3/k2;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->p0:Lb3/k2;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic r1(FLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onVolumeChanged(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s0(Lb3/g1;)Lb3/k2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1;->R0()Lb3/k2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic s1(Lb3/m3$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1;->O:Lb3/m3$b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lb3/m3$d;->onAvailableCommandsChanged(Lb3/m3$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic t0(Lb3/g1;)Lb3/k2;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/g1;->P:Lb3/k2;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic t1(Lb3/j3;ILb3/m3$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/j3;->a:Lb3/g4;

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lb3/m3$d;->onTimelineChanged(Lb3/g4;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic u0(Lb3/g1;Lb3/k2;)Lb3/k2;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1;->P:Lb3/k2;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic u1(ILb3/m3$e;Lb3/m3$e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0}, Lb3/m3$d;->onPositionDiscontinuity(I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p1, p2, p0}, Lb3/m3$d;->onPositionDiscontinuity(Lb3/m3$e;Lb3/m3$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic v0(Lb3/g1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb3/g1;->X:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic v1(Lb3/f2;ILb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lb3/m3$d;->onMediaItemTransition(Lb3/f2;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w0(Lb3/g1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->U1(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic w1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/j3;->f:Lb3/a0;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lb3/m3$d;->onPlayerErrorChanged(Lb3/i3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic x0(Lb3/g1;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb3/g1;->J1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic x1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/j3;->f:Lb3/a0;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lb3/m3$d;->onPlayerError(Lb3/i3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic y0(Lb3/g1;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1;->T1(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y1(Lb3/j3;Lb3/m3$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/j3;->i:Lw4/i0;

    .line 2
    .line 3
    iget-object p0, p0, Lw4/i0;->d:Lb3/l4;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lb3/m3$d;->onTracksChanged(Lb3/l4;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic z0(Lb3/g1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1;->P1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z1(Lb3/k2;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onMediaMetadataChanged(Lb3/k2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lb3/g1;->F:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lb3/g1;->F:I

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lb3/t1;->U0(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 16
    .line 17
    new-instance v1, Lb3/c1;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lb3/c1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lb3/g1;->X1()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lb3/g1;->l:Ly4/q;

    .line 31
    .line 32
    invoke-virtual {p1}, Ly4/q;->f()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public B(Ld4/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lb3/g1;->Q1(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public D()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget v0, v0, Lb3/j3;->m:I

    .line 7
    .line 8
    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lb3/g1;->F:I

    .line 5
    .line 6
    return v0
.end method

.method public F()Lb3/g4;
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 7
    .line 8
    return-object v0
.end method

.method public G()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lb3/g1;->G:Z

    .line 5
    .line 6
    return v0
.end method

.method public M(IJIZ)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move v0, p1

    .line 3
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-static {v2}, Ly4/a;->a(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v11, Lb3/g1;->r:Lc3/a;

    .line 16
    .line 17
    invoke-interface {v2}, Lc3/a;->w()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v11, Lb3/g1;->q0:Lb3/j3;

    .line 21
    .line 22
    iget-object v2, v2, Lb3/j3;->a:Lb3/g4;

    .line 23
    .line 24
    invoke-virtual {v2}, Lb3/g4;->u()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lb3/g4;->t()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lt v0, v3, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget v3, v11, Lb3/g1;->H:I

    .line 38
    .line 39
    add-int/2addr v3, v1

    .line 40
    iput v3, v11, Lb3/g1;->H:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const-string v0, "ExoPlayerImpl"

    .line 49
    .line 50
    const-string v2, "seekTo ignored because an ad is playing"

    .line 51
    .line 52
    invoke-static {v0, v2}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lb3/t1$e;

    .line 56
    .line 57
    iget-object v2, v11, Lb3/g1;->q0:Lb3/j3;

    .line 58
    .line 59
    invoke-direct {v0, v2}, Lb3/t1$e;-><init>(Lb3/j3;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v11, Lb3/g1;->j:Lb3/t1$f;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Lb3/t1$f;->a(Lb3/t1$e;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lb3/g1;->u()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v3, v1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v1, 0x2

    .line 79
    :goto_1
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iget-object v3, v11, Lb3/g1;->q0:Lb3/j3;

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Lb3/j3;->g(I)Lb3/j3;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-wide v3, p2

    .line 90
    invoke-direct {p0, v2, p1, p2, p3}, Lb3/g1;->I1(Lb3/g4;IJ)Landroid/util/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-direct {p0, v1, v2, v5}, Lb3/g1;->H1(Lb3/j3;Lb3/g4;Landroid/util/Pair;)Lb3/j3;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v5, v11, Lb3/g1;->k:Lb3/t1;

    .line 99
    .line 100
    invoke-static {p2, p3}, Ly4/q0;->A0(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {v5, v2, p1, v3, v4}, Lb3/t1;->A0(Lb3/g4;IJ)V

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x1

    .line 109
    const/4 v4, 0x1

    .line 110
    const/4 v5, 0x1

    .line 111
    const/4 v6, 0x1

    .line 112
    invoke-direct {p0, v1}, Lb3/g1;->Z0(Lb3/j3;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    move-object v0, p0

    .line 117
    move/from16 v10, p5

    .line 118
    .line 119
    invoke-direct/range {v0 .. v10}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public O0(Lc3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1;->r:Lc3/a;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc3/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lc3/a;->v(Lc3/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public P0(Lb3/b0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Q1(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lb3/g1;->R1(Ljava/util/List;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public R1(Ljava/util/List;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lb3/g1;->S1(Ljava/util/List;IJZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public V1(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->A:Lb3/m;

    .line 5
    .line 6
    invoke-virtual {p0}, Lb3/g1;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lb3/m;->p(ZI)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lb3/g1;->W1(ZLb3/a0;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lm4/e;

    .line 19
    .line 20
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lb3/g1;->q0:Lb3/j3;

    .line 25
    .line 26
    iget-wide v1, v1, Lb3/j3;->r:J

    .line 27
    .line 28
    invoke-direct {p1, v0, v1, v2}, Lm4/e;-><init>(Ljava/util/List;J)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lb3/g1;->i0:Lm4/e;

    .line 32
    .line 33
    return-void
.end method

.method public W0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-boolean v0, v0, Lb3/j3;->o:Z

    .line 7
    .line 8
    return v0
.end method

.method public X0()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1;->s:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public Y0()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lb3/g1;->t0:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 18
    .line 19
    iget-object v1, v0, Lb3/j3;->k:Ld4/t$b;

    .line 20
    .line 21
    iget-wide v1, v1, Ld4/s;->d:J

    .line 22
    .line 23
    iget-object v3, v0, Lb3/j3;->b:Ld4/t$b;

    .line 24
    .line 25
    iget-wide v3, v3, Ld4/s;->d:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 32
    .line 33
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lb3/g4$d;->f()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_1
    iget-wide v0, v0, Lb3/j3;->p:J

    .line 49
    .line 50
    iget-object v2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 51
    .line 52
    iget-object v2, v2, Lb3/j3;->k:Ld4/t$b;

    .line 53
    .line 54
    invoke-virtual {v2}, Ld4/s;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 61
    .line 62
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 63
    .line 64
    iget-object v0, v0, Lb3/j3;->k:Ld4/t$b;

    .line 65
    .line 66
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object v2, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lb3/g1;->q0:Lb3/j3;

    .line 75
    .line 76
    iget-object v1, v1, Lb3/j3;->k:Ld4/t$b;

    .line 77
    .line 78
    iget v1, v1, Ld4/s;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lb3/g4$b;->i(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-wide/high16 v3, -0x8000000000000000L

    .line 85
    .line 86
    cmp-long v3, v1, v3

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    iget-wide v0, v0, Lb3/g4$b;->d:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v0, v1

    .line 94
    :cond_3
    :goto_0
    iget-object v2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 95
    .line 96
    iget-object v3, v2, Lb3/j3;->a:Lb3/g4;

    .line 97
    .line 98
    iget-object v2, v2, Lb3/j3;->k:Ld4/t$b;

    .line 99
    .line 100
    invoke-direct {p0, v3, v2, v0, v1}, Lb3/g1;->K1(Lb3/g4;Ld4/t$b;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public a()Lb3/x1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->R:Lb3/x1;

    .line 5
    .line 6
    return-object v0
.end method

.method public b()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lb3/g1;->A:Lb3/m;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v0, v2}, Lb3/m;->p(ZI)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lb3/g1;->c1(ZI)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, v0, v1, v3}, Lb3/g1;->Y1(ZII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 23
    .line 24
    iget v1, v0, Lb3/j3;->e:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 36
    .line 37
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Lb3/j3;->g(I)Lb3/j3;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget v0, p0, Lb3/g1;->H:I

    .line 49
    .line 50
    add-int/2addr v0, v3

    .line 51
    iput v0, p0, Lb3/g1;->H:I

    .line 52
    .line 53
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 54
    .line 55
    invoke-virtual {v0}, Lb3/t1;->i0()V

    .line 56
    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x5

    .line 63
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v13, -0x1

    .line 69
    const/4 v14, 0x0

    .line 70
    move-object v4, p0

    .line 71
    invoke-direct/range {v4 .. v14}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public c(Lb3/l3;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lb3/l3;->d:Lb3/l3;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 9
    .line 10
    iget-object v0, v0, Lb3/j3;->n:Lb3/l3;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lb3/l3;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lb3/j3;->f(Lb3/l3;)Lb3/j3;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v0, p0, Lb3/g1;->H:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lb3/g1;->H:I

    .line 30
    .line 31
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lb3/t1;->S0(Lb3/l3;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x5

    .line 41
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v10, -0x1

    .line 47
    const/4 v11, 0x0

    .line 48
    move-object v1, p0

    .line 49
    invoke-direct/range {v1 .. v11}, Lb3/g1;->Z1(Lb3/j3;IIZZIJIZ)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public d(Ld3/e;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lb3/g1;->m0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lb3/g1;->f0:Ld3/e;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lb3/g1;->f0:Ld3/e;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {p0, v0, v1, p1}, Lb3/g1;->O1(IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lb3/g1;->B:Lb3/b4;

    .line 25
    .line 26
    iget v1, p1, Ld3/e;->c:I

    .line 27
    .line 28
    invoke-static {v1}, Ly4/q0;->f0(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lb3/b4;->h(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 36
    .line 37
    new-instance v1, Lb3/z0;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lb3/z0;-><init>(Ld3/e;)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x14

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lb3/g1;->A:Lb3/m;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    move-object p2, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p2, 0x0

    .line 54
    :goto_0
    invoke-virtual {v0, p2}, Lb3/m;->m(Ld3/e;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lb3/g1;->h:Lw4/h0;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lw4/h0;->h(Ld3/e;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lb3/g1;->j()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object p2, p0, Lb3/g1;->A:Lb3/m;

    .line 67
    .line 68
    invoke-virtual {p0}, Lb3/g1;->u()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p2, p1, v0}, Lb3/m;->p(ZI)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {p1, p2}, Lb3/g1;->c1(ZI)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lb3/g1;->Y1(ZII)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lb3/g1;->l:Ly4/q;

    .line 84
    .line 85
    invoke-virtual {p1}, Ly4/q;->f()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public d1()Lb3/a0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->f:Lb3/a0;

    .line 7
    .line 8
    return-object v0
.end method

.method public e(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Ly4/q0;->p(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lb3/g1;->g0:F

    .line 12
    .line 13
    cmpl-float v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput p1, p0, Lb3/g1;->g0:F

    .line 19
    .line 20
    invoke-direct {p0}, Lb3/g1;->P1()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 24
    .line 25
    new-instance v1, Lb3/b1;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lb3/b1;-><init>(F)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x16

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lb3/g1;->Z0(Lb3/j3;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public g(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lb3/g1;->N1()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lb3/g1;->U1(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    invoke-direct {p0, p1, p1}, Lb3/g1;->J1(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 11
    .line 12
    iget-object v1, v0, Lb3/j3;->b:Ld4/t$b;

    .line 13
    .line 14
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 15
    .line 16
    iget-object v2, v1, Ld4/s;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v3, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 24
    .line 25
    iget v2, v1, Ld4/s;->b:I

    .line 26
    .line 27
    iget v1, v1, Ld4/s;->c:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lb3/g4$b;->e(II)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lb3/n;->I()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-wide v0, v0, Lb3/j3;->q:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-boolean v0, v0, Lb3/j3;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public k()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lb3/g1;->s0:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 18
    .line 19
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 20
    .line 21
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 22
    .line 23
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 11
    .line 12
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 13
    .line 14
    iget v0, v0, Ld4/s;->c:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public bridge synthetic p()Lb3/i3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb3/g1;->d1()Lb3/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public q(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->A:Lb3/m;

    .line 5
    .line 6
    invoke-virtual {p0}, Lb3/g1;->u()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, p1, v1}, Lb3/m;->p(ZI)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Lb3/g1;->c1(ZI)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lb3/g1;->Y1(ZII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public r()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 11
    .line 12
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 13
    .line 14
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 15
    .line 16
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v2, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 24
    .line 25
    iget-wide v1, v0, Lb3/j3;->c:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 37
    .line 38
    invoke-virtual {p0}, Lb3/g1;->z()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lb3/g4$d;->d()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lb3/g1;->n:Lb3/g4$b;

    .line 54
    .line 55
    invoke-virtual {v0}, Lb3/g4$b;->p()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object v2, p0, Lb3/g1;->q0:Lb3/j3;

    .line 60
    .line 61
    iget-wide v2, v2, Lb3/j3;->c:J

    .line 62
    .line 63
    invoke-static {v2, v3}, Ly4/q0;->X0(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    add-long/2addr v0, v2

    .line 68
    :goto_0
    return-wide v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lb3/g1;->f()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    return-wide v0
.end method

.method public release()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Release "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "ExoPlayerLib/2.18.7"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "] ["

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v2, Ly4/q0;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lb3/u1;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "]"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ExoPlayerImpl"

    .line 62
    .line 63
    invoke-static {v1, v0}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 67
    .line 68
    .line 69
    sget v0, Ly4/q0;->a:I

    .line 70
    .line 71
    const/16 v1, 0x15

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    if-ge v0, v1, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lb3/g1;->T:Landroid/media/AudioTrack;

    .line 84
    .line 85
    :cond_0
    iget-object v0, p0, Lb3/g1;->z:Lb3/b;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lb3/b;->b(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lb3/g1;->B:Lb3/b4;

    .line 92
    .line 93
    invoke-virtual {v0}, Lb3/b4;->g()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lb3/g1;->C:Lb3/m4;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lb3/m4;->b(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lb3/g1;->D:Lb3/n4;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lb3/n4;->b(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lb3/g1;->A:Lb3/m;

    .line 107
    .line 108
    invoke-virtual {v0}, Lb3/m;->i()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lb3/g1;->k:Lb3/t1;

    .line 112
    .line 113
    invoke-virtual {v0}, Lb3/t1;->k0()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 120
    .line 121
    new-instance v1, Lb3/a1;

    .line 122
    .line 123
    invoke-direct {v1}, Lb3/a1;-><init>()V

    .line 124
    .line 125
    .line 126
    const/16 v3, 0xa

    .line 127
    .line 128
    invoke-virtual {v0, v3, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 132
    .line 133
    invoke-virtual {v0}, Ly4/q;->j()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lb3/g1;->i:Ly4/n;

    .line 137
    .line 138
    invoke-interface {v0, v2}, Ly4/n;->k(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lb3/g1;->t:Lx4/e;

    .line 142
    .line 143
    iget-object v1, p0, Lb3/g1;->r:Lc3/a;

    .line 144
    .line 145
    invoke-interface {v0, v1}, Lx4/e;->c(Lx4/e$a;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Lb3/j3;->g(I)Lb3/j3;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 156
    .line 157
    iget-object v3, v0, Lb3/j3;->b:Ld4/t$b;

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 164
    .line 165
    iget-wide v3, v0, Lb3/j3;->r:J

    .line 166
    .line 167
    iput-wide v3, v0, Lb3/j3;->p:J

    .line 168
    .line 169
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 170
    .line 171
    const-wide/16 v3, 0x0

    .line 172
    .line 173
    iput-wide v3, v0, Lb3/j3;->q:J

    .line 174
    .line 175
    iget-object v0, p0, Lb3/g1;->r:Lc3/a;

    .line 176
    .line 177
    invoke-interface {v0}, Lc3/a;->release()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lb3/g1;->h:Lw4/h0;

    .line 181
    .line 182
    invoke-virtual {v0}, Lw4/h0;->f()V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lb3/g1;->N1()V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lb3/g1;->V:Landroid/view/Surface;

    .line 189
    .line 190
    if-eqz v0, :cond_2

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 193
    .line 194
    .line 195
    iput-object v2, p0, Lb3/g1;->V:Landroid/view/Surface;

    .line 196
    .line 197
    :cond_2
    iget-boolean v0, p0, Lb3/g1;->l0:Z

    .line 198
    .line 199
    if-nez v0, :cond_3

    .line 200
    .line 201
    sget-object v0, Lm4/e;->c:Lm4/e;

    .line 202
    .line 203
    iput-object v0, p0, Lb3/g1;->i0:Lm4/e;

    .line 204
    .line 205
    iput-boolean v1, p0, Lb3/g1;->m0:Z

    .line 206
    .line 207
    return-void

    .line 208
    :cond_3
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    throw v2
.end method

.method public s()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 11
    .line 12
    iget-object v1, v0, Lb3/j3;->k:Ld4/t$b;

    .line 13
    .line 14
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 23
    .line 24
    iget-wide v0, v0, Lb3/j3;->p:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lb3/g1;->getDuration()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    return-wide v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lb3/g1;->Y0()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lb3/g1;->V1(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget v0, v0, Lb3/j3;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public v()Lb3/l4;
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 5
    .line 6
    iget-object v0, v0, Lb3/j3;->i:Lw4/i0;

    .line 7
    .line 8
    iget-object v0, v0, Lw4/i0;->d:Lb3/l4;

    .line 9
    .line 10
    return-object v0
.end method

.method public x(Lb3/m3$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1;->l:Ly4/q;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb3/m3$d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly4/q;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/g1;->h()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lb3/g1;->q0:Lb3/j3;

    .line 11
    .line 12
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 13
    .line 14
    iget v0, v0, Ld4/s;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public z()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lb3/g1;->c2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lb3/g1;->a1()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    return v0
.end method
