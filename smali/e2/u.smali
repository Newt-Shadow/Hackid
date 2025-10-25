.class public abstract Le2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0, v2, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const/16 p1, 0x1d

    .line 16
    .line 17
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    .line 19
    if-ge v0, p1, :cond_3

    .line 20
    .line 21
    invoke-static {p0, v2, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 29
    .line 30
    invoke-static {p0, v2, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    return-object v2

    .line 38
    :cond_3
    invoke-static {p0, v2, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_4
    return-object v2
.end method

.method static b(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Le2/u;->l(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, p1}, Le2/u;->f(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    xor-int/2addr v2, v3

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v3, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v3, v2

    .line 23
    :goto_0
    if-nez v1, :cond_3

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-static {p0, p1}, Le2/u;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_3
    if-eqz v1, :cond_4

    .line 31
    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    const/4 p0, 0x4

    .line 35
    return p0

    .line 36
    :cond_4
    return v0
.end method

.method static c(Landroid/content/Context;I)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "android.permission.WRITE_CALENDAR"

    .line 10
    .line 11
    const/16 v4, 0x1d

    .line 12
    .line 13
    const/16 v5, 0x21

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_1
    invoke-static {p0, v0, v3}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_14

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    if-lt p1, v5, :cond_14

    .line 34
    .line 35
    const-string p1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 36
    .line 37
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_14

    .line 42
    .line 43
    const-string p0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_3
    const-string p1, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 51
    .line 52
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_14

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    if-lt p1, v5, :cond_14

    .line 66
    .line 67
    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    .line 68
    .line 69
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_14

    .line 74
    .line 75
    const-string p0, "android.permission.READ_MEDIA_AUDIO"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    if-lt p1, v5, :cond_14

    .line 85
    .line 86
    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    .line 87
    .line 88
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_14

    .line 93
    .line 94
    const-string p0, "android.permission.READ_MEDIA_VIDEO"

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :pswitch_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .line 103
    if-lt p1, v5, :cond_14

    .line 104
    .line 105
    const-string p1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 106
    .line 107
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_14

    .line 112
    .line 113
    const-string p0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    if-lt p1, v1, :cond_14

    .line 123
    .line 124
    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    .line 125
    .line 126
    invoke-static {p0, p1}, Le2/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_14

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :pswitch_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    if-lt p1, v1, :cond_14

    .line 140
    .line 141
    const-string p1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 142
    .line 143
    invoke-static {p0, p1}, Le2/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_14

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    if-lt p1, v1, :cond_14

    .line 157
    .line 158
    const-string p1, "android.permission.BLUETOOTH_SCAN"

    .line 159
    .line 160
    invoke-static {p0, p1}, Le2/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-eqz p0, :cond_14

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_a
    const-string p1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 172
    .line 173
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_14

    .line 178
    .line 179
    const-string p0, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_b
    const-string p1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 187
    .line 188
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_14

    .line 193
    .line 194
    const-string p0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_c
    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 202
    .line 203
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_14

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 215
    .line 216
    const/16 v1, 0x1e

    .line 217
    .line 218
    if-lt p1, v1, :cond_14

    .line 219
    .line 220
    const-string p1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 221
    .line 222
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_14

    .line 227
    .line 228
    const-string p0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 229
    .line 230
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_e
    const-string p1, "android.permission.BLUETOOTH"

    .line 236
    .line 237
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_14

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :pswitch_f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 249
    .line 250
    if-ge p1, v4, :cond_0

    .line 251
    .line 252
    return-object v2

    .line 253
    :cond_0
    const-string p1, "android.permission.ACTIVITY_RECOGNITION"

    .line 254
    .line 255
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    if-eqz p0, :cond_14

    .line 260
    .line 261
    const-string p0, "android.permission.ACTIVITY_RECOGNITION"

    .line 262
    .line 263
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :pswitch_10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 269
    .line 270
    if-ge p1, v4, :cond_1

    .line 271
    .line 272
    return-object v2

    .line 273
    :cond_1
    const-string p1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 274
    .line 275
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-eqz p0, :cond_14

    .line 280
    .line 281
    const-string p0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 282
    .line 283
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :pswitch_11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 289
    .line 290
    if-lt p1, v5, :cond_14

    .line 291
    .line 292
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 293
    .line 294
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-eqz p0, :cond_14

    .line 299
    .line 300
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_12
    const-string p1, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 306
    .line 307
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_14

    .line 312
    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :pswitch_13
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 319
    .line 320
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_2

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    .line 331
    if-lt p1, v4, :cond_3

    .line 332
    .line 333
    if-ne p1, v4, :cond_14

    .line 334
    .line 335
    invoke-static {}, Le2/r;->a()Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_14

    .line 340
    .line 341
    :cond_3
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 342
    .line 343
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    if-eqz p0, :cond_14

    .line 348
    .line 349
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 350
    .line 351
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :pswitch_14
    const-string p1, "android.permission.SEND_SMS"

    .line 357
    .line 358
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_4

    .line 363
    .line 364
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    :cond_4
    const-string p1, "android.permission.RECEIVE_SMS"

    .line 368
    .line 369
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_5

    .line 374
    .line 375
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    :cond_5
    const-string p1, "android.permission.READ_SMS"

    .line 379
    .line 380
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_6

    .line 385
    .line 386
    const-string p1, "android.permission.READ_SMS"

    .line 387
    .line 388
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :cond_6
    const-string p1, "android.permission.RECEIVE_WAP_PUSH"

    .line 392
    .line 393
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-eqz p1, :cond_7

    .line 398
    .line 399
    const-string p1, "android.permission.RECEIVE_WAP_PUSH"

    .line 400
    .line 401
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    :cond_7
    const-string p1, "android.permission.RECEIVE_MMS"

    .line 405
    .line 406
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    if-eqz p0, :cond_14

    .line 411
    .line 412
    const-string p0, "android.permission.RECEIVE_MMS"

    .line 413
    .line 414
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :pswitch_15
    const-string p1, "android.permission.BODY_SENSORS"

    .line 420
    .line 421
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result p0

    .line 425
    if-eqz p0, :cond_14

    .line 426
    .line 427
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :pswitch_16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 433
    .line 434
    if-lt p1, v5, :cond_14

    .line 435
    .line 436
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 437
    .line 438
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    if-eqz p0, :cond_14

    .line 443
    .line 444
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :pswitch_17
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 450
    .line 451
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_8

    .line 456
    .line 457
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 461
    .line 462
    if-le p1, v4, :cond_9

    .line 463
    .line 464
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    .line 465
    .line 466
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_9

    .line 471
    .line 472
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    :cond_9
    const-string v1, "android.permission.CALL_PHONE"

    .line 478
    .line 479
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_a

    .line 484
    .line 485
    const-string v1, "android.permission.CALL_PHONE"

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    :cond_a
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 491
    .line 492
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-eqz v1, :cond_b

    .line 497
    .line 498
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    :cond_b
    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 504
    .line 505
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-eqz v1, :cond_c

    .line 510
    .line 511
    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_c
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 517
    .line 518
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-eqz v1, :cond_d

    .line 523
    .line 524
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    :cond_d
    const-string v1, "android.permission.USE_SIP"

    .line 530
    .line 531
    invoke-static {p0, v0, v1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_e

    .line 536
    .line 537
    const-string v1, "android.permission.USE_SIP"

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    :cond_e
    const/16 v1, 0x1a

    .line 543
    .line 544
    if-lt p1, v1, :cond_14

    .line 545
    .line 546
    const-string p1, "android.permission.ANSWER_PHONE_CALLS"

    .line 547
    .line 548
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 549
    .line 550
    .line 551
    move-result p0

    .line 552
    if-eqz p0, :cond_14

    .line 553
    .line 554
    const-string p0, "android.permission.ANSWER_PHONE_CALLS"

    .line 555
    .line 556
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :pswitch_18
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 562
    .line 563
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    move-result p0

    .line 567
    if-eqz p0, :cond_14

    .line 568
    .line 569
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    goto/16 :goto_0

    .line 573
    .line 574
    :pswitch_19
    return-object v2

    .line 575
    :pswitch_1a
    const/4 v1, 0x4

    .line 576
    if-ne p1, v1, :cond_f

    .line 577
    .line 578
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 579
    .line 580
    if-lt p1, v4, :cond_f

    .line 581
    .line 582
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 583
    .line 584
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    if-eqz p0, :cond_14

    .line 589
    .line 590
    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 591
    .line 592
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_0

    .line 596
    :cond_f
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 597
    .line 598
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-eqz v1, :cond_10

    .line 603
    .line 604
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    :cond_10
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 608
    .line 609
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 610
    .line 611
    .line 612
    move-result p0

    .line 613
    if-eqz p0, :cond_14

    .line 614
    .line 615
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 616
    .line 617
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    goto :goto_0

    .line 621
    :pswitch_1b
    const-string p1, "android.permission.READ_CONTACTS"

    .line 622
    .line 623
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_11

    .line 628
    .line 629
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    :cond_11
    const-string p1, "android.permission.WRITE_CONTACTS"

    .line 633
    .line 634
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_12

    .line 639
    .line 640
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    :cond_12
    const-string p1, "android.permission.GET_ACCOUNTS"

    .line 644
    .line 645
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 646
    .line 647
    .line 648
    move-result p0

    .line 649
    if-eqz p0, :cond_14

    .line 650
    .line 651
    const-string p0, "android.permission.GET_ACCOUNTS"

    .line 652
    .line 653
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    goto :goto_0

    .line 657
    :pswitch_1c
    const-string p1, "android.permission.CAMERA"

    .line 658
    .line 659
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 660
    .line 661
    .line 662
    move-result p0

    .line 663
    if-eqz p0, :cond_14

    .line 664
    .line 665
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    goto :goto_0

    .line 669
    :pswitch_1d
    invoke-static {p0, v0, v3}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result p1

    .line 673
    if-eqz p1, :cond_13

    .line 674
    .line 675
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    :cond_13
    const-string p1, "android.permission.READ_CALENDAR"

    .line 679
    .line 680
    invoke-static {p0, v0, p1}, Le2/u;->e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 681
    .line 682
    .line 683
    move-result p0

    .line 684
    if-eqz p0, :cond_14

    .line 685
    .line 686
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    :cond_14
    :goto_0
    return-object v0

    .line 690
    nop

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_19
        :pswitch_15
        :pswitch_14
        :pswitch_18
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_19
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1d
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x21

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/16 v1, 0x1000

    .line 16
    .line 17
    invoke-static {v1, v2}, Le2/s;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, p0, v1}, Le2/t;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/16 v1, 0x1000

    .line 31
    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "permissions_handler"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    return v0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez p0, :cond_2

    .line 33
    .line 34
    const-string p0, "Unable to detect current Activity or App Context."

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    invoke-static {p0}, Le2/u;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    const-string p0, "Unable to get Package info, will not be able to determine permissions to request."

    .line 47
    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    return v0

    .line 86
    :goto_0
    const-string p1, "Unable to check manifest for permission: "

    .line 87
    .line 88
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_5
    return v1
.end method

.method static f(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/app/b;->y(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method static g(Ljava/lang/String;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x1e

    .line 11
    .line 12
    const/16 v3, 0x1d

    .line 13
    .line 14
    const/16 v4, 0x1c

    .line 15
    .line 16
    const/16 v5, 0x1b

    .line 17
    .line 18
    const/16 v6, 0x18

    .line 19
    .line 20
    const/16 v7, 0x17

    .line 21
    .line 22
    const/16 v8, 0x16

    .line 23
    .line 24
    const/16 v9, 0x14

    .line 25
    .line 26
    const/16 v10, 0x13

    .line 27
    .line 28
    const/16 v11, 0x12

    .line 29
    .line 30
    const/16 v12, 0x11

    .line 31
    .line 32
    const/16 v13, 0xf

    .line 33
    .line 34
    const/16 v14, 0xd

    .line 35
    .line 36
    const/16 v15, 0xc

    .line 37
    .line 38
    const/16 v16, 0x9

    .line 39
    .line 40
    const/16 v17, 0x8

    .line 41
    .line 42
    const/16 v18, 0x7

    .line 43
    .line 44
    const/16 v19, 0x4

    .line 45
    .line 46
    const/16 v20, 0x3

    .line 47
    .line 48
    const/16 v21, 0x2

    .line 49
    .line 50
    const/16 v22, 0x1

    .line 51
    .line 52
    const/16 v23, 0x0

    .line 53
    .line 54
    const/16 v24, -0x1

    .line 55
    .line 56
    sparse-switch v1, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :sswitch_0
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_0
    const/16 v24, 0x28

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :sswitch_1
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_1
    const/16 v24, 0x27

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :sswitch_2
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_2
    const/16 v24, 0x26

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :sswitch_3
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_3
    const/16 v24, 0x25

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :sswitch_4
    const-string v1, "android.permission.READ_CONTACTS"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_4
    const/16 v24, 0x24

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_5
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_5
    const/16 v24, 0x23

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :sswitch_6
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_6
    const/16 v24, 0x22

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :sswitch_7
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_7
    const/16 v24, 0x21

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :sswitch_8
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_8

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_8
    const/16 v24, 0x20

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :sswitch_9
    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_9
    const/16 v24, 0x1f

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :sswitch_a
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_a

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_a
    move/from16 v24, v2

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :sswitch_b
    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_b

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_b
    move/from16 v24, v3

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :sswitch_c
    const-string v1, "android.permission.USE_SIP"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_c

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_c
    move/from16 v24, v4

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :sswitch_d
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_d

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_d
    move/from16 v24, v5

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :sswitch_e
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_e

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_e
    const/16 v24, 0x1a

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :sswitch_f
    const-string v1, "android.permission.WRITE_CALL_LOG"

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_f

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_f
    const/16 v24, 0x19

    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :sswitch_10
    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_10

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_10
    move/from16 v24, v6

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :sswitch_11
    const-string v1, "android.permission.CAMERA"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_11

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_11
    move/from16 v24, v7

    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :sswitch_12
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_12

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_12
    move/from16 v24, v8

    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :sswitch_13
    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_13

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_13
    const/16 v24, 0x15

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :sswitch_14
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_14

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_14
    move/from16 v24, v9

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :sswitch_15
    const-string v1, "android.permission.CALL_PHONE"

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_15

    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :cond_15
    move/from16 v24, v10

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :sswitch_16
    const-string v1, "android.permission.SEND_SMS"

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_16

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_16
    move/from16 v24, v11

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :sswitch_17
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_17

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_17
    move/from16 v24, v12

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :sswitch_18
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_18

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_18
    const/16 v24, 0x10

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :sswitch_19
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_19

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_19
    move/from16 v24, v13

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :sswitch_1a
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_1a

    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_1a
    const/16 v24, 0xe

    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :sswitch_1b
    const-string v1, "android.permission.RECEIVE_SMS"

    .line 440
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_1b

    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :cond_1b
    move/from16 v24, v14

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :sswitch_1c
    const-string v1, "android.permission.RECEIVE_MMS"

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_1c

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_1c
    move/from16 v24, v15

    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :sswitch_1d
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_1d

    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :cond_1d
    const/16 v24, 0xb

    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :sswitch_1e
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_1e

    .line 488
    .line 489
    goto/16 :goto_0

    .line 490
    .line 491
    :cond_1e
    const/16 v24, 0xa

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :sswitch_1f
    const-string v1, "android.permission.BODY_SENSORS"

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-nez v0, :cond_1f

    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :cond_1f
    move/from16 v24, v16

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :sswitch_20
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_20

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_20
    move/from16 v24, v17

    .line 520
    .line 521
    goto/16 :goto_0

    .line 522
    .line 523
    :sswitch_21
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_21

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_21
    move/from16 v24, v18

    .line 534
    .line 535
    goto :goto_0

    .line 536
    :sswitch_22
    const-string v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 537
    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-nez v0, :cond_22

    .line 543
    .line 544
    goto :goto_0

    .line 545
    :cond_22
    const/16 v24, 0x6

    .line 546
    .line 547
    goto :goto_0

    .line 548
    :sswitch_23
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_23

    .line 555
    .line 556
    goto :goto_0

    .line 557
    :cond_23
    const/16 v24, 0x5

    .line 558
    .line 559
    goto :goto_0

    .line 560
    :sswitch_24
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-nez v0, :cond_24

    .line 567
    .line 568
    goto :goto_0

    .line 569
    :cond_24
    move/from16 v24, v19

    .line 570
    .line 571
    goto :goto_0

    .line 572
    :sswitch_25
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_25

    .line 579
    .line 580
    goto :goto_0

    .line 581
    :cond_25
    move/from16 v24, v20

    .line 582
    .line 583
    goto :goto_0

    .line 584
    :sswitch_26
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_26

    .line 591
    .line 592
    goto :goto_0

    .line 593
    :cond_26
    move/from16 v24, v21

    .line 594
    .line 595
    goto :goto_0

    .line 596
    :sswitch_27
    const-string v1, "android.permission.READ_CALENDAR"

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_27

    .line 603
    .line 604
    goto :goto_0

    .line 605
    :cond_27
    move/from16 v24, v22

    .line 606
    .line 607
    goto :goto_0

    .line 608
    :sswitch_28
    const-string v1, "android.permission.READ_SMS"

    .line 609
    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-nez v0, :cond_28

    .line 615
    .line 616
    goto :goto_0

    .line 617
    :cond_28
    move/from16 v24, v23

    .line 618
    .line 619
    :goto_0
    packed-switch v24, :pswitch_data_0

    .line 620
    .line 621
    .line 622
    return v9

    .line 623
    :pswitch_0
    return v11

    .line 624
    :pswitch_1
    return v4

    .line 625
    :pswitch_2
    return v19

    .line 626
    :pswitch_3
    return v18

    .line 627
    :pswitch_4
    return v10

    .line 628
    :pswitch_5
    return v6

    .line 629
    :pswitch_6
    return v3

    .line 630
    :pswitch_7
    const/16 v0, 0x22

    .line 631
    .line 632
    return v0

    .line 633
    :pswitch_8
    const/16 v0, 0x20

    .line 634
    .line 635
    return v0

    .line 636
    :pswitch_9
    const/16 v0, 0x21

    .line 637
    .line 638
    return v0

    .line 639
    :pswitch_a
    return v22

    .line 640
    :pswitch_b
    const/16 v0, 0x23

    .line 641
    .line 642
    return v0

    .line 643
    :pswitch_c
    return v21

    .line 644
    :pswitch_d
    return v16

    .line 645
    :pswitch_e
    return v13

    .line 646
    :pswitch_f
    return v2

    .line 647
    :pswitch_10
    const/16 v0, 0x1f

    .line 648
    .line 649
    return v0

    .line 650
    :pswitch_11
    return v15

    .line 651
    :pswitch_12
    return v7

    .line 652
    :pswitch_13
    return v5

    .line 653
    :pswitch_14
    return v8

    .line 654
    :pswitch_15
    return v20

    .line 655
    :pswitch_16
    return v17

    .line 656
    :pswitch_17
    return v12

    .line 657
    :pswitch_18
    return v23

    .line 658
    :pswitch_19
    return v14

    .line 659
    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_28
        -0x72f13779 -> :sswitch_27
        -0x72ca2557 -> :sswitch_26
        -0x7286b8f4 -> :sswitch_25
        -0x70918bc1 -> :sswitch_24
        -0x6c1165bf -> :sswitch_23
        -0x6a47e915 -> :sswitch_22
        -0x5d1492dd -> :sswitch_21
        -0x583351d1 -> :sswitch_20
        -0x49cb6684 -> :sswitch_1f
        -0x456a1f70 -> :sswitch_1e
        -0x363647ed -> :sswitch_1d
        -0x3562fc09 -> :sswitch_1c
        -0x3562e583 -> :sswitch_1b
        -0x2f9abb27 -> :sswitch_1a
        -0x1833add0 -> :sswitch_19
        -0x3c1ac56 -> :sswitch_18
        -0x550ba9 -> :sswitch_17
        0x322a742 -> :sswitch_16
        0x6afff6d -> :sswitch_15
        0xa7a881c -> :sswitch_14
        0xcc96c13 -> :sswitch_13
        0x158e77d1 -> :sswitch_12
        0x1b9efa65 -> :sswitch_11
        0x23fb06fe -> :sswitch_10
        0x24658583 -> :sswitch_f
        0x2933cd92 -> :sswitch_e
        0x2a564637 -> :sswitch_d
        0x2ec2d2a2 -> :sswitch_c
        0x39db9e69 -> :sswitch_b
        0x4586b056 -> :sswitch_a
        0x4bcdda0f -> :sswitch_9
        0x516a29a7 -> :sswitch_8
        0x69eee241 -> :sswitch_7
        0x6a1dc9a7 -> :sswitch_6
        0x6d24f988 -> :sswitch_5
        0x75dd2d9c -> :sswitch_4
        0x78aeb38b -> :sswitch_3
        0x7aed10ce -> :sswitch_2
        0x7e09eacb -> :sswitch_1
        0x7f2f307d -> :sswitch_0
    .end sparse-switch

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_19
        :pswitch_11
        :pswitch_16
        :pswitch_10
        :pswitch_19
        :pswitch_19
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_18
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_16
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "sp_permission_handler_permission_was_denied_before"

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static i(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Le2/u;->j(Ljava/util/Collection;)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method static j(Ljava/util/Collection;)Ljava/lang/Integer;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    const/4 v0, 0x3

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3
    const/4 p0, 0x1

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method static k(Landroid/app/Activity;Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0, p1}, Le2/u;->b(Landroid/app/Activity;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string p1, "sp_permission_handler_permission_was_denied_before"

    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
