.class final Lcom/android/billingclient/api/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Lc2/g;

.field final synthetic d:Lcom/android/billingclient/api/e;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/g;Lc2/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/b0;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b0;->b:Z

    iput-object p2, p0, Lcom/android/billingclient/api/b0;->c:Lc2/g;

    return-void
.end method

.method private final d(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b0;->c:Lc2/g;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, p1}, Lc2/g;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/billingclient/api/b0;->b:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto/16 :goto_1c

    .line 11
    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "accountName"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v2

    .line 31
    :goto_0
    const/4 v1, 0x6

    .line 32
    const/4 v3, 0x3

    .line 33
    const/4 v4, 0x0

    .line 34
    :try_start_1
    iget-object v5, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 35
    .line 36
    invoke-static {v5}, Lcom/android/billingclient/api/e;->g0(Lcom/android/billingclient/api/e;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    const/16 v6, 0x16

    .line 45
    .line 46
    move v8, v3

    .line 47
    move v7, v6

    .line 48
    :goto_1
    if-lt v7, v3, :cond_4

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    :try_start_2
    iget-object v9, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 53
    .line 54
    invoke-static {v9}, Lcom/android/billingclient/api/e;->o0(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/i6;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const-string v10, "subs"

    .line 59
    .line 60
    invoke-interface {v9, v7, v5, v10}, Lcom/google/android/gms/internal/play_billing/i6;->A(ILjava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-object v9, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 66
    .line 67
    invoke-static {v9}, Lcom/android/billingclient/api/e;->o0(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/i6;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const-string v10, "subs"

    .line 72
    .line 73
    invoke-interface {v9, v7, v5, v10, v0}, Lcom/google/android/gms/internal/play_billing/i6;->O0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    :goto_2
    if-nez v8, :cond_3

    .line 78
    .line 79
    const-string v9, "BillingClient"

    .line 80
    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v11, "highestLevelSupportedForSubs: "

    .line 87
    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move v7, v4

    .line 106
    :goto_3
    iget-object v9, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 107
    .line 108
    const/4 v10, 0x5

    .line 109
    const/4 v11, 0x1

    .line 110
    if-lt v7, v10, :cond_5

    .line 111
    .line 112
    move v10, v11

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move v10, v4

    .line 115
    :goto_4
    invoke-static {v9, v10}, Lcom/android/billingclient/api/e;->I(Lcom/android/billingclient/api/e;Z)V

    .line 116
    .line 117
    .line 118
    iget-object v9, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 119
    .line 120
    if-lt v7, v3, :cond_6

    .line 121
    .line 122
    move v10, v11

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    move v10, v4

    .line 125
    :goto_5
    invoke-static {v9, v10}, Lcom/android/billingclient/api/e;->J(Lcom/android/billingclient/api/e;Z)V

    .line 126
    .line 127
    .line 128
    const/16 v9, 0x9

    .line 129
    .line 130
    if-ge v7, v3, :cond_7

    .line 131
    .line 132
    const-string v7, "BillingClient"

    .line 133
    .line 134
    const-string v10, "In-app billing API does not support subscription on this device."

    .line 135
    .line 136
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move v7, v9

    .line 140
    goto :goto_6

    .line 141
    :cond_7
    move v7, v11

    .line 142
    :goto_6
    move v10, v6

    .line 143
    :goto_7
    if-lt v10, v3, :cond_a

    .line 144
    .line 145
    if-nez v0, :cond_8

    .line 146
    .line 147
    iget-object v12, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 148
    .line 149
    invoke-static {v12}, Lcom/android/billingclient/api/e;->o0(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/i6;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const-string v13, "inapp"

    .line 154
    .line 155
    invoke-interface {v12, v10, v5, v13}, Lcom/google/android/gms/internal/play_billing/i6;->A(ILjava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    goto :goto_8

    .line 160
    :cond_8
    iget-object v12, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 161
    .line 162
    invoke-static {v12}, Lcom/android/billingclient/api/e;->o0(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/i6;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    const-string v13, "inapp"

    .line 167
    .line 168
    invoke-interface {v12, v10, v5, v13, v0}, Lcom/google/android/gms/internal/play_billing/i6;->O0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    :goto_8
    if-nez v8, :cond_9

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 175
    .line 176
    invoke-static {v0, v10}, Lcom/android/billingclient/api/e;->z0(Lcom/android/billingclient/api/e;I)V

    .line 177
    .line 178
    .line 179
    const-string v0, "BillingClient"

    .line 180
    .line 181
    iget-object v5, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 182
    .line 183
    invoke-static {v5}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v12, "mHighestLevelSupportedForInApp: "

    .line 193
    .line 194
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-lt v5, v6, :cond_b

    .line 218
    .line 219
    move v5, v11

    .line 220
    goto :goto_a

    .line 221
    :cond_b
    move v5, v4

    .line 222
    :goto_a
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->D(Lcom/android/billingclient/api/e;Z)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    const/16 v6, 0x15

    .line 232
    .line 233
    if-lt v5, v6, :cond_c

    .line 234
    .line 235
    move v5, v11

    .line 236
    goto :goto_b

    .line 237
    :cond_c
    move v5, v4

    .line 238
    :goto_b
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->C(Lcom/android/billingclient/api/e;Z)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    const/16 v6, 0x14

    .line 248
    .line 249
    if-lt v5, v6, :cond_d

    .line 250
    .line 251
    move v5, v11

    .line 252
    goto :goto_c

    .line 253
    :cond_d
    move v5, v4

    .line 254
    :goto_c
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->B(Lcom/android/billingclient/api/e;Z)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    const/16 v6, 0x13

    .line 264
    .line 265
    if-lt v5, v6, :cond_e

    .line 266
    .line 267
    move v5, v11

    .line 268
    goto :goto_d

    .line 269
    :cond_e
    move v5, v4

    .line 270
    :goto_d
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->A(Lcom/android/billingclient/api/e;Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    const/16 v6, 0x12

    .line 280
    .line 281
    if-lt v5, v6, :cond_f

    .line 282
    .line 283
    move v5, v11

    .line 284
    goto :goto_e

    .line 285
    :cond_f
    move v5, v4

    .line 286
    :goto_e
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->z(Lcom/android/billingclient/api/e;Z)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    const/16 v6, 0x11

    .line 296
    .line 297
    if-lt v5, v6, :cond_10

    .line 298
    .line 299
    move v5, v11

    .line 300
    goto :goto_f

    .line 301
    :cond_10
    move v5, v4

    .line 302
    :goto_f
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->y(Lcom/android/billingclient/api/e;Z)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    const/16 v6, 0x10

    .line 312
    .line 313
    if-lt v5, v6, :cond_11

    .line 314
    .line 315
    move v5, v11

    .line 316
    goto :goto_10

    .line 317
    :cond_11
    move v5, v4

    .line 318
    :goto_10
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->x(Lcom/android/billingclient/api/e;Z)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 322
    .line 323
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    const/16 v6, 0xf

    .line 328
    .line 329
    if-lt v5, v6, :cond_12

    .line 330
    .line 331
    move v5, v11

    .line 332
    goto :goto_11

    .line 333
    :cond_12
    move v5, v4

    .line 334
    :goto_11
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->w(Lcom/android/billingclient/api/e;Z)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 338
    .line 339
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    const/16 v6, 0xe

    .line 344
    .line 345
    if-lt v5, v6, :cond_13

    .line 346
    .line 347
    move v5, v11

    .line 348
    goto :goto_12

    .line 349
    :cond_13
    move v5, v4

    .line 350
    :goto_12
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->v(Lcom/android/billingclient/api/e;Z)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 354
    .line 355
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    const/16 v6, 0xc

    .line 360
    .line 361
    if-lt v5, v6, :cond_14

    .line 362
    .line 363
    move v5, v11

    .line 364
    goto :goto_13

    .line 365
    :cond_14
    move v5, v4

    .line 366
    :goto_13
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Z)V

    .line 367
    .line 368
    .line 369
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 370
    .line 371
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    const/16 v6, 0xa

    .line 376
    .line 377
    if-lt v5, v6, :cond_15

    .line 378
    .line 379
    move v5, v11

    .line 380
    goto :goto_14

    .line 381
    :cond_15
    move v5, v4

    .line 382
    :goto_14
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->A0(Lcom/android/billingclient/api/e;Z)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 386
    .line 387
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-lt v5, v9, :cond_16

    .line 392
    .line 393
    move v5, v11

    .line 394
    goto :goto_15

    .line 395
    :cond_16
    move v5, v4

    .line 396
    :goto_15
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;Z)V

    .line 397
    .line 398
    .line 399
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 400
    .line 401
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    const/16 v6, 0x8

    .line 406
    .line 407
    if-lt v5, v6, :cond_17

    .line 408
    .line 409
    move v5, v11

    .line 410
    goto :goto_16

    .line 411
    :cond_17
    move v5, v4

    .line 412
    :goto_16
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/e;Z)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 416
    .line 417
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-lt v5, v1, :cond_18

    .line 422
    .line 423
    goto :goto_17

    .line 424
    :cond_18
    move v11, v4

    .line 425
    :goto_17
    invoke-static {v0, v11}, Lcom/android/billingclient/api/e;->E(Lcom/android/billingclient/api/e;Z)V

    .line 426
    .line 427
    .line 428
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 429
    .line 430
    invoke-static {v0}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-ge v0, v3, :cond_19

    .line 435
    .line 436
    const-string v0, "BillingClient"

    .line 437
    .line 438
    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 439
    .line 440
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    const/16 v7, 0x24

    .line 444
    .line 445
    :cond_19
    if-nez v8, :cond_1a

    .line 446
    .line 447
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 448
    .line 449
    const/4 v3, 0x2

    .line 450
    invoke-static {v0, v3}, Lcom/android/billingclient/api/e;->y0(Lcom/android/billingclient/api/e;I)V

    .line 451
    .line 452
    .line 453
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 454
    .line 455
    invoke-static {v0}, Lcom/android/billingclient/api/e;->k0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/b1;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-eqz v0, :cond_1e

    .line 460
    .line 461
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 462
    .line 463
    invoke-static {v0}, Lcom/android/billingclient/api/e;->k0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/b1;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    iget-object v3, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 468
    .line 469
    invoke-static {v3}, Lcom/android/billingclient/api/e;->W(Lcom/android/billingclient/api/e;)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/b1;->g(Z)V

    .line 474
    .line 475
    .line 476
    goto :goto_1b

    .line 477
    :cond_1a
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 478
    .line 479
    invoke-static {v0, v4}, Lcom/android/billingclient/api/e;->y0(Lcom/android/billingclient/api/e;I)V

    .line 480
    .line 481
    .line 482
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 483
    .line 484
    invoke-static {v0, v2}, Lcom/android/billingclient/api/e;->H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 485
    .line 486
    .line 487
    goto :goto_1b

    .line 488
    :catch_0
    move-exception v0

    .line 489
    move v3, v8

    .line 490
    goto :goto_18

    .line 491
    :catch_1
    move-exception v0

    .line 492
    :goto_18
    const-string v5, "BillingClient"

    .line 493
    .line 494
    const-string v6, "Exception while checking if billing is supported; try to reconnect"

    .line 495
    .line 496
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    .line 498
    .line 499
    instance-of v5, v0, Landroid/os/DeadObjectException;

    .line 500
    .line 501
    if-eqz v5, :cond_1b

    .line 502
    .line 503
    const/16 v0, 0x65

    .line 504
    .line 505
    :goto_19
    move v7, v0

    .line 506
    goto :goto_1a

    .line 507
    :cond_1b
    instance-of v5, v0, Landroid/os/RemoteException;

    .line 508
    .line 509
    if-eqz v5, :cond_1c

    .line 510
    .line 511
    const/16 v0, 0x64

    .line 512
    .line 513
    goto :goto_19

    .line 514
    :cond_1c
    instance-of v0, v0, Ljava/lang/SecurityException;

    .line 515
    .line 516
    if-eqz v0, :cond_1d

    .line 517
    .line 518
    const/16 v0, 0x66

    .line 519
    .line 520
    goto :goto_19

    .line 521
    :cond_1d
    const/16 v0, 0x2a

    .line 522
    .line 523
    goto :goto_19

    .line 524
    :goto_1a
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 525
    .line 526
    invoke-static {v0, v4}, Lcom/android/billingclient/api/e;->y0(Lcom/android/billingclient/api/e;I)V

    .line 527
    .line 528
    .line 529
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 530
    .line 531
    invoke-static {v0, v2}, Lcom/android/billingclient/api/e;->H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V

    .line 532
    .line 533
    .line 534
    move v8, v3

    .line 535
    :cond_1e
    :goto_1b
    if-nez v8, :cond_1f

    .line 536
    .line 537
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 538
    .line 539
    invoke-static {v0}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static {v1}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 548
    .line 549
    .line 550
    sget-object v0, Lcom/android/billingclient/api/j0;->l:Lcom/android/billingclient/api/h;

    .line 551
    .line 552
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/b0;->d(Lcom/android/billingclient/api/h;)V

    .line 553
    .line 554
    .line 555
    goto :goto_1c

    .line 556
    :cond_1f
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 557
    .line 558
    invoke-static {v0}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    sget-object v3, Lcom/android/billingclient/api/j0;->a:Lcom/android/billingclient/api/h;

    .line 563
    .line 564
    invoke-static {v7, v1, v3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 569
    .line 570
    .line 571
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/b0;->d(Lcom/android/billingclient/api/h;)V

    .line 572
    .line 573
    .line 574
    :goto_1c
    return-object v2

    .line 575
    :catchall_0
    move-exception v1

    .line 576
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    throw v1
.end method

.method final synthetic b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->y0(Lcom/android/billingclient/api/e;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/billingclient/api/j0;->n:Lcom/android/billingclient/api/h;

    .line 20
    .line 21
    const/16 v2, 0x18

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/b0;->d(Lcom/android/billingclient/api/h;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/b0;->c:Lc2/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/billingclient/api/b0;->b:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/h6;->d(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/i6;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/android/billingclient/api/e;->H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/billingclient/api/z;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/b0;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/android/billingclient/api/a0;

    .line 23
    .line 24
    invoke-direct {v4, p0}, Lcom/android/billingclient/api/a0;-><init>(Lcom/android/billingclient/api/b0;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 28
    .line 29
    const-wide/16 v2, 0x7530

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/billingclient/api/e;->j0(Lcom/android/billingclient/api/e;)Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/e;->x0(Lcom/android/billingclient/api/e;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/billingclient/api/e;->n0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/h;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p1}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/16 v0, 0x19

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/b0;->d(Lcom/android/billingclient/api/h;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/b6;->B()Lcom/google/android/gms/internal/play_billing/b6;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->f(Lcom/google/android/gms/internal/play_billing/b6;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p1, v0}, Lcom/android/billingclient/api/e;->H(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/i6;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->d:Lcom/android/billingclient/api/e;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0}, Lcom/android/billingclient/api/e;->y0(Lcom/android/billingclient/api/e;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/billingclient/api/b0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b0;->c:Lc2/g;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Lc2/g;->onBillingServiceDisconnected()V

    .line 41
    .line 42
    .line 43
    :cond_0
    monitor-exit p1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0
.end method
