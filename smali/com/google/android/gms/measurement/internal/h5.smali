.class public final Lcom/google/android/gms/measurement/internal/h5;
.super Lcom/google/android/gms/measurement/internal/e5;
.source "SourceFile"


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/android/gms/measurement/internal/g5;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "app_version_int"

    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    const-string v2, "app_version"

    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/h5;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/g5;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 15
    .line 16
    .line 17
    const-string v1, "google_app_measurement_local.db"

    .line 18
    .line 19
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/g5;-><init>(Lcom/google/android/gms/measurement/internal/h5;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h5;->c:Lcom/google/android/gms/measurement/internal/g5;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic y()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/h5;->e:[Ljava/lang/String;

    return-object v0
.end method

.method private final z(I[B)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->c1:Lcom/google/android/gms/measurement/internal/b5;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/f5;->o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ae;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v5

    .line 39
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v8, "type"

    .line 49
    .line 50
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    const-string v7, "entry"

    .line 54
    .line 55
    move-object/from16 v8, p2

    .line 56
    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const-string v4, "app_version"

    .line 73
    .line 74
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/ae;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/ae;->j:J

    .line 80
    .line 81
    const-string v0, "app_version_int"

    .line 82
    .line 83
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 91
    .line 92
    .line 93
    const/4 v4, 0x5

    .line 94
    move v7, v2

    .line 95
    move v8, v4

    .line 96
    :goto_1
    if-ge v7, v4, :cond_e

    .line 97
    .line 98
    const/4 v9, 0x1

    .line 99
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h5;->w()Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    .line 101
    .line 102
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    if-nez v10, :cond_3

    .line 104
    .line 105
    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 106
    .line 107
    :goto_2
    return v2

    .line 108
    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    .line 110
    .line 111
    const-string v0, "select count(1) from messages"

    .line 112
    .line 113
    invoke-virtual {v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 114
    .line 115
    .line 116
    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const-wide/16 v12, 0x0

    .line 118
    .line 119
    if-eqz v11, :cond_4

    .line 120
    .line 121
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    goto :goto_3

    .line 132
    :catch_0
    move-exception v0

    .line 133
    move-object v2, v5

    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :catch_1
    move-object v2, v5

    .line 137
    goto/16 :goto_6

    .line 138
    .line 139
    :catch_2
    move-exception v0

    .line 140
    move-object v2, v5

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_4
    :goto_3
    const-wide/32 v14, 0x186a0

    .line 144
    .line 145
    .line 146
    cmp-long v0, v12, v14

    .line 147
    .line 148
    const-string v4, "messages"

    .line 149
    .line 150
    if-ltz v0, :cond_5

    .line 151
    .line 152
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    :try_start_4
    const-string v5, "Data loss, local db full"

    .line 161
    .line 162
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sub-long/2addr v14, v12

    .line 166
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 167
    .line 168
    new-array v5, v9, [Ljava/lang/String;

    .line 169
    .line 170
    const-wide/16 v12, 0x1

    .line 171
    .line 172
    add-long/2addr v14, v12

    .line 173
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    aput-object v12, v5, v2

    .line 178
    .line 179
    invoke-virtual {v10, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    int-to-long v12, v0

    .line 184
    cmp-long v0, v12, v14

    .line 185
    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v5, "Different delete count than expected in local db. expected, received, difference"

    .line 197
    .line 198
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    sub-long/2addr v14, v12

    .line 207
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v0, v5, v2, v9, v12}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :catch_3
    move-exception v0

    .line 216
    const/4 v2, 0x0

    .line 217
    goto :goto_5

    .line 218
    :catch_4
    const/4 v2, 0x0

    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :catch_5
    move-exception v0

    .line 222
    const/4 v2, 0x0

    .line 223
    goto/16 :goto_8

    .line 224
    .line 225
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .line 226
    :try_start_5
    invoke-virtual {v10, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 227
    .line 228
    .line 229
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 233
    .line 234
    .line 235
    if-eqz v11, :cond_6

    .line 236
    .line 237
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 241
    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    return v2

    .line 245
    :catch_6
    move-exception v0

    .line 246
    goto :goto_5

    .line 247
    :catch_7
    move-exception v0

    .line 248
    goto/16 :goto_8

    .line 249
    .line 250
    :catchall_0
    move-exception v0

    .line 251
    move-object v2, v5

    .line 252
    move-object v5, v2

    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :catch_8
    move-exception v0

    .line 256
    move-object v2, v5

    .line 257
    move-object v11, v2

    .line 258
    goto :goto_5

    .line 259
    :catch_9
    move-object v2, v5

    .line 260
    move-object v11, v2

    .line 261
    goto :goto_6

    .line 262
    :catch_a
    move-exception v0

    .line 263
    move-object v2, v5

    .line 264
    move-object v11, v2

    .line 265
    goto :goto_8

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object v2, v5

    .line 268
    move-object v5, v2

    .line 269
    move-object v10, v5

    .line 270
    goto/16 :goto_a

    .line 271
    .line 272
    :catch_b
    move-exception v0

    .line 273
    move-object v2, v5

    .line 274
    move-object v10, v2

    .line 275
    move-object v11, v10

    .line 276
    :goto_5
    if-eqz v10, :cond_7

    .line 277
    .line 278
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_7

    .line 283
    .line 284
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    .line 286
    .line 287
    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 288
    .line 289
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    const-string v5, "Error writing entry to local database"

    .line 298
    .line 299
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    const/4 v4, 0x1

    .line 303
    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 304
    .line 305
    if-eqz v11, :cond_8

    .line 306
    .line 307
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 308
    .line 309
    .line 310
    :cond_8
    if-eqz v10, :cond_b

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :catch_c
    move-object v2, v5

    .line 314
    move-object v10, v2

    .line 315
    move-object v11, v10

    .line 316
    :catch_d
    :goto_6
    int-to-long v4, v8

    .line 317
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 318
    .line 319
    .line 320
    add-int/lit8 v8, v8, 0x14

    .line 321
    .line 322
    if-eqz v11, :cond_9

    .line 323
    .line 324
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 325
    .line 326
    .line 327
    :cond_9
    if-eqz v10, :cond_b

    .line 328
    .line 329
    :goto_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 330
    .line 331
    .line 332
    goto :goto_9

    .line 333
    :catch_e
    move-exception v0

    .line 334
    move-object v2, v5

    .line 335
    move-object v10, v2

    .line 336
    move-object v11, v10

    .line 337
    :goto_8
    :try_start_8
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 338
    .line 339
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    const-string v5, "Error writing entry; local database full"

    .line 348
    .line 349
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    const/4 v4, 0x1

    .line 353
    iput-boolean v4, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 354
    .line 355
    if-eqz v11, :cond_a

    .line 356
    .line 357
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 358
    .line 359
    .line 360
    :cond_a
    if-eqz v10, :cond_b

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 364
    .line 365
    move-object v5, v2

    .line 366
    const/4 v2, 0x0

    .line 367
    const/4 v4, 0x5

    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :catchall_2
    move-exception v0

    .line 371
    move-object v5, v11

    .line 372
    :goto_a
    if-eqz v5, :cond_c

    .line 373
    .line 374
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 375
    .line 376
    .line 377
    :cond_c
    if-eqz v10, :cond_d

    .line 378
    .line 379
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 380
    .line 381
    .line 382
    :cond_d
    throw v0

    .line 383
    :cond_e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const-string v2, "Failed to write entry to local database"

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const/4 v2, 0x0

    .line 399
    return v2
.end method


# virtual methods
.method protected final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h5;->w()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "messages"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "Reset local analytics data. records"

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "Error resetting local analytics data. error"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/g0;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/h0;->a(Lcom/google/android/gms/measurement/internal/g0;Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/high16 v2, 0x20000

    .line 18
    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/h5;->z(I[B)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public final q(Lcom/google/android/gms/measurement/internal/ud;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/vd;->a(Lcom/google/android/gms/measurement/internal/ud;Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/high16 v2, 0x20000

    .line 18
    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "User property too long for local database. Sending directly to service"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->z(I[B)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/i;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/yd;->T(Landroid/os/Parcelable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    const/high16 v2, 0x20000

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->z(I[B)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final s(Lcom/google/android/gms/measurement/internal/e0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/yd;->T(Landroid/os/Parcelable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Null default event parameters; not writing to database"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    array-length v2, p1

    .line 29
    const/high16 v3, 0x20000

    .line 30
    .line 31
    if-le v2, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    const/4 v0, 0x4

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/h5;->z(I[B)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public final t(I)Ljava/util/List;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "entry"

    .line 4
    .line 5
    const-string v3, "type"

    .line 6
    .line 7
    const-string v4, "Error reading entries from local database"

    .line 8
    .line 9
    const-string v5, "rowid"

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object v6

    .line 20
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h5;->x()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_18

    .line 30
    .line 31
    const/4 v8, 0x5

    .line 32
    const/4 v9, 0x0

    .line 33
    move v11, v8

    .line 34
    move v10, v9

    .line 35
    :goto_0
    if-ge v10, v8, :cond_17

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h5;->w()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 42
    if-nez v15, :cond_1

    .line 43
    .line 44
    :try_start_1
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 45
    .line 46
    return-object v6

    .line 47
    :cond_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 48
    .line 49
    .line 50
    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 51
    .line 52
    :try_start_2
    const-string v14, "messages"

    .line 53
    .line 54
    new-array v13, v12, [Ljava/lang/String;

    .line 55
    .line 56
    aput-object v5, v13, v9

    .line 57
    .line 58
    const-string v16, "type=?"

    .line 59
    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v17

    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const-string v20, "rowid desc"

    .line 69
    .line 70
    const-string v21, "1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 71
    .line 72
    move-object v0, v13

    .line 73
    move-object v13, v15

    .line 74
    move-object/from16 p1, v15

    .line 75
    .line 76
    move-object v15, v0

    .line 77
    :try_start_3
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    .line 79
    .line 80
    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 81
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const-wide/16 v22, -0x1

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 93
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 98
    .line 99
    .line 100
    move-wide/from16 v14, v22

    .line 101
    .line 102
    :goto_1
    cmp-long v0, v14, v22

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    const-string v0, "rowid<?"

    .line 107
    .line 108
    new-array v13, v12, [Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    aput-object v14, v13, v9

    .line 115
    .line 116
    move-object/from16 v16, v0

    .line 117
    .line 118
    move-object/from16 v17, v13

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move-object/from16 v16, v6

    .line 122
    .line 123
    move-object/from16 v17, v16

    .line 124
    .line 125
    :goto_2
    const/4 v0, 0x3

    .line 126
    new-array v13, v0, [Ljava/lang/String;

    .line 127
    .line 128
    aput-object v5, v13, v9

    .line 129
    .line 130
    aput-object v3, v13, v12

    .line 131
    .line 132
    const/4 v15, 0x2

    .line 133
    aput-object v2, v13, v15

    .line 134
    .line 135
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 136
    .line 137
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v15, Lcom/google/android/gms/measurement/internal/c5;->c1:Lcom/google/android/gms/measurement/internal/b5;

    .line 142
    .line 143
    invoke-virtual {v0, v6, v15}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/4 v6, 0x4

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    new-array v0, v8, [Ljava/lang/String;

    .line 151
    .line 152
    aput-object v5, v0, v9

    .line 153
    .line 154
    aput-object v3, v0, v12

    .line 155
    .line 156
    const/16 v18, 0x2

    .line 157
    .line 158
    aput-object v2, v0, v18

    .line 159
    .line 160
    const-string v13, "app_version"

    .line 161
    .line 162
    const/16 v19, 0x3

    .line 163
    .line 164
    aput-object v13, v0, v19

    .line 165
    .line 166
    const-string v13, "app_version_int"

    .line 167
    .line 168
    aput-object v13, v0, v6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    const/16 v18, 0x2

    .line 172
    .line 173
    move-object v0, v13

    .line 174
    :goto_3
    const-string v19, "messages"

    .line 175
    .line 176
    const/16 v20, 0x0

    .line 177
    .line 178
    const/16 v21, 0x0

    .line 179
    .line 180
    const-string v24, "rowid asc"

    .line 181
    .line 182
    const/16 v13, 0x64

    .line 183
    .line 184
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v25

    .line 188
    move-object/from16 v13, p1

    .line 189
    .line 190
    move-object/from16 v26, v14

    .line 191
    .line 192
    move-object/from16 v14, v19

    .line 193
    .line 194
    move-object v8, v15

    .line 195
    move/from16 v6, v18

    .line 196
    .line 197
    move-object v15, v0

    .line 198
    move-object/from16 v18, v20

    .line 199
    .line 200
    move-object/from16 v19, v21

    .line 201
    .line 202
    move-object/from16 v20, v24

    .line 203
    .line 204
    move-object/from16 v21, v25

    .line 205
    .line 206
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 207
    .line 208
    .line 209
    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 210
    :goto_4
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 211
    .line 212
    .line 213
    move-result v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 214
    if-eqz v0, :cond_c

    .line 215
    .line 216
    :try_start_7
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v22

    .line 220
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    const/4 v6, 0x0

    .line 233
    invoke-virtual {v15, v6, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 234
    .line 235
    .line 236
    move-result v15
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 237
    if-eqz v15, :cond_5

    .line 238
    .line 239
    const/4 v6, 0x3

    .line 240
    :try_start_8
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    const/4 v6, 0x4

    .line 245
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v16
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 249
    move-object v6, v15

    .line 250
    goto :goto_5

    .line 251
    :cond_5
    const-wide/16 v16, 0x0

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    :goto_5
    move-wide/from16 v27, v16

    .line 255
    .line 256
    move-object/from16 v16, v13

    .line 257
    .line 258
    move-wide/from16 v12, v27

    .line 259
    .line 260
    if-nez v0, :cond_7

    .line 261
    .line 262
    :try_start_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 263
    .line 264
    .line 265
    move-result-object v15
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 266
    :try_start_a
    array-length v0, v14

    .line 267
    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 271
    .line 272
    .line 273
    sget-object v0, Lcom/google/android/gms/measurement/internal/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    .line 275
    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lcom/google/android/gms/measurement/internal/g0;
    :try_end_a
    .catch Lo5/b$a; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 280
    .line 281
    :try_start_b
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 282
    .line 283
    .line 284
    if-eqz v0, :cond_6

    .line 285
    .line 286
    new-instance v14, Li6/l;

    .line 287
    .line 288
    invoke-direct {v14, v0, v6, v12, v13}, Li6/l;-><init>(Lo5/a;Ljava/lang/String;J)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    goto :goto_7

    .line 297
    :catch_0
    :try_start_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const-string v6, "Failed to load event from local database"

    .line 308
    .line 309
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 310
    .line 311
    .line 312
    :try_start_d
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 313
    .line 314
    .line 315
    :cond_6
    :goto_6
    const/4 v6, 0x3

    .line 316
    goto/16 :goto_e

    .line 317
    .line 318
    :goto_7
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :cond_7
    const/4 v15, 0x1

    .line 323
    if-ne v0, v15, :cond_8

    .line 324
    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 326
    .line 327
    .line 328
    move-result-object v15
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 329
    :try_start_e
    array-length v0, v14

    .line 330
    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lcom/google/android/gms/measurement/internal/ud;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 337
    .line 338
    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lcom/google/android/gms/measurement/internal/ud;
    :try_end_e
    .catch Lo5/b$a; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 343
    .line 344
    :try_start_f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    goto :goto_9

    .line 350
    :catch_1
    :try_start_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const-string v14, "Failed to load user property from local database"

    .line 361
    .line 362
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 363
    .line 364
    .line 365
    :try_start_11
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 366
    .line 367
    .line 368
    const/4 v0, 0x0

    .line 369
    :goto_8
    if-eqz v0, :cond_6

    .line 370
    .line 371
    new-instance v14, Li6/l;

    .line 372
    .line 373
    invoke-direct {v14, v0, v6, v12, v13}, Li6/l;-><init>(Lo5/a;Ljava/lang/String;J)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :goto_9
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_8
    const/4 v15, 0x2

    .line 385
    if-ne v0, v15, :cond_9

    .line 386
    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 388
    .line 389
    .line 390
    move-result-object v15
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 391
    :try_start_12
    array-length v0, v14

    .line 392
    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 396
    .line 397
    .line 398
    sget-object v0, Lcom/google/android/gms/measurement/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 399
    .line 400
    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Lcom/google/android/gms/measurement/internal/i;
    :try_end_12
    .catch Lo5/b$a; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 405
    .line 406
    :try_start_13
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 407
    .line 408
    .line 409
    goto :goto_a

    .line 410
    :catchall_2
    move-exception v0

    .line 411
    goto :goto_b

    .line 412
    :catch_2
    :try_start_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    const-string v14, "Failed to load conditional user property from local database"

    .line 423
    .line 424
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 425
    .line 426
    .line 427
    :try_start_15
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 428
    .line 429
    .line 430
    const/4 v0, 0x0

    .line 431
    :goto_a
    if-eqz v0, :cond_6

    .line 432
    .line 433
    new-instance v14, Li6/l;

    .line 434
    .line 435
    invoke-direct {v14, v0, v6, v12, v13}, Li6/l;-><init>(Lo5/a;Ljava/lang/String;J)V

    .line 436
    .line 437
    .line 438
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    goto :goto_6

    .line 442
    :goto_b
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_9
    const/4 v15, 0x4

    .line 447
    if-ne v0, v15, :cond_a

    .line 448
    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 450
    .line 451
    .line 452
    move-result-object v15
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 453
    :try_start_16
    array-length v0, v14

    .line 454
    invoke-virtual {v15, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 458
    .line 459
    .line 460
    sget-object v0, Lcom/google/android/gms/measurement/internal/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 461
    .line 462
    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Lcom/google/android/gms/measurement/internal/e0;
    :try_end_16
    .catch Lo5/b$a; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 467
    .line 468
    :try_start_17
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 469
    .line 470
    .line 471
    goto :goto_c

    .line 472
    :catchall_3
    move-exception v0

    .line 473
    goto :goto_d

    .line 474
    :catch_3
    :try_start_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    const-string v14, "Failed to load default event parameters from local database"

    .line 485
    .line 486
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 487
    .line 488
    .line 489
    :try_start_19
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 490
    .line 491
    .line 492
    const/4 v0, 0x0

    .line 493
    :goto_c
    if-eqz v0, :cond_6

    .line 494
    .line 495
    new-instance v14, Li6/l;

    .line 496
    .line 497
    invoke-direct {v14, v0, v6, v12, v13}, Li6/l;-><init>(Lo5/a;Ljava/lang/String;J)V

    .line 498
    .line 499
    .line 500
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto/16 :goto_6

    .line 504
    .line 505
    :goto_d
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :cond_a
    const/4 v6, 0x3

    .line 510
    if-ne v0, v6, :cond_b

    .line 511
    .line 512
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 513
    .line 514
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const-string v12, "Skipping app launch break"

    .line 523
    .line 524
    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const-string v12, "Unknown record type in local database"

    .line 539
    .line 540
    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :goto_e
    move-object/from16 v13, v16

    .line 544
    .line 545
    const/4 v6, 0x2

    .line 546
    const/4 v12, 0x1

    .line 547
    goto/16 :goto_4

    .line 548
    .line 549
    :catchall_4
    move-exception v0

    .line 550
    move-object/from16 v16, v13

    .line 551
    .line 552
    goto :goto_f

    .line 553
    :catch_4
    move-exception v0

    .line 554
    move-object/from16 v16, v13

    .line 555
    .line 556
    goto :goto_10

    .line 557
    :catch_5
    move-object/from16 v16, v13

    .line 558
    .line 559
    goto :goto_11

    .line 560
    :catch_6
    move-exception v0

    .line 561
    move-object/from16 v16, v13

    .line 562
    .line 563
    goto :goto_12

    .line 564
    :cond_c
    move-object/from16 v16, v13

    .line 565
    .line 566
    const-string v0, "messages"

    .line 567
    .line 568
    const-string v6, "rowid <= ?"

    .line 569
    .line 570
    const/4 v8, 0x1

    .line 571
    new-array v12, v8, [Ljava/lang/String;

    .line 572
    .line 573
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    aput-object v8, v12, v9
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 578
    .line 579
    move-object/from16 v8, p1

    .line 580
    .line 581
    :try_start_1a
    invoke-virtual {v8, v0, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    if-ge v0, v6, :cond_d

    .line 590
    .line 591
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 592
    .line 593
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    const-string v6, "Fewer entries removed from local database than expected"

    .line 602
    .line 603
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :cond_d
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 610
    .line 611
    .line 612
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 616
    .line 617
    .line 618
    return-object v7

    .line 619
    :catchall_5
    move-exception v0

    .line 620
    goto :goto_13

    .line 621
    :catch_7
    move-exception v0

    .line 622
    goto :goto_14

    .line 623
    :catch_8
    move-exception v0

    .line 624
    goto :goto_16

    .line 625
    :catchall_6
    move-exception v0

    .line 626
    :goto_f
    move-object/from16 v8, p1

    .line 627
    .line 628
    goto :goto_13

    .line 629
    :catch_9
    move-exception v0

    .line 630
    :goto_10
    move-object/from16 v8, p1

    .line 631
    .line 632
    goto :goto_14

    .line 633
    :catch_a
    :goto_11
    move-object/from16 v8, p1

    .line 634
    .line 635
    goto :goto_15

    .line 636
    :catch_b
    move-exception v0

    .line 637
    :goto_12
    move-object/from16 v8, p1

    .line 638
    .line 639
    goto :goto_16

    .line 640
    :catchall_7
    move-exception v0

    .line 641
    move-object/from16 v8, p1

    .line 642
    .line 643
    move-object/from16 v16, v13

    .line 644
    .line 645
    :goto_13
    move-object/from16 v6, v16

    .line 646
    .line 647
    goto/16 :goto_22

    .line 648
    .line 649
    :catch_c
    move-exception v0

    .line 650
    move-object/from16 v8, p1

    .line 651
    .line 652
    move-object/from16 v16, v13

    .line 653
    .line 654
    :goto_14
    move-object/from16 v13, v16

    .line 655
    .line 656
    goto/16 :goto_1d

    .line 657
    .line 658
    :catch_d
    move-object/from16 v8, p1

    .line 659
    .line 660
    move-object/from16 v16, v13

    .line 661
    .line 662
    :catch_e
    :goto_15
    move-object v15, v8

    .line 663
    move v6, v10

    .line 664
    move-object/from16 v13, v16

    .line 665
    .line 666
    goto/16 :goto_1e

    .line 667
    .line 668
    :catch_f
    move-exception v0

    .line 669
    move-object/from16 v8, p1

    .line 670
    .line 671
    move-object/from16 v16, v13

    .line 672
    .line 673
    :goto_16
    move v6, v10

    .line 674
    move-object/from16 v13, v16

    .line 675
    .line 676
    goto/16 :goto_20

    .line 677
    .line 678
    :catchall_8
    move-exception v0

    .line 679
    move-object/from16 v8, p1

    .line 680
    .line 681
    goto :goto_19

    .line 682
    :catch_10
    move-exception v0

    .line 683
    move-object/from16 v8, p1

    .line 684
    .line 685
    goto :goto_1c

    .line 686
    :catch_11
    move-object/from16 v8, p1

    .line 687
    .line 688
    goto :goto_1a

    .line 689
    :catch_12
    move-exception v0

    .line 690
    move-object/from16 v8, p1

    .line 691
    .line 692
    goto :goto_1b

    .line 693
    :catchall_9
    move-exception v0

    .line 694
    move-object/from16 v8, p1

    .line 695
    .line 696
    goto :goto_18

    .line 697
    :catchall_a
    move-exception v0

    .line 698
    move-object/from16 v8, p1

    .line 699
    .line 700
    goto :goto_17

    .line 701
    :catchall_b
    move-exception v0

    .line 702
    move-object v8, v15

    .line 703
    :goto_17
    const/4 v13, 0x0

    .line 704
    :goto_18
    if-eqz v13, :cond_e

    .line 705
    .line 706
    :try_start_1b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 707
    .line 708
    .line 709
    :cond_e
    throw v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 710
    :catchall_c
    move-exception v0

    .line 711
    goto :goto_19

    .line 712
    :catch_13
    move-exception v0

    .line 713
    goto :goto_1c

    .line 714
    :catch_14
    move-exception v0

    .line 715
    goto :goto_1b

    .line 716
    :catchall_d
    move-exception v0

    .line 717
    move-object v8, v15

    .line 718
    :goto_19
    const/4 v6, 0x0

    .line 719
    goto/16 :goto_22

    .line 720
    .line 721
    :catch_15
    move-exception v0

    .line 722
    move-object v8, v15

    .line 723
    goto :goto_1c

    .line 724
    :catch_16
    move-object v8, v15

    .line 725
    :catch_17
    :goto_1a
    move-object v15, v8

    .line 726
    move v6, v10

    .line 727
    const/4 v13, 0x0

    .line 728
    goto :goto_1e

    .line 729
    :catch_18
    move-exception v0

    .line 730
    move-object v8, v15

    .line 731
    :goto_1b
    move v6, v10

    .line 732
    goto :goto_1f

    .line 733
    :catchall_e
    move-exception v0

    .line 734
    const/4 v6, 0x0

    .line 735
    const/4 v8, 0x0

    .line 736
    goto/16 :goto_22

    .line 737
    .line 738
    :catch_19
    move-exception v0

    .line 739
    const/4 v8, 0x0

    .line 740
    :goto_1c
    const/4 v13, 0x0

    .line 741
    :goto_1d
    if-eqz v8, :cond_f

    .line 742
    .line 743
    :try_start_1c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    if-eqz v6, :cond_f

    .line 748
    .line 749
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 750
    .line 751
    .line 752
    :cond_f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 753
    .line 754
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 755
    .line 756
    .line 757
    move-result-object v6

    .line 758
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    const/4 v6, 0x1

    .line 766
    iput-boolean v6, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 767
    .line 768
    if-eqz v13, :cond_10

    .line 769
    .line 770
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 771
    .line 772
    .line 773
    :cond_10
    if-eqz v8, :cond_11

    .line 774
    .line 775
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 776
    .line 777
    .line 778
    :cond_11
    move v6, v10

    .line 779
    goto :goto_21

    .line 780
    :catch_1a
    move v6, v10

    .line 781
    const/4 v13, 0x0

    .line 782
    const/4 v15, 0x0

    .line 783
    :goto_1e
    int-to-long v9, v11

    .line 784
    :try_start_1d
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 785
    .line 786
    .line 787
    add-int/lit8 v11, v11, 0x14

    .line 788
    .line 789
    if-eqz v13, :cond_12

    .line 790
    .line 791
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 792
    .line 793
    .line 794
    :cond_12
    if-eqz v15, :cond_14

    .line 795
    .line 796
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 797
    .line 798
    .line 799
    goto :goto_21

    .line 800
    :catchall_f
    move-exception v0

    .line 801
    move-object v6, v13

    .line 802
    move-object v8, v15

    .line 803
    goto :goto_22

    .line 804
    :catch_1b
    move-exception v0

    .line 805
    move v6, v10

    .line 806
    const/4 v8, 0x0

    .line 807
    :goto_1f
    const/4 v13, 0x0

    .line 808
    :goto_20
    :try_start_1e
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 809
    .line 810
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 811
    .line 812
    .line 813
    move-result-object v9

    .line 814
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    invoke-virtual {v9, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    const/4 v9, 0x1

    .line 822
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/h5;->d:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 823
    .line 824
    if-eqz v13, :cond_13

    .line 825
    .line 826
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 827
    .line 828
    .line 829
    :cond_13
    if-eqz v8, :cond_14

    .line 830
    .line 831
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 832
    .line 833
    .line 834
    :cond_14
    :goto_21
    add-int/lit8 v10, v6, 0x1

    .line 835
    .line 836
    const/4 v6, 0x0

    .line 837
    const/4 v8, 0x5

    .line 838
    const/4 v9, 0x0

    .line 839
    goto/16 :goto_0

    .line 840
    .line 841
    :catchall_10
    move-exception v0

    .line 842
    move-object v6, v13

    .line 843
    :goto_22
    if-eqz v6, :cond_15

    .line 844
    .line 845
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 846
    .line 847
    .line 848
    :cond_15
    if-eqz v8, :cond_16

    .line 849
    .line 850
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 851
    .line 852
    .line 853
    :cond_16
    throw v0

    .line 854
    :cond_17
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 855
    .line 856
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    const-string v2, "Failed to read events from database in reasonable time"

    .line 865
    .line 866
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    const/4 v2, 0x0

    .line 870
    return-object v2

    .line 871
    :cond_18
    return-object v7
.end method

.method public final u()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/h5;->z(I[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final v()Z
    .locals 11

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h5;->x()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    move v4, v1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v3, v1, :cond_5

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h5;->w()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    .line 38
    .line 39
    const-string v7, "messages"

    .line 40
    .line 41
    const-string v8, "type == ?"

    .line 42
    .line 43
    new-array v9, v6, [Ljava/lang/String;

    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aput-object v10, v9, v2

    .line 51
    .line 52
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 62
    .line 63
    .line 64
    return v6

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_5

    .line 67
    :catch_0
    move-exception v7

    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception v7

    .line 70
    goto :goto_3

    .line 71
    :goto_1
    if-eqz v5, :cond_2

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 83
    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 96
    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_2
    int-to-long v6, v4

    .line 101
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x14

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :goto_3
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :goto_5
    if-eqz v5, :cond_4

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 136
    .line 137
    .line 138
    :cond_4
    throw v0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_6
    return v2
.end method

.method final w()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h5;->c:Lcom/google/android/gms/measurement/internal/g5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g5;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h5;->d:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 8
    .line 9
    .line 10
    const-string v0, "google_app_measurement_local.db"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method
