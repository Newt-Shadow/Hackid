.class public Lcom/android/billingclient/api/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Lcom/android/billingclient/api/g$c$a;


# direct methods
.method synthetic constructor <init>(Lc2/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/billingclient/api/g$c;->a()Lcom/android/billingclient/api/g$c$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/g$c$a;->h(Lcom/android/billingclient/api/g$c$a;)Lcom/android/billingclient/api/g$c$a;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->f:Lcom/android/billingclient/api/g$c$a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/g;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    move v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :goto_1
    if-nez v0, :cond_3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "Details of the products must be provided."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 43
    .line 44
    if-nez v3, :cond_4

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v1, "Set SkuDetails or ProductDetailsParams, not both."

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .line 56
    const-string v5, "play_pass_subs"

    .line 57
    .line 58
    if-eqz v0, :cond_c

    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_b

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-le v6, v1, :cond_13

    .line 75
    .line 76
    iget-object v6, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-object v8, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    move v10, v2

    .line 95
    :goto_4
    if-ge v10, v9, :cond_8

    .line 96
    .line 97
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, Lcom/android/billingclient/api/SkuDetails;

    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-nez v12, :cond_7

    .line 108
    .line 109
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-nez v12, :cond_7

    .line 118
    .line 119
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_6

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string v1, "SKUs should have the same type."

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->m()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iget-object v8, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    move v10, v2

    .line 152
    :goto_6
    if-ge v10, v9, :cond_13

    .line 153
    .line 154
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    check-cast v11, Lcom/android/billingclient/api/SkuDetails;

    .line 159
    .line 160
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-nez v12, :cond_a

    .line 165
    .line 166
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-nez v12, :cond_a

    .line 175
    .line 176
    invoke-virtual {v11}, Lcom/android/billingclient/api/SkuDetails;->m()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_9

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    const-string v1, "All SKUs must have the same package name."

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string v1, "SKU cannot be null."

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_c
    iget-object v6, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/android/billingclient/api/g$b;

    .line 213
    .line 214
    move v7, v2

    .line 215
    :goto_8
    iget-object v8, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-ge v7, v8, :cond_10

    .line 222
    .line 223
    iget-object v8, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    check-cast v8, Lcom/android/billingclient/api/g$b;

    .line 230
    .line 231
    if-eqz v8, :cond_f

    .line 232
    .line 233
    if-eqz v7, :cond_e

    .line 234
    .line 235
    invoke-virtual {v8}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v9}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-virtual {v10}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-nez v9, :cond_e

    .line 256
    .line 257
    invoke-virtual {v8}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_d

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 273
    .line 274
    const-string v1, "All products should have same ProductType."

    .line 275
    .line 276
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    const-string v1, "ProductDetailsParams cannot be null."

    .line 286
    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_10
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Lcom/android/billingclient/api/i;->h()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    iget-object v8, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    :cond_11
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    if-eqz v9, :cond_13

    .line 310
    .line 311
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    check-cast v9, Lcom/android/billingclient/api/g$b;

    .line 316
    .line 317
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v10}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-nez v10, :cond_11

    .line 330
    .line 331
    invoke-virtual {v9}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v10}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-nez v10, :cond_11

    .line 344
    .line 345
    invoke-virtual {v9}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    invoke-virtual {v9}, Lcom/android/billingclient/api/i;->h()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-eqz v9, :cond_12

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    const-string v1, "All products must have the same package name."

    .line 363
    .line 364
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_13
    new-instance v5, Lcom/android/billingclient/api/g;

    .line 369
    .line 370
    invoke-direct {v5, v4}, Lcom/android/billingclient/api/g;-><init>(Lc2/f0;)V

    .line 371
    .line 372
    .line 373
    if-eqz v0, :cond_14

    .line 374
    .line 375
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->m()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_16

    .line 392
    .line 393
    :cond_14
    if-eqz v3, :cond_15

    .line 394
    .line 395
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lcom/android/billingclient/api/g$b;

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/i;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->h()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_15

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_15
    move v1, v2

    .line 419
    :cond_16
    :goto_b
    invoke-static {v5, v1}, Lcom/android/billingclient/api/g;->j(Lcom/android/billingclient/api/g;Z)V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->a:Ljava/lang/String;

    .line 423
    .line 424
    invoke-static {v5, v0}, Lcom/android/billingclient/api/g;->l(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 428
    .line 429
    invoke-static {v5, v0}, Lcom/android/billingclient/api/g;->m(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->f:Lcom/android/billingclient/api/g$c$a;

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$c$a;->a()Lcom/android/billingclient/api/g$c;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v5, v0}, Lcom/android/billingclient/api/g;->p(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/g$c;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->d:Ljava/util/ArrayList;

    .line 442
    .line 443
    if-eqz v0, :cond_17

    .line 444
    .line 445
    new-instance v1, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 448
    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .line 455
    .line 456
    :goto_c
    invoke-static {v5, v1}, Lcom/android/billingclient/api/g;->o(Lcom/android/billingclient/api/g;Ljava/util/ArrayList;)V

    .line 457
    .line 458
    .line 459
    iget-boolean v0, p0, Lcom/android/billingclient/api/g$a;->e:Z

    .line 460
    .line 461
    invoke-static {v5, v0}, Lcom/android/billingclient/api/g;->k(Lcom/android/billingclient/api/g;Z)V

    .line 462
    .line 463
    .line 464
    iget-object v0, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 465
    .line 466
    if-eqz v0, :cond_18

    .line 467
    .line 468
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/j;->r(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/j;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    goto :goto_d

    .line 473
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    :goto_d
    invoke-static {v5, v0}, Lcom/android/billingclient/api/g;->n(Lcom/android/billingclient/api/g;Lcom/google/android/gms/internal/play_billing/j;)V

    .line 478
    .line 479
    .line 480
    return-object v5
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/android/billingclient/api/g$a;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/billingclient/api/g$a;->c:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public e(Lcom/android/billingclient/api/g$c;)Lcom/android/billingclient/api/g$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/g$c;->d(Lcom/android/billingclient/api/g$c;)Lcom/android/billingclient/api/g$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->f:Lcom/android/billingclient/api/g$c$a;

    .line 6
    .line 7
    return-object p0
.end method
