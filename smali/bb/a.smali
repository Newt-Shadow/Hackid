.class public final Lbb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbb/a$a;,
        Lbb/a$b;
    }
.end annotation


# static fields
.field public static final c:Lbb/a$a;


# instance fields
.field private a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private b:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbb/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbb/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbb/a;->c:Lbb/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lbb/a;Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lbb/a;->g(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lbb/a;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lbb/a;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lbb/a;ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lbb/a;->k(ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lbb/a;->l(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lbb/a;Ljava/lang/String;Ljava/lang/String;ZZZILad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lbb/a;->m(Ljava/lang/String;Ljava/lang/String;ZZZILad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lbb/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lbb/a;->o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lbb/a$c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lbb/a$c;

    .line 9
    .line 10
    iget v2, v1, Lbb/a$c;->q:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lbb/a$c;->q:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lbb/a$c;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lbb/a$c;-><init>(Lbb/a;Lad/e;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lbb/a$c;->o:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lbb/a$c;->q:I

    .line 38
    .line 39
    const-string v5, "FlutterArchivePlugin"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x3

    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v10, 0x1

    .line 45
    if-eqz v4, :cond_5

    .line 46
    .line 47
    if-eq v4, v10, :cond_4

    .line 48
    .line 49
    if-eq v4, v8, :cond_3

    .line 50
    .line 51
    if-eq v4, v7, :cond_2

    .line 52
    .line 53
    if-ne v4, v6, :cond_1

    .line 54
    .line 55
    iget v4, v1, Lbb/a$c;->n:I

    .line 56
    .line 57
    iget v11, v1, Lbb/a$c;->m:I

    .line 58
    .line 59
    iget v12, v1, Lbb/a$c;->l:I

    .line 60
    .line 61
    iget v13, v1, Lbb/a$c;->k:I

    .line 62
    .line 63
    iget-boolean v14, v1, Lbb/a$c;->j:Z

    .line 64
    .line 65
    iget-boolean v15, v1, Lbb/a$c;->i:Z

    .line 66
    .line 67
    iget-object v6, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v6, Lkotlin/jvm/internal/a0;

    .line 70
    .line 71
    iget-object v7, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v7, [Ljava/io/File;

    .line 74
    .line 75
    iget-object v8, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v8, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v9, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Ljava/io/File;

    .line 82
    .line 83
    iget-object v10, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v10, Ljava/util/zip/ZipOutputStream;

    .line 86
    .line 87
    iget-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Lbb/a;

    .line 90
    .line 91
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v28, v5

    .line 95
    .line 96
    move v0, v14

    .line 97
    :goto_1
    const/4 v14, 0x4

    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_2
    iget v2, v1, Lbb/a$c;->n:I

    .line 109
    .line 110
    iget v4, v1, Lbb/a$c;->m:I

    .line 111
    .line 112
    iget v6, v1, Lbb/a$c;->l:I

    .line 113
    .line 114
    iget v7, v1, Lbb/a$c;->k:I

    .line 115
    .line 116
    iget-boolean v8, v1, Lbb/a$c;->j:Z

    .line 117
    .line 118
    iget-boolean v9, v1, Lbb/a$c;->i:Z

    .line 119
    .line 120
    iget-object v10, v1, Lbb/a$c;->g:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v10, Lkotlin/jvm/internal/a0;

    .line 123
    .line 124
    iget-object v11, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v11, Lkotlin/jvm/internal/a0;

    .line 127
    .line 128
    iget-object v12, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v12, [Ljava/io/File;

    .line 131
    .line 132
    iget-object v13, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v13, Ljava/lang/String;

    .line 135
    .line 136
    iget-object v14, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v14, Ljava/io/File;

    .line 139
    .line 140
    iget-object v15, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v15, Ljava/util/zip/ZipOutputStream;

    .line 143
    .line 144
    move/from16 p1, v2

    .line 145
    .line 146
    iget-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Lbb/a;

    .line 149
    .line 150
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    move-object/from16 v28, v5

    .line 154
    .line 155
    move/from16 v16, v9

    .line 156
    .line 157
    move-object v9, v14

    .line 158
    const/4 v5, 0x3

    .line 159
    move v14, v8

    .line 160
    move-object v8, v13

    .line 161
    move v13, v7

    .line 162
    move-object v7, v12

    .line 163
    move v12, v6

    .line 164
    move-object v6, v11

    .line 165
    move v11, v4

    .line 166
    move/from16 v4, p1

    .line 167
    .line 168
    goto/16 :goto_6

    .line 169
    .line 170
    :cond_3
    iget v2, v1, Lbb/a$c;->n:I

    .line 171
    .line 172
    iget v4, v1, Lbb/a$c;->m:I

    .line 173
    .line 174
    iget v6, v1, Lbb/a$c;->l:I

    .line 175
    .line 176
    iget v7, v1, Lbb/a$c;->k:I

    .line 177
    .line 178
    iget-boolean v8, v1, Lbb/a$c;->j:Z

    .line 179
    .line 180
    iget-boolean v9, v1, Lbb/a$c;->i:Z

    .line 181
    .line 182
    iget-object v10, v1, Lbb/a$c;->g:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v10, Ljava/lang/String;

    .line 185
    .line 186
    iget-object v11, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v11, Lkotlin/jvm/internal/a0;

    .line 189
    .line 190
    iget-object v12, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v12, [Ljava/io/File;

    .line 193
    .line 194
    iget-object v13, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v13, Ljava/lang/String;

    .line 197
    .line 198
    iget-object v14, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v14, Ljava/io/File;

    .line 201
    .line 202
    iget-object v15, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v15, Ljava/util/zip/ZipOutputStream;

    .line 205
    .line 206
    move/from16 p1, v2

    .line 207
    .line 208
    iget-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v2, Lbb/a;

    .line 211
    .line 212
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v28, v5

    .line 216
    .line 217
    move-object/from16 v20, v10

    .line 218
    .line 219
    move-object v10, v11

    .line 220
    move/from16 v11, p1

    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_4
    iget v2, v1, Lbb/a$c;->n:I

    .line 225
    .line 226
    iget v4, v1, Lbb/a$c;->m:I

    .line 227
    .line 228
    iget v6, v1, Lbb/a$c;->l:I

    .line 229
    .line 230
    iget v7, v1, Lbb/a$c;->k:I

    .line 231
    .line 232
    iget-boolean v8, v1, Lbb/a$c;->j:Z

    .line 233
    .line 234
    iget-boolean v9, v1, Lbb/a$c;->i:Z

    .line 235
    .line 236
    iget-object v10, v1, Lbb/a$c;->h:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v10, Ljava/util/zip/ZipEntry;

    .line 239
    .line 240
    iget-object v11, v1, Lbb/a$c;->g:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v11, Ljava/lang/String;

    .line 243
    .line 244
    iget-object v12, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v12, Lkotlin/jvm/internal/a0;

    .line 247
    .line 248
    iget-object v13, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v13, [Ljava/io/File;

    .line 251
    .line 252
    iget-object v14, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v14, Ljava/lang/String;

    .line 255
    .line 256
    iget-object v15, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v15, Ljava/io/File;

    .line 259
    .line 260
    move/from16 p1, v2

    .line 261
    .line 262
    iget-object v2, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v2, Ljava/util/zip/ZipOutputStream;

    .line 265
    .line 266
    move-object/from16 p2, v2

    .line 267
    .line 268
    iget-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v2, Lbb/a;

    .line 271
    .line 272
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    move/from16 v27, v4

    .line 276
    .line 277
    move/from16 v29, v9

    .line 278
    .line 279
    move-object v9, v2

    .line 280
    move-object v4, v3

    .line 281
    move/from16 v2, p1

    .line 282
    .line 283
    move-object/from16 v3, p2

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    .line 287
    :cond_5
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Ljava/io/File;

    .line 291
    .line 292
    move-object/from16 v2, p3

    .line 293
    .line 294
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/4 v4, 0x0

    .line 302
    if-nez v0, :cond_6

    .line 303
    .line 304
    new-array v0, v4, [Ljava/io/File;

    .line 305
    .line 306
    :cond_6
    new-instance v6, Lkotlin/jvm/internal/a0;

    .line 307
    .line 308
    invoke-direct {v6}, Lkotlin/jvm/internal/a0;-><init>()V

    .line 309
    .line 310
    .line 311
    move/from16 v7, p8

    .line 312
    .line 313
    iput v7, v6, Lkotlin/jvm/internal/a0;->a:I

    .line 314
    .line 315
    array-length v7, v0

    .line 316
    move-object/from16 v9, p0

    .line 317
    .line 318
    move-object v13, v0

    .line 319
    move-object v8, v1

    .line 320
    move-object v10, v3

    .line 321
    move v14, v4

    .line 322
    move-object v12, v6

    .line 323
    move v11, v7

    .line 324
    move-object/from16 v0, p1

    .line 325
    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    move/from16 v3, p4

    .line 329
    .line 330
    move/from16 v4, p5

    .line 331
    .line 332
    move/from16 v6, p6

    .line 333
    .line 334
    move/from16 v7, p7

    .line 335
    .line 336
    :goto_2
    if-ge v14, v11, :cond_10

    .line 337
    .line 338
    aget-object v18, v13, v14

    .line 339
    .line 340
    new-instance v15, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    move-object/from16 p7, v10

    .line 349
    .line 350
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    move/from16 p8, v11

    .line 356
    .line 357
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    new-instance v15, Ljava/io/File;

    .line 369
    .line 370
    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v15, v1}, Lgd/g;->q(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 374
    .line 375
    .line 376
    move-result-object v15

    .line 377
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v15

    .line 381
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    .line 382
    .line 383
    .line 384
    move-result v17

    .line 385
    move/from16 v27, v14

    .line 386
    .line 387
    const-string v14, "zip"

    .line 388
    .line 389
    if-eqz v17, :cond_e

    .line 390
    .line 391
    if-nez v3, :cond_7

    .line 392
    .line 393
    move-object/from16 v10, p7

    .line 394
    .line 395
    move/from16 v11, p8

    .line 396
    .line 397
    move-object/from16 v28, v5

    .line 398
    .line 399
    const/4 v5, 0x1

    .line 400
    const/4 v14, 0x4

    .line 401
    goto/16 :goto_8

    .line 402
    .line 403
    :cond_7
    move/from16 v28, v6

    .line 404
    .line 405
    new-instance v6, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    move/from16 v29, v3

    .line 411
    .line 412
    const-string v3, "Adding directory: "

    .line 413
    .line 414
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    new-instance v3, Ljava/util/zip/ZipEntry;

    .line 428
    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    invoke-direct {v3, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    .line 448
    .line 449
    .line 450
    move-result-wide v14

    .line 451
    invoke-virtual {v3, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    .line 455
    .line 456
    .line 457
    move-result-wide v14

    .line 458
    invoke-virtual {v3, v14, v15}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 459
    .line 460
    .line 461
    if-eqz v4, :cond_b

    .line 462
    .line 463
    iget v6, v12, Lkotlin/jvm/internal/a0;->a:I

    .line 464
    .line 465
    int-to-double v14, v6

    .line 466
    move-object v10, v3

    .line 467
    move v6, v4

    .line 468
    int-to-double v3, v7

    .line 469
    div-double/2addr v14, v3

    .line 470
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 471
    .line 472
    mul-double/2addr v3, v14

    .line 473
    const-string v14, "Waiting reportProgress..."

    .line 474
    .line 475
    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    iput-object v9, v8, Lbb/a$c;->a:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v0, v8, Lbb/a$c;->b:Ljava/lang/Object;

    .line 481
    .line 482
    iput-object v1, v8, Lbb/a$c;->c:Ljava/lang/Object;

    .line 483
    .line 484
    iput-object v2, v8, Lbb/a$c;->d:Ljava/lang/Object;

    .line 485
    .line 486
    iput-object v13, v8, Lbb/a$c;->e:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v12, v8, Lbb/a$c;->f:Ljava/lang/Object;

    .line 489
    .line 490
    iput-object v11, v8, Lbb/a$c;->g:Ljava/lang/Object;

    .line 491
    .line 492
    iput-object v10, v8, Lbb/a$c;->h:Ljava/lang/Object;

    .line 493
    .line 494
    move/from16 v14, v29

    .line 495
    .line 496
    iput-boolean v14, v8, Lbb/a$c;->i:Z

    .line 497
    .line 498
    iput-boolean v6, v8, Lbb/a$c;->j:Z

    .line 499
    .line 500
    move/from16 v15, v28

    .line 501
    .line 502
    iput v15, v8, Lbb/a$c;->k:I

    .line 503
    .line 504
    iput v7, v8, Lbb/a$c;->l:I

    .line 505
    .line 506
    move-object/from16 v17, v11

    .line 507
    .line 508
    move/from16 v11, v27

    .line 509
    .line 510
    iput v11, v8, Lbb/a$c;->m:I

    .line 511
    .line 512
    move/from16 v11, p8

    .line 513
    .line 514
    iput v11, v8, Lbb/a$c;->n:I

    .line 515
    .line 516
    const/4 v14, 0x1

    .line 517
    iput v14, v8, Lbb/a$c;->q:I

    .line 518
    .line 519
    move-object/from16 p1, v9

    .line 520
    .line 521
    move/from16 p2, v15

    .line 522
    .line 523
    move-object/from16 p3, v10

    .line 524
    .line 525
    move-wide/from16 p4, v3

    .line 526
    .line 527
    move-object/from16 p6, v8

    .line 528
    .line 529
    invoke-direct/range {p1 .. p6}, Lbb/a;->k(ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    move-object/from16 v4, p7

    .line 534
    .line 535
    if-ne v3, v4, :cond_8

    .line 536
    .line 537
    return-object v4

    .line 538
    :cond_8
    move-object v14, v2

    .line 539
    move v2, v11

    .line 540
    move-object/from16 v11, v17

    .line 541
    .line 542
    move-object/from16 v30, v3

    .line 543
    .line 544
    move-object v3, v0

    .line 545
    move-object/from16 v0, v30

    .line 546
    .line 547
    move/from16 v31, v15

    .line 548
    .line 549
    move-object v15, v1

    .line 550
    move-object v1, v8

    .line 551
    move v8, v6

    .line 552
    move v6, v7

    .line 553
    move/from16 v7, v31

    .line 554
    .line 555
    :goto_3
    check-cast v0, Lbb/b;

    .line 556
    .line 557
    move-object/from16 p1, v1

    .line 558
    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    move/from16 p2, v2

    .line 565
    .line 566
    const-string v2, "...reportProgress: "

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    sget-object v1, Lbb/b;->b:Lbb/b;

    .line 582
    .line 583
    if-ne v0, v1, :cond_9

    .line 584
    .line 585
    move/from16 v11, p2

    .line 586
    .line 587
    move-object v0, v3

    .line 588
    move-object v10, v4

    .line 589
    move-object/from16 v28, v5

    .line 590
    .line 591
    move v4, v8

    .line 592
    move-object v2, v14

    .line 593
    move-object v1, v15

    .line 594
    move/from16 v3, v29

    .line 595
    .line 596
    const/4 v5, 0x1

    .line 597
    const/4 v14, 0x4

    .line 598
    move-object/from16 v8, p1

    .line 599
    .line 600
    move/from16 v30, v7

    .line 601
    .line 602
    move v7, v6

    .line 603
    move/from16 v6, v30

    .line 604
    .line 605
    goto/16 :goto_8

    .line 606
    .line 607
    :cond_9
    sget-object v1, Lbb/b;->c:Lbb/b;

    .line 608
    .line 609
    if-eq v0, v1, :cond_a

    .line 610
    .line 611
    move-object/from16 v1, p1

    .line 612
    .line 613
    move-object/from16 v17, v4

    .line 614
    .line 615
    move-object/from16 v28, v5

    .line 616
    .line 617
    move-object v2, v9

    .line 618
    move/from16 v0, v27

    .line 619
    .line 620
    move/from16 v9, v29

    .line 621
    .line 622
    move-object v5, v3

    .line 623
    move-object v3, v10

    .line 624
    move-object v10, v11

    .line 625
    move/from16 v11, p2

    .line 626
    .line 627
    move-object/from16 v30, v13

    .line 628
    .line 629
    move-object v13, v12

    .line 630
    move-object/from16 v12, v30

    .line 631
    .line 632
    goto :goto_4

    .line 633
    :cond_a
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 634
    .line 635
    const-string v1, "Operation cancelled"

    .line 636
    .line 637
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    throw v0

    .line 641
    :cond_b
    move-object v10, v3

    .line 642
    move v6, v4

    .line 643
    move-object/from16 v17, v11

    .line 644
    .line 645
    move/from16 v15, v28

    .line 646
    .line 647
    move-object/from16 v4, p7

    .line 648
    .line 649
    move/from16 v11, p8

    .line 650
    .line 651
    move-object v14, v2

    .line 652
    move-object/from16 v28, v5

    .line 653
    .line 654
    move-object v2, v9

    .line 655
    move-object/from16 v10, v17

    .line 656
    .line 657
    move/from16 v9, v29

    .line 658
    .line 659
    move-object v5, v0

    .line 660
    move-object/from16 v17, v4

    .line 661
    .line 662
    move/from16 v0, v27

    .line 663
    .line 664
    move/from16 v30, v15

    .line 665
    .line 666
    move-object v15, v1

    .line 667
    move-object v1, v8

    .line 668
    move v8, v6

    .line 669
    move v6, v7

    .line 670
    move/from16 v7, v30

    .line 671
    .line 672
    move-object/from16 v31, v13

    .line 673
    .line 674
    move-object v13, v12

    .line 675
    move-object/from16 v12, v31

    .line 676
    .line 677
    :goto_4
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    move-object/from16 p1, v4

    .line 682
    .line 683
    new-instance v4, Lbb/a$d;

    .line 684
    .line 685
    move/from16 v18, v11

    .line 686
    .line 687
    const/4 v11, 0x0

    .line 688
    invoke-direct {v4, v5, v3, v11}, Lbb/a$d;-><init>(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipEntry;Lad/e;)V

    .line 689
    .line 690
    .line 691
    iput-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 692
    .line 693
    iput-object v5, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 694
    .line 695
    iput-object v15, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 696
    .line 697
    iput-object v14, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 698
    .line 699
    iput-object v12, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 700
    .line 701
    iput-object v13, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 702
    .line 703
    iput-object v10, v1, Lbb/a$c;->g:Ljava/lang/Object;

    .line 704
    .line 705
    iput-object v11, v1, Lbb/a$c;->h:Ljava/lang/Object;

    .line 706
    .line 707
    iput-boolean v9, v1, Lbb/a$c;->i:Z

    .line 708
    .line 709
    iput-boolean v8, v1, Lbb/a$c;->j:Z

    .line 710
    .line 711
    iput v7, v1, Lbb/a$c;->k:I

    .line 712
    .line 713
    iput v6, v1, Lbb/a$c;->l:I

    .line 714
    .line 715
    iput v0, v1, Lbb/a$c;->m:I

    .line 716
    .line 717
    move/from16 v11, v18

    .line 718
    .line 719
    iput v11, v1, Lbb/a$c;->n:I

    .line 720
    .line 721
    const/4 v3, 0x2

    .line 722
    iput v3, v1, Lbb/a$c;->q:I

    .line 723
    .line 724
    move-object/from16 v3, p1

    .line 725
    .line 726
    invoke-static {v3, v4, v1}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    move-object/from16 v4, v17

    .line 731
    .line 732
    if-ne v3, v4, :cond_c

    .line 733
    .line 734
    return-object v4

    .line 735
    :cond_c
    move-object v3, v4

    .line 736
    move-object/from16 v20, v10

    .line 737
    .line 738
    move-object v10, v13

    .line 739
    move-object v13, v14

    .line 740
    move-object v14, v15

    .line 741
    move v4, v0

    .line 742
    move-object v15, v5

    .line 743
    :goto_5
    const/16 v21, 0x1

    .line 744
    .line 745
    iget v0, v10, Lkotlin/jvm/internal/a0;->a:I

    .line 746
    .line 747
    iput-object v2, v1, Lbb/a$c;->a:Ljava/lang/Object;

    .line 748
    .line 749
    iput-object v15, v1, Lbb/a$c;->b:Ljava/lang/Object;

    .line 750
    .line 751
    iput-object v14, v1, Lbb/a$c;->c:Ljava/lang/Object;

    .line 752
    .line 753
    iput-object v13, v1, Lbb/a$c;->d:Ljava/lang/Object;

    .line 754
    .line 755
    iput-object v12, v1, Lbb/a$c;->e:Ljava/lang/Object;

    .line 756
    .line 757
    iput-object v10, v1, Lbb/a$c;->f:Ljava/lang/Object;

    .line 758
    .line 759
    iput-object v10, v1, Lbb/a$c;->g:Ljava/lang/Object;

    .line 760
    .line 761
    iput-boolean v9, v1, Lbb/a$c;->i:Z

    .line 762
    .line 763
    iput-boolean v8, v1, Lbb/a$c;->j:Z

    .line 764
    .line 765
    iput v7, v1, Lbb/a$c;->k:I

    .line 766
    .line 767
    iput v6, v1, Lbb/a$c;->l:I

    .line 768
    .line 769
    iput v4, v1, Lbb/a$c;->m:I

    .line 770
    .line 771
    iput v11, v1, Lbb/a$c;->n:I

    .line 772
    .line 773
    const/4 v5, 0x3

    .line 774
    iput v5, v1, Lbb/a$c;->q:I

    .line 775
    .line 776
    move-object/from16 v17, v2

    .line 777
    .line 778
    move-object/from16 v18, v15

    .line 779
    .line 780
    move-object/from16 v19, v14

    .line 781
    .line 782
    move/from16 v22, v8

    .line 783
    .line 784
    move/from16 v23, v7

    .line 785
    .line 786
    move/from16 v24, v6

    .line 787
    .line 788
    move/from16 v25, v0

    .line 789
    .line 790
    move-object/from16 v26, v1

    .line 791
    .line 792
    invoke-direct/range {v17 .. v26}, Lbb/a;->g(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;ZZIIILad/e;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    if-ne v0, v3, :cond_d

    .line 797
    .line 798
    return-object v3

    .line 799
    :cond_d
    move/from16 v16, v9

    .line 800
    .line 801
    move-object v9, v14

    .line 802
    move v14, v8

    .line 803
    move-object v8, v13

    .line 804
    move v13, v7

    .line 805
    move-object v7, v12

    .line 806
    move v12, v6

    .line 807
    move-object v6, v10

    .line 808
    move/from16 v30, v11

    .line 809
    .line 810
    move v11, v4

    .line 811
    move/from16 v4, v30

    .line 812
    .line 813
    :goto_6
    check-cast v0, Ljava/lang/Number;

    .line 814
    .line 815
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    iput v0, v10, Lkotlin/jvm/internal/a0;->a:I

    .line 820
    .line 821
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 822
    .line 823
    move v0, v14

    .line 824
    move-object v10, v15

    .line 825
    move/from16 v15, v16

    .line 826
    .line 827
    goto/16 :goto_1

    .line 828
    .line 829
    :cond_e
    move/from16 v11, p8

    .line 830
    .line 831
    move-object/from16 v28, v5

    .line 832
    .line 833
    move v10, v6

    .line 834
    move v6, v4

    .line 835
    move-object/from16 v4, p7

    .line 836
    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .line 841
    .line 842
    const-string v4, "Adding file: "

    .line 843
    .line 844
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    iget v4, v12, Lkotlin/jvm/internal/a0;->a:I

    .line 858
    .line 859
    const/4 v5, 0x1

    .line 860
    add-int/2addr v4, v5

    .line 861
    iput v4, v12, Lkotlin/jvm/internal/a0;->a:I

    .line 862
    .line 863
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    new-instance v5, Lbb/a$e;

    .line 868
    .line 869
    const/16 v26, 0x0

    .line 870
    .line 871
    move-object/from16 v17, v5

    .line 872
    .line 873
    move-object/from16 v19, v15

    .line 874
    .line 875
    move/from16 v20, v6

    .line 876
    .line 877
    move-object/from16 v21, v12

    .line 878
    .line 879
    move/from16 v22, v7

    .line 880
    .line 881
    move-object/from16 v23, v9

    .line 882
    .line 883
    move/from16 v24, v10

    .line 884
    .line 885
    move-object/from16 v25, v0

    .line 886
    .line 887
    invoke-direct/range {v17 .. v26}, Lbb/a$e;-><init>(Ljava/io/File;Ljava/lang/String;ZLkotlin/jvm/internal/a0;ILbb/a;ILjava/util/zip/ZipOutputStream;Lad/e;)V

    .line 888
    .line 889
    .line 890
    iput-object v9, v8, Lbb/a$c;->a:Ljava/lang/Object;

    .line 891
    .line 892
    iput-object v0, v8, Lbb/a$c;->b:Ljava/lang/Object;

    .line 893
    .line 894
    iput-object v1, v8, Lbb/a$c;->c:Ljava/lang/Object;

    .line 895
    .line 896
    iput-object v2, v8, Lbb/a$c;->d:Ljava/lang/Object;

    .line 897
    .line 898
    iput-object v13, v8, Lbb/a$c;->e:Ljava/lang/Object;

    .line 899
    .line 900
    iput-object v12, v8, Lbb/a$c;->f:Ljava/lang/Object;

    .line 901
    .line 902
    const/4 v14, 0x0

    .line 903
    iput-object v14, v8, Lbb/a$c;->g:Ljava/lang/Object;

    .line 904
    .line 905
    iput-object v14, v8, Lbb/a$c;->h:Ljava/lang/Object;

    .line 906
    .line 907
    iput-boolean v3, v8, Lbb/a$c;->i:Z

    .line 908
    .line 909
    iput-boolean v6, v8, Lbb/a$c;->j:Z

    .line 910
    .line 911
    iput v10, v8, Lbb/a$c;->k:I

    .line 912
    .line 913
    iput v7, v8, Lbb/a$c;->l:I

    .line 914
    .line 915
    move/from16 v15, v27

    .line 916
    .line 917
    iput v15, v8, Lbb/a$c;->m:I

    .line 918
    .line 919
    iput v11, v8, Lbb/a$c;->n:I

    .line 920
    .line 921
    const/4 v14, 0x4

    .line 922
    iput v14, v8, Lbb/a$c;->q:I

    .line 923
    .line 924
    invoke-static {v4, v5, v8}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    move-object/from16 v5, p7

    .line 929
    .line 930
    if-ne v4, v5, :cond_f

    .line 931
    .line 932
    return-object v5

    .line 933
    :cond_f
    move v4, v11

    .line 934
    move v11, v15

    .line 935
    move v15, v3

    .line 936
    move-object v3, v5

    .line 937
    move/from16 v30, v10

    .line 938
    .line 939
    move-object v10, v0

    .line 940
    move v0, v6

    .line 941
    move-object v6, v12

    .line 942
    move v12, v7

    .line 943
    move-object v7, v13

    .line 944
    move/from16 v13, v30

    .line 945
    .line 946
    move-object/from16 v31, v9

    .line 947
    .line 948
    move-object v9, v1

    .line 949
    move-object v1, v8

    .line 950
    move-object v8, v2

    .line 951
    move-object/from16 v2, v31

    .line 952
    .line 953
    :goto_7
    move/from16 v27, v11

    .line 954
    .line 955
    const/4 v5, 0x1

    .line 956
    move v11, v4

    .line 957
    move v4, v0

    .line 958
    move-object v0, v10

    .line 959
    move-object v10, v3

    .line 960
    move v3, v15

    .line 961
    move-object/from16 v30, v8

    .line 962
    .line 963
    move-object v8, v1

    .line 964
    move-object v1, v9

    .line 965
    move-object v9, v2

    .line 966
    move-object/from16 v2, v30

    .line 967
    .line 968
    move/from16 v31, v12

    .line 969
    .line 970
    move-object v12, v6

    .line 971
    move v6, v13

    .line 972
    move-object v13, v7

    .line 973
    move/from16 v7, v31

    .line 974
    .line 975
    :goto_8
    add-int/lit8 v15, v27, 0x1

    .line 976
    .line 977
    move v14, v15

    .line 978
    move-object/from16 v5, v28

    .line 979
    .line 980
    goto/16 :goto_2

    .line 981
    .line 982
    :cond_10
    iget v0, v12, Lkotlin/jvm/internal/a0;->a:I

    .line 983
    .line 984
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    return-object v0
.end method

.method private final h(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3

    .line 1
    const-string v0, "doOnAttachedToEngine - IN"

    .line 2
    .line 3
    const-string v1, "FlutterArchivePlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    const-string v2, "flutter_archive"

    .line 11
    .line 12
    invoke-direct {v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lbb/a;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "doOnAttachedToEngine - OUT"

    .line 21
    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    const-string v0, "doOnDetachedFromEngine - IN"

    .line 2
    .line 3
    const-string v1, "FlutterArchivePlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lbb/a;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "doOnDetachedFromEngine - already detached"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lbb/a;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 19
    .line 20
    iget-object v2, p0, Lbb/a;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v0, p0, Lbb/a;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 28
    .line 29
    const-string v0, "doOnDetachedFromEngine - OUT"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final j(Ljava/io/File;Z)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/c;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/io/File;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1, p2}, Lbb/a;->j(Ljava/io/File;Z)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v0
.end method

.method private final k(ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lbb/a;->n(Ljava/util/zip/ZipEntry;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "jobId"

    .line 14
    .line 15
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p4}, Lkotlin/coroutines/jvm/internal/b;->b(D)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p3, "progress"

    .line 23
    .line 24
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-static {p3, p1, p3}, Ltd/x;->b(Ltd/t1;ILjava/lang/Object;)Ltd/v;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-static {p4}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    new-instance v3, Lbb/a$i;

    .line 44
    .line 45
    invoke-direct {v3, p0, p2, p1, p3}, Lbb/a$i;-><init>(Lbb/a;Ljava/util/Map;Ltd/v;Lad/e;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v0 .. v5}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p5}, Ltd/s0;->w(Lad/e;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method private final l(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    instance-of v3, v2, Lbb/a$j;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lbb/a$j;

    .line 13
    .line 14
    iget v4, v3, Lbb/a$j;->o:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lbb/a$j;->o:I

    .line 24
    .line 25
    move-object/from16 v4, p0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lbb/a$j;

    .line 29
    .line 30
    move-object/from16 v4, p0

    .line 31
    .line 32
    invoke-direct {v3, v4, v2}, Lbb/a$j;-><init>(Lbb/a;Lad/e;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, v3, Lbb/a$j;->m:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget v6, v3, Lbb/a$j;->o:I

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    const/4 v8, 0x1

    .line 45
    const-string v10, "FlutterArchivePlugin"

    .line 46
    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    if-eq v6, v8, :cond_2

    .line 50
    .line 51
    if-ne v6, v7, :cond_1

    .line 52
    .line 53
    iget-wide v0, v3, Lbb/a$j;->l:D

    .line 54
    .line 55
    iget-wide v11, v3, Lbb/a$j;->k:D

    .line 56
    .line 57
    iget v6, v3, Lbb/a$j;->j:I

    .line 58
    .line 59
    iget-boolean v13, v3, Lbb/a$j;->i:Z

    .line 60
    .line 61
    iget-object v14, v3, Lbb/a$j;->f:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v14, Ljava/util/Iterator;

    .line 64
    .line 65
    iget-object v15, v3, Lbb/a$j;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v15, Ljava/io/Closeable;

    .line 68
    .line 69
    iget-object v8, v3, Lbb/a$j;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v8, Ljava/util/zip/ZipFile;

    .line 72
    .line 73
    iget-object v7, v3, Lbb/a$j;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v7, Ljava/io/File;

    .line 76
    .line 77
    iget-object v9, v3, Lbb/a$j;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Ljava/lang/String;

    .line 80
    .line 81
    move-wide/from16 p1, v0

    .line 82
    .line 83
    iget-object v0, v3, Lbb/a$j;->a:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lbb/a;

    .line 86
    .line 87
    :try_start_0
    invoke-static {v2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    move v1, v6

    .line 91
    move-object v2, v7

    .line 92
    move-object v4, v8

    .line 93
    move-object v6, v9

    .line 94
    move-wide v8, v11

    .line 95
    move-wide/from16 v11, p1

    .line 96
    .line 97
    move-object v7, v5

    .line 98
    move-object v5, v3

    .line 99
    move-object v3, v0

    .line 100
    const/4 v0, 0x2

    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_2
    iget-wide v0, v3, Lbb/a$j;->l:D

    .line 112
    .line 113
    iget-wide v6, v3, Lbb/a$j;->k:D

    .line 114
    .line 115
    iget v8, v3, Lbb/a$j;->j:I

    .line 116
    .line 117
    iget-boolean v9, v3, Lbb/a$j;->i:Z

    .line 118
    .line 119
    iget-object v11, v3, Lbb/a$j;->h:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v11, Ljava/io/File;

    .line 122
    .line 123
    iget-object v12, v3, Lbb/a$j;->g:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v12, Ljava/util/Iterator;

    .line 126
    .line 127
    iget-object v13, v3, Lbb/a$j;->f:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v13, Ljava/util/zip/ZipEntry;

    .line 130
    .line 131
    iget-object v14, v3, Lbb/a$j;->e:Ljava/lang/Object;

    .line 132
    .line 133
    move-object v15, v14

    .line 134
    check-cast v15, Ljava/io/Closeable;

    .line 135
    .line 136
    iget-object v14, v3, Lbb/a$j;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v14, Ljava/util/zip/ZipFile;

    .line 139
    .line 140
    move-wide/from16 p1, v0

    .line 141
    .line 142
    iget-object v0, v3, Lbb/a$j;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Ljava/io/File;

    .line 145
    .line 146
    iget-object v1, v3, Lbb/a$j;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Ljava/lang/String;

    .line 149
    .line 150
    move-object/from16 p3, v0

    .line 151
    .line 152
    iget-object v0, v3, Lbb/a$j;->a:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lbb/a;

    .line 155
    .line 156
    :try_start_1
    invoke-static {v2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    move-object v4, v0

    .line 160
    move v0, v9

    .line 161
    move-object/from16 v16, v14

    .line 162
    .line 163
    move-object/from16 v22, v15

    .line 164
    .line 165
    move-object v14, v12

    .line 166
    move-object v15, v13

    .line 167
    move-wide/from16 v12, p1

    .line 168
    .line 169
    move-object/from16 v25, v3

    .line 170
    .line 171
    move-object/from16 v3, p3

    .line 172
    .line 173
    move-wide/from16 v26, v6

    .line 174
    .line 175
    move-object v6, v1

    .line 176
    move-object v7, v5

    .line 177
    move v1, v8

    .line 178
    move-object/from16 v5, v25

    .line 179
    .line 180
    move-wide/from16 v8, v26

    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :goto_1
    move-object v1, v0

    .line 186
    goto/16 :goto_c

    .line 187
    .line 188
    :cond_3
    invoke-static {v2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Ljava/io/File;

    .line 192
    .line 193
    move-object/from16 v6, p3

    .line 194
    .line 195
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v8, "destinationDir.path: "

    .line 204
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v8, "destinationDir.canonicalPath: "

    .line 228
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v8, "destinationDir.absolutePath: "

    .line 252
    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    if-eqz v1, :cond_4

    .line 271
    .line 272
    new-instance v7, Ljava/util/zip/ZipFile;

    .line 273
    .line 274
    invoke-direct {v7, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 275
    .line 276
    .line 277
    move-object v15, v7

    .line 278
    goto :goto_2

    .line 279
    :cond_4
    new-instance v1, Lbb/a$b;

    .line 280
    .line 281
    invoke-direct {v1, v0}, Lbb/a$b;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    move-object v15, v1

    .line 285
    :goto_2
    :try_start_2
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->size()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    int-to-double v0, v0

    .line 290
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    const-string v8, "entries(...)"

    .line 295
    .line 296
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v7}, Lyc/m;->s(Ljava/util/Enumeration;)Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    const-wide/16 v8, 0x0

    .line 304
    .line 305
    move-object v13, v7

    .line 306
    move-wide v11, v8

    .line 307
    move-object v14, v15

    .line 308
    move-wide v8, v0

    .line 309
    move-object v7, v5

    .line 310
    move/from16 v0, p4

    .line 311
    .line 312
    move/from16 v1, p5

    .line 313
    .line 314
    move-object v5, v3

    .line 315
    move-object v3, v4

    .line 316
    :goto_3
    :try_start_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v16

    .line 320
    if-eqz v16, :cond_d

    .line 321
    .line 322
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v16

    .line 326
    move-object/from16 v4, v16

    .line 327
    .line 328
    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 329
    .line 330
    move-object/from16 p1, v7

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    move/from16 p2, v1

    .line 337
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    move-object/from16 p3, v13

    .line 344
    .line 345
    const-string v13, "zipEntry fileName="

    .line 346
    .line 347
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v13, ", compressedSize="

    .line 354
    .line 355
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    move-object/from16 p4, v14

    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 361
    .line 362
    .line 363
    move-result-wide v13

    .line 364
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v13, ", size="

    .line 368
    .line 369
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 373
    .line 374
    .line 375
    move-result-wide v13

    .line 376
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v13, ", crc="

    .line 380
    .line 381
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 385
    .line 386
    .line 387
    move-result-wide v13

    .line 388
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    new-instance v1, Ljava/io/File;

    .line 399
    .line 400
    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-static {v7}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    const-string v14, "getCanonicalPath(...)"

    .line 415
    .line 416
    invoke-static {v13, v14}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 417
    .line 418
    .line 419
    const/4 v14, 0x0

    .line 420
    move-object/from16 p5, v1

    .line 421
    .line 422
    move-object/from16 v22, v15

    .line 423
    .line 424
    const/4 v1, 0x2

    .line 425
    const/4 v15, 0x0

    .line 426
    :try_start_4
    invoke-static {v7, v13, v14, v1, v15}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    if-eqz v13, :cond_c

    .line 431
    .line 432
    if-eqz v0, :cond_8

    .line 433
    .line 434
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 435
    .line 436
    add-double/2addr v13, v11

    .line 437
    move-wide/from16 v23, v13

    .line 438
    .line 439
    const/4 v1, 0x1

    .line 440
    int-to-double v13, v1

    .line 441
    sub-double v13, v8, v13

    .line 442
    .line 443
    div-double/2addr v11, v13

    .line 444
    const/16 v1, 0x64

    .line 445
    .line 446
    int-to-double v13, v1

    .line 447
    mul-double v19, v11, v13

    .line 448
    .line 449
    const-string v1, "Waiting reportProgress..."

    .line 450
    .line 451
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    iput-object v3, v5, Lbb/a$j;->a:Ljava/lang/Object;

    .line 458
    .line 459
    iput-object v6, v5, Lbb/a$j;->b:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v2, v5, Lbb/a$j;->c:Ljava/lang/Object;

    .line 462
    .line 463
    move-object/from16 v15, p4

    .line 464
    .line 465
    iput-object v15, v5, Lbb/a$j;->d:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    .line 467
    move-object/from16 v1, v22

    .line 468
    .line 469
    :try_start_5
    iput-object v1, v5, Lbb/a$j;->e:Ljava/lang/Object;

    .line 470
    .line 471
    iput-object v4, v5, Lbb/a$j;->f:Ljava/lang/Object;

    .line 472
    .line 473
    move-object/from16 v7, p3

    .line 474
    .line 475
    iput-object v7, v5, Lbb/a$j;->g:Ljava/lang/Object;

    .line 476
    .line 477
    move-object/from16 v13, p5

    .line 478
    .line 479
    iput-object v13, v5, Lbb/a$j;->h:Ljava/lang/Object;

    .line 480
    .line 481
    iput-boolean v0, v5, Lbb/a$j;->i:Z

    .line 482
    .line 483
    move/from16 v14, p2

    .line 484
    .line 485
    iput v14, v5, Lbb/a$j;->j:I

    .line 486
    .line 487
    iput-wide v8, v5, Lbb/a$j;->k:D

    .line 488
    .line 489
    move-wide/from16 v11, v23

    .line 490
    .line 491
    iput-wide v11, v5, Lbb/a$j;->l:D

    .line 492
    .line 493
    move/from16 p2, v0

    .line 494
    .line 495
    const/4 v0, 0x1

    .line 496
    iput v0, v5, Lbb/a$j;->o:I

    .line 497
    .line 498
    move-object/from16 v16, v3

    .line 499
    .line 500
    move/from16 v17, v14

    .line 501
    .line 502
    move-object/from16 v18, v4

    .line 503
    .line 504
    move-object/from16 v21, v5

    .line 505
    .line 506
    invoke-direct/range {v16 .. v21}, Lbb/a;->k(ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 510
    move-object/from16 v22, v1

    .line 511
    .line 512
    move-object/from16 v1, p1

    .line 513
    .line 514
    if-ne v0, v1, :cond_5

    .line 515
    .line 516
    return-object v1

    .line 517
    :cond_5
    move-object/from16 v16, v15

    .line 518
    .line 519
    move-object v15, v4

    .line 520
    move-object v4, v3

    .line 521
    move-object v3, v2

    .line 522
    move-object v2, v0

    .line 523
    move/from16 v0, p2

    .line 524
    .line 525
    move-object/from16 v25, v7

    .line 526
    .line 527
    move-object v7, v1

    .line 528
    move v1, v14

    .line 529
    move-object/from16 v14, v25

    .line 530
    .line 531
    move-wide/from16 v26, v11

    .line 532
    .line 533
    move-object v11, v13

    .line 534
    move-wide/from16 v12, v26

    .line 535
    .line 536
    :goto_4
    :try_start_6
    check-cast v2, Lbb/b;

    .line 537
    .line 538
    move/from16 p1, v0

    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    move/from16 p2, v1

    .line 546
    .line 547
    const-string v1, "...reportProgress: "

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    sget-object v0, Lbb/b;->b:Lbb/b;

    .line 563
    .line 564
    if-ne v2, v0, :cond_6

    .line 565
    .line 566
    move/from16 v0, p1

    .line 567
    .line 568
    move/from16 v1, p2

    .line 569
    .line 570
    move-object v2, v3

    .line 571
    move-object v3, v4

    .line 572
    move-wide v11, v12

    .line 573
    move-object v13, v14

    .line 574
    move-object/from16 v14, v16

    .line 575
    .line 576
    move-object/from16 v15, v22

    .line 577
    .line 578
    goto/16 :goto_a

    .line 579
    .line 580
    :cond_6
    sget-object v0, Lbb/b;->c:Lbb/b;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 581
    .line 582
    if-ne v2, v0, :cond_7

    .line 583
    .line 584
    move-object/from16 v15, v22

    .line 585
    .line 586
    goto/16 :goto_b

    .line 587
    .line 588
    :cond_7
    move/from16 v1, p1

    .line 589
    .line 590
    move-object v0, v4

    .line 591
    move-object/from16 p1, v7

    .line 592
    .line 593
    move-object v4, v15

    .line 594
    move-object v7, v3

    .line 595
    move-wide v2, v8

    .line 596
    move-object v15, v14

    .line 597
    move-object/from16 v8, v16

    .line 598
    .line 599
    move-object/from16 v9, v22

    .line 600
    .line 601
    move/from16 v14, p2

    .line 602
    .line 603
    move-wide/from16 v25, v12

    .line 604
    .line 605
    move-object v13, v11

    .line 606
    move-wide/from16 v11, v25

    .line 607
    .line 608
    goto :goto_6

    .line 609
    :catchall_1
    move-exception v0

    .line 610
    :goto_5
    move-object v1, v0

    .line 611
    move-object/from16 v15, v22

    .line 612
    .line 613
    goto/16 :goto_c

    .line 614
    .line 615
    :catchall_2
    move-exception v0

    .line 616
    move-object/from16 v22, v1

    .line 617
    .line 618
    goto :goto_5

    .line 619
    :cond_8
    move-object/from16 v1, p1

    .line 620
    .line 621
    move/from16 v14, p2

    .line 622
    .line 623
    move-object/from16 v7, p3

    .line 624
    .line 625
    move-object/from16 v15, p4

    .line 626
    .line 627
    move-object/from16 v13, p5

    .line 628
    .line 629
    move/from16 p2, v0

    .line 630
    .line 631
    move-object v0, v3

    .line 632
    move/from16 v1, p2

    .line 633
    .line 634
    move-object/from16 v25, v7

    .line 635
    .line 636
    move-object v7, v2

    .line 637
    move-wide v2, v8

    .line 638
    move-object v8, v15

    .line 639
    move-object/from16 v9, v22

    .line 640
    .line 641
    move-object/from16 v15, v25

    .line 642
    .line 643
    :goto_6
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 644
    .line 645
    .line 646
    move-result v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 647
    move-wide/from16 v17, v11

    .line 648
    .line 649
    const-string v11, "Creating directory: "

    .line 650
    .line 651
    if-eqz v16, :cond_9

    .line 652
    .line 653
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v11

    .line 665
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 680
    .line 681
    .line 682
    move-object v4, v0

    .line 683
    move v13, v1

    .line 684
    move-wide v11, v2

    .line 685
    const/4 v0, 0x2

    .line 686
    move-object/from16 v2, p1

    .line 687
    .line 688
    goto/16 :goto_8

    .line 689
    .line 690
    :cond_9
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 691
    .line 692
    .line 693
    move-result-object v12

    .line 694
    if-eqz v12, :cond_a

    .line 695
    .line 696
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 697
    .line 698
    .line 699
    move-result v16

    .line 700
    if-nez v16, :cond_a

    .line 701
    .line 702
    move-wide/from16 v19, v2

    .line 703
    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 727
    .line 728
    .line 729
    goto :goto_7

    .line 730
    :cond_a
    move-wide/from16 v19, v2

    .line 731
    .line 732
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v3, "Writing entry to file: "

    .line 738
    .line 739
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    new-instance v3, Lbb/a$k;

    .line 761
    .line 762
    const/4 v11, 0x0

    .line 763
    invoke-direct {v3, v8, v4, v13, v11}, Lbb/a$k;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lad/e;)V

    .line 764
    .line 765
    .line 766
    iput-object v0, v5, Lbb/a$j;->a:Ljava/lang/Object;

    .line 767
    .line 768
    iput-object v6, v5, Lbb/a$j;->b:Ljava/lang/Object;

    .line 769
    .line 770
    iput-object v7, v5, Lbb/a$j;->c:Ljava/lang/Object;

    .line 771
    .line 772
    iput-object v8, v5, Lbb/a$j;->d:Ljava/lang/Object;

    .line 773
    .line 774
    iput-object v9, v5, Lbb/a$j;->e:Ljava/lang/Object;

    .line 775
    .line 776
    iput-object v15, v5, Lbb/a$j;->f:Ljava/lang/Object;

    .line 777
    .line 778
    const/4 v4, 0x0

    .line 779
    iput-object v4, v5, Lbb/a$j;->g:Ljava/lang/Object;

    .line 780
    .line 781
    iput-object v4, v5, Lbb/a$j;->h:Ljava/lang/Object;

    .line 782
    .line 783
    iput-boolean v1, v5, Lbb/a$j;->i:Z

    .line 784
    .line 785
    iput v14, v5, Lbb/a$j;->j:I

    .line 786
    .line 787
    move-wide/from16 v11, v19

    .line 788
    .line 789
    iput-wide v11, v5, Lbb/a$j;->k:D

    .line 790
    .line 791
    move-object v4, v0

    .line 792
    move v13, v1

    .line 793
    move-wide/from16 v0, v17

    .line 794
    .line 795
    iput-wide v0, v5, Lbb/a$j;->l:D

    .line 796
    .line 797
    move-wide/from16 v17, v0

    .line 798
    .line 799
    const/4 v0, 0x2

    .line 800
    iput v0, v5, Lbb/a$j;->o:I

    .line 801
    .line 802
    invoke-static {v2, v3, v5}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 806
    move-object/from16 v2, p1

    .line 807
    .line 808
    if-ne v1, v2, :cond_b

    .line 809
    .line 810
    return-object v2

    .line 811
    :cond_b
    :goto_8
    move-object v3, v4

    .line 812
    move-object v4, v8

    .line 813
    move v1, v14

    .line 814
    move-object v14, v15

    .line 815
    move-object v15, v9

    .line 816
    move-wide v8, v11

    .line 817
    move-wide/from16 v11, v17

    .line 818
    .line 819
    move-object/from16 v25, v7

    .line 820
    .line 821
    move-object v7, v2

    .line 822
    move-object/from16 v2, v25

    .line 823
    .line 824
    :goto_9
    move v0, v13

    .line 825
    move-object v13, v14

    .line 826
    move-object v14, v4

    .line 827
    :goto_a
    move-object/from16 v4, p0

    .line 828
    .line 829
    goto/16 :goto_3

    .line 830
    .line 831
    :catchall_3
    move-exception v0

    .line 832
    move-object v1, v0

    .line 833
    move-object v15, v9

    .line 834
    goto :goto_c

    .line 835
    :cond_c
    move-object/from16 v13, p5

    .line 836
    .line 837
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .line 841
    .line 842
    const-string v1, "outputFile path: "

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .line 865
    .line 866
    const-string v1, "canonicalPath: "

    .line 867
    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    new-instance v0, Ljava/lang/SecurityException;

    .line 882
    .line 883
    const-string v1, "Invalid zip file"

    .line 884
    .line 885
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 889
    :cond_d
    move-object/from16 v22, v15

    .line 890
    .line 891
    :goto_b
    :try_start_a
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 892
    .line 893
    const/4 v0, 0x0

    .line 894
    invoke-static {v15, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 895
    .line 896
    .line 897
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 898
    .line 899
    return-object v0

    .line 900
    :catchall_4
    move-exception v0

    .line 901
    move-object/from16 v22, v15

    .line 902
    .line 903
    goto/16 :goto_1

    .line 904
    .line 905
    :goto_c
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 906
    :catchall_5
    move-exception v0

    .line 907
    move-object v2, v0

    .line 908
    invoke-static {v15, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 909
    .line 910
    .line 911
    throw v2
.end method

.method private final m(Ljava/lang/String;Ljava/lang/String;ZZZILad/e;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v4, p1

    .line 2
    move/from16 v5, p3

    .line 3
    .line 4
    move/from16 v0, p4

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "sourceDirPath: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", zipFilePath: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-object v2, p2

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ", recurseSubDirs: "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ", includeBaseDirectory: "

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "zip"

    .line 49
    .line 50
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    new-instance v0, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    move-object v3, v0

    .line 71
    if-eqz p5, :cond_1

    .line 72
    .line 73
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v10, p0

    .line 77
    invoke-direct {p0, v3, v5}, Lbb/a;->j(Ljava/io/File;Z)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v10, p0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_1
    move v8, v0

    .line 85
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    new-instance v12, Lbb/a$l;

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v0, v12

    .line 93
    move-object v1, p2

    .line 94
    move-object v2, p0

    .line 95
    move-object v4, p1

    .line 96
    move/from16 v5, p3

    .line 97
    .line 98
    move/from16 v6, p5

    .line 99
    .line 100
    move/from16 v7, p6

    .line 101
    .line 102
    invoke-direct/range {v0 .. v9}, Lbb/a$l;-><init>(Ljava/lang/String;Lbb/a;Ljava/io/File;Ljava/lang/String;ZZIILad/e;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v0, p7

    .line 106
    .line 107
    invoke-static {v11, v12, v0}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-ne v0, v1, :cond_2

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_2
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 119
    .line 120
    return-object v0
.end method

.method private final n(Ljava/util/zip/ZipEntry;)Ljava/util/Map;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Lxc/k;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "name"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "isDirectory"

    .line 27
    .line 28
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    const-string v2, "comment"

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "modificationDate"

    .line 57
    .line 58
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x3

    .line 63
    aput-object v2, v1, v3

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "uncompressedSize"

    .line 74
    .line 75
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v3, 0x4

    .line 80
    aput-object v2, v1, v3

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "compressedSize"

    .line 91
    .line 92
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/4 v3, 0x5

    .line 97
    aput-object v2, v1, v3

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "crc"

    .line 108
    .line 109
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const/4 v3, 0x6

    .line 114
    aput-object v2, v1, v3

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-ne p1, v0, :cond_0

    .line 121
    .line 122
    const-string p1, "deflated"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const-string p1, "none"

    .line 126
    .line 127
    :goto_0
    const-string v0, "compressionMethod"

    .line 128
    .line 129
    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/4 v0, 0x7

    .line 134
    aput-object p1, v1, v0

    .line 135
    .line 136
    invoke-static {v1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1
.end method

.method private final o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v4, "sourceDirPath: "

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, ", zipFilePath: "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ", includeBaseDirectory: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "zip"

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "Files: "

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-object/from16 v5, p2

    .line 55
    .line 56
    check-cast v5, Ljava/lang/Iterable;

    .line 57
    .line 58
    const-string v6, ","

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    const/16 v12, 0x3e

    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    invoke-static/range {v5 .. v13}, Lyc/m;->X(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lid/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    new-instance v2, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v0, v2

    .line 100
    :goto_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    .line 101
    .line 102
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 103
    .line 104
    new-instance v5, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    .line 114
    .line 115
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    const/4 v5, 0x0

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v3}, Lgd/g;->s(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v3, v0}, Lgd/g;->q(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "Adding file: "

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    new-instance v7, Ljava/io/FileInputStream;

    .line 168
    .line 169
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 170
    .line 171
    .line 172
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipEntry;

    .line 173
    .line 174
    invoke-direct {v8, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 178
    .line 179
    .line 180
    move-result-wide v9

    .line 181
    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 185
    .line 186
    .line 187
    move-result-wide v9

    .line 188
    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    const/4 v6, 0x2

    .line 196
    invoke-static {v7, v2, v3, v6, v5}, Lgd/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .line 198
    .line 199
    :try_start_2
    invoke-static {v7, v5}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    move-object v1, v0

    .line 205
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    move-object v3, v0

    .line 208
    :try_start_4
    invoke-static {v7, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    throw v3

    .line 212
    :cond_1
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 213
    .line 214
    invoke-static {v2, v5}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    move-object v1, v0

    .line 220
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 221
    :catchall_3
    move-exception v0

    .line 222
    move-object v3, v0

    .line 223
    invoke-static {v2, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v3
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onAttachedToEngine - IN"

    .line 7
    .line 8
    const-string v1, "FlutterArchivePlugin"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lbb/a;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "onAttachedToEngine - already attached"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object p1, p0, Lbb/a;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lbb/a;->h(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "onAttachedToEngine - OUT"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "FlutterArchivePlugin"

    .line 7
    .line 8
    const-string v0, "onDetachedFromEngine"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lbb/a;->i()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, -0x255623b4

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    const v3, -0x917c02a

    .line 34
    .line 35
    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    .line 38
    const v3, 0x6a495e8

    .line 39
    .line 40
    .line 41
    if-eq v2, v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "unzip"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lbb/a$h;

    .line 56
    .line 57
    invoke-direct {v0, p1, p2, p0, v4}, Lbb/a$h;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v4, v0

    .line 63
    invoke-static/range {v1 .. v6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string v2, "zipFiles"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    new-instance v0, Lbb/a$g;

    .line 79
    .line 80
    invoke-direct {v0, p1, p2, p0, v4}, Lbb/a$g;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x3

    .line 84
    const/4 v6, 0x0

    .line 85
    move-object v4, v0

    .line 86
    invoke-static/range {v1 .. v6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const-string v2, "zipDirectory"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    new-instance v0, Lbb/a$f;

    .line 102
    .line 103
    invoke-direct {v0, p1, p2, p0, v4}, Lbb/a$f;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lbb/a;Lad/e;)V

    .line 104
    .line 105
    .line 106
    const/4 v5, 0x3

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v4, v0

    .line 109
    invoke-static/range {v1 .. v6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 117
    .line 118
    :goto_1
    return-void
.end method
