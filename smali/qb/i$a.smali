.class public final Lqb/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqb/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Landroid/content/Context;)Lqb/i;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "notificationId"

    .line 16
    .line 17
    const/16 v3, 0x3e8

    .line 18
    .line 19
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v3, "serviceId"

    .line 24
    .line 25
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const-string v1, "notificationChannelId"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    const-string v1, "foreground_service"

    .line 39
    .line 40
    :cond_0
    move-object v6, v1

    .line 41
    const-string v1, "notificationChannelName"

    .line 42
    .line 43
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    const-string v1, "Foreground Service"

    .line 50
    .line 51
    :cond_1
    move-object v7, v1

    .line 52
    const-string v1, "notificationChannelDescription"

    .line 53
    .line 54
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const-string v1, "notificationChannelImportance"

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const-string v1, "notificationPriority"

    .line 66
    .line 67
    const/4 v3, -0x1

    .line 68
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const-string v1, "enableVibration"

    .line 73
    .line 74
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const-string v1, "playSound"

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const-string v1, "showWhen"

    .line 85
    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    const-string v1, "showBadge"

    .line 91
    .line 92
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    const-string v1, "onlyAlertOnce"

    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    const-string v1, "visibility"

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    new-instance v0, Lqb/i;

    .line 110
    .line 111
    move-object v4, v0

    .line 112
    invoke-direct/range {v4 .. v16}, Lqb/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZZI)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "serviceId"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v5, 0x0

    .line 27
    :goto_0
    instance-of v6, v5, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    check-cast v5, Ljava/lang/Integer;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    :goto_1
    if-eqz v5, :cond_2

    .line 36
    .line 37
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    goto :goto_5

    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const-string v5, "notificationId"

    .line 45
    .line 46
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/4 v5, 0x0

    .line 52
    :goto_3
    instance-of v6, v5, Ljava/lang/Integer;

    .line 53
    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    check-cast v5, Ljava/lang/Integer;

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    const/4 v5, 0x0

    .line 60
    :goto_4
    if-eqz v5, :cond_5

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    const/16 v5, 0x3e8

    .line 64
    .line 65
    :goto_5
    const-string v6, "notificationChannelId"

    .line 66
    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    goto :goto_6

    .line 74
    :cond_6
    const/4 v7, 0x0

    .line 75
    :goto_6
    instance-of v8, v7, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v8, :cond_7

    .line 78
    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_7
    const/4 v7, 0x0

    .line 83
    :goto_7
    const-string v8, "notificationChannelName"

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    goto :goto_8

    .line 92
    :cond_8
    const/4 v9, 0x0

    .line 93
    :goto_8
    instance-of v10, v9, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v10, :cond_9

    .line 96
    .line 97
    check-cast v9, Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_9

    .line 100
    :cond_9
    const/4 v9, 0x0

    .line 101
    :goto_9
    const-string v10, "notificationChannelDescription"

    .line 102
    .line 103
    if-eqz v1, :cond_a

    .line 104
    .line 105
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    goto :goto_a

    .line 110
    :cond_a
    const/4 v11, 0x0

    .line 111
    :goto_a
    instance-of v12, v11, Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v12, :cond_b

    .line 114
    .line 115
    check-cast v11, Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_b

    .line 118
    :cond_b
    const/4 v11, 0x0

    .line 119
    :goto_b
    const-string v12, "notificationChannelImportance"

    .line 120
    .line 121
    if-eqz v1, :cond_c

    .line 122
    .line 123
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    goto :goto_c

    .line 128
    :cond_c
    const/4 v13, 0x0

    .line 129
    :goto_c
    instance-of v14, v13, Ljava/lang/Integer;

    .line 130
    .line 131
    if-eqz v14, :cond_d

    .line 132
    .line 133
    check-cast v13, Ljava/lang/Integer;

    .line 134
    .line 135
    goto :goto_d

    .line 136
    :cond_d
    const/4 v13, 0x0

    .line 137
    :goto_d
    if-eqz v13, :cond_e

    .line 138
    .line 139
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    goto :goto_e

    .line 144
    :cond_e
    const/4 v13, 0x2

    .line 145
    :goto_e
    const-string v14, "notificationPriority"

    .line 146
    .line 147
    if-eqz v1, :cond_f

    .line 148
    .line 149
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    goto :goto_f

    .line 154
    :cond_f
    const/4 v15, 0x0

    .line 155
    :goto_f
    instance-of v3, v15, Ljava/lang/Integer;

    .line 156
    .line 157
    if-eqz v3, :cond_10

    .line 158
    .line 159
    check-cast v15, Ljava/lang/Integer;

    .line 160
    .line 161
    goto :goto_10

    .line 162
    :cond_10
    const/4 v15, 0x0

    .line 163
    :goto_10
    if-eqz v15, :cond_11

    .line 164
    .line 165
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    goto :goto_11

    .line 170
    :cond_11
    const/4 v3, -0x1

    .line 171
    :goto_11
    const-string v15, "enableVibration"

    .line 172
    .line 173
    if-eqz v1, :cond_12

    .line 174
    .line 175
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v17

    .line 179
    move-object/from16 v4, v17

    .line 180
    .line 181
    move-object/from16 v17, v15

    .line 182
    .line 183
    goto :goto_12

    .line 184
    :cond_12
    move-object/from16 v17, v15

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    :goto_12
    instance-of v15, v4, Ljava/lang/Boolean;

    .line 188
    .line 189
    if-eqz v15, :cond_13

    .line 190
    .line 191
    check-cast v4, Ljava/lang/Boolean;

    .line 192
    .line 193
    goto :goto_13

    .line 194
    :cond_13
    const/4 v4, 0x0

    .line 195
    :goto_13
    if-eqz v4, :cond_14

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    goto :goto_14

    .line 202
    :cond_14
    const/4 v4, 0x0

    .line 203
    :goto_14
    const-string v15, "playSound"

    .line 204
    .line 205
    if-eqz v1, :cond_15

    .line 206
    .line 207
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v18

    .line 211
    move/from16 v19, v4

    .line 212
    .line 213
    move-object/from16 v26, v18

    .line 214
    .line 215
    move-object/from16 v18, v15

    .line 216
    .line 217
    move-object/from16 v15, v26

    .line 218
    .line 219
    goto :goto_15

    .line 220
    :cond_15
    move/from16 v19, v4

    .line 221
    .line 222
    move-object/from16 v18, v15

    .line 223
    .line 224
    const/4 v15, 0x0

    .line 225
    :goto_15
    instance-of v4, v15, Ljava/lang/Boolean;

    .line 226
    .line 227
    if-eqz v4, :cond_16

    .line 228
    .line 229
    check-cast v15, Ljava/lang/Boolean;

    .line 230
    .line 231
    goto :goto_16

    .line 232
    :cond_16
    const/4 v15, 0x0

    .line 233
    :goto_16
    if-eqz v15, :cond_17

    .line 234
    .line 235
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    goto :goto_17

    .line 240
    :cond_17
    const/4 v4, 0x0

    .line 241
    :goto_17
    const-string v15, "showWhen"

    .line 242
    .line 243
    if-eqz v1, :cond_18

    .line 244
    .line 245
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v20

    .line 249
    move/from16 v21, v4

    .line 250
    .line 251
    move-object/from16 v26, v20

    .line 252
    .line 253
    move-object/from16 v20, v15

    .line 254
    .line 255
    move-object/from16 v15, v26

    .line 256
    .line 257
    goto :goto_18

    .line 258
    :cond_18
    move/from16 v21, v4

    .line 259
    .line 260
    move-object/from16 v20, v15

    .line 261
    .line 262
    const/4 v15, 0x0

    .line 263
    :goto_18
    instance-of v4, v15, Ljava/lang/Boolean;

    .line 264
    .line 265
    if-eqz v4, :cond_19

    .line 266
    .line 267
    check-cast v15, Ljava/lang/Boolean;

    .line 268
    .line 269
    goto :goto_19

    .line 270
    :cond_19
    const/4 v15, 0x0

    .line 271
    :goto_19
    if-eqz v15, :cond_1a

    .line 272
    .line 273
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    goto :goto_1a

    .line 278
    :cond_1a
    const/4 v4, 0x0

    .line 279
    :goto_1a
    const-string v15, "showBadge"

    .line 280
    .line 281
    if-eqz v1, :cond_1b

    .line 282
    .line 283
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v22

    .line 287
    move/from16 v23, v4

    .line 288
    .line 289
    move-object/from16 v26, v22

    .line 290
    .line 291
    move-object/from16 v22, v15

    .line 292
    .line 293
    move-object/from16 v15, v26

    .line 294
    .line 295
    goto :goto_1b

    .line 296
    :cond_1b
    move/from16 v23, v4

    .line 297
    .line 298
    move-object/from16 v22, v15

    .line 299
    .line 300
    const/4 v15, 0x0

    .line 301
    :goto_1b
    instance-of v4, v15, Ljava/lang/Boolean;

    .line 302
    .line 303
    if-eqz v4, :cond_1c

    .line 304
    .line 305
    check-cast v15, Ljava/lang/Boolean;

    .line 306
    .line 307
    goto :goto_1c

    .line 308
    :cond_1c
    const/4 v15, 0x0

    .line 309
    :goto_1c
    if-eqz v15, :cond_1d

    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    goto :goto_1d

    .line 316
    :cond_1d
    const/4 v4, 0x0

    .line 317
    :goto_1d
    const-string v15, "onlyAlertOnce"

    .line 318
    .line 319
    if-eqz v1, :cond_1e

    .line 320
    .line 321
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v24

    .line 325
    move/from16 v25, v4

    .line 326
    .line 327
    move-object/from16 v26, v24

    .line 328
    .line 329
    move-object/from16 v24, v15

    .line 330
    .line 331
    move-object/from16 v15, v26

    .line 332
    .line 333
    goto :goto_1e

    .line 334
    :cond_1e
    move/from16 v25, v4

    .line 335
    .line 336
    move-object/from16 v24, v15

    .line 337
    .line 338
    const/4 v15, 0x0

    .line 339
    :goto_1e
    instance-of v4, v15, Ljava/lang/Boolean;

    .line 340
    .line 341
    if-eqz v4, :cond_1f

    .line 342
    .line 343
    check-cast v15, Ljava/lang/Boolean;

    .line 344
    .line 345
    goto :goto_1f

    .line 346
    :cond_1f
    const/4 v15, 0x0

    .line 347
    :goto_1f
    if-eqz v15, :cond_20

    .line 348
    .line 349
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    goto :goto_20

    .line 354
    :cond_20
    const/4 v4, 0x0

    .line 355
    :goto_20
    const-string v15, "visibility"

    .line 356
    .line 357
    if-eqz v1, :cond_21

    .line 358
    .line 359
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    move-object/from16 v16, v15

    .line 364
    .line 365
    goto :goto_21

    .line 366
    :cond_21
    move-object/from16 v16, v15

    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    :goto_21
    instance-of v15, v1, Ljava/lang/Integer;

    .line 370
    .line 371
    if-eqz v15, :cond_22

    .line 372
    .line 373
    check-cast v1, Ljava/lang/Integer;

    .line 374
    .line 375
    goto :goto_22

    .line 376
    :cond_22
    const/4 v1, 0x0

    .line 377
    :goto_22
    if-eqz v1, :cond_23

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    goto :goto_23

    .line 384
    :cond_23
    const/4 v1, 0x1

    .line 385
    :goto_23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    .line 391
    .line 392
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    .line 394
    .line 395
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    .line 397
    .line 398
    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    .line 400
    .line 401
    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    .line 403
    .line 404
    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 405
    .line 406
    .line 407
    move-object/from16 v3, v17

    .line 408
    .line 409
    move/from16 v2, v19

    .line 410
    .line 411
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    .line 413
    .line 414
    move-object/from16 v3, v18

    .line 415
    .line 416
    move/from16 v2, v21

    .line 417
    .line 418
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    .line 420
    .line 421
    move-object/from16 v3, v20

    .line 422
    .line 423
    move/from16 v2, v23

    .line 424
    .line 425
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    .line 427
    .line 428
    move-object/from16 v3, v22

    .line 429
    .line 430
    move/from16 v2, v25

    .line 431
    .line 432
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 433
    .line 434
    .line 435
    move-object/from16 v2, v24

    .line 436
    .line 437
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    .line 439
    .line 440
    move-object/from16 v2, v16

    .line 441
    .line 442
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    .line 444
    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    .line 447
    .line 448
    return-void
.end method
