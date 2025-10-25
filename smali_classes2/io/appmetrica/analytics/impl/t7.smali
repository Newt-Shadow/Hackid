.class public final Lio/appmetrica/analytics/impl/t7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lio/appmetrica/analytics/impl/c9;

.field public final d:Lio/appmetrica/analytics/impl/I8;

.field public final e:Lio/appmetrica/analytics/impl/b0;

.field public final f:Lio/appmetrica/analytics/impl/S8;

.field public final g:Lio/appmetrica/analytics/impl/w7;

.field public final h:Lio/appmetrica/analytics/impl/e6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Gk;ILio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/I8;Lio/appmetrica/analytics/impl/b0;Lio/appmetrica/analytics/impl/S8;Lio/appmetrica/analytics/impl/w7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/t7;->a:Landroid/content/Context;

    .line 3
    iput p3, p0, Lio/appmetrica/analytics/impl/t7;->b:I

    .line 4
    iput-object p4, p0, Lio/appmetrica/analytics/impl/t7;->c:Lio/appmetrica/analytics/impl/c9;

    .line 5
    iput-object p5, p0, Lio/appmetrica/analytics/impl/t7;->d:Lio/appmetrica/analytics/impl/I8;

    .line 6
    iput-object p6, p0, Lio/appmetrica/analytics/impl/t7;->e:Lio/appmetrica/analytics/impl/b0;

    .line 7
    iput-object p7, p0, Lio/appmetrica/analytics/impl/t7;->f:Lio/appmetrica/analytics/impl/S8;

    .line 8
    iput-object p8, p0, Lio/appmetrica/analytics/impl/t7;->g:Lio/appmetrica/analytics/impl/w7;

    .line 9
    iget-object p1, p5, Lio/appmetrica/analytics/impl/I8;->a:Lio/appmetrica/analytics/impl/e6;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Gk;ILio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/I8;Lio/appmetrica/analytics/impl/lh;Lio/appmetrica/analytics/impl/b0;)V
    .locals 9

    .line 10
    new-instance v7, Lio/appmetrica/analytics/impl/S8;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/S8;-><init>()V

    .line 11
    new-instance v8, Lio/appmetrica/analytics/impl/w7;

    move-object v0, p6

    invoke-direct {v8, p6}, Lio/appmetrica/analytics/impl/w7;-><init>(Lio/appmetrica/analytics/impl/lh;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    .line 12
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/t7;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Gk;ILio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/I8;Lio/appmetrica/analytics/impl/b0;Lio/appmetrica/analytics/impl/S8;Lio/appmetrica/analytics/impl/w7;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->A()Lio/appmetrica/analytics/impl/Um;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lio/appmetrica/analytics/impl/s7;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/s7;-><init>(Lkotlin/jvm/internal/c0;)V

    .line 15
    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/Um;->b:Lio/appmetrica/analytics/impl/Wm;

    .line 19
    .line 20
    invoke-interface {v3, v2}, Lio/appmetrica/analytics/impl/Wm;->a(Lio/appmetrica/analytics/impl/Vm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    iget-object v0, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1

    .line 31
    throw v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/p7;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/p7;

    .line 4
    .line 5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 6
    .line 7
    iget v2, v2, Lio/appmetrica/analytics/impl/e6;->e:I

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 14
    .line 15
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/e6;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 20
    .line 21
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/e6;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->c:Lio/appmetrica/analytics/impl/c9;

    .line 26
    .line 27
    iget v6, v1, Lio/appmetrica/analytics/impl/t7;->b:I

    .line 28
    .line 29
    iget-object v7, v2, Lio/appmetrica/analytics/impl/c9;->a:Lio/appmetrica/analytics/impl/d9;

    .line 30
    .line 31
    iget-object v7, v7, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/do;

    .line 32
    .line 33
    monitor-enter v7

    .line 34
    :try_start_0
    iget-object v8, v7, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    .line 35
    .line 36
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string v9, "numbers_of_type"

    .line 41
    .line 42
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v7

    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-wide/16 v7, 0x0

    .line 59
    .line 60
    :goto_0
    iget-object v2, v2, Lio/appmetrica/analytics/impl/c9;->a:Lio/appmetrica/analytics/impl/d9;

    .line 61
    .line 62
    const-wide/16 v9, 0x1

    .line 63
    .line 64
    add-long/2addr v9, v7

    .line 65
    invoke-virtual {v2, v6, v9, v10}, Lio/appmetrica/analytics/impl/d9;->a(IJ)V

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->g:Lio/appmetrica/analytics/impl/w7;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object v7, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 78
    .line 79
    invoke-virtual {v7}, Lio/appmetrica/analytics/impl/za;->l()Lio/appmetrica/analytics/impl/Vb;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-interface {v7}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getUserLocation()Landroid/location/Location;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/4 v9, 0x0

    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    sget v7, Lio/appmetrica/analytics/impl/no;->b:I

    .line 91
    .line 92
    new-instance v7, Landroid/location/Location;

    .line 93
    .line 94
    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const-string v10, ""

    .line 102
    .line 103
    invoke-virtual {v7, v10}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Lio/appmetrica/analytics/impl/no;

    .line 107
    .line 108
    invoke-direct {v10, v7, v8}, Lio/appmetrica/analytics/impl/no;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {v7}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getSystemLocation()Landroid/location/Location;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    new-instance v10, Lio/appmetrica/analytics/impl/no;

    .line 119
    .line 120
    new-instance v8, Landroid/location/Location;

    .line 121
    .line 122
    invoke-direct {v8, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 123
    .line 124
    .line 125
    const-string v7, ""

    .line 126
    .line 127
    invoke-direct {v10, v8, v7}, Lio/appmetrica/analytics/impl/no;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move-object v10, v9

    .line 132
    :goto_1
    iget-object v2, v2, Lio/appmetrica/analytics/impl/w7;->a:Lio/appmetrica/analytics/impl/lh;

    .line 133
    .line 134
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/lh;->d:Z

    .line 135
    .line 136
    if-eqz v10, :cond_3

    .line 137
    .line 138
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    move-object v14, v7

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    move-object v14, v9

    .line 149
    :goto_2
    if-eqz v10, :cond_4

    .line 150
    .line 151
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 152
    .line 153
    .line 154
    move-result-wide v7

    .line 155
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    move-object v13, v7

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move-object v13, v9

    .line 162
    :goto_3
    if-eqz v10, :cond_5

    .line 163
    .line 164
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v7

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    move-object/from16 v19, v7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    move-object/from16 v19, v9

    .line 176
    .line 177
    :goto_4
    if-eqz v10, :cond_6

    .line 178
    .line 179
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    float-to-int v7, v7

    .line 184
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    move-object/from16 v17, v7

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    move-object/from16 v17, v9

    .line 192
    .line 193
    :goto_5
    if-eqz v10, :cond_7

    .line 194
    .line 195
    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    float-to-int v7, v7

    .line 200
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    move-object/from16 v16, v7

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_7
    move-object/from16 v16, v9

    .line 208
    .line 209
    :goto_6
    if-eqz v10, :cond_8

    .line 210
    .line 211
    invoke-virtual {v10}, Landroid/location/Location;->getSpeed()F

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    float-to-int v7, v7

    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    move-object/from16 v18, v7

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_8
    move-object/from16 v18, v9

    .line 224
    .line 225
    :goto_7
    if-eqz v10, :cond_9

    .line 226
    .line 227
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    double-to-int v7, v7

    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    move-object v15, v7

    .line 237
    goto :goto_8

    .line 238
    :cond_9
    move-object v15, v9

    .line 239
    :goto_8
    if-eqz v10, :cond_a

    .line 240
    .line 241
    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    move-object/from16 v20, v7

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_a
    move-object/from16 v20, v9

    .line 249
    .line 250
    :goto_9
    if-eqz v10, :cond_b

    .line 251
    .line 252
    iget-object v9, v10, Lio/appmetrica/analytics/impl/no;->a:Ljava/lang/String;

    .line 253
    .line 254
    :cond_b
    move-object/from16 v21, v9

    .line 255
    .line 256
    new-instance v11, Lio/appmetrica/analytics/impl/u7;

    .line 257
    .line 258
    move-object v7, v11

    .line 259
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-direct/range {v11 .. v21}, Lio/appmetrica/analytics/impl/u7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 267
    .line 268
    iget-object v8, v2, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->e:Lio/appmetrica/analytics/impl/b0;

    .line 271
    .line 272
    iget-object v9, v2, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    .line 273
    .line 274
    iget-wide v10, v2, Lio/appmetrica/analytics/impl/b0;->b:J

    .line 275
    .line 276
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 281
    .line 282
    iget v2, v2, Lio/appmetrica/analytics/impl/e6;->g:I

    .line 283
    .line 284
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->a:Landroid/content/Context;

    .line 289
    .line 290
    sget-object v12, Lio/appmetrica/analytics/impl/Ee;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 291
    .line 292
    const-string v12, "connectivity"

    .line 293
    .line 294
    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 299
    .line 300
    sget-object v12, Lio/appmetrica/analytics/impl/De;->n:Lio/appmetrica/analytics/impl/De;

    .line 301
    .line 302
    new-instance v13, Lio/appmetrica/analytics/impl/Ce;

    .line 303
    .line 304
    invoke-direct {v13}, Lio/appmetrica/analytics/impl/Ce;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v14, "getting connection type"

    .line 308
    .line 309
    const-string v15, "ConnectivityManager"

    .line 310
    .line 311
    invoke-static {v2, v14, v15, v12, v13}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Lio/appmetrica/analytics/impl/De;

    .line 316
    .line 317
    sget-object v12, Lio/appmetrica/analytics/impl/Ee;->d:Lio/appmetrica/analytics/impl/Be;

    .line 318
    .line 319
    invoke-virtual {v12, v2}, Lio/appmetrica/analytics/impl/Pc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v12

    .line 333
    invoke-static {}, Lio/appmetrica/analytics/impl/t7;->b()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->d:Lio/appmetrica/analytics/impl/I8;

    .line 338
    .line 339
    iget-object v14, v2, Lio/appmetrica/analytics/impl/I8;->b:Lio/appmetrica/analytics/impl/R8;

    .line 340
    .line 341
    iget-object v2, v1, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 342
    .line 343
    iget-object v15, v2, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 344
    .line 345
    move-object/from16 v21, v7

    .line 346
    .line 347
    iget-object v7, v2, Lio/appmetrica/analytics/impl/e6;->k:Lio/appmetrica/analytics/impl/pa;

    .line 348
    .line 349
    move-object/from16 v16, v7

    .line 350
    .line 351
    iget-object v7, v2, Lio/appmetrica/analytics/impl/e6;->l:Lio/appmetrica/analytics/impl/x9;

    .line 352
    .line 353
    move-object/from16 v17, v7

    .line 354
    .line 355
    iget-object v7, v2, Lio/appmetrica/analytics/impl/e6;->n:Ljava/lang/Boolean;

    .line 356
    .line 357
    move-object/from16 v18, v7

    .line 358
    .line 359
    iget-object v7, v2, Lio/appmetrica/analytics/impl/e6;->o:Ljava/lang/Integer;

    .line 360
    .line 361
    move-object/from16 v19, v7

    .line 362
    .line 363
    iget-object v7, v1, Lio/appmetrica/analytics/impl/t7;->f:Lio/appmetrica/analytics/impl/S8;

    .line 364
    .line 365
    iget-object v2, v2, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 366
    .line 367
    invoke-virtual {v7, v2}, Lio/appmetrica/analytics/impl/S8;->a(Ljava/util/Map;)[B

    .line 368
    .line 369
    .line 370
    move-result-object v20

    .line 371
    move-object v2, v0

    .line 372
    move-object/from16 v7, v21

    .line 373
    .line 374
    invoke-direct/range {v2 .. v20}, Lio/appmetrica/analytics/impl/p7;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/appmetrica/analytics/impl/u7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/impl/R8;Ljava/lang/String;Lio/appmetrica/analytics/impl/pa;Lio/appmetrica/analytics/impl/x9;Ljava/lang/Boolean;Ljava/lang/Integer;[B)V

    .line 375
    .line 376
    .line 377
    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    monitor-exit v7

    .line 380
    throw v0
.end method
