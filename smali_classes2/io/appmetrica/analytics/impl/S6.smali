.class public final Lio/appmetrica/analytics/impl/S6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

.field public final b:Lio/appmetrica/analytics/impl/lj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->v()Lio/appmetrica/analytics/impl/lj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/S6;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/lj;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/lj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/S6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/S6;->b:Lio/appmetrica/analytics/impl/lj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/Q6;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    const-string v5, "events"

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    :try_start_0
    const-string v0, "SELECT %s, %s, %s FROM %s WHERE %s"

    .line 14
    .line 15
    const/4 v9, 0x5

    .line 16
    new-array v9, v9, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v10, "global_number"

    .line 19
    .line 20
    aput-object v10, v9, v7

    .line 21
    .line 22
    const-string v10, "type"

    .line 23
    .line 24
    aput-object v10, v9, v6

    .line 25
    .line 26
    const-string v10, "event_description"

    .line 27
    .line 28
    const/4 v11, 0x2

    .line 29
    aput-object v10, v9, v11

    .line 30
    .line 31
    const-string v10, "events"

    .line 32
    .line 33
    const/4 v11, 0x3

    .line 34
    aput-object v10, v9, v11

    .line 35
    .line 36
    const/4 v10, 0x4

    .line 37
    aput-object v3, v9, v10

    .line 38
    .line 39
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    if-eqz v9, :cond_0

    .line 48
    .line 49
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_0

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_1

    .line 69
    .line 70
    new-instance v10, Landroid/content/ContentValues;

    .line 71
    .line 72
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    move-object v0, v8

    .line 85
    :cond_1
    invoke-static {v9}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object v9, v8

    .line 91
    :goto_1
    :try_start_2
    sget-object v10, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Oj;

    .line 92
    .line 93
    const-string v11, "select_rows_to_delete_exception"

    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v12, Lio/appmetrica/analytics/impl/oj;

    .line 99
    .line 100
    invoke-direct {v12, v11, v0}, Lio/appmetrica/analytics/impl/oj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v12}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 104
    .line 105
    .line 106
    invoke-static {v9}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 107
    .line 108
    .line 109
    move-object v0, v8

    .line 110
    :goto_2
    :try_start_3
    invoke-virtual {v2, v5, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    :catchall_2
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v7, v2, :cond_2

    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_2
    if-eqz p5, :cond_7

    .line 131
    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    iget-object v2, v1, Lio/appmetrica/analytics/impl/S6;->b:Lio/appmetrica/analytics/impl/lj;

    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    iget-object v3, v1, Lio/appmetrica/analytics/impl/S6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 139
    .line 140
    monitor-enter v2

    .line 141
    :try_start_4
    iget-object v5, v2, Lio/appmetrica/analytics/impl/lj;->c:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lio/appmetrica/analytics/impl/jj;

    .line 148
    .line 149
    if-nez v5, :cond_3

    .line 150
    .line 151
    new-instance v5, Lio/appmetrica/analytics/impl/jj;

    .line 152
    .line 153
    iget-object v9, v2, Lio/appmetrica/analytics/impl/lj;->b:Landroid/content/Context;

    .line 154
    .line 155
    iget-object v10, v2, Lio/appmetrica/analytics/impl/lj;->a:Lio/appmetrica/analytics/impl/mj;

    .line 156
    .line 157
    invoke-direct {v5, v4, v9, v3, v10}, Lio/appmetrica/analytics/impl/jj;-><init>(Ljava/lang/String;Landroid/content/Context;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/mj;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v2, Lio/appmetrica/analytics/impl/lj;->c:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 163
    .line 164
    .line 165
    :cond_3
    monitor-exit v2

    .line 166
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    .line 167
    .line 168
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v3, Lorg/json/JSONArray;

    .line 172
    .line 173
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v9, Lorg/json/JSONArray;

    .line 177
    .line 178
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_6

    .line 190
    .line 191
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Landroid/content/ContentValues;

    .line 196
    .line 197
    const-string v12, "global_number"

    .line 198
    .line 199
    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    const-string v13, "type"

    .line 204
    .line 205
    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    if-eqz v12, :cond_4

    .line 210
    .line 211
    if-eqz v11, :cond_4

    .line 212
    .line 213
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    invoke-static {v11}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    if-nez v11, :cond_5

    .line 225
    .line 226
    sget-object v11, Lio/appmetrica/analytics/impl/Lf;->a:Ljava/util/Map;

    .line 227
    .line 228
    move-object v11, v8

    .line 229
    goto :goto_4

    .line 230
    :cond_5
    sget-object v12, Lio/appmetrica/analytics/impl/Lf;->c:Ljava/util/Map;

    .line 231
    .line 232
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    check-cast v11, Ljava/lang/Integer;

    .line 237
    .line 238
    :goto_4
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_6
    const-string v10, "global_number"

    .line 243
    .line 244
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const-string v10, "event_type"

    .line 249
    .line 250
    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    new-instance v3, Lorg/json/JSONObject;

    .line 254
    .line 255
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v9, "reason"

    .line 259
    .line 260
    invoke-static/range {p3 .. p3}, Lio/appmetrica/analytics/impl/R6;->a(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    const-string v9, "cleared"

    .line 269
    .line 270
    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    const-string v3, "actual_deleted_number"

    .line 275
    .line 276
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v3, Lorg/json/JSONObject;

    .line 281
    .line 282
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string v9, "details"

    .line 286
    .line 287
    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-static/range {p4 .. p4}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    sget-object v2, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    .line 300
    .line 301
    new-instance v2, Lio/appmetrica/analytics/impl/e4;

    .line 302
    .line 303
    const-string v11, ""

    .line 304
    .line 305
    sget-object v3, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 306
    .line 307
    const/16 v12, 0x3002

    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    move-object v9, v2

    .line 311
    invoke-direct/range {v9 .. v14}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :catchall_3
    move-object v2, v8

    .line 316
    :goto_5
    if-eqz v2, :cond_7

    .line 317
    .line 318
    iget-object v3, v5, Lio/appmetrica/analytics/impl/jj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 319
    .line 320
    if-eqz v3, :cond_7

    .line 321
    .line 322
    :try_start_6
    new-instance v3, Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 323
    .line 324
    iget-object v4, v5, Lio/appmetrica/analytics/impl/jj;->a:Ljava/lang/String;

    .line 325
    .line 326
    invoke-direct {v3, v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v4, v5, Lio/appmetrica/analytics/impl/jj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 330
    .line 331
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setReporterType(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    .line 332
    .line 333
    .line 334
    iget-object v4, v5, Lio/appmetrica/analytics/impl/jj;->d:Lio/appmetrica/analytics/impl/mj;

    .line 335
    .line 336
    new-instance v9, Lio/appmetrica/analytics/impl/Gh;

    .line 337
    .line 338
    new-instance v10, Lio/appmetrica/analytics/impl/yf;

    .line 339
    .line 340
    iget-object v5, v5, Lio/appmetrica/analytics/impl/jj;->b:Landroid/content/Context;

    .line 341
    .line 342
    invoke-direct {v10, v5, v8}, Lio/appmetrica/analytics/impl/yf;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    .line 343
    .line 344
    .line 345
    invoke-direct {v9, v10, v3, v8}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9}, Lio/appmetrica/analytics/impl/Gh;->c()Landroid/os/Bundle;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/e6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    iget-object v3, v4, Lio/appmetrica/analytics/impl/mj;->a:Lio/appmetrica/analytics/impl/s1;

    .line 357
    .line 358
    invoke-interface {v3, v6, v2}, Lio/appmetrica/analytics/impl/s1;->reportData(ILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :catchall_4
    move-exception v0

    .line 363
    monitor-exit v2

    .line 364
    throw v0

    .line 365
    :catchall_5
    :cond_7
    :goto_6
    new-instance v2, Lio/appmetrica/analytics/impl/Q6;

    .line 366
    .line 367
    invoke-direct {v2, v0, v7}, Lio/appmetrica/analytics/impl/Q6;-><init>(Ljava/util/ArrayList;I)V

    .line 368
    .line 369
    .line 370
    return-object v2

    .line 371
    :catchall_6
    move-exception v0

    .line 372
    invoke-static {v9}, Lio/appmetrica/analytics/impl/Rn;->a(Landroid/database/Cursor;)V

    .line 373
    .line 374
    .line 375
    throw v0
.end method
