.class final Le2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/q$b;,
        Le2/q$a;,
        Le2/q$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Le2/q$b;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le2/q;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    iget-object v0, p0, Le2/q;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-static {v0, v1}, Le2/u;->c(Landroid/content/Context;I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v0, "permissions_handler"

    .line 26
    .line 27
    const-string v2, "Bluetooth permission missing in manifest"

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    return v2
.end method

.method private b()I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Le2/q;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/core/app/p;->e(Landroid/content/Context;)Landroidx/core/app/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/core/app/p;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0

    .line 23
    :cond_1
    iget-object v0, p0, Le2/q;->a:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    iget-object v0, p0, Le2/q;->c:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-static {v0, v1}, Le2/u;->b(Landroid/app/Activity;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method private d(I)I
    .locals 14

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Le2/q;->b()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x15

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Le2/q;->a()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/16 v0, 0x1f

    .line 20
    .line 21
    const/16 v1, 0x1e

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x1c

    .line 26
    .line 27
    if-eq p1, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x1d

    .line 30
    .line 31
    if-ne p1, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    if-ge v2, v0, :cond_3

    .line 36
    .line 37
    invoke-direct {p0}, Le2/q;->a()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_3
    const/16 v2, 0x25

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eq p1, v2, :cond_4

    .line 46
    .line 47
    if-nez p1, :cond_5

    .line 48
    .line 49
    :cond_4
    invoke-direct {p0}, Le2/q;->e()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    return v3

    .line 56
    :cond_5
    iget-object v2, p0, Le2/q;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v2, p1}, Le2/u;->c(Landroid/content/Context;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v4, "permissions_handler"

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v2, :cond_6

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "No android specific permissions needed for: "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v5

    .line 88
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const/4 v7, 0x2

    .line 93
    const/16 v8, 0x16

    .line 94
    .line 95
    const/16 v9, 0x10

    .line 96
    .line 97
    if-nez v6, :cond_8

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "No permissions found in manifest for: "

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    if-ne p1, v8, :cond_7

    .line 123
    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    if-ge p1, v1, :cond_7

    .line 127
    .line 128
    return v7

    .line 129
    :cond_7
    return v3

    .line 130
    :cond_8
    iget-object v4, p0, Le2/q;->a:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 137
    .line 138
    const/16 v6, 0x17

    .line 139
    .line 140
    if-lt v4, v6, :cond_9

    .line 141
    .line 142
    move v4, v5

    .line 143
    goto :goto_0

    .line 144
    :cond_9
    move v4, v3

    .line 145
    :goto_0
    if-eqz v4, :cond_1a

    .line 146
    .line 147
    new-instance v4, Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    :cond_a
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-eqz v10, :cond_19

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    check-cast v10, Ljava/lang/String;

    .line 167
    .line 168
    if-ne p1, v9, :cond_c

    .line 169
    .line 170
    iget-object v10, p0, Le2/q;->a:Landroid/content/Context;

    .line 171
    .line 172
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    iget-object v11, p0, Le2/q;->a:Landroid/content/Context;

    .line 177
    .line 178
    const-string v12, "power"

    .line 179
    .line 180
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    check-cast v11, Landroid/os/PowerManager;

    .line 185
    .line 186
    if-eqz v11, :cond_b

    .line 187
    .line 188
    invoke-virtual {v11, v10}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-eqz v10, :cond_b

    .line 193
    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_c
    if-ne p1, v8, :cond_e

    .line 211
    .line 212
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    .line 214
    if-ge v10, v1, :cond_d

    .line 215
    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :cond_d
    invoke-static {}, Le2/n;->a()Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_e
    if-ne p1, v6, :cond_f

    .line 236
    .line 237
    iget-object v10, p0, Le2/q;->a:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {v10}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_f
    const/16 v11, 0x18

    .line 252
    .line 253
    if-ne p1, v11, :cond_10

    .line 254
    .line 255
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 256
    .line 257
    const/16 v11, 0x1a

    .line 258
    .line 259
    if-lt v10, v11, :cond_a

    .line 260
    .line 261
    iget-object v10, p0, Le2/q;->a:Landroid/content/Context;

    .line 262
    .line 263
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-static {v10}, Le2/o;->a(Landroid/content/pm/PackageManager;)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_10
    const/16 v11, 0x1b

    .line 280
    .line 281
    if-ne p1, v11, :cond_11

    .line 282
    .line 283
    iget-object v10, p0, Le2/q;->a:Landroid/content/Context;

    .line 284
    .line 285
    const-string v11, "notification"

    .line 286
    .line 287
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    check-cast v10, Landroid/app/NotificationManager;

    .line 292
    .line 293
    invoke-virtual {v10}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_11
    const/16 v11, 0x22

    .line 307
    .line 308
    if-ne p1, v11, :cond_13

    .line 309
    .line 310
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 311
    .line 312
    if-lt v10, v0, :cond_12

    .line 313
    .line 314
    iget-object v10, p0, Le2/q;->a:Landroid/content/Context;

    .line 315
    .line 316
    const-string v11, "alarm"

    .line 317
    .line 318
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    check-cast v10, Landroid/app/AlarmManager;

    .line 323
    .line 324
    invoke-static {v10}, Le2/p;->a(Landroid/app/AlarmManager;)Z

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_13
    const/16 v12, 0x9

    .line 347
    .line 348
    if-eq p1, v12, :cond_15

    .line 349
    .line 350
    const/16 v12, 0x20

    .line 351
    .line 352
    if-ne p1, v12, :cond_14

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_14
    iget-object v11, p0, Le2/q;->a:Landroid/content/Context;

    .line 356
    .line 357
    invoke-static {v11, v10}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v11

    .line 361
    if-eqz v11, :cond_a

    .line 362
    .line 363
    iget-object v11, p0, Le2/q;->c:Landroid/app/Activity;

    .line 364
    .line 365
    invoke-static {v11, v10}, Le2/u;->b(Landroid/app/Activity;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :cond_15
    :goto_2
    iget-object v12, p0, Le2/q;->a:Landroid/content/Context;

    .line 379
    .line 380
    invoke-static {v12, v10}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 385
    .line 386
    if-lt v13, v11, :cond_16

    .line 387
    .line 388
    iget-object v11, p0, Le2/q;->a:Landroid/content/Context;

    .line 389
    .line 390
    const-string v13, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 391
    .line 392
    invoke-static {v11, v13}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    goto :goto_3

    .line 397
    :cond_16
    move v11, v12

    .line 398
    :goto_3
    if-nez v11, :cond_17

    .line 399
    .line 400
    const/4 v11, -0x1

    .line 401
    if-ne v12, v11, :cond_17

    .line 402
    .line 403
    const/4 v10, 0x3

    .line 404
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :cond_17
    if-nez v12, :cond_18

    .line 414
    .line 415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto/16 :goto_1

    .line 423
    .line 424
    :cond_18
    iget-object v11, p0, Le2/q;->c:Landroid/app/Activity;

    .line 425
    .line 426
    invoke-static {v11, v10}, Le2/u;->b(Landroid/app/Activity;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :cond_19
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-nez p1, :cond_1a

    .line 444
    .line 445
    invoke-static {v4}, Le2/u;->j(Ljava/util/Collection;)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    return p1

    .line 454
    :cond_1a
    return v5
.end method

.method private e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le2/q;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    invoke-static {v0, v1}, Le2/u;->c(Landroid/content/Context;I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v3, "android.permission.WRITE_CALENDAR"

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move v3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v4, "android.permission.READ_CALENDAR"

    .line 27
    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v2

    .line 37
    :goto_1
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    move v4, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v4, v2

    .line 44
    :goto_2
    if-nez v4, :cond_5

    .line 45
    .line 46
    const-string v1, "permissions_handler"

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    const-string v3, "android.permission.WRITE_CALENDAR missing in manifest"

    .line 51
    .line 52
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_3
    if-nez v0, :cond_4

    .line 56
    .line 57
    const-string v0, "android.permission.READ_CALENDAR missing in manifest"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_4
    return v2

    .line 63
    :cond_5
    return v1
.end method

.method private f(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le2/q;->c:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Le2/q;->c:Landroid/app/Activity;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "package:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Le2/q;->c:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Le2/q;->d:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput p1, p0, Le2/q;->d:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method c(ILe2/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le2/q;->d(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p2, p1}, Le2/q$a;->onSuccess(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method g(Ljava/util/List;Le2/q$b;Le2/b;)V
    .locals 9

    .line 1
    iget v0, p0, Le2/q;->d:I

    .line 2
    .line 3
    const-string v1, "PermissionHandler.PermissionManager"

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 8
    .line 9
    invoke-interface {p3, v1, p1}, Le2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Le2/q;->c:Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p1, "permissions_handler"

    .line 18
    .line 19
    const-string p2, "Unable to detect current Activity."

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string p1, "Unable to detect current Android Activity."

    .line 25
    .line 26
    invoke-interface {p3, v1, p1}, Le2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iput-object p2, p0, Le2/q;->b:Le2/q$b;

    .line 31
    .line 32
    new-instance p2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Le2/q;->e:Ljava/util/Map;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    iput p2, p0, Le2/q;->d:I

    .line 41
    .line 42
    new-instance p3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0x18

    .line 56
    .line 57
    if-eqz v0, :cond_10

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {p0, v2}, Le2/q;->d(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x1

    .line 74
    if-ne v2, v3, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 77
    .line 78
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 85
    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v2, p0, Le2/q;->c:Landroid/app/Activity;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v2, v3}, Le2/u;->c(Landroid/content/Context;I)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/4 v3, 0x2

    .line 105
    const/16 v4, 0x16

    .line 106
    .line 107
    const/16 v5, 0x1e

    .line 108
    .line 109
    const/16 v6, 0x10

    .line 110
    .line 111
    if-eqz v2, :cond_e

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-ne v8, v6, :cond_5

    .line 128
    .line 129
    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 130
    .line 131
    const/16 v1, 0xd1

    .line 132
    .line 133
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    if-lt v7, v5, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-ne v5, v4, :cond_6

    .line 144
    .line 145
    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 146
    .line 147
    const/16 v1, 0xd2

    .line 148
    .line 149
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    const/16 v5, 0x17

    .line 158
    .line 159
    if-ne v4, v5, :cond_7

    .line 160
    .line 161
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 162
    .line 163
    const/16 v1, 0xd3

    .line 164
    .line 165
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    const/16 v4, 0x1a

    .line 170
    .line 171
    if-lt v7, v4, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-ne v4, v1, :cond_8

    .line 178
    .line 179
    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 180
    .line 181
    const/16 v1, 0xd4

    .line 182
    .line 183
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    const/16 v4, 0x1b

    .line 193
    .line 194
    if-ne v1, v4, :cond_9

    .line 195
    .line 196
    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 197
    .line 198
    const/16 v1, 0xd5

    .line 199
    .line 200
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_9
    const/16 v1, 0x1f

    .line 206
    .line 207
    if-lt v7, v1, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const/16 v4, 0x22

    .line 214
    .line 215
    if-ne v1, v4, :cond_a

    .line 216
    .line 217
    const-string v0, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 218
    .line 219
    const/16 v1, 0xd6

    .line 220
    .line 221
    invoke-direct {p0, v0, v1}, Le2/q;->f(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    const/16 v4, 0x25

    .line 231
    .line 232
    if-eq v1, v4, :cond_c

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_b

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_b
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    .line 243
    .line 244
    iget v0, p0, Le2/q;->d:I

    .line 245
    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    add-int/2addr v0, v1

    .line 251
    iput v0, p0, Le2/q;->d:I

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_c
    :goto_1
    invoke-direct {p0}, Le2/q;->e()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_d

    .line 260
    .line 261
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 262
    .line 263
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    const-string v0, "android.permission.READ_CALENDAR"

    .line 267
    .line 268
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    iget v0, p0, Le2/q;->d:I

    .line 272
    .line 273
    add-int/2addr v0, v3

    .line 274
    iput v0, p0, Le2/q;->d:I

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_d
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 279
    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_e
    :goto_2
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 290
    .line 291
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_2

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 302
    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-ne v1, v4, :cond_f

    .line 315
    .line 316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    if-ge v1, v5, :cond_f

    .line 319
    .line 320
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 321
    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_f
    iget-object v1, p0, Le2/q;->e:Ljava/util/Map;

    .line 332
    .line 333
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_10
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-lez p1, :cond_11

    .line 347
    .line 348
    new-array p1, p2, [Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    check-cast p1, [Ljava/lang/String;

    .line 355
    .line 356
    iget-object p2, p0, Le2/q;->c:Landroid/app/Activity;

    .line 357
    .line 358
    invoke-static {p2, p1, v1}, Landroidx/core/app/b;->v(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 359
    .line 360
    .line 361
    :cond_11
    iget-object p1, p0, Le2/q;->b:Le2/q$b;

    .line 362
    .line 363
    if-eqz p1, :cond_12

    .line 364
    .line 365
    iget p2, p0, Le2/q;->d:I

    .line 366
    .line 367
    if-nez p2, :cond_12

    .line 368
    .line 369
    iget-object p2, p0, Le2/q;->e:Ljava/util/Map;

    .line 370
    .line 371
    invoke-interface {p1, p2}, Le2/q$b;->a(Ljava/util/Map;)V

    .line 372
    .line 373
    .line 374
    :cond_12
    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/q;->c:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method i(ILe2/q$c;Le2/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le2/q;->c:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "permissions_handler"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Unable to detect current Activity."

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string p1, "PermissionHandler.PermissionManager"

    .line 13
    .line 14
    const-string p2, "Unable to detect current Android Activity."

    .line 15
    .line 16
    invoke-interface {p3, p1, p2}, Le2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {v0, p1}, Le2/u;->c(Landroid/content/Context;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "No android specific permissions needed for: "

    .line 33
    .line 34
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v0}, Le2/q$c;->a(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "No permissions found in manifest for: "

    .line 63
    .line 64
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " no need to show request rationale"

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, v0}, Le2/q$c;->a(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object p1, p0, Le2/q;->c:Landroid/app/Activity;

    .line 87
    .line 88
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1, p3}, Landroidx/core/app/b;->y(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-interface {p2, p1}, Le2/q$c;->a(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Le2/q;->c:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    iget-object v0, p0, Le2/q;->e:Ljava/util/Map;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput p3, p0, Le2/q;->d:I

    .line 12
    .line 13
    return p3

    .line 14
    :cond_1
    const/16 v0, 0xd1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Le2/q;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Le2/q;->a:Landroid/content/Context;

    .line 26
    .line 27
    const-string v0, "power"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/PowerManager;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    move p3, v1

    .line 44
    :cond_2
    const/16 p1, 0x10

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/16 v0, 0xd2

    .line 48
    .line 49
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 p2, 0x1e

    .line 54
    .line 55
    if-lt p1, p2, :cond_4

    .line 56
    .line 57
    invoke-static {}, Le2/n;->a()Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/16 p1, 0x16

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    return p3

    .line 65
    :cond_5
    const/16 v0, 0xd3

    .line 66
    .line 67
    if-ne p1, v0, :cond_6

    .line 68
    .line 69
    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    const/16 p1, 0x17

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const/16 v0, 0xd4

    .line 77
    .line 78
    if-ne p1, v0, :cond_8

    .line 79
    .line 80
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v0, 0x1a

    .line 83
    .line 84
    if-lt p1, v0, :cond_7

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Le2/o;->a(Landroid/content/pm/PackageManager;)Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    const/16 p1, 0x18

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    return p3

    .line 98
    :cond_8
    const/16 v0, 0xd5

    .line 99
    .line 100
    if-ne p1, v0, :cond_9

    .line 101
    .line 102
    const-string p1, "notification"

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/app/NotificationManager;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    const/16 p1, 0x1b

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_9
    const/16 v0, 0xd6

    .line 118
    .line 119
    if-ne p1, v0, :cond_c

    .line 120
    .line 121
    const-string p1, "alarm"

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/app/AlarmManager;

    .line 128
    .line 129
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 p3, 0x1f

    .line 132
    .line 133
    if-lt p2, p3, :cond_a

    .line 134
    .line 135
    invoke-static {p1}, Le2/p;->a(Landroid/app/AlarmManager;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    move p3, p1

    .line 140
    goto :goto_0

    .line 141
    :cond_a
    move p3, v1

    .line 142
    :goto_0
    const/16 p1, 0x22

    .line 143
    .line 144
    :goto_1
    iget-object p2, p0, Le2/q;->e:Ljava/util/Map;

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget p1, p0, Le2/q;->d:I

    .line 158
    .line 159
    sub-int/2addr p1, v1

    .line 160
    iput p1, p0, Le2/q;->d:I

    .line 161
    .line 162
    iget-object p2, p0, Le2/q;->b:Le2/q$b;

    .line 163
    .line 164
    if-eqz p2, :cond_b

    .line 165
    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    iget-object p1, p0, Le2/q;->e:Ljava/util/Map;

    .line 169
    .line 170
    invoke-interface {p2, p1}, Le2/q$b;->a(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    return v1

    .line 174
    :cond_c
    return p3
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 7

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Le2/q;->d:I

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p1, p0, Le2/q;->e:Ljava/util/Map;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    array-length p1, p2

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    array-length p1, p3

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iput v1, p0, Le2/q;->d:I

    .line 21
    .line 22
    const-string p1, "permissions_handler"

    .line 23
    .line 24
    const-string p2, "onRequestPermissionsResult is called without results. This is probably caused by interfering request codes. If you see this error, please file an issue in flutter-permission-handler, including a list of plugins used by this application: https://github.com/Baseflow/flutter-permission-handler/issues"

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-string v3, "android.permission.READ_CALENDAR"

    .line 41
    .line 42
    if-ltz v2, :cond_3

    .line 43
    .line 44
    aget v2, p3, v2

    .line 45
    .line 46
    iget-object v4, p0, Le2/q;->c:Landroid/app/Activity;

    .line 47
    .line 48
    invoke-static {v4, v0, v2}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 53
    .line 54
    const/16 v5, 0x24

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ltz p1, :cond_3

    .line 72
    .line 73
    aget p1, p3, p1

    .line 74
    .line 75
    iget-object v4, p0, Le2/q;->c:Landroid/app/Activity;

    .line 76
    .line 77
    invoke-static {v4, v3, p1}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1}, Le2/u;->i(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 98
    .line 99
    const/16 v4, 0x25

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    array-length p1, p2

    .line 126
    if-ge v1, p1, :cond_10

    .line 127
    .line 128
    aget-object p1, p2, v1

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_f

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_4
    invoke-static {p1}, Le2/u;->g(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/16 v4, 0x14

    .line 149
    .line 150
    if-ne v2, v4, :cond_5

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :cond_5
    aget v4, p3, v1

    .line 155
    .line 156
    const/16 v5, 0x8

    .line 157
    .line 158
    if-ne v2, v5, :cond_6

    .line 159
    .line 160
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 161
    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Ljava/lang/Integer;

    .line 171
    .line 172
    iget-object v6, p0, Le2/q;->c:Landroid/app/Activity;

    .line 173
    .line 174
    invoke-static {v6, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Le2/u;->i(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_6
    const/4 v5, 0x7

    .line 198
    if-ne v2, v5, :cond_8

    .line 199
    .line 200
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 201
    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_7

    .line 211
    .line 212
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    iget-object v6, p0, Le2/q;->c:Landroid/app/Activity;

    .line 219
    .line 220
    invoke-static {v6, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :cond_7
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 232
    .line 233
    const/16 v5, 0xe

    .line 234
    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_f

    .line 244
    .line 245
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 246
    .line 247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    iget-object v6, p0, Le2/q;->c:Landroid/app/Activity;

    .line 252
    .line 253
    invoke-static {v6, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :cond_8
    const/4 v5, 0x4

    .line 267
    if-ne v2, v5, :cond_9

    .line 268
    .line 269
    iget-object v2, p0, Le2/q;->c:Landroid/app/Activity;

    .line 270
    .line 271
    invoke-static {v2, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 276
    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-nez v2, :cond_f

    .line 286
    .line 287
    iget-object v2, p0, Le2/q;->e:Ljava/util/Map;

    .line 288
    .line 289
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_9
    const/4 v6, 0x3

    .line 303
    if-ne v2, v6, :cond_c

    .line 304
    .line 305
    iget-object v6, p0, Le2/q;->c:Landroid/app/Activity;

    .line 306
    .line 307
    invoke-static {v6, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 312
    .line 313
    const/16 v6, 0x1d

    .line 314
    .line 315
    if-ge v4, v6, :cond_a

    .line 316
    .line 317
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 318
    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_a

    .line 328
    .line 329
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 330
    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    :cond_a
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 343
    .line 344
    const/4 v5, 0x5

    .line 345
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-nez v4, :cond_b

    .line 354
    .line 355
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 356
    .line 357
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    :cond_b
    iget-object v4, p0, Le2/q;->e:Ljava/util/Map;

    .line 369
    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_c
    const/16 v5, 0x9

    .line 383
    .line 384
    if-eq v2, v5, :cond_e

    .line 385
    .line 386
    const/16 v5, 0x20

    .line 387
    .line 388
    if-ne v2, v5, :cond_d

    .line 389
    .line 390
    goto :goto_1

    .line 391
    :cond_d
    iget-object v5, p0, Le2/q;->e:Ljava/util/Map;

    .line 392
    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-nez v5, :cond_f

    .line 402
    .line 403
    iget-object v5, p0, Le2/q;->e:Ljava/util/Map;

    .line 404
    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    iget-object v6, p0, Le2/q;->c:Landroid/app/Activity;

    .line 410
    .line 411
    invoke-static {v6, p1, v4}, Le2/u;->k(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_e
    :goto_1
    iget-object p1, p0, Le2/q;->e:Ljava/util/Map;

    .line 424
    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-direct {p0, v2}, Le2/q;->d(I)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    :cond_f
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 441
    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_10
    iget p1, p0, Le2/q;->d:I

    .line 445
    .line 446
    array-length p2, p3

    .line 447
    sub-int/2addr p1, p2

    .line 448
    iput p1, p0, Le2/q;->d:I

    .line 449
    .line 450
    iget-object p2, p0, Le2/q;->b:Le2/q$b;

    .line 451
    .line 452
    if-eqz p2, :cond_11

    .line 453
    .line 454
    if-nez p1, :cond_11

    .line 455
    .line 456
    iget-object p1, p0, Le2/q;->e:Ljava/util/Map;

    .line 457
    .line 458
    invoke-interface {p2, p1}, Le2/q$b;->a(Ljava/util/Map;)V

    .line 459
    .line 460
    .line 461
    :cond_11
    const/4 p1, 0x1

    .line 462
    return p1
.end method
