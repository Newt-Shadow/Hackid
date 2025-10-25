.class public Lcom/yandex/metrica/impl/ob/K7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/K7$b;,
        Lcom/yandex/metrica/impl/ob/K7$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/CounterConfiguration$b;

.field private final b:Lcom/yandex/metrica/impl/ob/j2;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/CounterConfiguration$b;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->p()Lcom/yandex/metrica/impl/ob/j2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/K7;-><init>(Lcom/yandex/metrica/CounterConfiguration$b;Lcom/yandex/metrica/impl/ob/j2;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/CounterConfiguration$b;Lcom/yandex/metrica/impl/ob/j2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K7;->a:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K7;->b:Lcom/yandex/metrica/impl/ob/j2;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/K7$b;Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/K7$a;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    const-string v6, "type"

    .line 12
    .line 13
    const-string v7, "number_of_type"

    .line 14
    .line 15
    const-string v8, "global_number"

    .line 16
    .line 17
    const-string v0, "SELECT %s, %s, %s FROM %s WHERE %s"

    .line 18
    .line 19
    const/4 v9, 0x5

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v8, v9, v10

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    aput-object v6, v9, v12

    .line 28
    .line 29
    const/4 v12, 0x2

    .line 30
    aput-object v7, v9, v12

    .line 31
    .line 32
    const-string v12, "reports"

    .line 33
    .line 34
    const/4 v13, 0x3

    .line 35
    aput-object v12, v9, v13

    .line 36
    .line 37
    const/4 v12, 0x4

    .line 38
    aput-object v4, v9, v12

    .line 39
    .line 40
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-eqz v12, :cond_1

    .line 70
    .line 71
    new-instance v12, Landroid/content/ContentValues;

    .line 72
    .line 73
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    move-object v0, v11

    .line 86
    :cond_1
    invoke-static {v9}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    move-object v9, v11

    .line 92
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 93
    .line 94
    .line 95
    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 96
    const-string v13, "select_rows_to_delete_exception"

    .line 97
    .line 98
    check-cast v12, Lcom/yandex/metrica/impl/ob/nh;

    .line 99
    .line 100
    :try_start_3
    invoke-virtual {v12, v13, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 101
    .line 102
    .line 103
    invoke-static {v9}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 104
    .line 105
    .line 106
    move-object v0, v11

    .line 107
    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_5

    .line 112
    .line 113
    :try_start_4
    invoke-virtual {v2, v3, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    move v10, v2

    .line 118
    :catchall_2
    if-eqz p6, :cond_4

    .line 119
    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/K7;->b:Lcom/yandex/metrica/impl/ob/j2;

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/K7;->a:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 127
    .line 128
    invoke-virtual {v2, v5, v3}, Lcom/yandex/metrica/impl/ob/j2;->a(Ljava/lang/String;Lcom/yandex/metrica/CounterConfiguration$b;)Lcom/yandex/metrica/impl/ob/i2;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    .line 133
    .line 134
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v4, Lorg/json/JSONArray;

    .line 138
    .line 139
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v9, Lorg/json/JSONArray;

    .line 143
    .line 144
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v12, Lorg/json/JSONArray;

    .line 148
    .line 149
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    :cond_2
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    if-eqz v14, :cond_3

    .line 161
    .line 162
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    check-cast v14, Landroid/content/ContentValues;

    .line 167
    .line 168
    invoke-virtual {v14, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    invoke-virtual {v14, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v16

    .line 176
    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    if-eqz v15, :cond_2

    .line 181
    .line 182
    if-eqz v16, :cond_2

    .line 183
    .line 184
    if-eqz v14, :cond_2

    .line 185
    .line 186
    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    invoke-static {v15}, Lcom/yandex/metrica/impl/ob/a1;->a(I)Lcom/yandex/metrica/impl/ob/a1;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-static {v15}, Lcom/yandex/metrica/impl/ob/J1;->b(Lcom/yandex/metrica/impl/ob/a1;)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_3
    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    const-string v6, "event_type"

    .line 213
    .line 214
    invoke-virtual {v4, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    new-instance v4, Lorg/json/JSONObject;

    .line 222
    .line 223
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 224
    .line 225
    .line 226
    const-string v6, "reason"

    .line 227
    .line 228
    :try_start_6
    invoke-static/range {p4 .. p4}, Lcom/yandex/metrica/impl/ob/K7$b;->a(Lcom/yandex/metrica/impl/ob/K7$b;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const-string v6, "cleared"

    .line 237
    .line 238
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const-string v4, "actual_deleted_number"

    .line 243
    .line 244
    invoke-virtual {v3, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    new-instance v4, Lorg/json/JSONObject;

    .line 249
    .line 250
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v6, "details"

    .line 254
    .line 255
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static/range {p5 .. p5}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    sget-object v5, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 268
    .line 269
    new-instance v5, Lcom/yandex/metrica/impl/ob/J;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 270
    .line 271
    const-string v6, ""

    .line 272
    .line 273
    :try_start_7
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->Y:Lcom/yandex/metrica/impl/ob/a1;

    .line 274
    .line 275
    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    const/4 v8, 0x0

    .line 280
    move-object/from16 p1, v5

    .line 281
    .line 282
    move-object/from16 p2, v3

    .line 283
    .line 284
    move-object/from16 p3, v6

    .line 285
    .line 286
    move/from16 p4, v7

    .line 287
    .line 288
    move/from16 p5, v8

    .line 289
    .line 290
    move-object/from16 p6, v4

    .line 291
    .line 292
    invoke-direct/range {p1 .. p6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 293
    .line 294
    .line 295
    move-object v11, v5

    .line 296
    :catchall_3
    if-eqz v11, :cond_4

    .line 297
    .line 298
    invoke-virtual {v2, v11}, Lcom/yandex/metrica/impl/ob/i2;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 299
    .line 300
    .line 301
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v4, "table_name"

    .line 311
    .line 312
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const-string v4, "api_key"

    .line 320
    .line 321
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Lcom/yandex/metrica/impl/ob/nh;

    .line 329
    .line 330
    const-string v4, "select_rows_to_delete_failed"

    .line 331
    .line 332
    invoke-virtual {v3, v4, v2}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 333
    .line 334
    .line 335
    :goto_4
    new-instance v2, Lcom/yandex/metrica/impl/ob/K7$a;

    .line 336
    .line 337
    invoke-direct {v2, v0, v10}, Lcom/yandex/metrica/impl/ob/K7$a;-><init>(Ljava/util/List;I)V

    .line 338
    .line 339
    .line 340
    return-object v2

    .line 341
    :catchall_4
    move-exception v0

    .line 342
    invoke-static {v9}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 343
    .line 344
    .line 345
    throw v0
.end method
