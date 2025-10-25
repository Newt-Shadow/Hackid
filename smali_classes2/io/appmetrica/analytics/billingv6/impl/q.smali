.class public final Lio/appmetrica/analytics/billingv6/impl/q;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/r;

.field public final synthetic b:Lcom/android/billingclient/api/h;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/r;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/q;->a:Lio/appmetrica/analytics/billingv6/impl/r;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/q;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/q;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/q;->a:Lio/appmetrica/analytics/billingv6/impl/r;

    .line 4
    .line 5
    iget-object v2, v0, Lio/appmetrica/analytics/billingv6/impl/q;->b:Lcom/android/billingclient/api/h;

    .line 6
    .line 7
    iget-object v3, v0, Lio/appmetrica/analytics/billingv6/impl/q;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/billingclient/api/h;->b()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lio/appmetrica/analytics/billingv6/impl/r;->f:Lio/appmetrica/analytics/billingv6/impl/u;

    .line 19
    .line 20
    invoke-interface {v1}, Lio/appmetrica/analytics/billingv6/impl/u;->onUpdateFinished()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_e

    .line 24
    .line 25
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, v1, Lio/appmetrica/analytics/billingv6/impl/r;->c:Ljava/util/List;

    .line 71
    .line 72
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_3

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object v3, v1, Lio/appmetrica/analytics/billingv6/impl/r;->d:Ljava/util/List;

    .line 118
    .line 119
    new-instance v5, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_17

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lcom/android/billingclient/api/i;

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 149
    .line 150
    if-eqz v7, :cond_16

    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Lcom/android/billingclient/api/Purchase;

    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    const v11, 0x360a33

    .line 171
    .line 172
    .line 173
    const-string v12, "{}"

    .line 174
    .line 175
    const/4 v13, 0x0

    .line 176
    const-string v14, "inapp"

    .line 177
    .line 178
    const-string v15, "subs"

    .line 179
    .line 180
    if-eq v10, v11, :cond_f

    .line 181
    .line 182
    const v11, 0x5fb1edc

    .line 183
    .line 184
    .line 185
    if-eq v10, v11, :cond_6

    .line 186
    .line 187
    goto/16 :goto_c

    .line 188
    .line 189
    :cond_6
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_16

    .line 194
    .line 195
    new-instance v9, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    .line 196
    .line 197
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v10, v14}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_7

    .line 206
    .line 207
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->INAPP:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 208
    .line 209
    :goto_3
    move-object/from16 v17, v10

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    invoke-static {v10, v15}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_8

    .line 217
    .line 218
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->UNKNOWN:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :goto_4
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v18

    .line 228
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->f()I

    .line 229
    .line 230
    .line 231
    move-result v19

    .line 232
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->c()Lcom/android/billingclient/api/i$a;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    if-eqz v10, :cond_9

    .line 237
    .line 238
    invoke-virtual {v10}, Lcom/android/billingclient/api/i$a;->b()J

    .line 239
    .line 240
    .line 241
    move-result-wide v10

    .line 242
    goto :goto_5

    .line 243
    :cond_9
    const-wide/16 v10, 0x0

    .line 244
    .line 245
    :goto_5
    move-wide/from16 v20, v10

    .line 246
    .line 247
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->c()Lcom/android/billingclient/api/i$a;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    if-eqz v6, :cond_a

    .line 252
    .line 253
    invoke-virtual {v6}, Lcom/android/billingclient/api/i$a;->c()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    if-nez v6, :cond_b

    .line 258
    .line 259
    :cond_a
    const-string v6, ""

    .line 260
    .line 261
    :cond_b
    move-object/from16 v22, v6

    .line 262
    .line 263
    const-wide/16 v23, 0x0

    .line 264
    .line 265
    const/16 v25, 0x0

    .line 266
    .line 267
    const/16 v26, 0x1

    .line 268
    .line 269
    const/16 v27, 0x0

    .line 270
    .line 271
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->g()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v28

    .line 275
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v29

    .line 279
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    .line 280
    .line 281
    .line 282
    move-result-wide v30

    .line 283
    if-eqz v8, :cond_c

    .line 284
    .line 285
    invoke-virtual {v8}, Lcom/android/billingclient/api/Purchase;->n()Z

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    :cond_c
    move/from16 v32, v13

    .line 290
    .line 291
    if-eqz v8, :cond_e

    .line 292
    .line 293
    invoke-virtual {v8}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-nez v6, :cond_d

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_d
    move-object/from16 v33, v6

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_e
    :goto_6
    move-object/from16 v33, v12

    .line 304
    .line 305
    :goto_7
    move-object/from16 v16, v9

    .line 306
    .line 307
    invoke-direct/range {v16 .. v33}, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductType;Ljava/lang/String;IJLjava/lang/String;JLio/appmetrica/analytics/billinginterface/internal/Period;ILio/appmetrica/analytics/billinginterface/internal/Period;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_d

    .line 311
    :cond_f
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-nez v9, :cond_10

    .line 316
    .line 317
    goto :goto_c

    .line 318
    :cond_10
    new-instance v9, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    .line 319
    .line 320
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-static {v10, v14}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    if-eqz v11, :cond_11

    .line 329
    .line 330
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->INAPP:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 331
    .line 332
    :goto_8
    move-object/from16 v17, v10

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_11
    invoke-static {v10, v15}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    if-eqz v10, :cond_12

    .line 340
    .line 341
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_12
    sget-object v10, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->UNKNOWN:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :goto_9
    invoke-virtual {v6}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v18

    .line 351
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->f()I

    .line 352
    .line 353
    .line 354
    move-result v19

    .line 355
    const-wide/16 v20, 0x0

    .line 356
    .line 357
    const-string v22, ""

    .line 358
    .line 359
    const-wide/16 v23, 0x0

    .line 360
    .line 361
    const/16 v25, 0x0

    .line 362
    .line 363
    const/16 v26, 0x1

    .line 364
    .line 365
    const/16 v27, 0x0

    .line 366
    .line 367
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->g()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v28

    .line 371
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v29

    .line 375
    invoke-virtual {v7}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    .line 376
    .line 377
    .line 378
    move-result-wide v30

    .line 379
    if-eqz v8, :cond_13

    .line 380
    .line 381
    invoke-virtual {v8}, Lcom/android/billingclient/api/Purchase;->n()Z

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    :cond_13
    move/from16 v32, v13

    .line 386
    .line 387
    if-eqz v8, :cond_15

    .line 388
    .line 389
    invoke-virtual {v8}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    if-nez v6, :cond_14

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_14
    move-object/from16 v33, v6

    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_15
    :goto_a
    move-object/from16 v33, v12

    .line 400
    .line 401
    :goto_b
    move-object/from16 v16, v9

    .line 402
    .line 403
    invoke-direct/range {v16 .. v33}, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductType;Ljava/lang/String;IJLjava/lang/String;JLio/appmetrica/analytics/billinginterface/internal/Period;ILio/appmetrica/analytics/billinginterface/internal/Period;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_16
    :goto_c
    const/4 v9, 0x0

    .line 408
    :goto_d
    if-eqz v9, :cond_5

    .line 409
    .line 410
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto/16 :goto_2

    .line 414
    .line 415
    :cond_17
    iget-object v2, v1, Lio/appmetrica/analytics/billingv6/impl/r;->a:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    .line 416
    .line 417
    invoke-interface {v2}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getBillingInfoSender()Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-interface {v2, v5}, Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;->sendInfo(Ljava/util/List;)V

    .line 422
    .line 423
    .line 424
    iget-object v2, v1, Lio/appmetrica/analytics/billingv6/impl/r;->b:Lid/a;

    .line 425
    .line 426
    invoke-interface {v2}, Lid/a;->invoke()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    iget-object v1, v1, Lio/appmetrica/analytics/billingv6/impl/r;->f:Lio/appmetrica/analytics/billingv6/impl/u;

    .line 430
    .line 431
    invoke-interface {v1}, Lio/appmetrica/analytics/billingv6/impl/u;->onUpdateFinished()V

    .line 432
    .line 433
    .line 434
    :goto_e
    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/q;->a:Lio/appmetrica/analytics/billingv6/impl/r;

    .line 435
    .line 436
    iget-object v2, v1, Lio/appmetrica/analytics/billingv6/impl/r;->e:Lio/appmetrica/analytics/billingv6/impl/g;

    .line 437
    .line 438
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    return-void
.end method
