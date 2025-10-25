.class public final Lvc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

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
    iput-object p1, p0, Lvc/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lvc/e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lvc/e;->c(Lvc/e;)V

    return-void
.end method

.method public static final synthetic b(Lvc/e;Landroid/widget/Toast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvc/e;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    return-void
.end method

.method private static final c(Lvc/e;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lvc/e;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 16

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
    const-string v3, "call"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "result"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 18
    .line 19
    const-string v4, "showToast"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_10

    .line 27
    .line 28
    const-string v3, "msg"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "length"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v6, "gravity"

    .line 49
    .line 50
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-string v7, "bgcolor"

    .line 59
    .line 60
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/lang/Number;

    .line 65
    .line 66
    const-string v8, "textcolor"

    .line 67
    .line 68
    invoke-virtual {v1, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Ljava/lang/Number;

    .line 73
    .line 74
    const-string v9, "fontSize"

    .line 75
    .line 76
    invoke-virtual {v1, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Ljava/lang/Number;

    .line 81
    .line 82
    const-string v10, "fontAsset"

    .line 83
    .line 84
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    const-string v10, "top"

    .line 91
    .line 92
    invoke-static {v6, v10}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    const/16 v11, 0x11

    .line 97
    .line 98
    if-eqz v10, :cond_0

    .line 99
    .line 100
    const/16 v6, 0x30

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string v10, "center"

    .line 104
    .line 105
    invoke-static {v6, v10}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_1

    .line 110
    .line 111
    move v6, v11

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const/16 v6, 0x50

    .line 114
    .line 115
    :goto_0
    const-string v10, "long"

    .line 116
    .line 117
    invoke-static {v4, v10}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const-string v10, "getLookupKeyForAsset(...)"

    .line 122
    .line 123
    const-string v13, "getAssets(...)"

    .line 124
    .line 125
    const/16 v14, 0x1e

    .line 126
    .line 127
    if-eqz v7, :cond_5

    .line 128
    .line 129
    iget-object v15, v0, Lvc/e;->a:Landroid/content/Context;

    .line 130
    .line 131
    const-string v12, "layout_inflater"

    .line 132
    .line 133
    invoke-virtual {v15, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    const-string v15, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 138
    .line 139
    invoke-static {v12, v15}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast v12, Landroid/view/LayoutInflater;

    .line 143
    .line 144
    sget v15, Lvc/h;->a:I

    .line 145
    .line 146
    invoke-virtual {v12, v15, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    sget v12, Lvc/g;->a:I

    .line 151
    .line 152
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    check-cast v12, Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v0, Lvc/e;->a:Landroid/content/Context;

    .line 162
    .line 163
    sget v15, Lvc/f;->a:I

    .line 164
    .line 165
    invoke-virtual {v3, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 180
    .line 181
    invoke-virtual {v3, v7, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    .line 186
    .line 187
    if-eqz v9, :cond_2

    .line 188
    .line 189
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    .line 195
    .line 196
    :cond_2
    if-eqz v8, :cond_3

    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    :cond_3
    new-instance v3, Landroid/widget/Toast;

    .line 206
    .line 207
    iget-object v7, v0, Lvc/e;->a:Landroid/content/Context;

    .line 208
    .line 209
    invoke-direct {v3, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    iput-object v3, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 215
    .line 216
    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    iget-object v3, v0, Lvc/e;->a:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v3, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v4, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v1, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iget-object v1, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 251
    .line 252
    if-eqz v1, :cond_9

    .line 253
    .line 254
    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v15, "showToast: "

    .line 265
    .line 266
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v7, " "

    .line 273
    .line 274
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    const-string v12, "KARTHIK"

    .line 297
    .line 298
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    iget-object v7, v0, Lvc/e;->a:Landroid/content/Context;

    .line 302
    .line 303
    invoke-static {v7, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iput-object v3, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 308
    .line 309
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    if-ge v4, v14, :cond_9

    .line 312
    .line 313
    if-eqz v3, :cond_6

    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    const v3, 0x102000b

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const-string v4, "findViewById(...)"

    .line 330
    .line 331
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    check-cast v3, Landroid/widget/TextView;

    .line 335
    .line 336
    if-eqz v9, :cond_7

    .line 337
    .line 338
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 343
    .line 344
    .line 345
    :cond_7
    if-eqz v8, :cond_8

    .line 346
    .line 347
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    .line 353
    .line 354
    :cond_8
    if-eqz v1, :cond_9

    .line 355
    .line 356
    iget-object v4, v0, Lvc/e;->a:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-static {v4, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-virtual {v5}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v5, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {v1, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 385
    .line 386
    .line 387
    :cond_9
    :goto_1
    const/4 v1, 0x0

    .line 388
    if-eq v6, v11, :cond_b

    .line 389
    .line 390
    const/16 v3, 0x64

    .line 391
    .line 392
    const/16 v4, 0x30

    .line 393
    .line 394
    if-eq v6, v4, :cond_a

    .line 395
    .line 396
    :try_start_0
    iget-object v4, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 397
    .line 398
    if-eqz v4, :cond_c

    .line 399
    .line 400
    invoke-virtual {v4, v6, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 401
    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_a
    iget-object v4, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 405
    .line 406
    if-eqz v4, :cond_c

    .line 407
    .line 408
    invoke-virtual {v4, v6, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :cond_b
    iget-object v3, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 413
    .line 414
    if-eqz v3, :cond_c

    .line 415
    .line 416
    invoke-virtual {v3, v6, v1, v1}, Landroid/widget/Toast;->setGravity(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .line 418
    .line 419
    :catch_0
    :cond_c
    :goto_2
    iget-object v1, v0, Lvc/e;->a:Landroid/content/Context;

    .line 420
    .line 421
    instance-of v3, v1, Landroid/app/Activity;

    .line 422
    .line 423
    if-eqz v3, :cond_d

    .line 424
    .line 425
    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    .line 426
    .line 427
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    check-cast v1, Landroid/app/Activity;

    .line 431
    .line 432
    new-instance v3, Lvc/d;

    .line 433
    .line 434
    invoke-direct {v3, v0}, Lvc/d;-><init>(Lvc/e;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_d
    iget-object v1, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 442
    .line 443
    if-eqz v1, :cond_e

    .line 444
    .line 445
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 446
    .line 447
    .line 448
    :cond_e
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 449
    .line 450
    if-lt v1, v14, :cond_f

    .line 451
    .line 452
    iget-object v1, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 453
    .line 454
    if-eqz v1, :cond_f

    .line 455
    .line 456
    new-instance v3, Lvc/e$a;

    .line 457
    .line 458
    invoke-direct {v3, v0}, Lvc/e$a;-><init>(Lvc/e;)V

    .line 459
    .line 460
    .line 461
    invoke-static {v3}, Lvc/b;->a(Ljava/lang/Object;)Landroid/widget/Toast$Callback;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-static {v1, v3}, Lvc/c;->a(Landroid/widget/Toast;Landroid/widget/Toast$Callback;)V

    .line 466
    .line 467
    .line 468
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 469
    .line 470
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    goto :goto_4

    .line 474
    :cond_10
    const-string v1, "cancel"

    .line 475
    .line 476
    invoke-static {v3, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_13

    .line 481
    .line 482
    iget-object v1, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 483
    .line 484
    if-eqz v1, :cond_12

    .line 485
    .line 486
    if-eqz v1, :cond_11

    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 489
    .line 490
    .line 491
    :cond_11
    iput-object v5, v0, Lvc/e;->b:Landroid/widget/Toast;

    .line 492
    .line 493
    :cond_12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 494
    .line 495
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_13
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 500
    .line 501
    .line 502
    :goto_4
    return-void
.end method
