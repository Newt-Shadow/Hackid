.class public Landroidx/exifinterface/media/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/a$c;,
        Landroidx/exifinterface/media/a$b;,
        Landroidx/exifinterface/media/a$g;,
        Landroidx/exifinterface/media/a$e;,
        Landroidx/exifinterface/media/a$d;,
        Landroidx/exifinterface/media/a$f;
    }
.end annotation


# static fields
.field public static final A:[I

.field static final B:[B

.field private static final C:[B

.field private static final D:[B

.field private static final E:[B

.field private static final F:[B

.field private static final G:[B

.field private static final H:[B

.field private static final I:[B

.field private static final J:[B

.field private static final K:[B

.field private static final L:[B

.field private static final M:[B

.field private static final N:[B

.field private static final O:[B

.field private static final P:[B

.field private static final Q:[B

.field private static final R:[B

.field private static final S:[B

.field private static final T:[B

.field private static U:Ljava/text/SimpleDateFormat;

.field private static V:Ljava/text/SimpleDateFormat;

.field static final W:[Ljava/lang/String;

.field static final X:[I

.field static final Y:[B

.field private static final Z:[Landroidx/exifinterface/media/a$e;

.field private static final a0:[Landroidx/exifinterface/media/a$e;

.field private static final b0:[Landroidx/exifinterface/media/a$e;

.field private static final c0:[Landroidx/exifinterface/media/a$e;

.field private static final d0:[Landroidx/exifinterface/media/a$e;

.field private static final e0:Landroidx/exifinterface/media/a$e;

.field private static final f0:[Landroidx/exifinterface/media/a$e;

.field private static final g0:[Landroidx/exifinterface/media/a$e;

.field private static final h0:[Landroidx/exifinterface/media/a$e;

.field private static final i0:[Landroidx/exifinterface/media/a$e;

.field static final j0:[[Landroidx/exifinterface/media/a$e;

.field private static final k0:[Landroidx/exifinterface/media/a$e;

.field private static final l0:[Ljava/util/HashMap;

.field private static final m0:[Ljava/util/HashMap;

.field private static final n0:Ljava/util/HashSet;

.field private static final o0:Ljava/util/HashMap;

.field static final p0:Ljava/nio/charset/Charset;

.field static final q0:[B

.field private static final r0:[B

.field private static final s0:Ljava/util/regex/Pattern;

.field private static final t0:Ljava/util/regex/Pattern;

.field private static final u0:Ljava/util/regex/Pattern;

.field private static final v:Z

.field private static final v0:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/List;

.field private static final x:Ljava/util/List;

.field public static final y:[I

.field public static final z:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/FileDescriptor;

.field private c:Landroid/content/res/AssetManager$AssetInputStream;

.field private d:I

.field private e:Z

.field private final f:[Ljava/util/HashMap;

.field private g:Ljava/util/Set;

.field private h:Ljava/nio/ByteOrder;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:[B

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 138

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    filled-new-array {v3, v5, v2, v7}, [Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    sput-object v5, Landroidx/exifinterface/media/a;->w:Ljava/util/List;

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/4 v9, 0x7

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    const/4 v11, 0x4

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    const/4 v13, 0x5

    .line 56
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v14

    .line 60
    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    sput-object v12, Landroidx/exifinterface/media/a;->x:Ljava/util/List;

    .line 69
    .line 70
    filled-new-array {v6, v6, v6}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    sput-object v12, Landroidx/exifinterface/media/a;->y:[I

    .line 75
    .line 76
    filled-new-array {v11}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    sput-object v12, Landroidx/exifinterface/media/a;->z:[I

    .line 81
    .line 82
    filled-new-array {v6}, [I

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    sput-object v12, Landroidx/exifinterface/media/a;->A:[I

    .line 87
    .line 88
    new-array v12, v1, [B

    .line 89
    .line 90
    fill-array-data v12, :array_0

    .line 91
    .line 92
    .line 93
    sput-object v12, Landroidx/exifinterface/media/a;->B:[B

    .line 94
    .line 95
    new-array v12, v11, [B

    .line 96
    .line 97
    fill-array-data v12, :array_1

    .line 98
    .line 99
    .line 100
    sput-object v12, Landroidx/exifinterface/media/a;->C:[B

    .line 101
    .line 102
    new-array v12, v11, [B

    .line 103
    .line 104
    fill-array-data v12, :array_2

    .line 105
    .line 106
    .line 107
    sput-object v12, Landroidx/exifinterface/media/a;->D:[B

    .line 108
    .line 109
    new-array v12, v11, [B

    .line 110
    .line 111
    fill-array-data v12, :array_3

    .line 112
    .line 113
    .line 114
    sput-object v12, Landroidx/exifinterface/media/a;->E:[B

    .line 115
    .line 116
    new-array v12, v4, [B

    .line 117
    .line 118
    fill-array-data v12, :array_4

    .line 119
    .line 120
    .line 121
    sput-object v12, Landroidx/exifinterface/media/a;->F:[B

    .line 122
    .line 123
    const/16 v12, 0xa

    .line 124
    .line 125
    new-array v15, v12, [B

    .line 126
    .line 127
    fill-array-data v15, :array_5

    .line 128
    .line 129
    .line 130
    sput-object v15, Landroidx/exifinterface/media/a;->G:[B

    .line 131
    .line 132
    new-array v15, v6, [B

    .line 133
    .line 134
    fill-array-data v15, :array_6

    .line 135
    .line 136
    .line 137
    sput-object v15, Landroidx/exifinterface/media/a;->H:[B

    .line 138
    .line 139
    new-array v15, v11, [B

    .line 140
    .line 141
    fill-array-data v15, :array_7

    .line 142
    .line 143
    .line 144
    sput-object v15, Landroidx/exifinterface/media/a;->I:[B

    .line 145
    .line 146
    new-array v15, v11, [B

    .line 147
    .line 148
    fill-array-data v15, :array_8

    .line 149
    .line 150
    .line 151
    sput-object v15, Landroidx/exifinterface/media/a;->J:[B

    .line 152
    .line 153
    new-array v15, v11, [B

    .line 154
    .line 155
    fill-array-data v15, :array_9

    .line 156
    .line 157
    .line 158
    sput-object v15, Landroidx/exifinterface/media/a;->K:[B

    .line 159
    .line 160
    new-array v15, v11, [B

    .line 161
    .line 162
    fill-array-data v15, :array_a

    .line 163
    .line 164
    .line 165
    sput-object v15, Landroidx/exifinterface/media/a;->L:[B

    .line 166
    .line 167
    new-array v15, v11, [B

    .line 168
    .line 169
    fill-array-data v15, :array_b

    .line 170
    .line 171
    .line 172
    sput-object v15, Landroidx/exifinterface/media/a;->M:[B

    .line 173
    .line 174
    new-array v15, v11, [B

    .line 175
    .line 176
    fill-array-data v15, :array_c

    .line 177
    .line 178
    .line 179
    sput-object v15, Landroidx/exifinterface/media/a;->N:[B

    .line 180
    .line 181
    new-array v15, v1, [B

    .line 182
    .line 183
    fill-array-data v15, :array_d

    .line 184
    .line 185
    .line 186
    sput-object v15, Landroidx/exifinterface/media/a;->O:[B

    .line 187
    .line 188
    const-string v15, "VP8X"

    .line 189
    .line 190
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    sput-object v12, Landroidx/exifinterface/media/a;->P:[B

    .line 199
    .line 200
    const-string v12, "VP8L"

    .line 201
    .line 202
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    sput-object v12, Landroidx/exifinterface/media/a;->Q:[B

    .line 211
    .line 212
    const-string v12, "VP8 "

    .line 213
    .line 214
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    sput-object v12, Landroidx/exifinterface/media/a;->R:[B

    .line 223
    .line 224
    const-string v12, "ANIM"

    .line 225
    .line 226
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    sput-object v12, Landroidx/exifinterface/media/a;->S:[B

    .line 235
    .line 236
    const-string v12, "ANMF"

    .line 237
    .line 238
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    sput-object v12, Landroidx/exifinterface/media/a;->T:[B

    .line 247
    .line 248
    const-string v16, ""

    .line 249
    .line 250
    const-string v17, "BYTE"

    .line 251
    .line 252
    const-string v18, "STRING"

    .line 253
    .line 254
    const-string v19, "USHORT"

    .line 255
    .line 256
    const-string v20, "ULONG"

    .line 257
    .line 258
    const-string v21, "URATIONAL"

    .line 259
    .line 260
    const-string v22, "SBYTE"

    .line 261
    .line 262
    const-string v23, "UNDEFINED"

    .line 263
    .line 264
    const-string v24, "SSHORT"

    .line 265
    .line 266
    const-string v25, "SLONG"

    .line 267
    .line 268
    const-string v26, "SRATIONAL"

    .line 269
    .line 270
    const-string v27, "SINGLE"

    .line 271
    .line 272
    const-string v28, "DOUBLE"

    .line 273
    .line 274
    const-string v29, "IFD"

    .line 275
    .line 276
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    sput-object v12, Landroidx/exifinterface/media/a;->W:[Ljava/lang/String;

    .line 281
    .line 282
    const/16 v12, 0xe

    .line 283
    .line 284
    new-array v15, v12, [I

    .line 285
    .line 286
    fill-array-data v15, :array_e

    .line 287
    .line 288
    .line 289
    sput-object v15, Landroidx/exifinterface/media/a;->X:[I

    .line 290
    .line 291
    new-array v15, v6, [B

    .line 292
    .line 293
    fill-array-data v15, :array_f

    .line 294
    .line 295
    .line 296
    sput-object v15, Landroidx/exifinterface/media/a;->Y:[B

    .line 297
    .line 298
    new-instance v15, Landroidx/exifinterface/media/a$e;

    .line 299
    .line 300
    move-object/from16 v16, v15

    .line 301
    .line 302
    const-string v12, "NewSubfileType"

    .line 303
    .line 304
    const/16 v6, 0xfe

    .line 305
    .line 306
    invoke-direct {v15, v12, v6, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 307
    .line 308
    .line 309
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 310
    .line 311
    move-object/from16 v17, v6

    .line 312
    .line 313
    const-string v12, "SubfileType"

    .line 314
    .line 315
    const/16 v15, 0xff

    .line 316
    .line 317
    invoke-direct {v6, v12, v15, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 318
    .line 319
    .line 320
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 321
    .line 322
    move-object/from16 v18, v6

    .line 323
    .line 324
    const-string v12, "ImageWidth"

    .line 325
    .line 326
    const/16 v15, 0x100

    .line 327
    .line 328
    invoke-direct {v6, v12, v15, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 329
    .line 330
    .line 331
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 332
    .line 333
    move-object/from16 v19, v6

    .line 334
    .line 335
    const-string v12, "ImageLength"

    .line 336
    .line 337
    const/16 v15, 0x101

    .line 338
    .line 339
    invoke-direct {v6, v12, v15, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 340
    .line 341
    .line 342
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 343
    .line 344
    move-object/from16 v20, v6

    .line 345
    .line 346
    const-string v12, "BitsPerSample"

    .line 347
    .line 348
    const/16 v15, 0x102

    .line 349
    .line 350
    invoke-direct {v6, v12, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 351
    .line 352
    .line 353
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 354
    .line 355
    move-object/from16 v21, v6

    .line 356
    .line 357
    const-string v12, "Compression"

    .line 358
    .line 359
    const/16 v15, 0x103

    .line 360
    .line 361
    invoke-direct {v6, v12, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 362
    .line 363
    .line 364
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 365
    .line 366
    move-object/from16 v22, v6

    .line 367
    .line 368
    const-string v12, "PhotometricInterpretation"

    .line 369
    .line 370
    const/16 v15, 0x106

    .line 371
    .line 372
    invoke-direct {v6, v12, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 373
    .line 374
    .line 375
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 376
    .line 377
    move-object/from16 v23, v6

    .line 378
    .line 379
    const-string v12, "ImageDescription"

    .line 380
    .line 381
    const/16 v15, 0x10e

    .line 382
    .line 383
    invoke-direct {v6, v12, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 384
    .line 385
    .line 386
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 387
    .line 388
    move-object/from16 v24, v6

    .line 389
    .line 390
    const-string v12, "Make"

    .line 391
    .line 392
    const/16 v15, 0x10f

    .line 393
    .line 394
    invoke-direct {v6, v12, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 395
    .line 396
    .line 397
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 398
    .line 399
    move-object/from16 v25, v6

    .line 400
    .line 401
    const-string v12, "Model"

    .line 402
    .line 403
    const/16 v15, 0x110

    .line 404
    .line 405
    invoke-direct {v6, v12, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 406
    .line 407
    .line 408
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 409
    .line 410
    move-object/from16 v26, v6

    .line 411
    .line 412
    const-string v12, "StripOffsets"

    .line 413
    .line 414
    const/16 v15, 0x111

    .line 415
    .line 416
    invoke-direct {v6, v12, v15, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 417
    .line 418
    .line 419
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 420
    .line 421
    move-object/from16 v27, v6

    .line 422
    .line 423
    const-string v15, "Orientation"

    .line 424
    .line 425
    const/16 v0, 0x112

    .line 426
    .line 427
    invoke-direct {v6, v15, v0, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 431
    .line 432
    move-object/from16 v28, v0

    .line 433
    .line 434
    const-string v6, "SamplesPerPixel"

    .line 435
    .line 436
    const/16 v15, 0x115

    .line 437
    .line 438
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 442
    .line 443
    move-object/from16 v29, v0

    .line 444
    .line 445
    const-string v6, "RowsPerStrip"

    .line 446
    .line 447
    const/16 v15, 0x116

    .line 448
    .line 449
    invoke-direct {v0, v6, v15, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 450
    .line 451
    .line 452
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 453
    .line 454
    move-object/from16 v30, v0

    .line 455
    .line 456
    const-string v6, "StripByteCounts"

    .line 457
    .line 458
    const/16 v15, 0x117

    .line 459
    .line 460
    invoke-direct {v0, v6, v15, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 464
    .line 465
    move-object/from16 v31, v0

    .line 466
    .line 467
    const-string v6, "XResolution"

    .line 468
    .line 469
    const/16 v15, 0x11a

    .line 470
    .line 471
    invoke-direct {v0, v6, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 472
    .line 473
    .line 474
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 475
    .line 476
    move-object/from16 v32, v0

    .line 477
    .line 478
    const-string v6, "YResolution"

    .line 479
    .line 480
    const/16 v15, 0x11b

    .line 481
    .line 482
    invoke-direct {v0, v6, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 483
    .line 484
    .line 485
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 486
    .line 487
    move-object/from16 v33, v0

    .line 488
    .line 489
    const-string v6, "PlanarConfiguration"

    .line 490
    .line 491
    const/16 v15, 0x11c

    .line 492
    .line 493
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 497
    .line 498
    move-object/from16 v34, v0

    .line 499
    .line 500
    const-string v6, "ResolutionUnit"

    .line 501
    .line 502
    const/16 v15, 0x128

    .line 503
    .line 504
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 508
    .line 509
    move-object/from16 v35, v0

    .line 510
    .line 511
    const-string v6, "TransferFunction"

    .line 512
    .line 513
    const/16 v15, 0x12d

    .line 514
    .line 515
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 519
    .line 520
    move-object/from16 v36, v0

    .line 521
    .line 522
    const-string v6, "Software"

    .line 523
    .line 524
    const/16 v15, 0x131

    .line 525
    .line 526
    invoke-direct {v0, v6, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 527
    .line 528
    .line 529
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 530
    .line 531
    move-object/from16 v37, v0

    .line 532
    .line 533
    const-string v6, "DateTime"

    .line 534
    .line 535
    const/16 v15, 0x132

    .line 536
    .line 537
    invoke-direct {v0, v6, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 541
    .line 542
    move-object/from16 v38, v0

    .line 543
    .line 544
    const-string v6, "Artist"

    .line 545
    .line 546
    const/16 v15, 0x13b

    .line 547
    .line 548
    invoke-direct {v0, v6, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 549
    .line 550
    .line 551
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 552
    .line 553
    move-object/from16 v39, v0

    .line 554
    .line 555
    const-string v6, "WhitePoint"

    .line 556
    .line 557
    const/16 v15, 0x13e

    .line 558
    .line 559
    invoke-direct {v0, v6, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 560
    .line 561
    .line 562
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 563
    .line 564
    move-object/from16 v40, v0

    .line 565
    .line 566
    const-string v6, "PrimaryChromaticities"

    .line 567
    .line 568
    const/16 v15, 0x13f

    .line 569
    .line 570
    invoke-direct {v0, v6, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 571
    .line 572
    .line 573
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 574
    .line 575
    move-object/from16 v41, v0

    .line 576
    .line 577
    const-string v6, "SubIFDPointer"

    .line 578
    .line 579
    const/16 v15, 0x14a

    .line 580
    .line 581
    invoke-direct {v0, v6, v15, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 582
    .line 583
    .line 584
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 585
    .line 586
    move-object/from16 v42, v0

    .line 587
    .line 588
    const-string v15, "JPEGInterchangeFormat"

    .line 589
    .line 590
    const/16 v9, 0x201

    .line 591
    .line 592
    invoke-direct {v0, v15, v9, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 593
    .line 594
    .line 595
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 596
    .line 597
    move-object/from16 v43, v0

    .line 598
    .line 599
    const-string v9, "JPEGInterchangeFormatLength"

    .line 600
    .line 601
    const/16 v15, 0x202

    .line 602
    .line 603
    invoke-direct {v0, v9, v15, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 604
    .line 605
    .line 606
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 607
    .line 608
    move-object/from16 v44, v0

    .line 609
    .line 610
    const-string v9, "YCbCrCoefficients"

    .line 611
    .line 612
    const/16 v15, 0x211

    .line 613
    .line 614
    invoke-direct {v0, v9, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 615
    .line 616
    .line 617
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 618
    .line 619
    move-object/from16 v45, v0

    .line 620
    .line 621
    const-string v9, "YCbCrSubSampling"

    .line 622
    .line 623
    const/16 v15, 0x212

    .line 624
    .line 625
    invoke-direct {v0, v9, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 626
    .line 627
    .line 628
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 629
    .line 630
    move-object/from16 v46, v0

    .line 631
    .line 632
    const-string v9, "YCbCrPositioning"

    .line 633
    .line 634
    const/16 v15, 0x213

    .line 635
    .line 636
    invoke-direct {v0, v9, v15, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 637
    .line 638
    .line 639
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 640
    .line 641
    move-object/from16 v47, v0

    .line 642
    .line 643
    const-string v9, "ReferenceBlackWhite"

    .line 644
    .line 645
    const/16 v15, 0x214

    .line 646
    .line 647
    invoke-direct {v0, v9, v15, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 648
    .line 649
    .line 650
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 651
    .line 652
    move-object/from16 v48, v0

    .line 653
    .line 654
    const-string v9, "Copyright"

    .line 655
    .line 656
    const v15, 0x8298

    .line 657
    .line 658
    .line 659
    invoke-direct {v0, v9, v15, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 660
    .line 661
    .line 662
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 663
    .line 664
    move-object/from16 v49, v0

    .line 665
    .line 666
    const-string v9, "ExifIFDPointer"

    .line 667
    .line 668
    const v15, 0x8769

    .line 669
    .line 670
    .line 671
    invoke-direct {v0, v9, v15, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 672
    .line 673
    .line 674
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 675
    .line 676
    move-object/from16 v50, v0

    .line 677
    .line 678
    const-string v15, "GPSInfoIFDPointer"

    .line 679
    .line 680
    const v5, 0x8825

    .line 681
    .line 682
    .line 683
    invoke-direct {v0, v15, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 684
    .line 685
    .line 686
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 687
    .line 688
    move-object/from16 v51, v0

    .line 689
    .line 690
    const-string v5, "SensorTopBorder"

    .line 691
    .line 692
    invoke-direct {v0, v5, v11, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 693
    .line 694
    .line 695
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 696
    .line 697
    move-object/from16 v52, v0

    .line 698
    .line 699
    const-string v5, "SensorLeftBorder"

    .line 700
    .line 701
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 702
    .line 703
    .line 704
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 705
    .line 706
    move-object/from16 v53, v0

    .line 707
    .line 708
    const-string v5, "SensorBottomBorder"

    .line 709
    .line 710
    invoke-direct {v0, v5, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 711
    .line 712
    .line 713
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 714
    .line 715
    move-object/from16 v54, v0

    .line 716
    .line 717
    const-string v5, "SensorRightBorder"

    .line 718
    .line 719
    const/4 v4, 0x7

    .line 720
    invoke-direct {v0, v5, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 721
    .line 722
    .line 723
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 724
    .line 725
    move-object/from16 v55, v0

    .line 726
    .line 727
    const-string v5, "ISO"

    .line 728
    .line 729
    const/16 v11, 0x17

    .line 730
    .line 731
    invoke-direct {v0, v5, v11, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 732
    .line 733
    .line 734
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 735
    .line 736
    move-object/from16 v56, v0

    .line 737
    .line 738
    const-string v5, "JpgFromRaw"

    .line 739
    .line 740
    const/16 v11, 0x2e

    .line 741
    .line 742
    invoke-direct {v0, v5, v11, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 743
    .line 744
    .line 745
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 746
    .line 747
    move-object/from16 v57, v0

    .line 748
    .line 749
    const-string v4, "Xmp"

    .line 750
    .line 751
    const/16 v5, 0x2bc

    .line 752
    .line 753
    const/4 v11, 0x1

    .line 754
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 755
    .line 756
    .line 757
    filled-new-array/range {v16 .. v57}, [Landroidx/exifinterface/media/a$e;

    .line 758
    .line 759
    .line 760
    move-result-object v63

    .line 761
    sput-object v63, Landroidx/exifinterface/media/a;->Z:[Landroidx/exifinterface/media/a$e;

    .line 762
    .line 763
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 764
    .line 765
    move-object/from16 v64, v0

    .line 766
    .line 767
    const-string v4, "ExposureTime"

    .line 768
    .line 769
    const v5, 0x829a

    .line 770
    .line 771
    .line 772
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 773
    .line 774
    .line 775
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 776
    .line 777
    move-object/from16 v65, v0

    .line 778
    .line 779
    const-string v4, "FNumber"

    .line 780
    .line 781
    const v5, 0x829d

    .line 782
    .line 783
    .line 784
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 785
    .line 786
    .line 787
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 788
    .line 789
    move-object/from16 v66, v0

    .line 790
    .line 791
    const-string v4, "ExposureProgram"

    .line 792
    .line 793
    const v5, 0x8822

    .line 794
    .line 795
    .line 796
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 797
    .line 798
    .line 799
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 800
    .line 801
    move-object/from16 v67, v0

    .line 802
    .line 803
    const-string v4, "SpectralSensitivity"

    .line 804
    .line 805
    const v5, 0x8824

    .line 806
    .line 807
    .line 808
    const/4 v11, 0x2

    .line 809
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 810
    .line 811
    .line 812
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 813
    .line 814
    move-object/from16 v68, v0

    .line 815
    .line 816
    const-string v4, "PhotographicSensitivity"

    .line 817
    .line 818
    const v5, 0x8827

    .line 819
    .line 820
    .line 821
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 822
    .line 823
    .line 824
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 825
    .line 826
    move-object/from16 v69, v0

    .line 827
    .line 828
    const-string v4, "OECF"

    .line 829
    .line 830
    const v5, 0x8828

    .line 831
    .line 832
    .line 833
    const/4 v11, 0x7

    .line 834
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 835
    .line 836
    .line 837
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 838
    .line 839
    move-object/from16 v70, v0

    .line 840
    .line 841
    const-string v4, "SensitivityType"

    .line 842
    .line 843
    const v5, 0x8830

    .line 844
    .line 845
    .line 846
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 847
    .line 848
    .line 849
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 850
    .line 851
    move-object/from16 v71, v0

    .line 852
    .line 853
    const-string v4, "StandardOutputSensitivity"

    .line 854
    .line 855
    const v5, 0x8831

    .line 856
    .line 857
    .line 858
    const/4 v11, 0x4

    .line 859
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 860
    .line 861
    .line 862
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 863
    .line 864
    move-object/from16 v72, v0

    .line 865
    .line 866
    const-string v4, "RecommendedExposureIndex"

    .line 867
    .line 868
    const v5, 0x8832

    .line 869
    .line 870
    .line 871
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 872
    .line 873
    .line 874
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 875
    .line 876
    move-object/from16 v73, v0

    .line 877
    .line 878
    const-string v4, "ISOSpeed"

    .line 879
    .line 880
    const v5, 0x8833

    .line 881
    .line 882
    .line 883
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 884
    .line 885
    .line 886
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 887
    .line 888
    move-object/from16 v74, v0

    .line 889
    .line 890
    const-string v4, "ISOSpeedLatitudeyyy"

    .line 891
    .line 892
    const v5, 0x8834

    .line 893
    .line 894
    .line 895
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 896
    .line 897
    .line 898
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 899
    .line 900
    move-object/from16 v75, v0

    .line 901
    .line 902
    const-string v4, "ISOSpeedLatitudezzz"

    .line 903
    .line 904
    const v5, 0x8835

    .line 905
    .line 906
    .line 907
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 908
    .line 909
    .line 910
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 911
    .line 912
    move-object/from16 v76, v0

    .line 913
    .line 914
    const-string v4, "ExifVersion"

    .line 915
    .line 916
    const v5, 0x9000

    .line 917
    .line 918
    .line 919
    const/4 v11, 0x2

    .line 920
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 921
    .line 922
    .line 923
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 924
    .line 925
    move-object/from16 v77, v0

    .line 926
    .line 927
    const-string v4, "DateTimeOriginal"

    .line 928
    .line 929
    const v5, 0x9003

    .line 930
    .line 931
    .line 932
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 933
    .line 934
    .line 935
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 936
    .line 937
    move-object/from16 v78, v0

    .line 938
    .line 939
    const-string v4, "DateTimeDigitized"

    .line 940
    .line 941
    const v5, 0x9004

    .line 942
    .line 943
    .line 944
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 945
    .line 946
    .line 947
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 948
    .line 949
    move-object/from16 v79, v0

    .line 950
    .line 951
    const-string v4, "OffsetTime"

    .line 952
    .line 953
    const v5, 0x9010

    .line 954
    .line 955
    .line 956
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 957
    .line 958
    .line 959
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 960
    .line 961
    move-object/from16 v80, v0

    .line 962
    .line 963
    const-string v4, "OffsetTimeOriginal"

    .line 964
    .line 965
    const v5, 0x9011

    .line 966
    .line 967
    .line 968
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 969
    .line 970
    .line 971
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 972
    .line 973
    move-object/from16 v81, v0

    .line 974
    .line 975
    const-string v4, "OffsetTimeDigitized"

    .line 976
    .line 977
    const v5, 0x9012

    .line 978
    .line 979
    .line 980
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 981
    .line 982
    .line 983
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 984
    .line 985
    move-object/from16 v82, v0

    .line 986
    .line 987
    const-string v4, "ComponentsConfiguration"

    .line 988
    .line 989
    const v5, 0x9101

    .line 990
    .line 991
    .line 992
    const/4 v11, 0x7

    .line 993
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 994
    .line 995
    .line 996
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 997
    .line 998
    move-object/from16 v83, v0

    .line 999
    .line 1000
    const-string v4, "CompressedBitsPerPixel"

    .line 1001
    .line 1002
    const v5, 0x9102

    .line 1003
    .line 1004
    .line 1005
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1006
    .line 1007
    .line 1008
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1009
    .line 1010
    move-object/from16 v84, v0

    .line 1011
    .line 1012
    const-string v4, "ShutterSpeedValue"

    .line 1013
    .line 1014
    const v5, 0x9201

    .line 1015
    .line 1016
    .line 1017
    const/16 v11, 0xa

    .line 1018
    .line 1019
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1023
    .line 1024
    move-object/from16 v85, v0

    .line 1025
    .line 1026
    const-string v4, "ApertureValue"

    .line 1027
    .line 1028
    const v5, 0x9202

    .line 1029
    .line 1030
    .line 1031
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1032
    .line 1033
    .line 1034
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1035
    .line 1036
    move-object/from16 v86, v0

    .line 1037
    .line 1038
    const-string v4, "BrightnessValue"

    .line 1039
    .line 1040
    const v5, 0x9203

    .line 1041
    .line 1042
    .line 1043
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1044
    .line 1045
    .line 1046
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1047
    .line 1048
    move-object/from16 v87, v0

    .line 1049
    .line 1050
    const-string v4, "ExposureBiasValue"

    .line 1051
    .line 1052
    const v5, 0x9204

    .line 1053
    .line 1054
    .line 1055
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1059
    .line 1060
    move-object/from16 v88, v0

    .line 1061
    .line 1062
    const-string v4, "MaxApertureValue"

    .line 1063
    .line 1064
    const v5, 0x9205

    .line 1065
    .line 1066
    .line 1067
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1071
    .line 1072
    move-object/from16 v89, v0

    .line 1073
    .line 1074
    const-string v4, "SubjectDistance"

    .line 1075
    .line 1076
    const v5, 0x9206

    .line 1077
    .line 1078
    .line 1079
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1080
    .line 1081
    .line 1082
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1083
    .line 1084
    move-object/from16 v90, v0

    .line 1085
    .line 1086
    const-string v4, "MeteringMode"

    .line 1087
    .line 1088
    const v5, 0x9207

    .line 1089
    .line 1090
    .line 1091
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1095
    .line 1096
    move-object/from16 v91, v0

    .line 1097
    .line 1098
    const-string v4, "LightSource"

    .line 1099
    .line 1100
    const v5, 0x9208

    .line 1101
    .line 1102
    .line 1103
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1107
    .line 1108
    move-object/from16 v92, v0

    .line 1109
    .line 1110
    const-string v4, "Flash"

    .line 1111
    .line 1112
    const v5, 0x9209

    .line 1113
    .line 1114
    .line 1115
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1116
    .line 1117
    .line 1118
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1119
    .line 1120
    move-object/from16 v93, v0

    .line 1121
    .line 1122
    const-string v4, "FocalLength"

    .line 1123
    .line 1124
    const v5, 0x920a

    .line 1125
    .line 1126
    .line 1127
    invoke-direct {v0, v4, v5, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1131
    .line 1132
    move-object/from16 v94, v0

    .line 1133
    .line 1134
    const-string v4, "SubjectArea"

    .line 1135
    .line 1136
    const v5, 0x9214

    .line 1137
    .line 1138
    .line 1139
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1140
    .line 1141
    .line 1142
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1143
    .line 1144
    move-object/from16 v95, v0

    .line 1145
    .line 1146
    const-string v4, "MakerNote"

    .line 1147
    .line 1148
    const v5, 0x927c

    .line 1149
    .line 1150
    .line 1151
    const/4 v11, 0x7

    .line 1152
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1153
    .line 1154
    .line 1155
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1156
    .line 1157
    move-object/from16 v96, v0

    .line 1158
    .line 1159
    const-string v4, "UserComment"

    .line 1160
    .line 1161
    const v5, 0x9286

    .line 1162
    .line 1163
    .line 1164
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1165
    .line 1166
    .line 1167
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1168
    .line 1169
    move-object/from16 v97, v0

    .line 1170
    .line 1171
    const-string v4, "SubSecTime"

    .line 1172
    .line 1173
    const v5, 0x9290

    .line 1174
    .line 1175
    .line 1176
    const/4 v11, 0x2

    .line 1177
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1178
    .line 1179
    .line 1180
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1181
    .line 1182
    move-object/from16 v98, v0

    .line 1183
    .line 1184
    const-string v4, "SubSecTimeOriginal"

    .line 1185
    .line 1186
    const v5, 0x9291

    .line 1187
    .line 1188
    .line 1189
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1190
    .line 1191
    .line 1192
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1193
    .line 1194
    move-object/from16 v99, v0

    .line 1195
    .line 1196
    const-string v4, "SubSecTimeDigitized"

    .line 1197
    .line 1198
    const v5, 0x9292

    .line 1199
    .line 1200
    .line 1201
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1202
    .line 1203
    .line 1204
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1205
    .line 1206
    move-object/from16 v100, v0

    .line 1207
    .line 1208
    const-string v4, "FlashpixVersion"

    .line 1209
    .line 1210
    const v5, 0xa000

    .line 1211
    .line 1212
    .line 1213
    const/4 v11, 0x7

    .line 1214
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1215
    .line 1216
    .line 1217
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1218
    .line 1219
    move-object/from16 v101, v0

    .line 1220
    .line 1221
    const-string v4, "ColorSpace"

    .line 1222
    .line 1223
    const v5, 0xa001

    .line 1224
    .line 1225
    .line 1226
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1227
    .line 1228
    .line 1229
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1230
    .line 1231
    move-object/from16 v102, v0

    .line 1232
    .line 1233
    const-string v4, "PixelXDimension"

    .line 1234
    .line 1235
    const v5, 0xa002

    .line 1236
    .line 1237
    .line 1238
    const/4 v11, 0x4

    .line 1239
    invoke-direct {v0, v4, v5, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 1240
    .line 1241
    .line 1242
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1243
    .line 1244
    move-object/from16 v103, v0

    .line 1245
    .line 1246
    const-string v4, "PixelYDimension"

    .line 1247
    .line 1248
    const v5, 0xa003

    .line 1249
    .line 1250
    .line 1251
    invoke-direct {v0, v4, v5, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 1252
    .line 1253
    .line 1254
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1255
    .line 1256
    move-object/from16 v104, v0

    .line 1257
    .line 1258
    const-string v4, "RelatedSoundFile"

    .line 1259
    .line 1260
    const v5, 0xa004

    .line 1261
    .line 1262
    .line 1263
    const/4 v1, 0x2

    .line 1264
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1268
    .line 1269
    move-object/from16 v105, v0

    .line 1270
    .line 1271
    const-string v1, "InteroperabilityIFDPointer"

    .line 1272
    .line 1273
    const v4, 0xa005

    .line 1274
    .line 1275
    .line 1276
    invoke-direct {v0, v1, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1277
    .line 1278
    .line 1279
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1280
    .line 1281
    move-object/from16 v106, v0

    .line 1282
    .line 1283
    const-string v1, "FlashEnergy"

    .line 1284
    .line 1285
    const v4, 0xa20b

    .line 1286
    .line 1287
    .line 1288
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1289
    .line 1290
    .line 1291
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1292
    .line 1293
    move-object/from16 v107, v0

    .line 1294
    .line 1295
    const-string v1, "SpatialFrequencyResponse"

    .line 1296
    .line 1297
    const v4, 0xa20c

    .line 1298
    .line 1299
    .line 1300
    const/4 v5, 0x7

    .line 1301
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1302
    .line 1303
    .line 1304
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1305
    .line 1306
    move-object/from16 v108, v0

    .line 1307
    .line 1308
    const-string v1, "FocalPlaneXResolution"

    .line 1309
    .line 1310
    const v4, 0xa20e

    .line 1311
    .line 1312
    .line 1313
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1314
    .line 1315
    .line 1316
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1317
    .line 1318
    move-object/from16 v109, v0

    .line 1319
    .line 1320
    const-string v1, "FocalPlaneYResolution"

    .line 1321
    .line 1322
    const v4, 0xa20f

    .line 1323
    .line 1324
    .line 1325
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1326
    .line 1327
    .line 1328
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1329
    .line 1330
    move-object/from16 v110, v0

    .line 1331
    .line 1332
    const-string v1, "FocalPlaneResolutionUnit"

    .line 1333
    .line 1334
    const v4, 0xa210

    .line 1335
    .line 1336
    .line 1337
    const/4 v5, 0x3

    .line 1338
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1342
    .line 1343
    move-object/from16 v111, v0

    .line 1344
    .line 1345
    const-string v1, "SubjectLocation"

    .line 1346
    .line 1347
    const v4, 0xa214

    .line 1348
    .line 1349
    .line 1350
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1351
    .line 1352
    .line 1353
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1354
    .line 1355
    move-object/from16 v112, v0

    .line 1356
    .line 1357
    const-string v1, "ExposureIndex"

    .line 1358
    .line 1359
    const v4, 0xa215

    .line 1360
    .line 1361
    .line 1362
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1363
    .line 1364
    .line 1365
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1366
    .line 1367
    move-object/from16 v113, v0

    .line 1368
    .line 1369
    const-string v1, "SensingMethod"

    .line 1370
    .line 1371
    const v4, 0xa217

    .line 1372
    .line 1373
    .line 1374
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1375
    .line 1376
    .line 1377
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1378
    .line 1379
    move-object/from16 v114, v0

    .line 1380
    .line 1381
    const-string v1, "FileSource"

    .line 1382
    .line 1383
    const v4, 0xa300

    .line 1384
    .line 1385
    .line 1386
    const/4 v5, 0x7

    .line 1387
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1391
    .line 1392
    move-object/from16 v115, v0

    .line 1393
    .line 1394
    const-string v1, "SceneType"

    .line 1395
    .line 1396
    const v4, 0xa301

    .line 1397
    .line 1398
    .line 1399
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1400
    .line 1401
    .line 1402
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1403
    .line 1404
    move-object/from16 v116, v0

    .line 1405
    .line 1406
    const-string v1, "CFAPattern"

    .line 1407
    .line 1408
    const v4, 0xa302

    .line 1409
    .line 1410
    .line 1411
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1412
    .line 1413
    .line 1414
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1415
    .line 1416
    move-object/from16 v117, v0

    .line 1417
    .line 1418
    const-string v1, "CustomRendered"

    .line 1419
    .line 1420
    const v4, 0xa401

    .line 1421
    .line 1422
    .line 1423
    const/4 v5, 0x3

    .line 1424
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1425
    .line 1426
    .line 1427
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1428
    .line 1429
    move-object/from16 v118, v0

    .line 1430
    .line 1431
    const-string v1, "ExposureMode"

    .line 1432
    .line 1433
    const v4, 0xa402

    .line 1434
    .line 1435
    .line 1436
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1437
    .line 1438
    .line 1439
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1440
    .line 1441
    move-object/from16 v119, v0

    .line 1442
    .line 1443
    const-string v1, "WhiteBalance"

    .line 1444
    .line 1445
    const v4, 0xa403

    .line 1446
    .line 1447
    .line 1448
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1449
    .line 1450
    .line 1451
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1452
    .line 1453
    move-object/from16 v120, v0

    .line 1454
    .line 1455
    const-string v1, "DigitalZoomRatio"

    .line 1456
    .line 1457
    const v4, 0xa404

    .line 1458
    .line 1459
    .line 1460
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1461
    .line 1462
    .line 1463
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1464
    .line 1465
    move-object/from16 v121, v0

    .line 1466
    .line 1467
    const-string v1, "FocalLengthIn35mmFilm"

    .line 1468
    .line 1469
    const v4, 0xa405

    .line 1470
    .line 1471
    .line 1472
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1476
    .line 1477
    move-object/from16 v122, v0

    .line 1478
    .line 1479
    const-string v1, "SceneCaptureType"

    .line 1480
    .line 1481
    const v4, 0xa406

    .line 1482
    .line 1483
    .line 1484
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1485
    .line 1486
    .line 1487
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1488
    .line 1489
    move-object/from16 v123, v0

    .line 1490
    .line 1491
    const-string v1, "GainControl"

    .line 1492
    .line 1493
    const v4, 0xa407

    .line 1494
    .line 1495
    .line 1496
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1497
    .line 1498
    .line 1499
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1500
    .line 1501
    move-object/from16 v124, v0

    .line 1502
    .line 1503
    const-string v1, "Contrast"

    .line 1504
    .line 1505
    const v4, 0xa408

    .line 1506
    .line 1507
    .line 1508
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1509
    .line 1510
    .line 1511
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1512
    .line 1513
    move-object/from16 v125, v0

    .line 1514
    .line 1515
    const-string v1, "Saturation"

    .line 1516
    .line 1517
    const v4, 0xa409

    .line 1518
    .line 1519
    .line 1520
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1521
    .line 1522
    .line 1523
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1524
    .line 1525
    move-object/from16 v126, v0

    .line 1526
    .line 1527
    const-string v1, "Sharpness"

    .line 1528
    .line 1529
    const v4, 0xa40a

    .line 1530
    .line 1531
    .line 1532
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1533
    .line 1534
    .line 1535
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1536
    .line 1537
    move-object/from16 v127, v0

    .line 1538
    .line 1539
    const-string v1, "DeviceSettingDescription"

    .line 1540
    .line 1541
    const v4, 0xa40b

    .line 1542
    .line 1543
    .line 1544
    const/4 v11, 0x7

    .line 1545
    invoke-direct {v0, v1, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1546
    .line 1547
    .line 1548
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1549
    .line 1550
    move-object/from16 v128, v0

    .line 1551
    .line 1552
    const-string v1, "SubjectDistanceRange"

    .line 1553
    .line 1554
    const v4, 0xa40c

    .line 1555
    .line 1556
    .line 1557
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1558
    .line 1559
    .line 1560
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1561
    .line 1562
    move-object/from16 v129, v0

    .line 1563
    .line 1564
    const-string v1, "ImageUniqueID"

    .line 1565
    .line 1566
    const v4, 0xa420

    .line 1567
    .line 1568
    .line 1569
    const/4 v5, 0x2

    .line 1570
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1571
    .line 1572
    .line 1573
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1574
    .line 1575
    move-object/from16 v130, v0

    .line 1576
    .line 1577
    const-string v1, "CameraOwnerName"

    .line 1578
    .line 1579
    const v4, 0xa430

    .line 1580
    .line 1581
    .line 1582
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1586
    .line 1587
    move-object/from16 v131, v0

    .line 1588
    .line 1589
    const-string v1, "BodySerialNumber"

    .line 1590
    .line 1591
    const v4, 0xa431

    .line 1592
    .line 1593
    .line 1594
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1595
    .line 1596
    .line 1597
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1598
    .line 1599
    move-object/from16 v132, v0

    .line 1600
    .line 1601
    const-string v1, "LensSpecification"

    .line 1602
    .line 1603
    const v4, 0xa432

    .line 1604
    .line 1605
    .line 1606
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1607
    .line 1608
    .line 1609
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1610
    .line 1611
    move-object/from16 v133, v0

    .line 1612
    .line 1613
    const-string v1, "LensMake"

    .line 1614
    .line 1615
    const v4, 0xa433

    .line 1616
    .line 1617
    .line 1618
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1619
    .line 1620
    .line 1621
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1622
    .line 1623
    move-object/from16 v134, v0

    .line 1624
    .line 1625
    const-string v1, "LensModel"

    .line 1626
    .line 1627
    const v4, 0xa434

    .line 1628
    .line 1629
    .line 1630
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1631
    .line 1632
    .line 1633
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1634
    .line 1635
    move-object/from16 v135, v0

    .line 1636
    .line 1637
    const-string v1, "Gamma"

    .line 1638
    .line 1639
    const v4, 0xa500

    .line 1640
    .line 1641
    .line 1642
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1643
    .line 1644
    .line 1645
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1646
    .line 1647
    move-object/from16 v136, v0

    .line 1648
    .line 1649
    const-string v1, "DNGVersion"

    .line 1650
    .line 1651
    const v4, 0xc612

    .line 1652
    .line 1653
    .line 1654
    const/4 v5, 0x1

    .line 1655
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1656
    .line 1657
    .line 1658
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1659
    .line 1660
    move-object/from16 v137, v0

    .line 1661
    .line 1662
    const-string v1, "DefaultCropSize"

    .line 1663
    .line 1664
    const v4, 0xc620

    .line 1665
    .line 1666
    .line 1667
    const/4 v5, 0x3

    .line 1668
    const/4 v11, 0x4

    .line 1669
    invoke-direct {v0, v1, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 1670
    .line 1671
    .line 1672
    filled-new-array/range {v64 .. v137}, [Landroidx/exifinterface/media/a$e;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v59

    .line 1676
    sput-object v59, Landroidx/exifinterface/media/a;->a0:[Landroidx/exifinterface/media/a$e;

    .line 1677
    .line 1678
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1679
    .line 1680
    move-object/from16 v17, v0

    .line 1681
    .line 1682
    const-string v1, "GPSVersionID"

    .line 1683
    .line 1684
    const/4 v4, 0x0

    .line 1685
    const/4 v5, 0x1

    .line 1686
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1687
    .line 1688
    .line 1689
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1690
    .line 1691
    move-object/from16 v18, v0

    .line 1692
    .line 1693
    const-string v1, "GPSLatitudeRef"

    .line 1694
    .line 1695
    const/4 v11, 0x2

    .line 1696
    invoke-direct {v0, v1, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1697
    .line 1698
    .line 1699
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1700
    .line 1701
    move-object/from16 v19, v0

    .line 1702
    .line 1703
    const-string v1, "GPSLatitude"

    .line 1704
    .line 1705
    const/16 v5, 0xa

    .line 1706
    .line 1707
    invoke-direct {v0, v1, v11, v13, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 1708
    .line 1709
    .line 1710
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1711
    .line 1712
    move-object/from16 v20, v0

    .line 1713
    .line 1714
    const-string v1, "GPSLongitudeRef"

    .line 1715
    .line 1716
    const/4 v4, 0x3

    .line 1717
    invoke-direct {v0, v1, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1718
    .line 1719
    .line 1720
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1721
    .line 1722
    move-object/from16 v21, v0

    .line 1723
    .line 1724
    const-string v1, "GPSLongitude"

    .line 1725
    .line 1726
    const/4 v4, 0x4

    .line 1727
    invoke-direct {v0, v1, v4, v13, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 1728
    .line 1729
    .line 1730
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1731
    .line 1732
    move-object/from16 v22, v0

    .line 1733
    .line 1734
    const-string v1, "GPSAltitudeRef"

    .line 1735
    .line 1736
    const/4 v4, 0x1

    .line 1737
    invoke-direct {v0, v1, v13, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1738
    .line 1739
    .line 1740
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1741
    .line 1742
    move-object/from16 v23, v0

    .line 1743
    .line 1744
    const-string v1, "GPSAltitude"

    .line 1745
    .line 1746
    const/4 v4, 0x6

    .line 1747
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1748
    .line 1749
    .line 1750
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1751
    .line 1752
    move-object/from16 v24, v0

    .line 1753
    .line 1754
    const-string v1, "GPSTimeStamp"

    .line 1755
    .line 1756
    const/4 v4, 0x7

    .line 1757
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1758
    .line 1759
    .line 1760
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1761
    .line 1762
    move-object/from16 v25, v0

    .line 1763
    .line 1764
    const-string v1, "GPSSatellites"

    .line 1765
    .line 1766
    const/16 v4, 0x8

    .line 1767
    .line 1768
    const/4 v5, 0x2

    .line 1769
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1770
    .line 1771
    .line 1772
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1773
    .line 1774
    move-object/from16 v26, v0

    .line 1775
    .line 1776
    const-string v1, "GPSStatus"

    .line 1777
    .line 1778
    const/16 v4, 0x9

    .line 1779
    .line 1780
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1784
    .line 1785
    move-object/from16 v27, v0

    .line 1786
    .line 1787
    const-string v1, "GPSMeasureMode"

    .line 1788
    .line 1789
    const/16 v4, 0xa

    .line 1790
    .line 1791
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1792
    .line 1793
    .line 1794
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1795
    .line 1796
    move-object/from16 v28, v0

    .line 1797
    .line 1798
    const-string v1, "GPSDOP"

    .line 1799
    .line 1800
    const/16 v4, 0xb

    .line 1801
    .line 1802
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1803
    .line 1804
    .line 1805
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1806
    .line 1807
    move-object/from16 v29, v0

    .line 1808
    .line 1809
    const-string v1, "GPSSpeedRef"

    .line 1810
    .line 1811
    const/16 v4, 0xc

    .line 1812
    .line 1813
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1814
    .line 1815
    .line 1816
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1817
    .line 1818
    move-object/from16 v30, v0

    .line 1819
    .line 1820
    const-string v1, "GPSSpeed"

    .line 1821
    .line 1822
    const/16 v4, 0xd

    .line 1823
    .line 1824
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1825
    .line 1826
    .line 1827
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1828
    .line 1829
    move-object/from16 v31, v0

    .line 1830
    .line 1831
    const-string v1, "GPSTrackRef"

    .line 1832
    .line 1833
    const/16 v4, 0xe

    .line 1834
    .line 1835
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1836
    .line 1837
    .line 1838
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1839
    .line 1840
    move-object/from16 v32, v0

    .line 1841
    .line 1842
    const-string v1, "GPSTrack"

    .line 1843
    .line 1844
    const/16 v4, 0xf

    .line 1845
    .line 1846
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1847
    .line 1848
    .line 1849
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1850
    .line 1851
    move-object/from16 v33, v0

    .line 1852
    .line 1853
    const-string v1, "GPSImgDirectionRef"

    .line 1854
    .line 1855
    const/16 v4, 0x10

    .line 1856
    .line 1857
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1858
    .line 1859
    .line 1860
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1861
    .line 1862
    move-object/from16 v34, v0

    .line 1863
    .line 1864
    const-string v1, "GPSImgDirection"

    .line 1865
    .line 1866
    const/16 v4, 0x11

    .line 1867
    .line 1868
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1869
    .line 1870
    .line 1871
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1872
    .line 1873
    move-object/from16 v35, v0

    .line 1874
    .line 1875
    const-string v1, "GPSMapDatum"

    .line 1876
    .line 1877
    const/16 v4, 0x12

    .line 1878
    .line 1879
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1880
    .line 1881
    .line 1882
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1883
    .line 1884
    move-object/from16 v36, v0

    .line 1885
    .line 1886
    const-string v1, "GPSDestLatitudeRef"

    .line 1887
    .line 1888
    const/16 v4, 0x13

    .line 1889
    .line 1890
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1891
    .line 1892
    .line 1893
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1894
    .line 1895
    move-object/from16 v37, v0

    .line 1896
    .line 1897
    const-string v1, "GPSDestLatitude"

    .line 1898
    .line 1899
    const/16 v4, 0x14

    .line 1900
    .line 1901
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1902
    .line 1903
    .line 1904
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1905
    .line 1906
    move-object/from16 v38, v0

    .line 1907
    .line 1908
    const-string v1, "GPSDestLongitudeRef"

    .line 1909
    .line 1910
    const/16 v4, 0x15

    .line 1911
    .line 1912
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1913
    .line 1914
    .line 1915
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1916
    .line 1917
    move-object/from16 v39, v0

    .line 1918
    .line 1919
    const-string v1, "GPSDestLongitude"

    .line 1920
    .line 1921
    const/16 v4, 0x16

    .line 1922
    .line 1923
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1924
    .line 1925
    .line 1926
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1927
    .line 1928
    move-object/from16 v40, v0

    .line 1929
    .line 1930
    const-string v1, "GPSDestBearingRef"

    .line 1931
    .line 1932
    const/16 v4, 0x17

    .line 1933
    .line 1934
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1935
    .line 1936
    .line 1937
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1938
    .line 1939
    move-object/from16 v41, v0

    .line 1940
    .line 1941
    const-string v1, "GPSDestBearing"

    .line 1942
    .line 1943
    const/16 v4, 0x18

    .line 1944
    .line 1945
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1946
    .line 1947
    .line 1948
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1949
    .line 1950
    move-object/from16 v42, v0

    .line 1951
    .line 1952
    const-string v1, "GPSDestDistanceRef"

    .line 1953
    .line 1954
    const/16 v4, 0x19

    .line 1955
    .line 1956
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1957
    .line 1958
    .line 1959
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1960
    .line 1961
    move-object/from16 v43, v0

    .line 1962
    .line 1963
    const-string v1, "GPSDestDistance"

    .line 1964
    .line 1965
    const/16 v4, 0x1a

    .line 1966
    .line 1967
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1968
    .line 1969
    .line 1970
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1971
    .line 1972
    move-object/from16 v44, v0

    .line 1973
    .line 1974
    const-string v1, "GPSProcessingMethod"

    .line 1975
    .line 1976
    const/16 v4, 0x1b

    .line 1977
    .line 1978
    const/4 v5, 0x7

    .line 1979
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1980
    .line 1981
    .line 1982
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1983
    .line 1984
    move-object/from16 v45, v0

    .line 1985
    .line 1986
    const-string v1, "GPSAreaInformation"

    .line 1987
    .line 1988
    const/16 v4, 0x1c

    .line 1989
    .line 1990
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 1991
    .line 1992
    .line 1993
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 1994
    .line 1995
    move-object/from16 v46, v0

    .line 1996
    .line 1997
    const-string v1, "GPSDateStamp"

    .line 1998
    .line 1999
    const/16 v4, 0x1d

    .line 2000
    .line 2001
    const/4 v5, 0x2

    .line 2002
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2003
    .line 2004
    .line 2005
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2006
    .line 2007
    move-object/from16 v47, v0

    .line 2008
    .line 2009
    const-string v1, "GPSDifferential"

    .line 2010
    .line 2011
    const/16 v4, 0x1e

    .line 2012
    .line 2013
    const/4 v5, 0x3

    .line 2014
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2015
    .line 2016
    .line 2017
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2018
    .line 2019
    move-object/from16 v48, v0

    .line 2020
    .line 2021
    const-string v1, "GPSHPositioningError"

    .line 2022
    .line 2023
    const/16 v4, 0x1f

    .line 2024
    .line 2025
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2026
    .line 2027
    .line 2028
    filled-new-array/range {v17 .. v48}, [Landroidx/exifinterface/media/a$e;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v60

    .line 2032
    sput-object v60, Landroidx/exifinterface/media/a;->b0:[Landroidx/exifinterface/media/a$e;

    .line 2033
    .line 2034
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2035
    .line 2036
    const-string v1, "InteroperabilityIndex"

    .line 2037
    .line 2038
    const/4 v4, 0x1

    .line 2039
    const/4 v5, 0x2

    .line 2040
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2041
    .line 2042
    .line 2043
    filled-new-array {v0}, [Landroidx/exifinterface/media/a$e;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v61

    .line 2047
    sput-object v61, Landroidx/exifinterface/media/a;->c0:[Landroidx/exifinterface/media/a$e;

    .line 2048
    .line 2049
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2050
    .line 2051
    move-object/from16 v64, v0

    .line 2052
    .line 2053
    const-string v1, "NewSubfileType"

    .line 2054
    .line 2055
    const/16 v4, 0xfe

    .line 2056
    .line 2057
    const/4 v5, 0x4

    .line 2058
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2059
    .line 2060
    .line 2061
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2062
    .line 2063
    move-object/from16 v65, v0

    .line 2064
    .line 2065
    const-string v1, "SubfileType"

    .line 2066
    .line 2067
    const/16 v4, 0xff

    .line 2068
    .line 2069
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2070
    .line 2071
    .line 2072
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2073
    .line 2074
    move-object/from16 v66, v0

    .line 2075
    .line 2076
    const-string v1, "ThumbnailImageWidth"

    .line 2077
    .line 2078
    const/4 v4, 0x3

    .line 2079
    const/16 v11, 0x100

    .line 2080
    .line 2081
    invoke-direct {v0, v1, v11, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2082
    .line 2083
    .line 2084
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2085
    .line 2086
    move-object/from16 v67, v0

    .line 2087
    .line 2088
    const-string v1, "ThumbnailImageLength"

    .line 2089
    .line 2090
    const/16 v11, 0x101

    .line 2091
    .line 2092
    invoke-direct {v0, v1, v11, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2093
    .line 2094
    .line 2095
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2096
    .line 2097
    move-object/from16 v68, v0

    .line 2098
    .line 2099
    const-string v1, "BitsPerSample"

    .line 2100
    .line 2101
    const/16 v5, 0x102

    .line 2102
    .line 2103
    invoke-direct {v0, v1, v5, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2104
    .line 2105
    .line 2106
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2107
    .line 2108
    move-object/from16 v69, v0

    .line 2109
    .line 2110
    const-string v1, "Compression"

    .line 2111
    .line 2112
    const/16 v5, 0x103

    .line 2113
    .line 2114
    invoke-direct {v0, v1, v5, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2115
    .line 2116
    .line 2117
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2118
    .line 2119
    move-object/from16 v70, v0

    .line 2120
    .line 2121
    const-string v1, "PhotometricInterpretation"

    .line 2122
    .line 2123
    const/16 v5, 0x106

    .line 2124
    .line 2125
    invoke-direct {v0, v1, v5, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2126
    .line 2127
    .line 2128
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2129
    .line 2130
    move-object/from16 v71, v0

    .line 2131
    .line 2132
    const-string v1, "ImageDescription"

    .line 2133
    .line 2134
    const/16 v4, 0x10e

    .line 2135
    .line 2136
    const/4 v5, 0x2

    .line 2137
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2138
    .line 2139
    .line 2140
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2141
    .line 2142
    move-object/from16 v72, v0

    .line 2143
    .line 2144
    const-string v1, "Make"

    .line 2145
    .line 2146
    const/16 v4, 0x10f

    .line 2147
    .line 2148
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2149
    .line 2150
    .line 2151
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2152
    .line 2153
    move-object/from16 v73, v0

    .line 2154
    .line 2155
    const-string v1, "Model"

    .line 2156
    .line 2157
    const/16 v4, 0x110

    .line 2158
    .line 2159
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2160
    .line 2161
    .line 2162
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2163
    .line 2164
    move-object/from16 v74, v0

    .line 2165
    .line 2166
    const/4 v1, 0x3

    .line 2167
    const/4 v4, 0x4

    .line 2168
    const/16 v5, 0x111

    .line 2169
    .line 2170
    invoke-direct {v0, v12, v5, v1, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2171
    .line 2172
    .line 2173
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2174
    .line 2175
    move-object/from16 v75, v0

    .line 2176
    .line 2177
    const-string v4, "ThumbnailOrientation"

    .line 2178
    .line 2179
    const/16 v5, 0x112

    .line 2180
    .line 2181
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2182
    .line 2183
    .line 2184
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2185
    .line 2186
    move-object/from16 v76, v0

    .line 2187
    .line 2188
    const-string v4, "SamplesPerPixel"

    .line 2189
    .line 2190
    const/16 v5, 0x115

    .line 2191
    .line 2192
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2193
    .line 2194
    .line 2195
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2196
    .line 2197
    move-object/from16 v77, v0

    .line 2198
    .line 2199
    const-string v4, "RowsPerStrip"

    .line 2200
    .line 2201
    const/16 v5, 0x116

    .line 2202
    .line 2203
    const/4 v11, 0x4

    .line 2204
    invoke-direct {v0, v4, v5, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2205
    .line 2206
    .line 2207
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2208
    .line 2209
    move-object/from16 v78, v0

    .line 2210
    .line 2211
    const-string v4, "StripByteCounts"

    .line 2212
    .line 2213
    const/16 v5, 0x117

    .line 2214
    .line 2215
    invoke-direct {v0, v4, v5, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2216
    .line 2217
    .line 2218
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2219
    .line 2220
    move-object/from16 v79, v0

    .line 2221
    .line 2222
    const-string v1, "XResolution"

    .line 2223
    .line 2224
    const/16 v4, 0x11a

    .line 2225
    .line 2226
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2227
    .line 2228
    .line 2229
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2230
    .line 2231
    move-object/from16 v80, v0

    .line 2232
    .line 2233
    const-string v1, "YResolution"

    .line 2234
    .line 2235
    const/16 v4, 0x11b

    .line 2236
    .line 2237
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2238
    .line 2239
    .line 2240
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2241
    .line 2242
    move-object/from16 v81, v0

    .line 2243
    .line 2244
    const-string v1, "PlanarConfiguration"

    .line 2245
    .line 2246
    const/16 v4, 0x11c

    .line 2247
    .line 2248
    const/4 v5, 0x3

    .line 2249
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2250
    .line 2251
    .line 2252
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2253
    .line 2254
    move-object/from16 v82, v0

    .line 2255
    .line 2256
    const-string v1, "ResolutionUnit"

    .line 2257
    .line 2258
    const/16 v4, 0x128

    .line 2259
    .line 2260
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2261
    .line 2262
    .line 2263
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2264
    .line 2265
    move-object/from16 v83, v0

    .line 2266
    .line 2267
    const-string v1, "TransferFunction"

    .line 2268
    .line 2269
    const/16 v4, 0x12d

    .line 2270
    .line 2271
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2272
    .line 2273
    .line 2274
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2275
    .line 2276
    move-object/from16 v84, v0

    .line 2277
    .line 2278
    const-string v1, "Software"

    .line 2279
    .line 2280
    const/16 v4, 0x131

    .line 2281
    .line 2282
    const/4 v5, 0x2

    .line 2283
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2284
    .line 2285
    .line 2286
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2287
    .line 2288
    move-object/from16 v85, v0

    .line 2289
    .line 2290
    const-string v1, "DateTime"

    .line 2291
    .line 2292
    const/16 v4, 0x132

    .line 2293
    .line 2294
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2295
    .line 2296
    .line 2297
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2298
    .line 2299
    move-object/from16 v86, v0

    .line 2300
    .line 2301
    const-string v1, "Artist"

    .line 2302
    .line 2303
    const/16 v4, 0x13b

    .line 2304
    .line 2305
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2306
    .line 2307
    .line 2308
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2309
    .line 2310
    move-object/from16 v87, v0

    .line 2311
    .line 2312
    const-string v1, "WhitePoint"

    .line 2313
    .line 2314
    const/16 v4, 0x13e

    .line 2315
    .line 2316
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2317
    .line 2318
    .line 2319
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2320
    .line 2321
    move-object/from16 v88, v0

    .line 2322
    .line 2323
    const-string v1, "PrimaryChromaticities"

    .line 2324
    .line 2325
    const/16 v4, 0x13f

    .line 2326
    .line 2327
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2328
    .line 2329
    .line 2330
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2331
    .line 2332
    move-object/from16 v89, v0

    .line 2333
    .line 2334
    const/4 v1, 0x4

    .line 2335
    const/16 v4, 0x14a

    .line 2336
    .line 2337
    invoke-direct {v0, v6, v4, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2338
    .line 2339
    .line 2340
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2341
    .line 2342
    move-object/from16 v90, v0

    .line 2343
    .line 2344
    const-string v4, "JPEGInterchangeFormat"

    .line 2345
    .line 2346
    const/16 v5, 0x201

    .line 2347
    .line 2348
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2349
    .line 2350
    .line 2351
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2352
    .line 2353
    move-object/from16 v91, v0

    .line 2354
    .line 2355
    const-string v4, "JPEGInterchangeFormatLength"

    .line 2356
    .line 2357
    const/16 v5, 0x202

    .line 2358
    .line 2359
    invoke-direct {v0, v4, v5, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2360
    .line 2361
    .line 2362
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2363
    .line 2364
    move-object/from16 v92, v0

    .line 2365
    .line 2366
    const-string v1, "YCbCrCoefficients"

    .line 2367
    .line 2368
    const/16 v4, 0x211

    .line 2369
    .line 2370
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2371
    .line 2372
    .line 2373
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2374
    .line 2375
    move-object/from16 v93, v0

    .line 2376
    .line 2377
    const-string v1, "YCbCrSubSampling"

    .line 2378
    .line 2379
    const/16 v4, 0x212

    .line 2380
    .line 2381
    const/4 v5, 0x3

    .line 2382
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2383
    .line 2384
    .line 2385
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2386
    .line 2387
    move-object/from16 v94, v0

    .line 2388
    .line 2389
    const-string v1, "YCbCrPositioning"

    .line 2390
    .line 2391
    const/16 v4, 0x213

    .line 2392
    .line 2393
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2394
    .line 2395
    .line 2396
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2397
    .line 2398
    move-object/from16 v95, v0

    .line 2399
    .line 2400
    const-string v1, "ReferenceBlackWhite"

    .line 2401
    .line 2402
    const/16 v4, 0x214

    .line 2403
    .line 2404
    invoke-direct {v0, v1, v4, v13}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2405
    .line 2406
    .line 2407
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2408
    .line 2409
    move-object/from16 v96, v0

    .line 2410
    .line 2411
    const-string v1, "Copyright"

    .line 2412
    .line 2413
    const v4, 0x8298

    .line 2414
    .line 2415
    .line 2416
    const/4 v5, 0x2

    .line 2417
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2418
    .line 2419
    .line 2420
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2421
    .line 2422
    move-object/from16 v97, v0

    .line 2423
    .line 2424
    const/4 v1, 0x4

    .line 2425
    const v4, 0x8769

    .line 2426
    .line 2427
    .line 2428
    invoke-direct {v0, v9, v4, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2429
    .line 2430
    .line 2431
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2432
    .line 2433
    move-object/from16 v98, v0

    .line 2434
    .line 2435
    const v4, 0x8825

    .line 2436
    .line 2437
    .line 2438
    invoke-direct {v0, v15, v4, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2439
    .line 2440
    .line 2441
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2442
    .line 2443
    move-object/from16 v99, v0

    .line 2444
    .line 2445
    const-string v4, "DNGVersion"

    .line 2446
    .line 2447
    const v5, 0xc612

    .line 2448
    .line 2449
    .line 2450
    const/4 v11, 0x1

    .line 2451
    invoke-direct {v0, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2452
    .line 2453
    .line 2454
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2455
    .line 2456
    move-object/from16 v100, v0

    .line 2457
    .line 2458
    const-string v4, "DefaultCropSize"

    .line 2459
    .line 2460
    const v5, 0xc620

    .line 2461
    .line 2462
    .line 2463
    const/4 v11, 0x3

    .line 2464
    invoke-direct {v0, v4, v5, v11, v1}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;III)V

    .line 2465
    .line 2466
    .line 2467
    filled-new-array/range {v64 .. v100}, [Landroidx/exifinterface/media/a$e;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v62

    .line 2471
    sput-object v62, Landroidx/exifinterface/media/a;->d0:[Landroidx/exifinterface/media/a$e;

    .line 2472
    .line 2473
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2474
    .line 2475
    const/16 v1, 0x111

    .line 2476
    .line 2477
    invoke-direct {v0, v12, v1, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2478
    .line 2479
    .line 2480
    sput-object v0, Landroidx/exifinterface/media/a;->e0:Landroidx/exifinterface/media/a$e;

    .line 2481
    .line 2482
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2483
    .line 2484
    const-string v1, "ThumbnailImage"

    .line 2485
    .line 2486
    const/4 v4, 0x7

    .line 2487
    const/16 v5, 0x100

    .line 2488
    .line 2489
    invoke-direct {v0, v1, v5, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2490
    .line 2491
    .line 2492
    new-instance v1, Landroidx/exifinterface/media/a$e;

    .line 2493
    .line 2494
    const-string v4, "CameraSettingsIFDPointer"

    .line 2495
    .line 2496
    const/16 v5, 0x2020

    .line 2497
    .line 2498
    const/4 v11, 0x4

    .line 2499
    invoke-direct {v1, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2500
    .line 2501
    .line 2502
    new-instance v4, Landroidx/exifinterface/media/a$e;

    .line 2503
    .line 2504
    const-string v5, "ImageProcessingIFDPointer"

    .line 2505
    .line 2506
    const/16 v12, 0x2040

    .line 2507
    .line 2508
    invoke-direct {v4, v5, v12, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2509
    .line 2510
    .line 2511
    filled-new-array {v0, v1, v4}, [Landroidx/exifinterface/media/a$e;

    .line 2512
    .line 2513
    .line 2514
    move-result-object v64

    .line 2515
    sput-object v64, Landroidx/exifinterface/media/a;->f0:[Landroidx/exifinterface/media/a$e;

    .line 2516
    .line 2517
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2518
    .line 2519
    const-string v1, "PreviewImageStart"

    .line 2520
    .line 2521
    const/16 v4, 0x101

    .line 2522
    .line 2523
    invoke-direct {v0, v1, v4, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2524
    .line 2525
    .line 2526
    new-instance v1, Landroidx/exifinterface/media/a$e;

    .line 2527
    .line 2528
    const-string v4, "PreviewImageLength"

    .line 2529
    .line 2530
    const/16 v5, 0x102

    .line 2531
    .line 2532
    invoke-direct {v1, v4, v5, v11}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2533
    .line 2534
    .line 2535
    filled-new-array {v0, v1}, [Landroidx/exifinterface/media/a$e;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v65

    .line 2539
    sput-object v65, Landroidx/exifinterface/media/a;->g0:[Landroidx/exifinterface/media/a$e;

    .line 2540
    .line 2541
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2542
    .line 2543
    const-string v1, "AspectFrame"

    .line 2544
    .line 2545
    const/16 v4, 0x1113

    .line 2546
    .line 2547
    const/4 v5, 0x3

    .line 2548
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2549
    .line 2550
    .line 2551
    filled-new-array {v0}, [Landroidx/exifinterface/media/a$e;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v66

    .line 2555
    sput-object v66, Landroidx/exifinterface/media/a;->h0:[Landroidx/exifinterface/media/a$e;

    .line 2556
    .line 2557
    new-instance v0, Landroidx/exifinterface/media/a$e;

    .line 2558
    .line 2559
    const-string v1, "ColorSpace"

    .line 2560
    .line 2561
    const/16 v4, 0x37

    .line 2562
    .line 2563
    invoke-direct {v0, v1, v4, v5}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2564
    .line 2565
    .line 2566
    filled-new-array {v0}, [Landroidx/exifinterface/media/a$e;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v67

    .line 2570
    sput-object v67, Landroidx/exifinterface/media/a;->i0:[Landroidx/exifinterface/media/a$e;

    .line 2571
    .line 2572
    move-object/from16 v58, v63

    .line 2573
    .line 2574
    filled-new-array/range {v58 .. v67}, [[Landroidx/exifinterface/media/a$e;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v0

    .line 2578
    sput-object v0, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 2579
    .line 2580
    new-instance v1, Landroidx/exifinterface/media/a$e;

    .line 2581
    .line 2582
    const/4 v4, 0x4

    .line 2583
    const/16 v5, 0x14a

    .line 2584
    .line 2585
    invoke-direct {v1, v6, v5, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2586
    .line 2587
    .line 2588
    new-instance v5, Landroidx/exifinterface/media/a$e;

    .line 2589
    .line 2590
    const v6, 0x8769

    .line 2591
    .line 2592
    .line 2593
    invoke-direct {v5, v9, v6, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2594
    .line 2595
    .line 2596
    new-instance v6, Landroidx/exifinterface/media/a$e;

    .line 2597
    .line 2598
    const v9, 0x8825

    .line 2599
    .line 2600
    .line 2601
    invoke-direct {v6, v15, v9, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2602
    .line 2603
    .line 2604
    new-instance v9, Landroidx/exifinterface/media/a$e;

    .line 2605
    .line 2606
    const-string v11, "InteroperabilityIFDPointer"

    .line 2607
    .line 2608
    const v12, 0xa005

    .line 2609
    .line 2610
    .line 2611
    invoke-direct {v9, v11, v12, v4}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2612
    .line 2613
    .line 2614
    new-instance v4, Landroidx/exifinterface/media/a$e;

    .line 2615
    .line 2616
    const-string v11, "CameraSettingsIFDPointer"

    .line 2617
    .line 2618
    const/16 v12, 0x2020

    .line 2619
    .line 2620
    const/4 v15, 0x1

    .line 2621
    invoke-direct {v4, v11, v12, v15}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2622
    .line 2623
    .line 2624
    new-instance v11, Landroidx/exifinterface/media/a$e;

    .line 2625
    .line 2626
    const-string v12, "ImageProcessingIFDPointer"

    .line 2627
    .line 2628
    const/16 v13, 0x2040

    .line 2629
    .line 2630
    invoke-direct {v11, v12, v13, v15}, Landroidx/exifinterface/media/a$e;-><init>(Ljava/lang/String;II)V

    .line 2631
    .line 2632
    .line 2633
    move-object/from16 v17, v1

    .line 2634
    .line 2635
    move-object/from16 v18, v5

    .line 2636
    .line 2637
    move-object/from16 v19, v6

    .line 2638
    .line 2639
    move-object/from16 v20, v9

    .line 2640
    .line 2641
    move-object/from16 v21, v4

    .line 2642
    .line 2643
    move-object/from16 v22, v11

    .line 2644
    .line 2645
    filled-new-array/range {v17 .. v22}, [Landroidx/exifinterface/media/a$e;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v1

    .line 2649
    sput-object v1, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 2650
    .line 2651
    array-length v1, v0

    .line 2652
    new-array v1, v1, [Ljava/util/HashMap;

    .line 2653
    .line 2654
    sput-object v1, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    .line 2655
    .line 2656
    array-length v0, v0

    .line 2657
    new-array v0, v0, [Ljava/util/HashMap;

    .line 2658
    .line 2659
    sput-object v0, Landroidx/exifinterface/media/a;->m0:[Ljava/util/HashMap;

    .line 2660
    .line 2661
    new-instance v0, Ljava/util/HashSet;

    .line 2662
    .line 2663
    const-string v1, "SubjectDistance"

    .line 2664
    .line 2665
    const-string v4, "GPSTimeStamp"

    .line 2666
    .line 2667
    const-string v5, "FNumber"

    .line 2668
    .line 2669
    const-string v6, "DigitalZoomRatio"

    .line 2670
    .line 2671
    const-string v9, "ExposureTime"

    .line 2672
    .line 2673
    filled-new-array {v5, v6, v9, v1, v4}, [Ljava/lang/String;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v1

    .line 2677
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v1

    .line 2681
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2682
    .line 2683
    .line 2684
    sput-object v0, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashSet;

    .line 2685
    .line 2686
    new-instance v0, Ljava/util/HashMap;

    .line 2687
    .line 2688
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2689
    .line 2690
    .line 2691
    sput-object v0, Landroidx/exifinterface/media/a;->o0:Ljava/util/HashMap;

    .line 2692
    .line 2693
    const-string v0, "US-ASCII"

    .line 2694
    .line 2695
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v0

    .line 2699
    sput-object v0, Landroidx/exifinterface/media/a;->p0:Ljava/nio/charset/Charset;

    .line 2700
    .line 2701
    const-string v1, "Exif\u0000\u0000"

    .line 2702
    .line 2703
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2704
    .line 2705
    .line 2706
    move-result-object v1

    .line 2707
    sput-object v1, Landroidx/exifinterface/media/a;->q0:[B

    .line 2708
    .line 2709
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 2710
    .line 2711
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2712
    .line 2713
    .line 2714
    move-result-object v0

    .line 2715
    sput-object v0, Landroidx/exifinterface/media/a;->r0:[B

    .line 2716
    .line 2717
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2718
    .line 2719
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2720
    .line 2721
    const-string v4, "yyyy:MM:dd HH:mm:ss"

    .line 2722
    .line 2723
    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2724
    .line 2725
    .line 2726
    sput-object v0, Landroidx/exifinterface/media/a;->U:Ljava/text/SimpleDateFormat;

    .line 2727
    .line 2728
    const-string v4, "UTC"

    .line 2729
    .line 2730
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2731
    .line 2732
    .line 2733
    move-result-object v4

    .line 2734
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2735
    .line 2736
    .line 2737
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2738
    .line 2739
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 2740
    .line 2741
    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2742
    .line 2743
    .line 2744
    sput-object v0, Landroidx/exifinterface/media/a;->V:Ljava/text/SimpleDateFormat;

    .line 2745
    .line 2746
    const-string v1, "UTC"

    .line 2747
    .line 2748
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v1

    .line 2752
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2753
    .line 2754
    .line 2755
    const/4 v0, 0x0

    .line 2756
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 2757
    .line 2758
    array-length v4, v1

    .line 2759
    if-ge v0, v4, :cond_1

    .line 2760
    .line 2761
    sget-object v4, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    .line 2762
    .line 2763
    new-instance v5, Ljava/util/HashMap;

    .line 2764
    .line 2765
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2766
    .line 2767
    .line 2768
    aput-object v5, v4, v0

    .line 2769
    .line 2770
    sget-object v4, Landroidx/exifinterface/media/a;->m0:[Ljava/util/HashMap;

    .line 2771
    .line 2772
    new-instance v5, Ljava/util/HashMap;

    .line 2773
    .line 2774
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2775
    .line 2776
    .line 2777
    aput-object v5, v4, v0

    .line 2778
    .line 2779
    aget-object v1, v1, v0

    .line 2780
    .line 2781
    array-length v4, v1

    .line 2782
    const/4 v5, 0x0

    .line 2783
    :goto_1
    if-ge v5, v4, :cond_0

    .line 2784
    .line 2785
    aget-object v6, v1, v5

    .line 2786
    .line 2787
    sget-object v9, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    .line 2788
    .line 2789
    aget-object v9, v9, v0

    .line 2790
    .line 2791
    iget v11, v6, Landroidx/exifinterface/media/a$e;->a:I

    .line 2792
    .line 2793
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2794
    .line 2795
    .line 2796
    move-result-object v11

    .line 2797
    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    .line 2799
    .line 2800
    sget-object v9, Landroidx/exifinterface/media/a;->m0:[Ljava/util/HashMap;

    .line 2801
    .line 2802
    aget-object v9, v9, v0

    .line 2803
    .line 2804
    iget-object v11, v6, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 2805
    .line 2806
    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    .line 2808
    .line 2809
    add-int/lit8 v5, v5, 0x1

    .line 2810
    .line 2811
    goto :goto_1

    .line 2812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2813
    .line 2814
    goto :goto_0

    .line 2815
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/a;->o0:Ljava/util/HashMap;

    .line 2816
    .line 2817
    sget-object v1, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 2818
    .line 2819
    const/4 v4, 0x0

    .line 2820
    aget-object v4, v1, v4

    .line 2821
    .line 2822
    iget v4, v4, Landroidx/exifinterface/media/a$e;->a:I

    .line 2823
    .line 2824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2825
    .line 2826
    .line 2827
    move-result-object v4

    .line 2828
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2829
    .line 2830
    .line 2831
    const/4 v4, 0x1

    .line 2832
    aget-object v4, v1, v4

    .line 2833
    .line 2834
    iget v4, v4, Landroidx/exifinterface/media/a$e;->a:I

    .line 2835
    .line 2836
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2837
    .line 2838
    .line 2839
    move-result-object v4

    .line 2840
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    .line 2842
    .line 2843
    const/4 v3, 0x2

    .line 2844
    aget-object v3, v1, v3

    .line 2845
    .line 2846
    iget v3, v3, Landroidx/exifinterface/media/a$e;->a:I

    .line 2847
    .line 2848
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v3

    .line 2852
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    .line 2854
    .line 2855
    const/4 v3, 0x3

    .line 2856
    aget-object v3, v1, v3

    .line 2857
    .line 2858
    iget v3, v3, Landroidx/exifinterface/media/a$e;->a:I

    .line 2859
    .line 2860
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v3

    .line 2864
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    .line 2866
    .line 2867
    const/4 v2, 0x4

    .line 2868
    aget-object v2, v1, v2

    .line 2869
    .line 2870
    iget v2, v2, Landroidx/exifinterface/media/a$e;->a:I

    .line 2871
    .line 2872
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2873
    .line 2874
    .line 2875
    move-result-object v2

    .line 2876
    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    .line 2878
    .line 2879
    const/4 v2, 0x5

    .line 2880
    aget-object v1, v1, v2

    .line 2881
    .line 2882
    iget v1, v1, Landroidx/exifinterface/media/a$e;->a:I

    .line 2883
    .line 2884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2885
    .line 2886
    .line 2887
    move-result-object v1

    .line 2888
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    .line 2890
    .line 2891
    const-string v0, ".*[1-9].*"

    .line 2892
    .line 2893
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2894
    .line 2895
    .line 2896
    move-result-object v0

    .line 2897
    sput-object v0, Landroidx/exifinterface/media/a;->s0:Ljava/util/regex/Pattern;

    .line 2898
    .line 2899
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2900
    .line 2901
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v0

    .line 2905
    sput-object v0, Landroidx/exifinterface/media/a;->t0:Ljava/util/regex/Pattern;

    .line 2906
    .line 2907
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2908
    .line 2909
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v0

    .line 2913
    sput-object v0, Landroidx/exifinterface/media/a;->u0:Ljava/util/regex/Pattern;

    .line 2914
    .line 2915
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2916
    .line 2917
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2918
    .line 2919
    .line 2920
    move-result-object v0

    .line 2921
    sput-object v0, Landroidx/exifinterface/media/a;->v0:Ljava/util/regex/Pattern;

    .line 2922
    .line 2923
    return-void

    .line 2924
    nop

    .line 2925
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2950
    .line 2951
    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    nop

    .line 2957
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 18
    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->u(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string v0, "filename cannot be null"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private A([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/a;->J(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    const/16 v1, 0x55

    .line 22
    .line 23
    if-ne p1, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    move-object v1, v2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v1, v2

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 39
    .line 40
    .line 41
    :cond_1
    throw p1

    .line 42
    :catch_1
    :goto_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return v0
.end method

.method private static B(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {p0, v1, v2, v0}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    sget-boolean p0, Landroidx/exifinterface/media/a;->v:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "ExifInterface"

    .line 15
    .line 16
    const-string v0, "The file descriptor for the given input is not seekable"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private C(Ljava/util/HashMap;)Z
    .locals 5

    .line 1
    const-string v0, "BitsPerSample"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    sget-object v1, Landroidx/exifinterface/media/a;->y:[I

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/a;->d:I

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    if-ne v2, v4, :cond_3

    .line 33
    .line 34
    const-string v2, "PhotometricInterpretation"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v3, :cond_1

    .line 51
    .line 52
    sget-object v2, Landroidx/exifinterface/media/a;->A:[I

    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 v2, 0x6

    .line 61
    if-ne p1, v2, :cond_3

    .line 62
    .line 63
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :cond_2
    return v3

    .line 70
    :cond_3
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    const-string p1, "ExifInterface"

    .line 75
    .line 76
    const-string v0, "Unsupported data type value"

    .line 77
    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_4
    const/4 p1, 0x0

    .line 82
    return p1
.end method

.method private static D(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private E(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method private F([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->L:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p1, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v0

    .line 19
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/a;->M:[B

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge v1, v3, :cond_3

    .line 23
    .line 24
    sget-object v3, Landroidx/exifinterface/media/a;->L:[B

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    add-int/lit8 v3, v3, 0x4

    .line 29
    .line 30
    aget-byte v3, p1, v3

    .line 31
    .line 32
    aget-byte v2, v2, v1

    .line 33
    .line 34
    if-eq v3, v2, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method private G(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v3, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v3, v2, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/a;->e:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 27
    .line 28
    const/16 v2, 0x1388

    .line 29
    .line 30
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->h(Ljava/io/BufferedInputStream;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :cond_1
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/exifinterface/media/a;->V(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    new-instance v0, Landroidx/exifinterface/media/a$g;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$g;-><init>(Ljava/io/InputStream;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Landroidx/exifinterface/media/a;->e:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->n(Landroidx/exifinterface/media/a$g;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 62
    .line 63
    const/16 v1, 0xc

    .line 64
    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->f(Landroidx/exifinterface/media/a$g;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v1, 0x7

    .line 72
    if-ne p1, v1, :cond_4

    .line 73
    .line 74
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->i(Landroidx/exifinterface/media/a$g;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/16 v1, 0xa

    .line 79
    .line 80
    if-ne p1, v1, :cond_5

    .line 81
    .line 82
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->m(Landroidx/exifinterface/media/a$g;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->l(Landroidx/exifinterface/media/a$g;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    iget p1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 90
    .line 91
    int-to-long v1, p1

    .line 92
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->U(Landroidx/exifinterface/media/a$b;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    new-instance v1, Landroidx/exifinterface/media/a$b;

    .line 100
    .line 101
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;)V

    .line 102
    .line 103
    .line 104
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 105
    .line 106
    const/4 v2, 0x4

    .line 107
    if-ne p1, v2, :cond_7

    .line 108
    .line 109
    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/a;->g(Landroidx/exifinterface/media/a$b;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    const/16 v0, 0xd

    .line 114
    .line 115
    if-ne p1, v0, :cond_8

    .line 116
    .line 117
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->j(Landroidx/exifinterface/media/a$b;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    const/16 v0, 0x9

    .line 122
    .line 123
    if-ne p1, v0, :cond_9

    .line 124
    .line 125
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->k(Landroidx/exifinterface/media/a$b;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    const/16 v0, 0xe

    .line 130
    .line 131
    if-ne p1, v0, :cond_a

    .line 132
    .line 133
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->q(Landroidx/exifinterface/media/a$b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_a
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 137
    .line 138
    .line 139
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 140
    .line 141
    if-eqz p1, :cond_c

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    goto :goto_5

    .line 146
    :catch_0
    move-exception p1

    .line 147
    goto :goto_3

    .line 148
    :catch_1
    move-exception p1

    .line 149
    :goto_3
    :try_start_1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    const-string v1, "ExifInterface"

    .line 154
    .line 155
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 156
    .line 157
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_b
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 161
    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    :goto_4
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->I()V

    .line 166
    .line 167
    .line 168
    :cond_c
    return-void

    .line 169
    :goto_5
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 170
    .line 171
    .line 172
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 173
    .line 174
    if-eqz v0, :cond_d

    .line 175
    .line 176
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->I()V

    .line 177
    .line 178
    .line 179
    :cond_d
    throw p1

    .line 180
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 181
    .line 182
    const-string v0, "inputstream shouldn\'t be null"

    .line 183
    .line 184
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1
.end method

.method private H(Landroidx/exifinterface/media/a$b;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->J(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "Invalid start code: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    if-lt v0, v1, :cond_3

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x8

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "Invalid first Ifd offset: "

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method private I()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "The size of tag group["

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "]: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v2, v2, v0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "ExifInterface"

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 46
    .line 47
    aget-object v1, v1, v0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroidx/exifinterface/media/a$d;

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "tagName: "

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, ", tagType: "

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroidx/exifinterface/media/a$d;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, ", tagValue: \'"

    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/a$d;->n(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, "\'"

    .line 121
    .line 122
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method private J(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x4d4d

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string p1, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Invalid byte order: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const-string p1, "readExifSegment: Byte Align II"

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 64
    .line 65
    return-object p1
.end method

.method private K([BI)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/a$g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$g;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$b;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private L(Landroidx/exifinterface/media/a$g;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sget-boolean v4, Landroidx/exifinterface/media/a;->v:Z

    .line 25
    .line 26
    const-string v5, "ExifInterface"

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v6, "numberOfDirectoryEntry: "

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    if-gtz v3, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v4, 0x0

    .line 54
    move v6, v4

    .line 55
    :goto_0
    const/4 v7, 0x5

    .line 56
    if-ge v6, v3, :cond_25

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    int-to-long v13, v13

    .line 75
    const-wide/16 v16, 0x4

    .line 76
    .line 77
    add-long v13, v13, v16

    .line 78
    .line 79
    sget-object v18, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    .line 80
    .line 81
    aget-object v8, v18, v2

    .line 82
    .line 83
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Landroidx/exifinterface/media/a$e;

    .line 92
    .line 93
    sget-boolean v9, Landroidx/exifinterface/media/a;->v:Z

    .line 94
    .line 95
    const/4 v10, 0x3

    .line 96
    const/16 v19, 0x1

    .line 97
    .line 98
    if-eqz v9, :cond_3

    .line 99
    .line 100
    new-array v7, v7, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v20

    .line 106
    aput-object v20, v7, v4

    .line 107
    .line 108
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v20

    .line 112
    aput-object v20, v7, v19

    .line 113
    .line 114
    if-eqz v8, :cond_2

    .line 115
    .line 116
    iget-object v4, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 v4, 0x0

    .line 120
    :goto_1
    const/16 v21, 0x2

    .line 121
    .line 122
    aput-object v4, v7, v21

    .line 123
    .line 124
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    aput-object v4, v7, v10

    .line 129
    .line 130
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/16 v18, 0x4

    .line 135
    .line 136
    aput-object v4, v7, v18

    .line 137
    .line 138
    const-string v4, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 139
    .line 140
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_3
    const/4 v4, 0x7

    .line 148
    if-nez v8, :cond_5

    .line 149
    .line 150
    if-eqz v9, :cond_4

    .line 151
    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v10, "Skip the tag entry since tag number is not defined: "

    .line 158
    .line 159
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_2
    move-object v10, v5

    .line 173
    move/from16 v23, v6

    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :cond_5
    if-lez v12, :cond_a

    .line 178
    .line 179
    sget-object v7, Landroidx/exifinterface/media/a;->X:[I

    .line 180
    .line 181
    array-length v10, v7

    .line 182
    if-lt v12, v10, :cond_6

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    invoke-virtual {v8, v12}, Landroidx/exifinterface/media/a$e;->a(I)Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_7

    .line 190
    .line 191
    if-eqz v9, :cond_4

    .line 192
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v10, "Skip the tag entry since data format ("

    .line 199
    .line 200
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    sget-object v10, Landroidx/exifinterface/media/a;->W:[Ljava/lang/String;

    .line 204
    .line 205
    aget-object v10, v10, v12

    .line 206
    .line 207
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v10, ") is unexpected for tag: "

    .line 211
    .line 212
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v10, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_7
    if-ne v12, v4, :cond_8

    .line 229
    .line 230
    iget v12, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 231
    .line 232
    :cond_8
    move-object v10, v5

    .line 233
    int-to-long v4, v15

    .line 234
    aget v7, v7, v12

    .line 235
    .line 236
    move/from16 v23, v6

    .line 237
    .line 238
    int-to-long v6, v7

    .line 239
    mul-long/2addr v4, v6

    .line 240
    const-wide/16 v6, 0x0

    .line 241
    .line 242
    cmp-long v24, v4, v6

    .line 243
    .line 244
    if-ltz v24, :cond_9

    .line 245
    .line 246
    const-wide/32 v6, 0x7fffffff

    .line 247
    .line 248
    .line 249
    cmp-long v6, v4, v6

    .line 250
    .line 251
    if-lez v6, :cond_d

    .line 252
    .line 253
    :cond_9
    if-eqz v9, :cond_c

    .line 254
    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v7, "Skip the tag entry since the number of components is invalid: "

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_a
    :goto_3
    move-object v10, v5

    .line 277
    move/from16 v23, v6

    .line 278
    .line 279
    if-eqz v9, :cond_b

    .line 280
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v5, "Skip the tag entry since data format is invalid: "

    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :cond_b
    :goto_4
    const-wide/16 v4, 0x0

    .line 302
    .line 303
    :cond_c
    :goto_5
    const/16 v19, 0x0

    .line 304
    .line 305
    :cond_d
    if-nez v19, :cond_e

    .line 306
    .line 307
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 308
    .line 309
    .line 310
    move/from16 v19, v3

    .line 311
    .line 312
    goto/16 :goto_d

    .line 313
    .line 314
    :cond_e
    cmp-long v6, v4, v16

    .line 315
    .line 316
    const-string v7, "Compression"

    .line 317
    .line 318
    if-lez v6, :cond_12

    .line 319
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    move/from16 v19, v3

    .line 325
    .line 326
    if-eqz v9, :cond_f

    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    move-wide/from16 v16, v13

    .line 334
    .line 335
    const-string v13, "seek to data offset: "

    .line 336
    .line 337
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_f
    move-wide/from16 v16, v13

    .line 352
    .line 353
    :goto_6
    iget v3, v0, Landroidx/exifinterface/media/a;->d:I

    .line 354
    .line 355
    const/4 v13, 0x7

    .line 356
    if-ne v3, v13, :cond_11

    .line 357
    .line 358
    iget-object v3, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 359
    .line 360
    const-string v13, "MakerNote"

    .line 361
    .line 362
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_10

    .line 367
    .line 368
    iput v6, v0, Landroidx/exifinterface/media/a;->q:I

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_10
    const/4 v3, 0x6

    .line 372
    if-ne v2, v3, :cond_11

    .line 373
    .line 374
    const-string v13, "ThumbnailImage"

    .line 375
    .line 376
    iget-object v14, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    if-eqz v13, :cond_11

    .line 383
    .line 384
    iput v6, v0, Landroidx/exifinterface/media/a;->r:I

    .line 385
    .line 386
    iput v15, v0, Landroidx/exifinterface/media/a;->s:I

    .line 387
    .line 388
    iget-object v13, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 389
    .line 390
    invoke-static {v3, v13}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    iget v13, v0, Landroidx/exifinterface/media/a;->r:I

    .line 395
    .line 396
    int-to-long v13, v13

    .line 397
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 398
    .line 399
    invoke-static {v13, v14, v2}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    iget v13, v0, Landroidx/exifinterface/media/a;->s:I

    .line 404
    .line 405
    int-to-long v13, v13

    .line 406
    move/from16 v22, v15

    .line 407
    .line 408
    iget-object v15, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 409
    .line 410
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    iget-object v14, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 415
    .line 416
    const/4 v15, 0x4

    .line 417
    aget-object v14, v14, v15

    .line 418
    .line 419
    invoke-virtual {v14, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 423
    .line 424
    aget-object v3, v3, v15

    .line 425
    .line 426
    const-string v14, "JPEGInterchangeFormat"

    .line 427
    .line 428
    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 432
    .line 433
    aget-object v2, v2, v15

    .line 434
    .line 435
    const-string v3, "JPEGInterchangeFormatLength"

    .line 436
    .line 437
    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_11
    :goto_7
    move/from16 v22, v15

    .line 442
    .line 443
    :goto_8
    int-to-long v2, v6

    .line 444
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 445
    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_12
    move/from16 v19, v3

    .line 449
    .line 450
    move-wide/from16 v16, v13

    .line 451
    .line 452
    move/from16 v22, v15

    .line 453
    .line 454
    :goto_9
    sget-object v2, Landroidx/exifinterface/media/a;->o0:Ljava/util/HashMap;

    .line 455
    .line 456
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Ljava/lang/Integer;

    .line 465
    .line 466
    if-eqz v9, :cond_13

    .line 467
    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    const-string v6, "nextIfdType: "

    .line 474
    .line 475
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v6, " byteCount: "

    .line 482
    .line 483
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    :cond_13
    const/16 v3, 0x8

    .line 497
    .line 498
    if-eqz v2, :cond_1e

    .line 499
    .line 500
    const/4 v4, 0x3

    .line 501
    if-eq v12, v4, :cond_17

    .line 502
    .line 503
    const/4 v4, 0x4

    .line 504
    if-eq v12, v4, :cond_16

    .line 505
    .line 506
    if-eq v12, v3, :cond_15

    .line 507
    .line 508
    const/16 v3, 0x9

    .line 509
    .line 510
    if-eq v12, v3, :cond_14

    .line 511
    .line 512
    const/16 v3, 0xd

    .line 513
    .line 514
    if-eq v12, v3, :cond_14

    .line 515
    .line 516
    const-wide/16 v3, -0x1

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    goto :goto_a

    .line 524
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    goto :goto_a

    .line 529
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->c()J

    .line 530
    .line 531
    .line 532
    move-result-wide v3

    .line 533
    goto :goto_b

    .line 534
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    :goto_a
    int-to-long v3, v3

    .line 539
    :goto_b
    if-eqz v9, :cond_18

    .line 540
    .line 541
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    iget-object v6, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 546
    .line 547
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    const-string v6, "Offset: %d, tagName: %s"

    .line 552
    .line 553
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    :cond_18
    const-wide/16 v5, 0x0

    .line 561
    .line 562
    cmp-long v5, v3, v5

    .line 563
    .line 564
    const-string v6, ")"

    .line 565
    .line 566
    const/4 v7, -0x1

    .line 567
    if-lez v5, :cond_1b

    .line 568
    .line 569
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->a()I

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eq v5, v7, :cond_19

    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->a()I

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    int-to-long v11, v5

    .line 580
    cmp-long v5, v3, v11

    .line 581
    .line 582
    if-gez v5, :cond_1b

    .line 583
    .line 584
    :cond_19
    iget-object v5, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 585
    .line 586
    long-to-int v7, v3

    .line 587
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-nez v5, :cond_1a

    .line 596
    .line 597
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 605
    .line 606
    .line 607
    goto :goto_c

    .line 608
    :cond_1a
    if-eqz v9, :cond_1d

    .line 609
    .line 610
    new-instance v5, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    const-string v7, "Skip jump into the IFD since it has already been read: IfdType "

    .line 616
    .line 617
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v2, " (at "

    .line 624
    .line 625
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    goto :goto_c

    .line 642
    :cond_1b
    if-eqz v9, :cond_1d

    .line 643
    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .line 648
    .line 649
    const-string v5, "Skip jump into the IFD since its offset is invalid: "

    .line 650
    .line 651
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->a()I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    if-eq v3, v7, :cond_1c

    .line 666
    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v2, " (total length: "

    .line 676
    .line 677
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->a()I

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    :cond_1c
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    :cond_1d
    :goto_c
    move-wide/from16 v13, v16

    .line 698
    .line 699
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_d

    .line 703
    .line 704
    :cond_1e
    move-wide/from16 v13, v16

    .line 705
    .line 706
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    iget v6, v0, Landroidx/exifinterface/media/a;->p:I

    .line 711
    .line 712
    add-int/2addr v2, v6

    .line 713
    long-to-int v4, v4

    .line 714
    new-array v4, v4, [B

    .line 715
    .line 716
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 717
    .line 718
    .line 719
    new-instance v5, Landroidx/exifinterface/media/a$d;

    .line 720
    .line 721
    move-object v9, v4

    .line 722
    int-to-long v3, v2

    .line 723
    move-wide v14, v13

    .line 724
    move-object v13, v5

    .line 725
    move-wide/from16 v25, v14

    .line 726
    .line 727
    move v14, v12

    .line 728
    move/from16 v15, v22

    .line 729
    .line 730
    move-wide/from16 v16, v3

    .line 731
    .line 732
    move-object/from16 v18, v9

    .line 733
    .line 734
    invoke-direct/range {v13 .. v18}, Landroidx/exifinterface/media/a$d;-><init>(IIJ[B)V

    .line 735
    .line 736
    .line 737
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 738
    .line 739
    aget-object v2, v2, p2

    .line 740
    .line 741
    iget-object v3, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    const-string v2, "DNGVersion"

    .line 747
    .line 748
    iget-object v3, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 749
    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    if-eqz v2, :cond_1f

    .line 755
    .line 756
    const/4 v2, 0x3

    .line 757
    iput v2, v0, Landroidx/exifinterface/media/a;->d:I

    .line 758
    .line 759
    :cond_1f
    const-string v2, "Make"

    .line 760
    .line 761
    iget-object v3, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-nez v2, :cond_20

    .line 768
    .line 769
    const-string v2, "Model"

    .line 770
    .line 771
    iget-object v3, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    if-eqz v2, :cond_21

    .line 778
    .line 779
    :cond_20
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 780
    .line 781
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/a$d;->n(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    const-string v3, "PENTAX"

    .line 786
    .line 787
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    if-nez v2, :cond_22

    .line 792
    .line 793
    :cond_21
    iget-object v2, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_23

    .line 800
    .line 801
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 802
    .line 803
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    const v3, 0xffff

    .line 808
    .line 809
    .line 810
    if-ne v2, v3, :cond_23

    .line 811
    .line 812
    :cond_22
    const/16 v2, 0x8

    .line 813
    .line 814
    iput v2, v0, Landroidx/exifinterface/media/a;->d:I

    .line 815
    .line 816
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    int-to-long v2, v2

    .line 821
    move-wide/from16 v13, v25

    .line 822
    .line 823
    cmp-long v2, v2, v13

    .line 824
    .line 825
    if-eqz v2, :cond_24

    .line 826
    .line 827
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 828
    .line 829
    .line 830
    :cond_24
    :goto_d
    add-int/lit8 v6, v23, 0x1

    .line 831
    .line 832
    int-to-short v6, v6

    .line 833
    move/from16 v2, p2

    .line 834
    .line 835
    move-object v5, v10

    .line 836
    move/from16 v3, v19

    .line 837
    .line 838
    const/4 v4, 0x0

    .line 839
    goto/16 :goto_0

    .line 840
    .line 841
    :cond_25
    move-object v10, v5

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    sget-boolean v3, Landroidx/exifinterface/media/a;->v:Z

    .line 847
    .line 848
    if-eqz v3, :cond_26

    .line 849
    .line 850
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    const-string v5, "nextIfdOffset: %d"

    .line 859
    .line 860
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .line 866
    .line 867
    :cond_26
    int-to-long v4, v2

    .line 868
    const-wide/16 v8, 0x0

    .line 869
    .line 870
    cmp-long v6, v4, v8

    .line 871
    .line 872
    if-lez v6, :cond_29

    .line 873
    .line 874
    iget-object v6, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 875
    .line 876
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 877
    .line 878
    .line 879
    move-result-object v8

    .line 880
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    move-result v6

    .line 884
    if-nez v6, :cond_28

    .line 885
    .line 886
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 887
    .line 888
    .line 889
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 890
    .line 891
    const/4 v3, 0x4

    .line 892
    aget-object v2, v2, v3

    .line 893
    .line 894
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-eqz v2, :cond_27

    .line 899
    .line 900
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 901
    .line 902
    .line 903
    goto :goto_e

    .line 904
    :cond_27
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 905
    .line 906
    aget-object v2, v2, v7

    .line 907
    .line 908
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 909
    .line 910
    .line 911
    move-result v2

    .line 912
    if-eqz v2, :cond_2a

    .line 913
    .line 914
    invoke-direct {v0, v1, v7}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 915
    .line 916
    .line 917
    goto :goto_e

    .line 918
    :cond_28
    if-eqz v3, :cond_2a

    .line 919
    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    .line 921
    .line 922
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .line 924
    .line 925
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 926
    .line 927
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    goto :goto_e

    .line 941
    :cond_29
    if-eqz v3, :cond_2a

    .line 942
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .line 947
    .line 948
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 949
    .line 950
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .line 962
    .line 963
    :cond_2a
    :goto_e
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private N(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 12
    .line 13
    aget-object v0, v0, p1

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 22
    .line 23
    aget-object v0, v0, p1

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 33
    .line 34
    aget-object p1, p3, p1

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private O(Landroidx/exifinterface/media/a$g;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "ImageLength"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "ImageWidth"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 30
    .line 31
    aget-object v0, v0, p2

    .line 32
    .line 33
    const-string v1, "JPEGInterchangeFormat"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 42
    .line 43
    aget-object v1, v1, p2

    .line 44
    .line 45
    const-string v2, "JPEGInterchangeFormatLength"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-long v2, v1

    .line 70
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 71
    .line 72
    .line 73
    new-array v0, v0, [B

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 79
    .line 80
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v1, p2}, Landroidx/exifinterface/media/a;->g(Landroidx/exifinterface/media/a$b;II)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method private Q(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "saveJpegAttributes starting with (inputStream: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", outputStream: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "ExifInterface"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/a$b;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroidx/exifinterface/media/a$c;

    .line 46
    .line 47
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/a$c;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const-string v1, "Invalid marker"

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    if-ne p2, v2, :cond_c

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/16 v3, -0x28

    .line 69
    .line 70
    if-ne p2, v3, :cond_b

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 73
    .line 74
    .line 75
    const-string p2, "Xmp"

    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x0

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    iget-boolean v3, p0, Landroidx/exifinterface/media/a;->u:Z

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 89
    .line 90
    aget-object v3, v3, v4

    .line 91
    .line 92
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroidx/exifinterface/media/a$d;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 100
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 101
    .line 102
    .line 103
    const/16 v5, -0x1f

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 109
    .line 110
    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    iget-object v6, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 114
    .line 115
    aget-object v6, v6, v4

    .line 116
    .line 117
    invoke-virtual {v6, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_2
    const/16 p2, 0x1000

    .line 121
    .line 122
    new-array v3, p2, [B

    .line 123
    .line 124
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-ne v6, v2, :cond_a

    .line 129
    .line 130
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    const/16 v7, -0x27

    .line 135
    .line 136
    if-eq v6, v7, :cond_9

    .line 137
    .line 138
    const/16 v7, -0x26

    .line 139
    .line 140
    if-eq v6, v7, :cond_9

    .line 141
    .line 142
    const-string v7, "Invalid length"

    .line 143
    .line 144
    if-eq v6, v5, :cond_5

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v6, v6, -0x2

    .line 160
    .line 161
    if-ltz v6, :cond_4

    .line 162
    .line 163
    :goto_2
    if-lez v6, :cond_3

    .line 164
    .line 165
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-virtual {v0, v3, v4, v7}, Landroidx/exifinterface/media/a$b;->read([BII)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-ltz v7, :cond_3

    .line 174
    .line 175
    invoke-virtual {p1, v3, v4, v7}, Landroidx/exifinterface/media/a$c;->write([BII)V

    .line 176
    .line 177
    .line 178
    sub-int/2addr v6, v7

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 181
    .line 182
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_5
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    add-int/lit8 v8, v8, -0x2

    .line 191
    .line 192
    if-ltz v8, :cond_8

    .line 193
    .line 194
    const/4 v7, 0x6

    .line 195
    new-array v9, v7, [B

    .line 196
    .line 197
    if-lt v8, v7, :cond_6

    .line 198
    .line 199
    invoke-virtual {v0, v9}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 200
    .line 201
    .line 202
    sget-object v10, Landroidx/exifinterface/media/a;->q0:[B

    .line 203
    .line 204
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_6

    .line 209
    .line 210
    add-int/lit8 v8, v8, -0x6

    .line 211
    .line 212
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v6, v8, 0x2

    .line 223
    .line 224
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 225
    .line 226
    .line 227
    if-lt v8, v7, :cond_7

    .line 228
    .line 229
    add-int/lit8 v8, v8, -0x6

    .line 230
    .line 231
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 232
    .line 233
    .line 234
    :cond_7
    :goto_3
    if-lez v8, :cond_3

    .line 235
    .line 236
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    invoke-virtual {v0, v3, v4, v6}, Landroidx/exifinterface/media/a$b;->read([BII)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-ltz v6, :cond_3

    .line 245
    .line 246
    invoke-virtual {p1, v3, v4, v6}, Landroidx/exifinterface/media/a$c;->write([BII)V

    .line 247
    .line 248
    .line 249
    sub-int/2addr v8, v6

    .line 250
    goto :goto_3

    .line 251
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 252
    .line 253
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {v0, p1}, Landroidx/exifinterface/media/b;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 268
    .line 269
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 274
    .line 275
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p1

    .line 279
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 280
    .line 281
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1
.end method

.method private R(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "savePngAttributes starting with (inputStream: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", outputStream: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "ExifInterface"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/a$b;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroidx/exifinterface/media/a$c;

    .line 46
    .line 47
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/a$c;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 50
    .line 51
    .line 52
    sget-object p2, Landroidx/exifinterface/media/a;->H:[B

    .line 53
    .line 54
    array-length v2, p2

    .line 55
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Landroidx/exifinterface/media/a;->p:I

    .line 59
    .line 60
    const/4 v3, 0x4

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 68
    .line 69
    .line 70
    add-int/2addr p2, v3

    .line 71
    add-int/2addr p2, v3

    .line 72
    invoke-static {v0, p1, p2}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    array-length p2, p2

    .line 77
    sub-int/2addr v2, p2

    .line 78
    sub-int/2addr v2, v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    add-int/2addr p2, v3

    .line 88
    add-int/2addr p2, v3

    .line 89
    invoke-virtual {v0, p2}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    const/4 p2, 0x0

    .line 93
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_1
    new-instance p2, Landroidx/exifinterface/media/a$c;

    .line 99
    .line 100
    invoke-direct {p2, v2, v1}, Landroidx/exifinterface/media/a$c;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p2}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 104
    .line 105
    .line 106
    iget-object p2, p2, Landroidx/exifinterface/media/a$c;->a:Ljava/io/OutputStream;

    .line 107
    .line 108
    check-cast p2, Ljava/io/ByteArrayOutputStream;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/util/zip/CRC32;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 120
    .line 121
    .line 122
    array-length v4, p2

    .line 123
    sub-int/2addr v4, v3

    .line 124
    invoke-virtual {v1, p2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    long-to-int p2, v3

    .line 132
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/a$c;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0, p1}, Landroidx/exifinterface/media/b;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    move-object p2, v2

    .line 144
    goto :goto_1

    .line 145
    :catchall_1
    move-exception p1

    .line 146
    :goto_1
    invoke-static {p2}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method private S(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Landroidx/exifinterface/media/a;->v:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "saveWebpAttributes starting with (inputStream: "

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, ", outputStream: "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ")"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "ExifInterface"

    .line 42
    .line 43
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    new-instance v3, Landroidx/exifinterface/media/a$b;

    .line 47
    .line 48
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 49
    .line 50
    invoke-direct {v3, v0, v4}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroidx/exifinterface/media/a$c;

    .line 54
    .line 55
    invoke-direct {v0, v2, v4}, Landroidx/exifinterface/media/a$c;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 56
    .line 57
    .line 58
    sget-object v2, Landroidx/exifinterface/media/a;->L:[B

    .line 59
    .line 60
    array-length v5, v2

    .line 61
    invoke-static {v3, v0, v5}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 62
    .line 63
    .line 64
    sget-object v5, Landroidx/exifinterface/media/a;->M:[B

    .line 65
    .line 66
    array-length v6, v5

    .line 67
    const/4 v7, 0x4

    .line 68
    add-int/2addr v6, v7

    .line 69
    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 74
    .line 75
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .line 77
    .line 78
    :try_start_1
    new-instance v9, Landroidx/exifinterface/media/a$c;

    .line 79
    .line 80
    invoke-direct {v9, v8, v4}, Landroidx/exifinterface/media/a$c;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 81
    .line 82
    .line 83
    iget v4, v1, Landroidx/exifinterface/media/a;->p:I

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    array-length v2, v2

    .line 88
    add-int/2addr v2, v7

    .line 89
    array-length v5, v5

    .line 90
    add-int/2addr v2, v5

    .line 91
    sub-int/2addr v4, v2

    .line 92
    sub-int/2addr v4, v7

    .line 93
    sub-int/2addr v4, v7

    .line 94
    invoke-static {v3, v9, v4}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    rem-int/lit8 v4, v2, 0x2

    .line 105
    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 114
    .line 115
    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_2
    new-array v2, v7, [B

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 121
    .line 122
    .line 123
    sget-object v4, Landroidx/exifinterface/media/a;->P:[B

    .line 124
    .line 125
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const/16 v10, 0x8

    .line 130
    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v12, 0x1

    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    rem-int/lit8 v5, v2, 0x2

    .line 140
    .line 141
    if-ne v5, v12, :cond_3

    .line 142
    .line 143
    add-int/lit8 v5, v2, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    move v5, v2

    .line 147
    :goto_0
    new-array v5, v5, [B

    .line 148
    .line 149
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 150
    .line 151
    .line 152
    aget-byte v13, v5, v11

    .line 153
    .line 154
    or-int/2addr v10, v13

    .line 155
    int-to-byte v10, v10

    .line 156
    aput-byte v10, v5, v11

    .line 157
    .line 158
    shr-int/2addr v10, v12

    .line 159
    and-int/2addr v10, v12

    .line 160
    if-ne v10, v12, :cond_4

    .line 161
    .line 162
    move v11, v12

    .line 163
    :cond_4
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v5}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 170
    .line 171
    .line 172
    if-eqz v11, :cond_6

    .line 173
    .line 174
    sget-object v2, Landroidx/exifinterface/media/a;->S:[B

    .line 175
    .line 176
    invoke-direct {v1, v3, v9, v2, v6}, Landroidx/exifinterface/media/a;->b(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B[B)V

    .line 177
    .line 178
    .line 179
    :goto_1
    new-array v2, v7, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    :try_start_2
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 182
    .line 183
    .line 184
    sget-object v4, Landroidx/exifinterface/media/a;->T:[B

    .line 185
    .line 186
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 187
    .line 188
    .line 189
    move-result v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    xor-int/2addr v4, v12

    .line 191
    goto :goto_2

    .line 192
    :catch_0
    move v4, v12

    .line 193
    :goto_2
    if-eqz v4, :cond_5

    .line 194
    .line 195
    :try_start_3
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 196
    .line 197
    .line 198
    goto/16 :goto_7

    .line 199
    .line 200
    :cond_5
    invoke-direct {v1, v3, v9, v2}, Landroidx/exifinterface/media/a;->c(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    sget-object v2, Landroidx/exifinterface/media/a;->R:[B

    .line 205
    .line 206
    sget-object v4, Landroidx/exifinterface/media/a;->Q:[B

    .line 207
    .line 208
    invoke-direct {v1, v3, v9, v2, v4}, Landroidx/exifinterface/media/a;->b(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B[B)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 212
    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_7
    sget-object v5, Landroidx/exifinterface/media/a;->R:[B

    .line 217
    .line 218
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-nez v6, :cond_8

    .line 223
    .line 224
    sget-object v6, Landroidx/exifinterface/media/a;->Q:[B

    .line 225
    .line 226
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_12

    .line 231
    .line 232
    :cond_8
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    rem-int/lit8 v13, v6, 0x2

    .line 237
    .line 238
    if-ne v13, v12, :cond_9

    .line 239
    .line 240
    add-int/lit8 v13, v6, 0x1

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_9
    move v13, v6

    .line 244
    :goto_3
    const/4 v14, 0x3

    .line 245
    new-array v15, v14, [B

    .line 246
    .line 247
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 248
    .line 249
    .line 250
    move-result v16

    .line 251
    const/16 v7, 0x2f

    .line 252
    .line 253
    if-eqz v16, :cond_b

    .line 254
    .line 255
    invoke-virtual {v3, v15}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 256
    .line 257
    .line 258
    new-array v12, v14, [B

    .line 259
    .line 260
    invoke-virtual {v3, v12}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 261
    .line 262
    .line 263
    sget-object v14, Landroidx/exifinterface/media/a;->O:[B

    .line 264
    .line 265
    invoke-static {v14, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 266
    .line 267
    .line 268
    move-result v12

    .line 269
    if-eqz v12, :cond_a

    .line 270
    .line 271
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    shl-int/lit8 v14, v12, 0x12

    .line 276
    .line 277
    shr-int/lit8 v14, v14, 0x12

    .line 278
    .line 279
    shl-int/lit8 v16, v12, 0x2

    .line 280
    .line 281
    shr-int/lit8 v16, v16, 0x12

    .line 282
    .line 283
    add-int/lit8 v13, v13, -0xa

    .line 284
    .line 285
    move v7, v14

    .line 286
    move v14, v12

    .line 287
    move v12, v11

    .line 288
    goto :goto_5

    .line 289
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 290
    .line 291
    const-string v2, "Error checking VP8 signature"

    .line 292
    .line 293
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_b
    sget-object v14, Landroidx/exifinterface/media/a;->Q:[B

    .line 298
    .line 299
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    if-eqz v14, :cond_e

    .line 304
    .line 305
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-ne v14, v7, :cond_d

    .line 310
    .line 311
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    and-int/lit16 v7, v14, 0x3fff

    .line 316
    .line 317
    add-int/2addr v7, v12

    .line 318
    const v16, 0xfffc000

    .line 319
    .line 320
    .line 321
    and-int v16, v14, v16

    .line 322
    .line 323
    ushr-int/lit8 v16, v16, 0xe

    .line 324
    .line 325
    add-int/lit8 v16, v16, 0x1

    .line 326
    .line 327
    const/high16 v17, 0x10000000

    .line 328
    .line 329
    and-int v17, v14, v17

    .line 330
    .line 331
    if-eqz v17, :cond_c

    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_c
    move v12, v11

    .line 335
    :goto_4
    add-int/lit8 v13, v13, -0x5

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 339
    .line 340
    const-string v2, "Error checking VP8L signature"

    .line 341
    .line 342
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_e
    move v7, v11

    .line 347
    move v12, v7

    .line 348
    move v14, v12

    .line 349
    move/from16 v16, v14

    .line 350
    .line 351
    :goto_5
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 352
    .line 353
    .line 354
    const/16 v4, 0xa

    .line 355
    .line 356
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 357
    .line 358
    .line 359
    new-array v4, v4, [B

    .line 360
    .line 361
    if-eqz v12, :cond_f

    .line 362
    .line 363
    aget-byte v12, v4, v11

    .line 364
    .line 365
    or-int/lit8 v12, v12, 0x10

    .line 366
    .line 367
    int-to-byte v12, v12

    .line 368
    aput-byte v12, v4, v11

    .line 369
    .line 370
    :cond_f
    aget-byte v12, v4, v11

    .line 371
    .line 372
    or-int/2addr v12, v10

    .line 373
    int-to-byte v12, v12

    .line 374
    aput-byte v12, v4, v11

    .line 375
    .line 376
    add-int/lit8 v7, v7, -0x1

    .line 377
    .line 378
    add-int/lit8 v11, v16, -0x1

    .line 379
    .line 380
    int-to-byte v12, v7

    .line 381
    const/16 v16, 0x4

    .line 382
    .line 383
    aput-byte v12, v4, v16

    .line 384
    .line 385
    shr-int/lit8 v12, v7, 0x8

    .line 386
    .line 387
    int-to-byte v12, v12

    .line 388
    const/16 v16, 0x5

    .line 389
    .line 390
    aput-byte v12, v4, v16

    .line 391
    .line 392
    shr-int/lit8 v7, v7, 0x10

    .line 393
    .line 394
    int-to-byte v7, v7

    .line 395
    const/4 v12, 0x6

    .line 396
    aput-byte v7, v4, v12

    .line 397
    .line 398
    const/4 v7, 0x7

    .line 399
    int-to-byte v12, v11

    .line 400
    aput-byte v12, v4, v7

    .line 401
    .line 402
    shr-int/lit8 v7, v11, 0x8

    .line 403
    .line 404
    int-to-byte v7, v7

    .line 405
    aput-byte v7, v4, v10

    .line 406
    .line 407
    shr-int/lit8 v7, v11, 0x10

    .line 408
    .line 409
    int-to-byte v7, v7

    .line 410
    const/16 v10, 0x9

    .line 411
    .line 412
    aput-byte v7, v4, v10

    .line 413
    .line 414
    invoke-virtual {v9, v4}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v6}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 421
    .line 422
    .line 423
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eqz v4, :cond_10

    .line 428
    .line 429
    invoke-virtual {v9, v15}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 430
    .line 431
    .line 432
    sget-object v2, Landroidx/exifinterface/media/a;->O:[B

    .line 433
    .line 434
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v14}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_10
    sget-object v4, Landroidx/exifinterface/media/a;->Q:[B

    .line 442
    .line 443
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_11

    .line 448
    .line 449
    const/16 v2, 0x2f

    .line 450
    .line 451
    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v14}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 455
    .line 456
    .line 457
    :cond_11
    :goto_6
    invoke-static {v3, v9, v13}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/a;->Z(Landroidx/exifinterface/media/a$c;)I

    .line 461
    .line 462
    .line 463
    :cond_12
    :goto_7
    invoke-static {v3, v9}, Landroidx/exifinterface/media/b;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 464
    .line 465
    .line 466
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    sget-object v3, Landroidx/exifinterface/media/a;->M:[B

    .line 471
    .line 472
    array-length v4, v3

    .line 473
    add-int/2addr v2, v4

    .line 474
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v3}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    .line 482
    .line 483
    invoke-static {v8}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :catchall_0
    move-exception v0

    .line 488
    move-object v6, v8

    .line 489
    goto :goto_9

    .line 490
    :catch_1
    move-exception v0

    .line 491
    move-object v6, v8

    .line 492
    goto :goto_8

    .line 493
    :catchall_1
    move-exception v0

    .line 494
    goto :goto_9

    .line 495
    :catch_2
    move-exception v0

    .line 496
    :goto_8
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    .line 497
    .line 498
    const-string v3, "Failed to save WebP file"

    .line 499
    .line 500
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 504
    :goto_9
    invoke-static {v6}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 505
    .line 506
    .line 507
    throw v0
.end method

.method private U(Landroidx/exifinterface/media/a$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "Compression"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Landroidx/exifinterface/media/a;->o:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->s(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->C(Ljava/util/HashMap;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->t(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput v2, p0, Landroidx/exifinterface/media/a;->o:I

    .line 49
    .line 50
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->s(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method private static V(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private W(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "ExifInterface"

    .line 10
    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v0, v0, p2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v0, v0, p1

    .line 28
    .line 29
    const-string v2, "ImageLength"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 38
    .line 39
    aget-object v3, v3, p1

    .line 40
    .line 41
    const-string v4, "ImageWidth"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/exifinterface/media/a$d;

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 50
    .line 51
    aget-object v5, v5, p2

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/exifinterface/media/a$d;

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 60
    .line 61
    aget-object v5, v5, p2

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroidx/exifinterface/media/a$d;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    if-eqz v2, :cond_3

    .line 75
    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v0, v2, :cond_5

    .line 104
    .line 105
    if-ge v1, v3, :cond_5

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 108
    .line 109
    aget-object v1, v0, p1

    .line 110
    .line 111
    aget-object v2, v0, p2

    .line 112
    .line 113
    aput-object v2, v0, p1

    .line 114
    .line 115
    aput-object v1, v0, p2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    :goto_0
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    const-string p1, "Second image does not contain valid size information"

    .line 123
    .line 124
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    :goto_1
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    const-string p1, "First image does not contain valid size information"

    .line 133
    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_2
    return-void

    .line 138
    :cond_6
    :goto_3
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 139
    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 143
    .line 144
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_7
    return-void
.end method

.method private X(Landroidx/exifinterface/media/a$g;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "SensorTopBorder"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v2, v2, p2

    .line 28
    .line 29
    const-string v3, "SensorLeftBorder"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/exifinterface/media/a$d;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 38
    .line 39
    aget-object v3, v3, p2

    .line 40
    .line 41
    const-string v4, "SensorBottomBorder"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/exifinterface/media/a$d;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 50
    .line 51
    aget-object v4, v4, p2

    .line 52
    .line 53
    const-string v5, "SensorRightBorder"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/a$d;

    .line 60
    .line 61
    const-string v5, "ImageLength"

    .line 62
    .line 63
    const-string v6, "ImageWidth"

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget p1, v0, Landroidx/exifinterface/media/a$d;->a:I

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    const/4 v2, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x2

    .line 73
    const-string v7, "Invalid crop size values. cropSize="

    .line 74
    .line 75
    const-string v8, "ExifInterface"

    .line 76
    .line 77
    if-ne p1, v1, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [Landroidx/exifinterface/media/a$f;

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    array-length v0, p1

    .line 90
    if-eq v0, v4, :cond_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    aget-object v0, p1, v3

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/exifinterface/media/a$d;->h(Landroidx/exifinterface/media/a$f;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    aget-object p1, p1, v2

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-static {p1, v1}, Landroidx/exifinterface/media/a$d;->h(Landroidx/exifinterface/media/a$f;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, [I

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    array-length v0, p1

    .line 144
    if-eq v0, v4, :cond_3

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    aget v0, p1, v3

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 150
    .line 151
    invoke-static {v0, v1}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    aget p1, p1, v2

    .line 156
    .line 157
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 158
    .line 159
    invoke-static {p1, v1}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 164
    .line 165
    aget-object v1, v1, p2

    .line 166
    .line 167
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 171
    .line 172
    aget-object p2, v0, p2

    .line 173
    .line 174
    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_5
    if-eqz v1, :cond_6

    .line 202
    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    if-eqz v3, :cond_6

    .line 206
    .line 207
    if-eqz v4, :cond_6

    .line 208
    .line 209
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 222
    .line 223
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-le v0, p1, :cond_7

    .line 234
    .line 235
    if-le v1, v2, :cond_7

    .line 236
    .line 237
    sub-int/2addr v0, p1

    .line 238
    sub-int/2addr v1, v2

    .line 239
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 240
    .line 241
    invoke-static {v0, p1}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 246
    .line 247
    invoke-static {v1, v0}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 252
    .line 253
    aget-object v1, v1, p2

    .line 254
    .line 255
    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 259
    .line 260
    aget-object p1, p1, p2

    .line 261
    .line 262
    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/a;->O(Landroidx/exifinterface/media/a$g;I)V

    .line 267
    .line 268
    .line 269
    :cond_7
    :goto_3
    return-void
.end method

.method private Y()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/a;->W(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/a;->W(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/a;->W(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v3, v3, v4

    .line 17
    .line 18
    const-string v5, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/exifinterface/media/a$d;

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 27
    .line 28
    aget-object v4, v5, v4

    .line 29
    .line 30
    const-string v5, "PixelYDimension"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/exifinterface/media/a$d;

    .line 37
    .line 38
    const-string v5, "ImageLength"

    .line 39
    .line 40
    const-string v6, "ImageWidth"

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 47
    .line 48
    aget-object v7, v7, v0

    .line 49
    .line 50
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 54
    .line 55
    aget-object v3, v3, v0

    .line 56
    .line 57
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v3, v3, v2

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 71
    .line 72
    aget-object v3, v3, v1

    .line 73
    .line 74
    invoke-direct {p0, v3}, Landroidx/exifinterface/media/a;->E(Ljava/util/HashMap;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 81
    .line 82
    aget-object v4, v3, v1

    .line 83
    .line 84
    aput-object v4, v3, v2

    .line 85
    .line 86
    new-instance v4, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    aput-object v4, v3, v1

    .line 92
    .line 93
    :cond_1
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 94
    .line 95
    aget-object v3, v3, v2

    .line 96
    .line 97
    invoke-direct {p0, v3}, Landroidx/exifinterface/media/a;->E(Ljava/util/HashMap;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_2

    .line 102
    .line 103
    const-string v3, "ExifInterface"

    .line 104
    .line 105
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 106
    .line 107
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 111
    .line 112
    const-string v4, "Orientation"

    .line 113
    .line 114
    invoke-direct {p0, v0, v3, v4}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v7, "ThumbnailImageLength"

    .line 118
    .line 119
    invoke-direct {p0, v0, v7, v5}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v8, "ThumbnailImageWidth"

    .line 123
    .line 124
    invoke-direct {p0, v0, v8, v6}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v1, v3, v4}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v1, v7, v5}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v1, v8, v6}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v2, v4, v3}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v2, v5, v7}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v2, v6, v8}, Landroidx/exifinterface/media/a;->N(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private Z(Landroidx/exifinterface/media/a$c;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    new-array v2, v2, [I

    .line 12
    .line 13
    sget-object v4, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 14
    .line 15
    array-length v5, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    move v7, v6

    .line 18
    :goto_0
    if-ge v7, v5, :cond_0

    .line 19
    .line 20
    aget-object v8, v4, v7

    .line 21
    .line 22
    iget-object v8, v8, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, v8}, Landroidx/exifinterface/media/a;->M(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v7, v7, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v4, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 31
    .line 32
    const-string v5, "StripByteCounts"

    .line 33
    .line 34
    const-string v7, "JPEGInterchangeFormatLength"

    .line 35
    .line 36
    const-string v8, "StripOffsets"

    .line 37
    .line 38
    const-string v9, "JPEGInterchangeFormat"

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-boolean v4, v0, Landroidx/exifinterface/media/a;->j:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-direct {v0, v8}, Landroidx/exifinterface/media/a;->M(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v5}, Landroidx/exifinterface/media/a;->M(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-direct {v0, v9}, Landroidx/exifinterface/media/a;->M(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v7}, Landroidx/exifinterface/media/a;->M(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    move v4, v6

    .line 60
    :goto_2
    sget-object v10, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 61
    .line 62
    array-length v10, v10

    .line 63
    if-ge v4, v10, :cond_5

    .line 64
    .line 65
    iget-object v10, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 66
    .line 67
    aget-object v10, v10, v4

    .line 68
    .line 69
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    array-length v11, v10

    .line 78
    move v12, v6

    .line 79
    :goto_3
    if-ge v12, v11, :cond_4

    .line 80
    .line 81
    aget-object v13, v10, v12

    .line 82
    .line 83
    check-cast v13, Ljava/util/Map$Entry;

    .line 84
    .line 85
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    if-nez v14, :cond_3

    .line 90
    .line 91
    iget-object v14, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 92
    .line 93
    aget-object v14, v14, v4

    .line 94
    .line 95
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 109
    .line 110
    const/4 v10, 0x1

    .line 111
    aget-object v4, v4, v10

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const-wide/16 v11, 0x0

    .line 118
    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 122
    .line 123
    aget-object v4, v4, v6

    .line 124
    .line 125
    sget-object v13, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 126
    .line 127
    aget-object v13, v13, v10

    .line 128
    .line 129
    iget-object v13, v13, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v14, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 132
    .line 133
    invoke-static {v11, v12, v14}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 141
    .line 142
    const/4 v13, 0x2

    .line 143
    aget-object v4, v4, v13

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_7

    .line 150
    .line 151
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 152
    .line 153
    aget-object v4, v4, v6

    .line 154
    .line 155
    sget-object v14, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 156
    .line 157
    aget-object v14, v14, v13

    .line 158
    .line 159
    iget-object v14, v14, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v15, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 162
    .line 163
    invoke-static {v11, v12, v15}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_7
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 171
    .line 172
    const/4 v14, 0x3

    .line 173
    aget-object v4, v4, v14

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_8

    .line 180
    .line 181
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 182
    .line 183
    aget-object v4, v4, v10

    .line 184
    .line 185
    sget-object v15, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 186
    .line 187
    aget-object v15, v15, v14

    .line 188
    .line 189
    iget-object v15, v15, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v14, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 192
    .line 193
    invoke-static {v11, v12, v14}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    :cond_8
    iget-boolean v4, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 201
    .line 202
    const/4 v14, 0x4

    .line 203
    if-eqz v4, :cond_a

    .line 204
    .line 205
    iget-boolean v4, v0, Landroidx/exifinterface/media/a;->j:Z

    .line 206
    .line 207
    if-eqz v4, :cond_9

    .line 208
    .line 209
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 210
    .line 211
    aget-object v4, v4, v14

    .line 212
    .line 213
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 214
    .line 215
    invoke-static {v6, v7}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 223
    .line 224
    aget-object v4, v4, v14

    .line 225
    .line 226
    iget v7, v0, Landroidx/exifinterface/media/a;->m:I

    .line 227
    .line 228
    iget-object v15, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 229
    .line 230
    invoke-static {v7, v15}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 239
    .line 240
    aget-object v4, v4, v14

    .line 241
    .line 242
    iget-object v5, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 243
    .line 244
    invoke-static {v11, v12, v5}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 252
    .line 253
    aget-object v4, v4, v14

    .line 254
    .line 255
    iget v5, v0, Landroidx/exifinterface/media/a;->m:I

    .line 256
    .line 257
    int-to-long v11, v5

    .line 258
    iget-object v5, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 259
    .line 260
    invoke-static {v11, v12, v5}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_a
    :goto_4
    move v4, v6

    .line 268
    :goto_5
    sget-object v5, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 269
    .line 270
    array-length v5, v5

    .line 271
    if-ge v4, v5, :cond_d

    .line 272
    .line 273
    iget-object v5, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 274
    .line 275
    aget-object v5, v5, v4

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    move v7, v6

    .line 286
    :cond_b
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    if-eqz v11, :cond_c

    .line 291
    .line 292
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    check-cast v11, Ljava/util/Map$Entry;

    .line 297
    .line 298
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    check-cast v11, Landroidx/exifinterface/media/a$d;

    .line 303
    .line 304
    invoke-virtual {v11}, Landroidx/exifinterface/media/a$d;->p()I

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-le v11, v14, :cond_b

    .line 309
    .line 310
    add-int/2addr v7, v11

    .line 311
    goto :goto_6

    .line 312
    :cond_c
    aget v5, v2, v4

    .line 313
    .line 314
    add-int/2addr v5, v7

    .line 315
    aput v5, v2, v4

    .line 316
    .line 317
    add-int/lit8 v4, v4, 0x1

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_d
    const/16 v4, 0x8

    .line 321
    .line 322
    move v5, v6

    .line 323
    :goto_7
    sget-object v7, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 324
    .line 325
    array-length v7, v7

    .line 326
    if-ge v5, v7, :cond_f

    .line 327
    .line 328
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 329
    .line 330
    aget-object v7, v7, v5

    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-nez v7, :cond_e

    .line 337
    .line 338
    aput v4, v3, v5

    .line 339
    .line 340
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 341
    .line 342
    aget-object v7, v7, v5

    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    mul-int/lit8 v7, v7, 0xc

    .line 349
    .line 350
    add-int/2addr v7, v13

    .line 351
    add-int/2addr v7, v14

    .line 352
    aget v11, v2, v5

    .line 353
    .line 354
    add-int/2addr v7, v11

    .line 355
    add-int/2addr v4, v7

    .line 356
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_f
    iget-boolean v5, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 360
    .line 361
    if-eqz v5, :cond_11

    .line 362
    .line 363
    iget-boolean v5, v0, Landroidx/exifinterface/media/a;->j:Z

    .line 364
    .line 365
    if-eqz v5, :cond_10

    .line 366
    .line 367
    iget-object v5, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 368
    .line 369
    aget-object v5, v5, v14

    .line 370
    .line 371
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 372
    .line 373
    invoke-static {v4, v7}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_10
    iget-object v5, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 382
    .line 383
    aget-object v5, v5, v14

    .line 384
    .line 385
    int-to-long v7, v4

    .line 386
    iget-object v11, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 387
    .line 388
    invoke-static {v7, v8, v11}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    :goto_8
    iput v4, v0, Landroidx/exifinterface/media/a;->l:I

    .line 396
    .line 397
    iget v5, v0, Landroidx/exifinterface/media/a;->m:I

    .line 398
    .line 399
    add-int/2addr v4, v5

    .line 400
    :cond_11
    iget v5, v0, Landroidx/exifinterface/media/a;->d:I

    .line 401
    .line 402
    if-ne v5, v14, :cond_12

    .line 403
    .line 404
    add-int/lit8 v4, v4, 0x8

    .line 405
    .line 406
    :cond_12
    sget-boolean v5, Landroidx/exifinterface/media/a;->v:Z

    .line 407
    .line 408
    if-eqz v5, :cond_13

    .line 409
    .line 410
    move v5, v6

    .line 411
    :goto_9
    sget-object v7, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 412
    .line 413
    array-length v7, v7

    .line 414
    if-ge v5, v7, :cond_13

    .line 415
    .line 416
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    aget v8, v3, v5

    .line 421
    .line 422
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    iget-object v9, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 427
    .line 428
    aget-object v9, v9, v5

    .line 429
    .line 430
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    aget v11, v2, v5

    .line 439
    .line 440
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    filled-new-array {v7, v8, v9, v11, v12}, [Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    const-string v8, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    .line 453
    .line 454
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    const-string v8, "ExifInterface"

    .line 459
    .line 460
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    add-int/lit8 v5, v5, 0x1

    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_13
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 467
    .line 468
    aget-object v2, v2, v10

    .line 469
    .line 470
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-nez v2, :cond_14

    .line 475
    .line 476
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 477
    .line 478
    aget-object v2, v2, v6

    .line 479
    .line 480
    sget-object v5, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 481
    .line 482
    aget-object v5, v5, v10

    .line 483
    .line 484
    iget-object v5, v5, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 485
    .line 486
    aget v7, v3, v10

    .line 487
    .line 488
    int-to-long v7, v7

    .line 489
    iget-object v9, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 490
    .line 491
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    :cond_14
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 499
    .line 500
    aget-object v2, v2, v13

    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-nez v2, :cond_15

    .line 507
    .line 508
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 509
    .line 510
    aget-object v2, v2, v6

    .line 511
    .line 512
    sget-object v5, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 513
    .line 514
    aget-object v5, v5, v13

    .line 515
    .line 516
    iget-object v5, v5, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 517
    .line 518
    aget v7, v3, v13

    .line 519
    .line 520
    int-to-long v7, v7

    .line 521
    iget-object v9, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 522
    .line 523
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    :cond_15
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 531
    .line 532
    const/4 v5, 0x3

    .line 533
    aget-object v2, v2, v5

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-nez v2, :cond_16

    .line 540
    .line 541
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 542
    .line 543
    aget-object v2, v2, v10

    .line 544
    .line 545
    sget-object v7, Landroidx/exifinterface/media/a;->k0:[Landroidx/exifinterface/media/a$e;

    .line 546
    .line 547
    aget-object v7, v7, v5

    .line 548
    .line 549
    iget-object v7, v7, Landroidx/exifinterface/media/a$e;->b:Ljava/lang/String;

    .line 550
    .line 551
    aget v5, v3, v5

    .line 552
    .line 553
    int-to-long v8, v5

    .line 554
    iget-object v5, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 555
    .line 556
    invoke-static {v8, v9, v5}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    :cond_16
    iget v2, v0, Landroidx/exifinterface/media/a;->d:I

    .line 564
    .line 565
    const/16 v5, 0xe

    .line 566
    .line 567
    if-eq v2, v14, :cond_19

    .line 568
    .line 569
    const/16 v7, 0xd

    .line 570
    .line 571
    if-eq v2, v7, :cond_18

    .line 572
    .line 573
    if-eq v2, v5, :cond_17

    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_17
    sget-object v2, Landroidx/exifinterface/media/a;->N:[B

    .line 577
    .line 578
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_a

    .line 585
    :cond_18
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 586
    .line 587
    .line 588
    sget-object v2, Landroidx/exifinterface/media/a;->I:[B

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 591
    .line 592
    .line 593
    goto :goto_a

    .line 594
    :cond_19
    const v2, 0xffff

    .line 595
    .line 596
    .line 597
    if-gt v4, v2, :cond_25

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 600
    .line 601
    .line 602
    sget-object v2, Landroidx/exifinterface/media/a;->q0:[B

    .line 603
    .line 604
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 605
    .line 606
    .line 607
    :goto_a
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 608
    .line 609
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 610
    .line 611
    if-ne v2, v7, :cond_1a

    .line 612
    .line 613
    const/16 v2, 0x4d4d

    .line 614
    .line 615
    goto :goto_b

    .line 616
    :cond_1a
    const/16 v2, 0x4949

    .line 617
    .line 618
    :goto_b
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->e(S)V

    .line 619
    .line 620
    .line 621
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 622
    .line 623
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->a(Ljava/nio/ByteOrder;)V

    .line 624
    .line 625
    .line 626
    const/16 v2, 0x2a

    .line 627
    .line 628
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 629
    .line 630
    .line 631
    const-wide/16 v7, 0x8

    .line 632
    .line 633
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/a$c;->f(J)V

    .line 634
    .line 635
    .line 636
    move v2, v6

    .line 637
    :goto_c
    sget-object v7, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 638
    .line 639
    array-length v7, v7

    .line 640
    if-ge v2, v7, :cond_22

    .line 641
    .line 642
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 643
    .line 644
    aget-object v7, v7, v2

    .line 645
    .line 646
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-nez v7, :cond_20

    .line 651
    .line 652
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 653
    .line 654
    aget-object v7, v7, v2

    .line 655
    .line 656
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 657
    .line 658
    .line 659
    move-result v7

    .line 660
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 661
    .line 662
    .line 663
    aget v7, v3, v2

    .line 664
    .line 665
    add-int/2addr v7, v13

    .line 666
    iget-object v8, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 667
    .line 668
    aget-object v8, v8, v2

    .line 669
    .line 670
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    mul-int/lit8 v8, v8, 0xc

    .line 675
    .line 676
    add-int/2addr v7, v8

    .line 677
    add-int/2addr v7, v14

    .line 678
    iget-object v8, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 679
    .line 680
    aget-object v8, v8, v2

    .line 681
    .line 682
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 683
    .line 684
    .line 685
    move-result-object v8

    .line 686
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 687
    .line 688
    .line 689
    move-result-object v8

    .line 690
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 691
    .line 692
    .line 693
    move-result v9

    .line 694
    if-eqz v9, :cond_1d

    .line 695
    .line 696
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    check-cast v9, Ljava/util/Map$Entry;

    .line 701
    .line 702
    sget-object v11, Landroidx/exifinterface/media/a;->m0:[Ljava/util/HashMap;

    .line 703
    .line 704
    aget-object v11, v11, v2

    .line 705
    .line 706
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v11

    .line 714
    check-cast v11, Landroidx/exifinterface/media/a$e;

    .line 715
    .line 716
    iget v11, v11, Landroidx/exifinterface/media/a$e;->a:I

    .line 717
    .line 718
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    check-cast v9, Landroidx/exifinterface/media/a$d;

    .line 723
    .line 724
    invoke-virtual {v9}, Landroidx/exifinterface/media/a$d;->p()I

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 729
    .line 730
    .line 731
    iget v11, v9, Landroidx/exifinterface/media/a$d;->a:I

    .line 732
    .line 733
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/a$c;->g(I)V

    .line 734
    .line 735
    .line 736
    iget v11, v9, Landroidx/exifinterface/media/a$d;->b:I

    .line 737
    .line 738
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 739
    .line 740
    .line 741
    if-le v12, v14, :cond_1b

    .line 742
    .line 743
    int-to-long v10, v7

    .line 744
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/a$c;->f(J)V

    .line 745
    .line 746
    .line 747
    add-int/2addr v7, v12

    .line 748
    goto :goto_f

    .line 749
    :cond_1b
    iget-object v9, v9, Landroidx/exifinterface/media/a$d;->d:[B

    .line 750
    .line 751
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 752
    .line 753
    .line 754
    if-ge v12, v14, :cond_1c

    .line 755
    .line 756
    :goto_e
    if-ge v12, v14, :cond_1c

    .line 757
    .line 758
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 759
    .line 760
    .line 761
    add-int/lit8 v12, v12, 0x1

    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_1c
    :goto_f
    const/4 v10, 0x1

    .line 765
    goto :goto_d

    .line 766
    :cond_1d
    if-nez v2, :cond_1e

    .line 767
    .line 768
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 769
    .line 770
    aget-object v7, v7, v14

    .line 771
    .line 772
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 773
    .line 774
    .line 775
    move-result v7

    .line 776
    if-nez v7, :cond_1e

    .line 777
    .line 778
    aget v7, v3, v14

    .line 779
    .line 780
    int-to-long v7, v7

    .line 781
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/a$c;->f(J)V

    .line 782
    .line 783
    .line 784
    const-wide/16 v7, 0x0

    .line 785
    .line 786
    goto :goto_10

    .line 787
    :cond_1e
    const-wide/16 v7, 0x0

    .line 788
    .line 789
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/a$c;->f(J)V

    .line 790
    .line 791
    .line 792
    :goto_10
    iget-object v9, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 793
    .line 794
    aget-object v9, v9, v2

    .line 795
    .line 796
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 797
    .line 798
    .line 799
    move-result-object v9

    .line 800
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 801
    .line 802
    .line 803
    move-result-object v9

    .line 804
    :cond_1f
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 805
    .line 806
    .line 807
    move-result v10

    .line 808
    if-eqz v10, :cond_21

    .line 809
    .line 810
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v10

    .line 814
    check-cast v10, Ljava/util/Map$Entry;

    .line 815
    .line 816
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v10

    .line 820
    check-cast v10, Landroidx/exifinterface/media/a$d;

    .line 821
    .line 822
    iget-object v10, v10, Landroidx/exifinterface/media/a$d;->d:[B

    .line 823
    .line 824
    array-length v11, v10

    .line 825
    if-le v11, v14, :cond_1f

    .line 826
    .line 827
    array-length v11, v10

    .line 828
    invoke-virtual {v1, v10, v6, v11}, Landroidx/exifinterface/media/a$c;->write([BII)V

    .line 829
    .line 830
    .line 831
    goto :goto_11

    .line 832
    :cond_20
    const-wide/16 v7, 0x0

    .line 833
    .line 834
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 835
    .line 836
    const/4 v10, 0x1

    .line 837
    goto/16 :goto_c

    .line 838
    .line 839
    :cond_22
    iget-boolean v2, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 840
    .line 841
    if-eqz v2, :cond_23

    .line 842
    .line 843
    invoke-virtual/range {p0 .. p0}, Landroidx/exifinterface/media/a;->p()[B

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 848
    .line 849
    .line 850
    :cond_23
    iget v2, v0, Landroidx/exifinterface/media/a;->d:I

    .line 851
    .line 852
    if-ne v2, v5, :cond_24

    .line 853
    .line 854
    rem-int/lit8 v2, v4, 0x2

    .line 855
    .line 856
    const/4 v3, 0x1

    .line 857
    if-ne v2, v3, :cond_24

    .line 858
    .line 859
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/a$c;->b(I)V

    .line 860
    .line 861
    .line 862
    :cond_24
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 863
    .line 864
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$c;->a(Ljava/nio/ByteOrder;)V

    .line 865
    .line 866
    .line 867
    return v4

    .line 868
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 869
    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    const-string v3, "Size of exif data ("

    .line 876
    .line 877
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    const-string v3, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"

    .line 884
    .line 885
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v1
.end method

.method private a()V
    .locals 6

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "DateTime"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/exifinterface/media/a$d;->e(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v0, "ImageLength"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v2, v2, v1

    .line 63
    .line 64
    iget-object v5, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    const-string v0, "Orientation"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 82
    .line 83
    aget-object v1, v2, v1

    .line 84
    .line 85
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    const-string v0, "LightSource"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    aget-object v1, v1, v2

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 108
    .line 109
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method private b(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B[B)V
    .locals 2

    .line 1
    :cond_0
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0}, Landroidx/exifinterface/media/a;->c(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private c(Landroidx/exifinterface/media/a$b;Landroidx/exifinterface/media/a$c;[B)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, p3}, Landroidx/exifinterface/media/a$c;->write([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroidx/exifinterface/media/a$c;->c(I)V

    .line 9
    .line 10
    .line 11
    rem-int/lit8 p3, v0, 0x2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p3, v1, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    :cond_0
    invoke-static {p1, p2, v0}, Landroidx/exifinterface/media/b;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private e(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const-string v0, "ISOSpeedRatings"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "ExifInterface"

    .line 16
    .line 17
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    if-ge v0, v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 31
    .line 32
    aget-object v1, v1, v0

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    return-object p1

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 49
    .line 50
    const-string v0, "tag shouldn\'t be null"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method private f(Landroidx/exifinterface/media/a$g;)V
    .locals 12

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    if-lt v1, v2, :cond_c

    .line 8
    .line 9
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$a;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1}, Landroidx/exifinterface/media/a$a;-><init>(Landroidx/exifinterface/media/a;Landroidx/exifinterface/media/a$g;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/exifinterface/media/b$b;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x22

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x1a

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v5, 0x11

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const/16 v0, 0x1d

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v4, 0x1e

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x1f

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const/16 v0, 0x12

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/16 v4, 0x13

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/16 v5, 0x18

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 97
    move-object v4, v0

    .line 98
    move-object v5, v4

    .line 99
    :goto_0
    const/4 v6, 0x0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 103
    .line 104
    aget-object v7, v7, v6

    .line 105
    .line 106
    const-string v8, "ImageWidth"

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    iget-object v10, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 113
    .line 114
    invoke-static {v9, v10}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_2
    if-eqz v4, :cond_3

    .line 122
    .line 123
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 124
    .line 125
    aget-object v7, v7, v6

    .line 126
    .line 127
    const-string v8, "ImageLength"

    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    iget-object v10, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-static {v9, v10}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_3
    const/4 v7, 0x6

    .line 143
    if-eqz v5, :cond_7

    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    const/16 v9, 0x5a

    .line 150
    .line 151
    if-eq v8, v9, :cond_6

    .line 152
    .line 153
    const/16 v9, 0xb4

    .line 154
    .line 155
    if-eq v8, v9, :cond_5

    .line 156
    .line 157
    const/16 v9, 0x10e

    .line 158
    .line 159
    if-eq v8, v9, :cond_4

    .line 160
    .line 161
    const/4 v8, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    const/16 v8, 0x8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    const/4 v8, 0x3

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    move v8, v7

    .line 169
    :goto_1
    iget-object v9, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 170
    .line 171
    aget-object v9, v9, v6

    .line 172
    .line 173
    const-string v10, "Orientation"

    .line 174
    .line 175
    iget-object v11, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 176
    .line 177
    invoke-static {v8, v11}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    :cond_7
    if-eqz v2, :cond_a

    .line 185
    .line 186
    if-eqz v3, :cond_a

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-le v3, v7, :cond_9

    .line 197
    .line 198
    int-to-long v8, v2

    .line 199
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 200
    .line 201
    .line 202
    new-array v8, v7, [B

    .line 203
    .line 204
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 205
    .line 206
    .line 207
    add-int/2addr v2, v7

    .line 208
    add-int/lit8 v3, v3, -0x6

    .line 209
    .line 210
    sget-object v7, Landroidx/exifinterface/media/a;->q0:[B

    .line 211
    .line 212
    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    new-array v3, v3, [B

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 221
    .line 222
    .line 223
    iput v2, p0, Landroidx/exifinterface/media/a;->p:I

    .line 224
    .line 225
    invoke-direct {p0, v3, v6}, Landroidx/exifinterface/media/a;->K([BI)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 230
    .line 231
    const-string v0, "Invalid identifier"

    .line 232
    .line 233
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 238
    .line 239
    const-string v0, "Invalid exif length"

    .line 240
    .line 241
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_a
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 246
    .line 247
    if-eqz p1, :cond_b

    .line 248
    .line 249
    const-string p1, "ExifInterface"

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v3, "Heif meta: "

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, "x"

    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v0, ", rotation "

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .line 286
    .line 287
    :cond_b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :catchall_0
    move-exception p1

    .line 292
    goto :goto_3

    .line 293
    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 294
    .line 295
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 296
    .line 297
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 306
    .line 307
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 308
    .line 309
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1
.end method

.method private g(Landroidx/exifinterface/media/a$b;II)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    sget-boolean v3, Landroidx/exifinterface/media/a;->v:Z

    .line 8
    .line 9
    const-string v4, "ExifInterface"

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v5, "getJpegAttributes starting with: "

    .line 19
    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v5, "Invalid marker: "

    .line 43
    .line 44
    const/4 v6, -0x1

    .line 45
    if-ne v3, v6, :cond_10

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/16 v8, -0x28

    .line 52
    .line 53
    if-ne v7, v8, :cond_f

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    move v5, v3

    .line 57
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ne v7, v6, :cond_e

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    add-int/2addr v5, v7

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    sget-boolean v9, Landroidx/exifinterface/media/a;->v:Z

    .line 70
    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v11, "Found JPEG segment indicator: "

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    and-int/lit16 v11, v8, 0xff

    .line 84
    .line 85
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    add-int/2addr v5, v7

    .line 100
    const/16 v10, -0x27

    .line 101
    .line 102
    if-eq v8, v10, :cond_d

    .line 103
    .line 104
    const/16 v10, -0x26

    .line 105
    .line 106
    if-ne v8, v10, :cond_2

    .line 107
    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    sub-int/2addr v10, v3

    .line 115
    add-int/2addr v5, v3

    .line 116
    if-eqz v9, :cond_3

    .line 117
    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v11, "JPEG segment: "

    .line 124
    .line 125
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    and-int/lit16 v11, v8, 0xff

    .line 129
    .line 130
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v11, " (length: "

    .line 138
    .line 139
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    add-int/lit8 v11, v10, 0x2

    .line 143
    .line 144
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v11, ")"

    .line 148
    .line 149
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :cond_3
    const-string v9, "Invalid length"

    .line 160
    .line 161
    if-ltz v10, :cond_c

    .line 162
    .line 163
    const/16 v11, -0x1f

    .line 164
    .line 165
    const/4 v12, 0x0

    .line 166
    if-eq v8, v11, :cond_8

    .line 167
    .line 168
    const/4 v11, -0x2

    .line 169
    if-eq v8, v11, :cond_6

    .line 170
    .line 171
    packed-switch v8, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    packed-switch v8, :pswitch_data_1

    .line 175
    .line 176
    .line 177
    packed-switch v8, :pswitch_data_2

    .line 178
    .line 179
    .line 180
    packed-switch v8, :pswitch_data_3

    .line 181
    .line 182
    .line 183
    :goto_1
    move-object/from16 v20, v4

    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :pswitch_0
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 188
    .line 189
    .line 190
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 191
    .line 192
    aget-object v7, v7, v2

    .line 193
    .line 194
    const/4 v8, 0x4

    .line 195
    if-eq v2, v8, :cond_4

    .line 196
    .line 197
    const-string v11, "ImageLength"

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const-string v11, "ThumbnailImageLength"

    .line 201
    .line 202
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    int-to-long v12, v12

    .line 207
    iget-object v14, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 208
    .line 209
    invoke-static {v12, v13, v14}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 217
    .line 218
    aget-object v7, v7, v2

    .line 219
    .line 220
    if-eq v2, v8, :cond_5

    .line 221
    .line 222
    const-string v8, "ImageWidth"

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_5
    const-string v8, "ThumbnailImageWidth"

    .line 226
    .line 227
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    int-to-long v11, v11

    .line 232
    iget-object v13, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 233
    .line 234
    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/a$d;->f(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    add-int/lit8 v10, v10, -0x5

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_6
    new-array v8, v10, [B

    .line 245
    .line 246
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 247
    .line 248
    .line 249
    const-string v10, "UserComment"

    .line 250
    .line 251
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-nez v11, :cond_7

    .line 256
    .line 257
    iget-object v11, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 258
    .line 259
    aget-object v7, v11, v7

    .line 260
    .line 261
    new-instance v11, Ljava/lang/String;

    .line 262
    .line 263
    sget-object v13, Landroidx/exifinterface/media/a;->p0:Ljava/nio/charset/Charset;

    .line 264
    .line 265
    invoke-direct {v11, v8, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v11}, Landroidx/exifinterface/media/a$d;->e(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    :cond_7
    move-object/from16 v20, v4

    .line 276
    .line 277
    :goto_4
    move v10, v12

    .line 278
    goto :goto_7

    .line 279
    :cond_8
    new-array v8, v10, [B

    .line 280
    .line 281
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 282
    .line 283
    .line 284
    add-int v11, v5, v10

    .line 285
    .line 286
    sget-object v13, Landroidx/exifinterface/media/a;->q0:[B

    .line 287
    .line 288
    invoke-static {v8, v13}, Landroidx/exifinterface/media/b;->f([B[B)Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-eqz v14, :cond_9

    .line 293
    .line 294
    array-length v7, v13

    .line 295
    invoke-static {v8, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    add-int v5, p2, v5

    .line 300
    .line 301
    array-length v8, v13

    .line 302
    add-int/2addr v5, v8

    .line 303
    iput v5, v0, Landroidx/exifinterface/media/a;->p:I

    .line 304
    .line 305
    invoke-direct {v0, v7, v2}, Landroidx/exifinterface/media/a;->K([BI)V

    .line 306
    .line 307
    .line 308
    new-instance v5, Landroidx/exifinterface/media/a$b;

    .line 309
    .line 310
    invoke-direct {v5, v7}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 311
    .line 312
    .line 313
    invoke-direct {v0, v5}, Landroidx/exifinterface/media/a;->U(Landroidx/exifinterface/media/a$b;)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_9
    sget-object v13, Landroidx/exifinterface/media/a;->r0:[B

    .line 318
    .line 319
    invoke-static {v8, v13}, Landroidx/exifinterface/media/b;->f([B[B)Z

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    if-eqz v14, :cond_a

    .line 324
    .line 325
    array-length v14, v13

    .line 326
    add-int/2addr v5, v14

    .line 327
    array-length v13, v13

    .line 328
    invoke-static {v8, v13, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    const-string v10, "Xmp"

    .line 333
    .line 334
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    if-nez v13, :cond_a

    .line 339
    .line 340
    iget-object v13, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 341
    .line 342
    aget-object v13, v13, v12

    .line 343
    .line 344
    new-instance v15, Landroidx/exifinterface/media/a$d;

    .line 345
    .line 346
    const/16 v16, 0x1

    .line 347
    .line 348
    array-length v14, v8

    .line 349
    move-object/from16 v20, v4

    .line 350
    .line 351
    int-to-long v3, v5

    .line 352
    move v5, v14

    .line 353
    move-object v14, v15

    .line 354
    move-object v6, v15

    .line 355
    move/from16 v15, v16

    .line 356
    .line 357
    move/from16 v16, v5

    .line 358
    .line 359
    move-wide/from16 v17, v3

    .line 360
    .line 361
    move-object/from16 v19, v8

    .line 362
    .line 363
    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/a$d;-><init>(IIJ[B)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    iput-boolean v7, v0, Landroidx/exifinterface/media/a;->u:Z

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_a
    :goto_5
    move-object/from16 v20, v4

    .line 373
    .line 374
    :goto_6
    move v5, v11

    .line 375
    goto :goto_4

    .line 376
    :goto_7
    if-ltz v10, :cond_b

    .line 377
    .line 378
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 379
    .line 380
    .line 381
    add-int/2addr v5, v10

    .line 382
    move-object/from16 v4, v20

    .line 383
    .line 384
    const/4 v3, 0x2

    .line 385
    const/4 v6, -0x1

    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 389
    .line 390
    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v1

    .line 394
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 395
    .line 396
    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v1

    .line 400
    :cond_d
    :goto_8
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 407
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v3, "Invalid marker:"

    .line 414
    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    and-int/lit16 v3, v7, 0xff

    .line 419
    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v1

    .line 435
    :cond_f
    new-instance v1, Ljava/io/IOException;

    .line 436
    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    and-int/lit16 v3, v3, 0xff

    .line 446
    .line 447
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v1

    .line 462
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 463
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    and-int/lit16 v3, v3, 0xff

    .line 473
    .line 474
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v1

    .line 489
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private h(Ljava/io/BufferedInputStream;)I
    .locals 1

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4
    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/exifinterface/media/a;->w([B)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->z([B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x9

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->v([B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/16 p1, 0xc

    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->x([B)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x7

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->A([B)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/16 p1, 0xa

    .line 55
    .line 56
    return p1

    .line 57
    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->y([B)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    const/16 p1, 0xd

    .line 64
    .line 65
    return p1

    .line 66
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->F([B)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    const/16 p1, 0xe

    .line 73
    .line 74
    return p1

    .line 75
    :cond_6
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method private i(Landroidx/exifinterface/media/a$g;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->l(Landroidx/exifinterface/media/a$g;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    const-string v1, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 16
    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    new-instance v1, Landroidx/exifinterface/media/a$g;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/exifinterface/media/a$d;->d:[B

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$g;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroidx/exifinterface/media/a;->F:[B

    .line 32
    .line 33
    array-length v2, p1

    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Landroidx/exifinterface/media/a;->G:[B

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    new-array v4, v4, [B

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-wide/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const-wide/16 v2, 0xc

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/a$g;->g(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 76
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    aget-object p1, p1, v1

    .line 83
    .line 84
    const-string v2, "PreviewImageStart"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 93
    .line 94
    aget-object v1, v2, v1

    .line 95
    .line 96
    const-string v2, "PreviewImageLength"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroidx/exifinterface/media/a$d;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 109
    .line 110
    const/4 v3, 0x5

    .line 111
    aget-object v2, v2, v3

    .line 112
    .line 113
    const-string v4, "JPEGInterchangeFormat"

    .line 114
    .line 115
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 119
    .line 120
    aget-object p1, p1, v3

    .line 121
    .line 122
    const-string v2, "JPEGInterchangeFormatLength"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    aget-object p1, p1, v1

    .line 132
    .line 133
    const-string v1, "AspectFrame"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 140
    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, [I

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    array-length v1, p1

    .line 154
    const/4 v2, 0x4

    .line 155
    if-eq v1, v2, :cond_3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    const/4 v1, 0x2

    .line 159
    aget v1, p1, v1

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    aget v3, p1, v2

    .line 163
    .line 164
    if-le v1, v3, :cond_6

    .line 165
    .line 166
    const/4 v4, 0x3

    .line 167
    aget v4, p1, v4

    .line 168
    .line 169
    aget p1, p1, v0

    .line 170
    .line 171
    if-le v4, p1, :cond_6

    .line 172
    .line 173
    sub-int/2addr v1, v3

    .line 174
    add-int/2addr v1, v0

    .line 175
    sub-int/2addr v4, p1

    .line 176
    add-int/2addr v4, v0

    .line 177
    if-ge v1, v4, :cond_4

    .line 178
    .line 179
    add-int/2addr v1, v4

    .line 180
    sub-int v4, v1, v4

    .line 181
    .line 182
    sub-int/2addr v1, v4

    .line 183
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 184
    .line 185
    invoke-static {v1, p1}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 190
    .line 191
    invoke-static {v4, v0}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 196
    .line 197
    aget-object v1, v1, v2

    .line 198
    .line 199
    const-string v3, "ImageWidth"

    .line 200
    .line 201
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 205
    .line 206
    aget-object p1, p1, v2

    .line 207
    .line 208
    const-string v1, "ImageLength"

    .line 209
    .line 210
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v1, "Invalid aspect frame values. frame="

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v0, "ExifInterface"

    .line 236
    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_6
    :goto_2
    return-void
.end method

.method private j(Landroidx/exifinterface/media/a$b;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getPngAttributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ExifInterface"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroidx/exifinterface/media/a;->H:[B

    .line 33
    .line 34
    array-length v1, v0

    .line 35
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 36
    .line 37
    .line 38
    array-length v0, v0

    .line 39
    const/4 v1, 0x0

    .line 40
    add-int/2addr v0, v1

    .line 41
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x4

    .line 46
    add-int/2addr v0, v3

    .line 47
    new-array v4, v3, [B

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 50
    .line 51
    .line 52
    add-int/2addr v0, v3

    .line 53
    const/16 v3, 0x10

    .line 54
    .line 55
    if-ne v0, v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Landroidx/exifinterface/media/a;->J:[B

    .line 58
    .line 59
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/a;->K:[B

    .line 75
    .line 76
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    sget-object v3, Landroidx/exifinterface/media/a;->I:[B

    .line 84
    .line 85
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    new-array v2, v2, [B

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    new-instance v3, Ljava/util/zip/CRC32;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    long-to-int v4, v4

    .line 116
    if-ne v4, p1, :cond_4

    .line 117
    .line 118
    iput v0, p0, Landroidx/exifinterface/media/a;->p:I

    .line 119
    .line 120
    invoke-direct {p0, v2, v1}, Landroidx/exifinterface/media/a;->K([BI)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->Y()V

    .line 124
    .line 125
    .line 126
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 127
    .line 128
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->U(Landroidx/exifinterface/media/a$b;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void

    .line 135
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, ", calculated CRC value: "

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_5
    add-int/lit8 v2, v2, 0x4

    .line 171
    .line 172
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->f(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    add-int/2addr v0, v2

    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 179
    .line 180
    const-string v0, "Encountered corrupt PNG file."

    .line 181
    .line 182
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

.method private k(Landroidx/exifinterface/media/a$b;)V
    .locals 7

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    const-string v1, "ExifInterface"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "getRafAttributes starting with: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    const/16 v2, 0x54

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    new-array v3, v2, [B

    .line 34
    .line 35
    new-array v4, v2, [B

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    new-array v4, v4, [B

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    sub-int v5, v3, v5

    .line 79
    .line 80
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Landroidx/exifinterface/media/a$b;

    .line 87
    .line 88
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 89
    .line 90
    .line 91
    const/4 v4, 0x5

    .line 92
    invoke-direct {p0, v5, v3, v4}, Landroidx/exifinterface/media/a;->g(Landroidx/exifinterface/media/a$b;II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->b()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    sub-int/2addr v2, v3

    .line 100
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 101
    .line 102
    .line 103
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "numberOfDirectoryEntry: "

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_1
    const/4 v0, 0x0

    .line 135
    move v3, v0

    .line 136
    :goto_0
    if-ge v3, v2, :cond_4

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    sget-object v6, Landroidx/exifinterface/media/a;->e0:Landroidx/exifinterface/media/a$e;

    .line 147
    .line 148
    iget v6, v6, Landroidx/exifinterface/media/a$e;->a:I

    .line 149
    .line 150
    if-ne v4, v6, :cond_3

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 161
    .line 162
    invoke-static {v2, v3}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v4, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 167
    .line 168
    invoke-static {p1, v4}, Landroidx/exifinterface/media/a$d;->j(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iget-object v5, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 173
    .line 174
    aget-object v5, v5, v0

    .line 175
    .line 176
    const-string v6, "ImageLength"

    .line 177
    .line 178
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 182
    .line 183
    aget-object v0, v3, v0

    .line 184
    .line 185
    const-string v3, "ImageWidth"

    .line 186
    .line 187
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 191
    .line 192
    if-eqz v0, :cond_2

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v3, "Updated to length: "

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, ", width: "

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_2
    return-void

    .line 223
    :cond_3
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_4
    return-void
.end method

.method private l(Landroidx/exifinterface/media/a$g;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$b;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->X(Landroidx/exifinterface/media/a$g;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->X(Landroidx/exifinterface/media/a$g;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->X(Landroidx/exifinterface/media/a$g;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->Y()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object p1, p1, v0

    .line 32
    .line 33
    const-string v1, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance v1, Landroidx/exifinterface/media/a$g;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/exifinterface/media/a$d;->d:[B

    .line 46
    .line 47
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$g;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x6

    .line 56
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x9

    .line 60
    .line 61
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->L(Landroidx/exifinterface/media/a$g;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 65
    .line 66
    aget-object p1, v1, p1

    .line 67
    .line 68
    const-string v1, "ColorSpace"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 79
    .line 80
    aget-object v0, v2, v0

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method private m(Landroidx/exifinterface/media/a$g;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getRw2Attributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ExifInterface"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->l(Landroidx/exifinterface/media/a$g;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    const-string v1, "JpgFromRaw"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    new-instance v1, Landroidx/exifinterface/media/a$b;

    .line 46
    .line 47
    iget-object v2, p1, Landroidx/exifinterface/media/a$d;->d:[B

    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 50
    .line 51
    .line 52
    iget-wide v2, p1, Landroidx/exifinterface/media/a$d;->c:J

    .line 53
    .line 54
    long-to-int p1, v2

    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {p0, v1, p1, v2}, Landroidx/exifinterface/media/a;->g(Landroidx/exifinterface/media/a$b;II)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 60
    .line 61
    aget-object p1, p1, v0

    .line 62
    .line 63
    const-string v0, "ISO"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroidx/exifinterface/media/a$d;

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    const-string v2, "PhotographicSensitivity"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 89
    .line 90
    aget-object v0, v0, v1

    .line 91
    .line 92
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method

.method private n(Landroidx/exifinterface/media/a$g;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/exifinterface/media/a;->q0:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->available()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 14
    .line 15
    .line 16
    array-length p1, v0

    .line 17
    iput p1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->K([BI)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private q(Landroidx/exifinterface/media/a$b;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getWebpAttributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ExifInterface"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroidx/exifinterface/media/a;->L:[B

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, 0x8

    .line 43
    .line 44
    sget-object v1, Landroidx/exifinterface/media/a;->M:[B

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 48
    .line 49
    .line 50
    array-length v1, v1

    .line 51
    add-int/lit8 v1, v1, 0x8

    .line 52
    .line 53
    :goto_0
    const/4 v2, 0x4

    .line 54
    :try_start_0
    new-array v3, v2, [B

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 57
    .line 58
    .line 59
    add-int/2addr v1, v2

    .line 60
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    add-int/2addr v1, v2

    .line 65
    sget-object v2, Landroidx/exifinterface/media/a;->N:[B

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    new-array v0, v4, [B

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 76
    .line 77
    .line 78
    iput v1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/a;->K([BI)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 85
    .line 86
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->U(Landroidx/exifinterface/media/a$b;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    rem-int/lit8 v2, v4, 0x2

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    if-ne v2, v3, :cond_2

    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    :cond_2
    add-int/2addr v1, v4

    .line 101
    if-ne v1, v0, :cond_3

    .line 102
    .line 103
    :goto_1
    return-void

    .line 104
    :cond_3
    if-gt v1, v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 111
    .line 112
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 119
    .line 120
    const-string v0, "Encountered corrupt WebP file."

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method private static r(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, -0x1

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    aget-object v0, p0, v2

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/exifinterface/media/a;->r(Ljava/lang/String;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v4, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    :goto_0
    array-length v1, p0

    .line 43
    if-ge v3, v1, :cond_8

    .line 44
    .line 45
    aget-object v1, p0, v3

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/exifinterface/media/a;->r(Ljava/lang/String;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/lang/Integer;

    .line 66
    .line 67
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v2, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eq v4, v6, :cond_4

    .line 95
    .line 96
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Ljava/lang/Integer;

    .line 99
    .line 100
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Ljava/lang/Integer;

    .line 111
    .line 112
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move v1, v6

    .line 130
    :goto_3
    if-ne v2, v6, :cond_5

    .line 131
    .line 132
    if-ne v1, v6, :cond_5

    .line 133
    .line 134
    new-instance p0, Landroid/util/Pair;

    .line 135
    .line 136
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_5
    if-ne v2, v6, :cond_6

    .line 141
    .line 142
    new-instance v0, Landroid/util/Pair;

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    if-ne v1, v6, :cond_7

    .line 153
    .line 154
    new-instance v0, Landroid/util/Pair;

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    return-object v0

    .line 167
    :cond_9
    const-string v0, "/"

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const-wide/16 v8, 0x0

    .line 174
    .line 175
    if-eqz v1, :cond_f

    .line 176
    .line 177
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    array-length v0, p0

    .line 182
    if-ne v0, v4, :cond_e

    .line 183
    .line 184
    :try_start_0
    aget-object v0, p0, v2

    .line 185
    .line 186
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    double-to-long v0, v0

    .line 191
    aget-object p0, p0, v3

    .line 192
    .line 193
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    double-to-long v2, v2

    .line 198
    cmp-long p0, v0, v8

    .line 199
    .line 200
    const/16 v4, 0xa

    .line 201
    .line 202
    if-ltz p0, :cond_d

    .line 203
    .line 204
    cmp-long p0, v2, v8

    .line 205
    .line 206
    if-gez p0, :cond_a

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    const-wide/32 v8, 0x7fffffff

    .line 210
    .line 211
    .line 212
    cmp-long p0, v0, v8

    .line 213
    .line 214
    const/4 v0, 0x5

    .line 215
    if-gtz p0, :cond_c

    .line 216
    .line 217
    cmp-long p0, v2, v8

    .line 218
    .line 219
    if-lez p0, :cond_b

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_b
    new-instance p0, Landroid/util/Pair;

    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    .line 237
    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    return-object p0

    .line 246
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    .line 247
    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    .line 255
    return-object p0

    .line 256
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    .line 257
    .line 258
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-object p0

    .line 262
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    cmp-long v1, v1, v8

    .line 275
    .line 276
    const/4 v2, 0x4

    .line 277
    if-ltz v1, :cond_10

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    const-wide/32 v10, 0xffff

    .line 284
    .line 285
    .line 286
    cmp-long v1, v3, v10

    .line 287
    .line 288
    if-gtz v1, :cond_10

    .line 289
    .line 290
    new-instance v0, Landroid/util/Pair;

    .line 291
    .line 292
    const/4 v1, 0x3

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-object v0

    .line 305
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    cmp-long v0, v0, v8

    .line 310
    .line 311
    if-gez v0, :cond_11

    .line 312
    .line 313
    new-instance v0, Landroid/util/Pair;

    .line 314
    .line 315
    const/16 v1, 0x9

    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    return-object v0

    .line 325
    :cond_11
    new-instance v0, Landroid/util/Pair;

    .line 326
    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    .line 333
    .line 334
    return-object v0

    .line 335
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 336
    .line 337
    .line 338
    new-instance p0, Landroid/util/Pair;

    .line 339
    .line 340
    const/16 v0, 0xc

    .line 341
    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    .line 348
    .line 349
    return-object p0

    .line 350
    :catch_2
    new-instance p0, Landroid/util/Pair;

    .line 351
    .line 352
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    return-object p0
.end method

.method private s(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$d;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/a$d;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/a$d;->m(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/a;->q:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_2

    .line 42
    .line 43
    if-lez p2, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/exifinterface/media/a;->i:Z

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    new-array v1, p2, [B

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Landroidx/exifinterface/media/a;->n:[B

    .line 69
    .line 70
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/a;->l:I

    .line 71
    .line 72
    iput p2, p0, Landroidx/exifinterface/media/a;->m:I

    .line 73
    .line 74
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/a;->v:Z

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", length: "

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "ExifInterface"

    .line 104
    .line 105
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method private t(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, " bytes."

    .line 8
    .line 9
    const-string v4, "StripOffsets"

    .line 10
    .line 11
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/exifinterface/media/a$d;

    .line 16
    .line 17
    const-string v5, "StripByteCounts"

    .line 18
    .line 19
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/exifinterface/media/a$d;

    .line 24
    .line 25
    if-eqz v4, :cond_a

    .line 26
    .line 27
    if-eqz v2, :cond_a

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Landroidx/exifinterface/media/b;->c(Ljava/lang/Object;)[J

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroidx/exifinterface/media/b;->c(Ljava/lang/Object;)[J

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v5, "ExifInterface"

    .line 50
    .line 51
    if-eqz v4, :cond_9

    .line 52
    .line 53
    array-length v6, v4

    .line 54
    if-nez v6, :cond_0

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_0
    if-eqz v2, :cond_8

    .line 59
    .line 60
    array-length v6, v2

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    array-length v6, v4

    .line 66
    array-length v7, v2

    .line 67
    if-eq v6, v7, :cond_2

    .line 68
    .line 69
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 70
    .line 71
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    array-length v6, v2

    .line 76
    const-wide/16 v8, 0x0

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    :goto_0
    if-ge v10, v6, :cond_3

    .line 80
    .line 81
    aget-wide v11, v2, v10

    .line 82
    .line 83
    add-long/2addr v8, v11

    .line 84
    add-int/lit8 v10, v10, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    long-to-int v6, v8

    .line 88
    new-array v8, v6, [B

    .line 89
    .line 90
    const/4 v9, 0x1

    .line 91
    iput-boolean v9, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 92
    .line 93
    iput-boolean v9, v0, Landroidx/exifinterface/media/a;->j:Z

    .line 94
    .line 95
    iput-boolean v9, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v12, 0x0

    .line 100
    :goto_1
    array-length v13, v4

    .line 101
    if-ge v10, v13, :cond_7

    .line 102
    .line 103
    aget-wide v13, v4, v10

    .line 104
    .line 105
    long-to-int v13, v13

    .line 106
    aget-wide v14, v2, v10

    .line 107
    .line 108
    long-to-int v14, v14

    .line 109
    array-length v15, v4

    .line 110
    sub-int/2addr v15, v9

    .line 111
    if-ge v10, v15, :cond_4

    .line 112
    .line 113
    add-int v15, v13, v14

    .line 114
    .line 115
    move-object/from16 v16, v8

    .line 116
    .line 117
    int-to-long v7, v15

    .line 118
    add-int/lit8 v15, v10, 0x1

    .line 119
    .line 120
    aget-wide v17, v4, v15

    .line 121
    .line 122
    cmp-long v7, v7, v17

    .line 123
    .line 124
    if-eqz v7, :cond_5

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    iput-boolean v7, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    move-object/from16 v16, v8

    .line 131
    .line 132
    :cond_5
    :goto_2
    sub-int/2addr v13, v11

    .line 133
    if-gez v13, :cond_6

    .line 134
    .line 135
    const-string v1, "Invalid strip offset value"

    .line 136
    .line 137
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    :try_start_0
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/a$b;->f(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .line 143
    .line 144
    add-int/2addr v11, v13

    .line 145
    new-array v7, v14, [B

    .line 146
    .line 147
    :try_start_1
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/a$b;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    add-int/2addr v11, v14

    .line 151
    move-object/from16 v8, v16

    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    invoke-static {v7, v13, v8, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    .line 156
    .line 157
    add-int/2addr v12, v14

    .line 158
    add-int/lit8 v10, v10, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v2, "Failed to read "

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v2, "Failed to skip "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_7
    iput-object v8, v0, Landroidx/exifinterface/media/a;->n:[B

    .line 210
    .line 211
    iget-boolean v1, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 212
    .line 213
    if-eqz v1, :cond_a

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    aget-wide v1, v4, v1

    .line 217
    .line 218
    long-to-int v1, v1

    .line 219
    iput v1, v0, Landroidx/exifinterface/media/a;->l:I

    .line 220
    .line 221
    iput v6, v0, Landroidx/exifinterface/media/a;->m:I

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    :goto_3
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 225
    .line 226
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_9
    :goto_4
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 231
    .line 232
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_a
    :goto_5
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroidx/exifinterface/media/a;->B(Ljava/io/FileDescriptor;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 31
    .line 32
    :goto_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->G(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    move-object v0, v1

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    const-string v0, "filename cannot be null"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method private v([B)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-long v3, v1

    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v5, v1, [B

    .line 15
    .line 16
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 17
    .line 18
    .line 19
    sget-object v6, Landroidx/exifinterface/media/a;->C:[B

    .line 20
    .line 21
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    const-wide/16 v5, 0x1

    .line 32
    .line 33
    cmp-long v7, v3, v5

    .line 34
    .line 35
    const-wide/16 v8, 0x8

    .line 36
    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readLong()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    const-wide/16 v10, 0x10

    .line 44
    .line 45
    cmp-long v7, v3, v10

    .line 46
    .line 47
    if-gez v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    move-wide v10, v8

    .line 54
    :cond_2
    :try_start_3
    array-length v7, p1

    .line 55
    int-to-long v12, v7

    .line 56
    cmp-long v7, v3, v12

    .line 57
    .line 58
    if-lez v7, :cond_3

    .line 59
    .line 60
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    int-to-long v3, p1

    .line 62
    :cond_3
    sub-long/2addr v3, v10

    .line 63
    cmp-long p1, v3, v8

    .line 64
    .line 65
    if-gez p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_4
    :try_start_4
    new-array p1, v1, [B

    .line 72
    .line 73
    const-wide/16 v7, 0x0

    .line 74
    .line 75
    move v1, v0

    .line 76
    move v9, v1

    .line 77
    :goto_0
    const-wide/16 v10, 0x4

    .line 78
    .line 79
    div-long v10, v3, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    .line 81
    cmp-long v10, v7, v10

    .line 82
    .line 83
    if-gez v10, :cond_9

    .line 84
    .line 85
    :try_start_5
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/a$b;->readFully([B)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    .line 87
    .line 88
    cmp-long v10, v7, v5

    .line 89
    .line 90
    if-nez v10, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    :try_start_6
    sget-object v10, Landroidx/exifinterface/media/a;->D:[B

    .line 94
    .line 95
    invoke-static {p1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    const/4 v11, 0x1

    .line 100
    if-eqz v10, :cond_6

    .line 101
    .line 102
    move v1, v11

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    sget-object v10, Landroidx/exifinterface/media/a;->E:[B

    .line 105
    .line 106
    invoke-static {p1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 107
    .line 108
    .line 109
    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    if-eqz v10, :cond_7

    .line 111
    .line 112
    move v9, v11

    .line 113
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 114
    .line 115
    if-eqz v9, :cond_8

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 118
    .line 119
    .line 120
    return v11

    .line 121
    :cond_8
    :goto_2
    add-long/2addr v7, v5

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 124
    .line 125
    .line 126
    return v0

    .line 127
    :cond_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catchall_0
    move-exception p1

    .line 132
    move-object v1, v2

    .line 133
    goto :goto_5

    .line 134
    :catch_1
    move-exception p1

    .line 135
    move-object v1, v2

    .line 136
    goto :goto_3

    .line 137
    :catchall_1
    move-exception p1

    .line 138
    goto :goto_5

    .line 139
    :catch_2
    move-exception p1

    .line 140
    :goto_3
    :try_start_7
    sget-boolean v2, Landroidx/exifinterface/media/a;->v:Z

    .line 141
    .line 142
    if-eqz v2, :cond_a

    .line 143
    .line 144
    const-string v2, "ExifInterface"

    .line 145
    .line 146
    const-string v3, "Exception parsing HEIF file type box."

    .line 147
    .line 148
    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 149
    .line 150
    .line 151
    :cond_a
    if-eqz v1, :cond_b

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 154
    .line 155
    .line 156
    :cond_b
    :goto_4
    return v0

    .line 157
    :goto_5
    if-eqz v1, :cond_c

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 160
    .line 161
    .line 162
    :cond_c
    throw p1
.end method

.method private static w([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->B:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p0, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private x([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/a;->J(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/a$b;->e(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    const/16 v1, 0x4f52

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x5352

    .line 26
    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-object v1, v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    .line 44
    .line 45
    :cond_2
    throw p1

    .line 46
    :catch_1
    :goto_1
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 49
    .line 50
    .line 51
    :cond_3
    return v0
.end method

.method private y([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->H:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p1, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method private z([B)Z
    .locals 5

    .line 1
    const-string v0, "FUJIFILMCCD-RAW"

    .line 2
    .line 3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-byte v3, p1, v2

    .line 17
    .line 18
    aget-byte v4, v0, v2

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1
.end method


# virtual methods
.method public P()V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/exifinterface/media/a;->d:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/exifinterface/media/a;->D(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 19
    .line 20
    const-string v1, "ExifInterface does not support saving attributes for the current input."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/exifinterface/media/a;->i:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/exifinterface/media/a;->j:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/exifinterface/media/a;->k:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/exifinterface/media/a;->t:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/exifinterface/media/a;->o()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Landroidx/exifinterface/media/a;->n:[B

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    :try_start_0
    const-string v2, "temp"

    .line 58
    .line 59
    const-string v3, "tmp"

    .line 60
    .line 61
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 66
    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    .line 72
    .line 73
    iget-object v6, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v3, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 80
    .line 81
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    .line 82
    .line 83
    invoke-static {v3, v4, v5, v6}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/io/FileInputStream;

    .line 87
    .line 88
    iget-object v6, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 89
    .line 90
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 91
    .line 92
    .line 93
    :goto_2
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 94
    .line 95
    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-static {v3, v6}, Landroidx/exifinterface/media/b;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    .line 109
    .line 110
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_4
    iget-object v7, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v7, :cond_5

    .line 116
    .line 117
    new-instance v7, Ljava/io/FileOutputStream;

    .line 118
    .line 119
    iget-object v8, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget-object v7, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 126
    .line 127
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    .line 128
    .line 129
    invoke-static {v7, v4, v5, v8}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J

    .line 130
    .line 131
    .line 132
    new-instance v7, Ljava/io/FileOutputStream;

    .line 133
    .line 134
    iget-object v8, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 135
    .line 136
    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    .line 138
    .line 139
    :goto_3
    :try_start_5
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 140
    .line 141
    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    .line 143
    .line 144
    :try_start_6
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 145
    .line 146
    invoke-direct {v9, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    .line 148
    .line 149
    :try_start_7
    iget v10, p0, Landroidx/exifinterface/media/a;->d:I

    .line 150
    .line 151
    const/4 v11, 0x4

    .line 152
    if-ne v10, v11, :cond_6

    .line 153
    .line 154
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/a;->Q(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    const/16 v11, 0xd

    .line 159
    .line 160
    if-ne v10, v11, :cond_7

    .line 161
    .line 162
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/a;->R(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    const/16 v11, 0xe

    .line 167
    .line 168
    if-ne v10, v11, :cond_8

    .line 169
    .line 170
    invoke-direct {p0, v8, v9}, Landroidx/exifinterface/media/a;->S(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_4
    invoke-static {v8}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v9}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 180
    .line 181
    .line 182
    iput-object v1, p0, Landroidx/exifinterface/media/a;->n:[B

    .line 183
    .line 184
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    move-object v12, v6

    .line 187
    move-object v6, v1

    .line 188
    move-object v1, v12

    .line 189
    goto :goto_6

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    move-object v9, v1

    .line 192
    goto/16 :goto_b

    .line 193
    .line 194
    :catch_1
    move-exception v9

    .line 195
    move-object v12, v9

    .line 196
    move-object v9, v1

    .line 197
    move-object v1, v6

    .line 198
    move-object v6, v12

    .line 199
    goto :goto_6

    .line 200
    :catch_2
    move-exception v8

    .line 201
    move-object v9, v1

    .line 202
    move-object v1, v6

    .line 203
    move-object v6, v8

    .line 204
    move-object v8, v9

    .line 205
    goto :goto_6

    .line 206
    :catch_3
    move-exception v7

    .line 207
    move-object v8, v1

    .line 208
    move-object v9, v8

    .line 209
    move-object v1, v6

    .line 210
    goto :goto_5

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    move-object v9, v1

    .line 213
    goto/16 :goto_c

    .line 214
    .line 215
    :catch_4
    move-exception v7

    .line 216
    move-object v8, v1

    .line 217
    move-object v9, v8

    .line 218
    :goto_5
    move-object v6, v7

    .line 219
    move-object v7, v9

    .line 220
    :goto_6
    :try_start_8
    new-instance v10, Ljava/io/FileInputStream;

    .line 221
    .line 222
    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 223
    .line 224
    .line 225
    :try_start_9
    iget-object v1, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 226
    .line 227
    if-nez v1, :cond_9

    .line 228
    .line 229
    iget-object v1, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 230
    .line 231
    sget v11, Landroid/system/OsConstants;->SEEK_SET:I

    .line 232
    .line 233
    invoke-static {v1, v4, v5, v11}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J

    .line 234
    .line 235
    .line 236
    new-instance v1, Ljava/io/FileOutputStream;

    .line 237
    .line 238
    iget-object v4, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 239
    .line 240
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_9
    new-instance v1, Ljava/io/FileOutputStream;

    .line 245
    .line 246
    iget-object v4, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 247
    .line 248
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_7
    move-object v7, v1

    .line 252
    invoke-static {v10, v7}, Landroidx/exifinterface/media/b;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 253
    .line 254
    .line 255
    :try_start_a
    invoke-static {v10}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v7}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Ljava/io/IOException;

    .line 262
    .line 263
    const-string v1, "Failed to save new file"

    .line 264
    .line 265
    invoke-direct {v0, v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    goto :goto_9

    .line 271
    :catch_5
    move-exception v1

    .line 272
    goto :goto_8

    .line 273
    :catchall_3
    move-exception v0

    .line 274
    goto :goto_a

    .line 275
    :catch_6
    move-exception v3

    .line 276
    move-object v10, v1

    .line 277
    move-object v1, v3

    .line 278
    :goto_8
    :try_start_b
    new-instance v3, Ljava/io/IOException;

    .line 279
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string v5, "Failed to save new file. Original file is stored in "

    .line 286
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-direct {v3, v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 305
    :catchall_4
    move-exception v1

    .line 306
    move v3, v0

    .line 307
    move-object v0, v1

    .line 308
    :goto_9
    move-object v1, v10

    .line 309
    :goto_a
    :try_start_c
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v7}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 313
    .line 314
    .line 315
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 316
    :catchall_5
    move-exception v0

    .line 317
    :goto_b
    move-object v1, v8

    .line 318
    :goto_c
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v9}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 322
    .line 323
    .line 324
    if-nez v3, :cond_a

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 327
    .line 328
    .line 329
    :cond_a
    throw v0

    .line 330
    :catchall_6
    move-exception v0

    .line 331
    goto :goto_d

    .line 332
    :catch_7
    move-exception v0

    .line 333
    goto :goto_e

    .line 334
    :catchall_7
    move-exception v0

    .line 335
    move-object v6, v1

    .line 336
    :goto_d
    move-object v1, v3

    .line 337
    goto :goto_10

    .line 338
    :catch_8
    move-exception v0

    .line 339
    move-object v6, v1

    .line 340
    :goto_e
    move-object v1, v3

    .line 341
    goto :goto_f

    .line 342
    :catchall_8
    move-exception v0

    .line 343
    move-object v6, v1

    .line 344
    goto :goto_10

    .line 345
    :catch_9
    move-exception v0

    .line 346
    move-object v6, v1

    .line 347
    :goto_f
    :try_start_d
    new-instance v2, Ljava/io/IOException;

    .line 348
    .line 349
    const-string v3, "Failed to copy original file to temp file"

    .line 350
    .line 351
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 355
    :catchall_9
    move-exception v0

    .line 356
    :goto_10
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v6}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 364
    .line 365
    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-eqz v1, :cond_1c

    .line 8
    .line 9
    const-string v3, "DateTime"

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, " : "

    .line 16
    .line 17
    const-string v5, "Invalid value for "

    .line 18
    .line 19
    const-string v6, "ExifInterface"

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    const-string v3, "DateTimeOriginal"

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v3, "DateTimeDigitized"

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    :cond_0
    if-eqz v2, :cond_3

    .line 40
    .line 41
    sget-object v3, Landroidx/exifinterface/media/a;->u0:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sget-object v7, Landroidx/exifinterface/media/a;->v0:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/16 v9, 0x13

    .line 66
    .line 67
    if-ne v8, v9, :cond_2

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-eqz v7, :cond_3

    .line 75
    .line 76
    const-string v3, "-"

    .line 77
    .line 78
    const-string v7, ":"

    .line 79
    .line 80
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    :goto_1
    const-string v3, "ISOSpeedRatings"

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    sget-boolean v1, Landroidx/exifinterface/media/a;->v:Z

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    const-string v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 123
    .line 124
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_4
    const-string v1, "PhotographicSensitivity"

    .line 128
    .line 129
    :cond_5
    const/4 v3, 0x2

    .line 130
    const/4 v7, 0x1

    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    sget-object v8, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_8

    .line 140
    .line 141
    const-string v8, "GPSTimeStamp"

    .line 142
    .line 143
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_7

    .line 148
    .line 149
    sget-object v8, Landroidx/exifinterface/media/a;->t0:Ljava/util/regex/Pattern;

    .line 150
    .line 151
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-nez v9, :cond_6

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, "/1,"

    .line 203
    .line 204
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const/4 v4, 0x3

    .line 222
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v4, "/1"

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    goto :goto_2

    .line 243
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 244
    .line 245
    .line 246
    move-result-wide v8

    .line 247
    new-instance v10, Landroidx/exifinterface/media/a$f;

    .line 248
    .line 249
    invoke-direct {v10, v8, v9}, Landroidx/exifinterface/media/a$f;-><init>(D)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10}, Landroidx/exifinterface/media/a$f;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_2

    .line 257
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_8
    :goto_2
    const/4 v4, 0x0

    .line 283
    move v5, v4

    .line 284
    :goto_3
    sget-object v8, Landroidx/exifinterface/media/a;->j0:[[Landroidx/exifinterface/media/a$e;

    .line 285
    .line 286
    array-length v8, v8

    .line 287
    if-ge v5, v8, :cond_1b

    .line 288
    .line 289
    const/4 v8, 0x4

    .line 290
    if-ne v5, v8, :cond_9

    .line 291
    .line 292
    iget-boolean v8, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 293
    .line 294
    if-nez v8, :cond_9

    .line 295
    .line 296
    goto/16 :goto_10

    .line 297
    .line 298
    :cond_9
    sget-object v8, Landroidx/exifinterface/media/a;->m0:[Ljava/util/HashMap;

    .line 299
    .line 300
    aget-object v8, v8, v5

    .line 301
    .line 302
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    check-cast v8, Landroidx/exifinterface/media/a$e;

    .line 307
    .line 308
    if-eqz v8, :cond_19

    .line 309
    .line 310
    if-nez v2, :cond_a

    .line 311
    .line 312
    iget-object v8, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 313
    .line 314
    aget-object v8, v8, v5

    .line 315
    .line 316
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    goto/16 :goto_10

    .line 320
    .line 321
    :cond_a
    invoke-static {v2}, Landroidx/exifinterface/media/a;->r(Ljava/lang/String;)Landroid/util/Pair;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    iget v10, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 326
    .line 327
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v11, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    const/4 v12, -0x1

    .line 336
    if-eq v10, v11, :cond_12

    .line 337
    .line 338
    iget v10, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 339
    .line 340
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v11, Ljava/lang/Integer;

    .line 343
    .line 344
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    if-ne v10, v11, :cond_b

    .line 349
    .line 350
    goto/16 :goto_7

    .line 351
    .line 352
    :cond_b
    iget v10, v8, Landroidx/exifinterface/media/a$e;->d:I

    .line 353
    .line 354
    if-eq v10, v12, :cond_d

    .line 355
    .line 356
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v11, Ljava/lang/Integer;

    .line 359
    .line 360
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v11

    .line 364
    if-eq v10, v11, :cond_c

    .line 365
    .line 366
    iget v10, v8, Landroidx/exifinterface/media/a$e;->d:I

    .line 367
    .line 368
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v11, Ljava/lang/Integer;

    .line 371
    .line 372
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-ne v10, v11, :cond_d

    .line 377
    .line 378
    :cond_c
    iget v8, v8, Landroidx/exifinterface/media/a$e;->d:I

    .line 379
    .line 380
    goto/16 :goto_8

    .line 381
    .line 382
    :cond_d
    iget v10, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 383
    .line 384
    if-eq v10, v7, :cond_11

    .line 385
    .line 386
    const/4 v11, 0x7

    .line 387
    if-eq v10, v11, :cond_11

    .line 388
    .line 389
    if-ne v10, v3, :cond_e

    .line 390
    .line 391
    goto/16 :goto_6

    .line 392
    .line 393
    :cond_e
    sget-boolean v10, Landroidx/exifinterface/media/a;->v:Z

    .line 394
    .line 395
    if-eqz v10, :cond_19

    .line 396
    .line 397
    new-instance v10, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v11, "Given tag ("

    .line 403
    .line 404
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v11, ") value didn\'t match with one of expected formats: "

    .line 411
    .line 412
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    sget-object v11, Landroidx/exifinterface/media/a;->W:[Ljava/lang/String;

    .line 416
    .line 417
    iget v13, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 418
    .line 419
    aget-object v13, v11, v13

    .line 420
    .line 421
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    iget v13, v8, Landroidx/exifinterface/media/a$e;->d:I

    .line 425
    .line 426
    const-string v14, ""

    .line 427
    .line 428
    const-string v15, ", "

    .line 429
    .line 430
    if-ne v13, v12, :cond_f

    .line 431
    .line 432
    move-object v8, v14

    .line 433
    goto :goto_4

    .line 434
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget v8, v8, Landroidx/exifinterface/media/a$e;->d:I

    .line 443
    .line 444
    aget-object v8, v11, v8

    .line 445
    .line 446
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v8, " (guess: "

    .line 457
    .line 458
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v8, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    aget-object v8, v11, v8

    .line 470
    .line 471
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v8, Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-ne v8, v12, :cond_10

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v9, Ljava/lang/Integer;

    .line 496
    .line 497
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    aget-object v9, v11, v9

    .line 502
    .line 503
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v14

    .line 510
    :goto_5
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v8, ")"

    .line 514
    .line 515
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    goto/16 :goto_10

    .line 526
    .line 527
    :cond_11
    :goto_6
    move v8, v10

    .line 528
    goto :goto_8

    .line 529
    :cond_12
    :goto_7
    iget v8, v8, Landroidx/exifinterface/media/a$e;->c:I

    .line 530
    .line 531
    :goto_8
    const-string v9, "/"

    .line 532
    .line 533
    const-string v10, ","

    .line 534
    .line 535
    packed-switch v8, :pswitch_data_0

    .line 536
    .line 537
    .line 538
    :pswitch_0
    move v15, v7

    .line 539
    sget-boolean v3, Landroidx/exifinterface/media/a;->v:Z

    .line 540
    .line 541
    if-eqz v3, :cond_1a

    .line 542
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v4, "Data format isn\'t one of expected formats: "

    .line 549
    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    goto/16 :goto_11

    .line 564
    .line 565
    :pswitch_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    array-length v9, v8

    .line 570
    new-array v9, v9, [D

    .line 571
    .line 572
    move v10, v4

    .line 573
    :goto_9
    array-length v11, v8

    .line 574
    if-ge v10, v11, :cond_13

    .line 575
    .line 576
    aget-object v11, v8, v10

    .line 577
    .line 578
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 579
    .line 580
    .line 581
    move-result-wide v11

    .line 582
    aput-wide v11, v9, v10

    .line 583
    .line 584
    add-int/lit8 v10, v10, 0x1

    .line 585
    .line 586
    goto :goto_9

    .line 587
    :cond_13
    iget-object v8, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 588
    .line 589
    aget-object v8, v8, v5

    .line 590
    .line 591
    iget-object v10, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 592
    .line 593
    invoke-static {v9, v10}, Landroidx/exifinterface/media/a$d;->b([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    goto/16 :goto_10

    .line 601
    .line 602
    :pswitch_2
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    array-length v10, v8

    .line 607
    new-array v10, v10, [Landroidx/exifinterface/media/a$f;

    .line 608
    .line 609
    move v11, v4

    .line 610
    :goto_a
    array-length v13, v8

    .line 611
    if-ge v11, v13, :cond_14

    .line 612
    .line 613
    aget-object v13, v8, v11

    .line 614
    .line 615
    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v13

    .line 619
    new-instance v14, Landroidx/exifinterface/media/a$f;

    .line 620
    .line 621
    aget-object v15, v13, v4

    .line 622
    .line 623
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 624
    .line 625
    .line 626
    move-result-wide v3

    .line 627
    double-to-long v3, v3

    .line 628
    aget-object v13, v13, v7

    .line 629
    .line 630
    move-object/from16 v16, v8

    .line 631
    .line 632
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 633
    .line 634
    .line 635
    move-result-wide v7

    .line 636
    double-to-long v7, v7

    .line 637
    invoke-direct {v14, v3, v4, v7, v8}, Landroidx/exifinterface/media/a$f;-><init>(JJ)V

    .line 638
    .line 639
    .line 640
    aput-object v14, v10, v11

    .line 641
    .line 642
    add-int/lit8 v11, v11, 0x1

    .line 643
    .line 644
    move-object/from16 v8, v16

    .line 645
    .line 646
    const/4 v3, 0x2

    .line 647
    const/4 v4, 0x0

    .line 648
    const/4 v7, 0x1

    .line 649
    goto :goto_a

    .line 650
    :cond_14
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 651
    .line 652
    aget-object v3, v3, v5

    .line 653
    .line 654
    iget-object v4, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 655
    .line 656
    invoke-static {v10, v4}, Landroidx/exifinterface/media/a$d;->d([Landroidx/exifinterface/media/a$f;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    goto :goto_c

    .line 664
    :pswitch_3
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    array-length v4, v3

    .line 669
    new-array v4, v4, [I

    .line 670
    .line 671
    const/4 v7, 0x0

    .line 672
    :goto_b
    array-length v8, v3

    .line 673
    if-ge v7, v8, :cond_15

    .line 674
    .line 675
    aget-object v8, v3, v7

    .line 676
    .line 677
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    aput v8, v4, v7

    .line 682
    .line 683
    add-int/lit8 v7, v7, 0x1

    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_15
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 687
    .line 688
    aget-object v3, v3, v5

    .line 689
    .line 690
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 691
    .line 692
    invoke-static {v4, v7}, Landroidx/exifinterface/media/a$d;->c([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    :goto_c
    const/4 v15, 0x1

    .line 700
    goto/16 :goto_11

    .line 701
    .line 702
    :pswitch_4
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    array-length v4, v3

    .line 707
    new-array v4, v4, [Landroidx/exifinterface/media/a$f;

    .line 708
    .line 709
    const/4 v7, 0x0

    .line 710
    :goto_d
    array-length v8, v3

    .line 711
    if-ge v7, v8, :cond_16

    .line 712
    .line 713
    aget-object v8, v3, v7

    .line 714
    .line 715
    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    new-instance v10, Landroidx/exifinterface/media/a$f;

    .line 720
    .line 721
    const/4 v11, 0x0

    .line 722
    aget-object v13, v8, v11

    .line 723
    .line 724
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 725
    .line 726
    .line 727
    move-result-wide v13

    .line 728
    double-to-long v13, v13

    .line 729
    const/4 v15, 0x1

    .line 730
    aget-object v8, v8, v15

    .line 731
    .line 732
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 733
    .line 734
    .line 735
    move-result-wide v11

    .line 736
    double-to-long v11, v11

    .line 737
    invoke-direct {v10, v13, v14, v11, v12}, Landroidx/exifinterface/media/a$f;-><init>(JJ)V

    .line 738
    .line 739
    .line 740
    aput-object v10, v4, v7

    .line 741
    .line 742
    add-int/lit8 v7, v7, 0x1

    .line 743
    .line 744
    const/4 v12, -0x1

    .line 745
    goto :goto_d

    .line 746
    :cond_16
    const/4 v15, 0x1

    .line 747
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 748
    .line 749
    aget-object v3, v3, v5

    .line 750
    .line 751
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 752
    .line 753
    invoke-static {v4, v7}, Landroidx/exifinterface/media/a$d;->i([Landroidx/exifinterface/media/a$f;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    goto/16 :goto_11

    .line 761
    .line 762
    :pswitch_5
    move v15, v7

    .line 763
    move v3, v12

    .line 764
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    array-length v4, v3

    .line 769
    new-array v4, v4, [J

    .line 770
    .line 771
    const/4 v7, 0x0

    .line 772
    :goto_e
    array-length v8, v3

    .line 773
    if-ge v7, v8, :cond_17

    .line 774
    .line 775
    aget-object v8, v3, v7

    .line 776
    .line 777
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 778
    .line 779
    .line 780
    move-result-wide v8

    .line 781
    aput-wide v8, v4, v7

    .line 782
    .line 783
    add-int/lit8 v7, v7, 0x1

    .line 784
    .line 785
    goto :goto_e

    .line 786
    :cond_17
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 787
    .line 788
    aget-object v3, v3, v5

    .line 789
    .line 790
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 791
    .line 792
    invoke-static {v4, v7}, Landroidx/exifinterface/media/a$d;->g([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    goto :goto_11

    .line 800
    :pswitch_6
    move v15, v7

    .line 801
    move v3, v12

    .line 802
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    array-length v4, v3

    .line 807
    new-array v4, v4, [I

    .line 808
    .line 809
    const/4 v7, 0x0

    .line 810
    :goto_f
    array-length v8, v3

    .line 811
    if-ge v7, v8, :cond_18

    .line 812
    .line 813
    aget-object v8, v3, v7

    .line 814
    .line 815
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    aput v8, v4, v7

    .line 820
    .line 821
    add-int/lit8 v7, v7, 0x1

    .line 822
    .line 823
    goto :goto_f

    .line 824
    :cond_18
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 825
    .line 826
    aget-object v3, v3, v5

    .line 827
    .line 828
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 829
    .line 830
    invoke-static {v4, v7}, Landroidx/exifinterface/media/a$d;->k([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$d;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    goto :goto_11

    .line 838
    :pswitch_7
    move v15, v7

    .line 839
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 840
    .line 841
    aget-object v3, v3, v5

    .line 842
    .line 843
    invoke-static {v2}, Landroidx/exifinterface/media/a$d;->e(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;

    .line 844
    .line 845
    .line 846
    move-result-object v4

    .line 847
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    goto :goto_11

    .line 851
    :pswitch_8
    move v15, v7

    .line 852
    iget-object v3, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 853
    .line 854
    aget-object v3, v3, v5

    .line 855
    .line 856
    invoke-static {v2}, Landroidx/exifinterface/media/a$d;->a(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    goto :goto_11

    .line 864
    :cond_19
    :goto_10
    move v15, v7

    .line 865
    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, 0x1

    .line 866
    .line 867
    move v7, v15

    .line 868
    const/4 v3, 0x2

    .line 869
    const/4 v4, 0x0

    .line 870
    goto/16 :goto_3

    .line 871
    .line 872
    :cond_1b
    return-void

    .line 873
    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    .line 874
    .line 875
    const-string v2, "tag shouldn\'t be null"

    .line 876
    .line 877
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    throw v1

    .line 881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->e(Ljava/lang/String;)Landroidx/exifinterface/media/a$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    sget-object v2, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$d;->n(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget p1, v0, Landroidx/exifinterface/media/a$d;->a:I

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    const-string v3, "ExifInterface"

    .line 37
    .line 38
    if-eq p1, v2, :cond_1

    .line 39
    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    if-eq p1, v2, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "GPS Timestamp format is not rational. format="

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, v0, Landroidx/exifinterface/media/a$d;->a:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$d;->o(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [Landroidx/exifinterface/media/a$f;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    array-length v0, p1

    .line 78
    const/4 v2, 0x3

    .line 79
    if-eq v0, v2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    aget-object v0, p1, v0

    .line 84
    .line 85
    iget-wide v1, v0, Landroidx/exifinterface/media/a$f;->a:J

    .line 86
    .line 87
    long-to-float v1, v1

    .line 88
    iget-wide v2, v0, Landroidx/exifinterface/media/a$f;->b:J

    .line 89
    .line 90
    long-to-float v0, v2

    .line 91
    div-float/2addr v1, v0

    .line 92
    float-to-int v0, v1

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, 0x1

    .line 98
    aget-object v1, p1, v1

    .line 99
    .line 100
    iget-wide v2, v1, Landroidx/exifinterface/media/a$f;->a:J

    .line 101
    .line 102
    long-to-float v2, v2

    .line 103
    iget-wide v3, v1, Landroidx/exifinterface/media/a$f;->b:J

    .line 104
    .line 105
    long-to-float v1, v3

    .line 106
    div-float/2addr v2, v1

    .line 107
    float-to-int v1, v2

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x2

    .line 113
    aget-object p1, p1, v2

    .line 114
    .line 115
    iget-wide v2, p1, Landroidx/exifinterface/media/a$f;->a:J

    .line 116
    .line 117
    long-to-float v2, v2

    .line 118
    iget-wide v3, p1, Landroidx/exifinterface/media/a$f;->b:J

    .line 119
    .line 120
    long-to-float p1, v3

    .line 121
    div-float/2addr v2, p1

    .line 122
    float-to-int p1, v2

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "%02d:%02d:%02d"

    .line 132
    .line 133
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v2, "Invalid GPS Timestamp array. array="

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$d;->l(Ljava/nio/ByteOrder;)D

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-object p1

    .line 174
    :catch_0
    :cond_5
    return-object v1

    .line 175
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 176
    .line 177
    const-string v0, "tag shouldn\'t be null"

    .line 178
    .line 179
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method public o()[B
    .locals 2

    .line 1
    iget v0, p0, Landroidx/exifinterface/media/a;->o:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/a;->p()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public p()[B
    .locals 8

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/exifinterface/media/a;->i:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/a;->n:[B

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 30
    .line 31
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object v3, v2

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :catch_0
    move-exception v3

    .line 43
    move-object v4, v3

    .line 44
    move-object v3, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    new-instance v1, Ljava/io/FileInputStream;

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object v1, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/exifinterface/media/b$a;->b(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 65
    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    invoke-static {v1, v4, v5, v3}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    .line 72
    .line 73
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 75
    .line 76
    move-object v7, v3

    .line 77
    move-object v3, v1

    .line 78
    move-object v1, v7

    .line 79
    :goto_1
    :try_start_4
    new-instance v4, Landroidx/exifinterface/media/a$b;

    .line 80
    .line 81
    invoke-direct {v4, v1}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    iget v5, p0, Landroidx/exifinterface/media/a;->l:I

    .line 85
    .line 86
    iget v6, p0, Landroidx/exifinterface/media/a;->p:I

    .line 87
    .line 88
    add-int/2addr v5, v6

    .line 89
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/a$b;->f(I)V

    .line 90
    .line 91
    .line 92
    iget v5, p0, Landroidx/exifinterface/media/a;->m:I

    .line 93
    .line 94
    new-array v5, v5, [B

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 97
    .line 98
    .line 99
    iput-object v5, p0, Landroidx/exifinterface/media/a;->n:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 100
    .line 101
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 102
    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-static {v3}, Landroidx/exifinterface/media/b;->a(Ljava/io/FileDescriptor;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-object v5

    .line 110
    :catch_1
    move-exception v4

    .line 111
    goto :goto_2

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v3, v1

    .line 114
    goto :goto_4

    .line 115
    :catch_2
    move-exception v3

    .line 116
    move-object v4, v3

    .line 117
    move-object v3, v1

    .line 118
    move-object v1, v2

    .line 119
    goto :goto_2

    .line 120
    :catchall_2
    move-exception v0

    .line 121
    move-object v3, v2

    .line 122
    goto :goto_4

    .line 123
    :catch_3
    move-exception v3

    .line 124
    move-object v1, v2

    .line 125
    move-object v4, v3

    .line 126
    move-object v3, v1

    .line 127
    :goto_2
    :try_start_5
    const-string v5, "Encountered exception while getting thumbnail"

    .line 128
    .line 129
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 133
    .line 134
    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    invoke-static {v3}, Landroidx/exifinterface/media/b;->a(Ljava/io/FileDescriptor;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    return-object v2

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    :goto_3
    move-object v2, v1

    .line 143
    :goto_4
    invoke-static {v2}, Landroidx/exifinterface/media/b;->b(Ljava/io/Closeable;)V

    .line 144
    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    invoke-static {v3}, Landroidx/exifinterface/media/b;->a(Ljava/io/FileDescriptor;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    throw v0
.end method
