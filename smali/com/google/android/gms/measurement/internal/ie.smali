.class final Lcom/google/android/gms/measurement/internal/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/t6;

.field private b:Ljava/lang/Long;

.field private c:J

.field final synthetic d:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/e;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t6;)Lcom/google/android/gms/internal/measurement/t6;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/t6;->C()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 16
    .line 17
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 20
    .line 21
    .line 22
    const-string v5, "_eid"

    .line 23
    .line 24
    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/td;->u(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Ljava/lang/Long;

    .line 29
    .line 30
    if-eqz v6, :cond_e

    .line 31
    .line 32
    const-string v7, "_ep"

    .line 33
    .line 34
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-wide/16 v10, 0x0

    .line 39
    .line 40
    if-eqz v7, :cond_c

    .line 41
    .line 42
    invoke-static {v6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 46
    .line 47
    .line 48
    const-string v0, "_en"

    .line 49
    .line 50
    invoke-static {v8, v0}, Lcom/google/android/gms/measurement/internal/td;->u(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v12, v0

    .line 55
    check-cast v12, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v7, 0x0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "Extra parameter without an event name. eventId"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v7

    .line 80
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/Long;

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v13

    .line 92
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v15

    .line 98
    cmp-long v0, v13, v15

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v4, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 117
    .line 118
    const/4 v13, 0x2

    .line 119
    new-array v13, v13, [Ljava/lang/String;

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    aput-object v3, v13, v14

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    const/4 v7, 0x1

    .line 129
    aput-object v15, v13, v7

    .line 130
    .line 131
    invoke-virtual {v0, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 132
    .line 133
    .line 134
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v7, "Main event not found"

    .line 152
    .line 153
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 162
    .line 163
    .line 164
    move-result-wide v13

    .line 165
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->M()Lcom/google/android/gms/internal/measurement/s6;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/google/android/gms/internal/measurement/t6;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    .line 185
    :try_start_3
    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :try_start_4
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 195
    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    const-string v13, "Failed to merge main event. appId, eventId"

    .line 205
    .line 206
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v7, v13, v14, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    .line 215
    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    const/4 v7, 0x0

    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :catch_2
    move-exception v0

    .line 221
    const/4 v4, 0x0

    .line 222
    :goto_0
    :try_start_5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const-string v7, "Error selecting main event"

    .line 233
    .line 234
    invoke-virtual {v2, v7, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 235
    .line 236
    .line 237
    if-eqz v4, :cond_3

    .line 238
    .line 239
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 240
    .line 241
    .line 242
    :cond_3
    const/4 v0, 0x0

    .line 243
    :goto_2
    if-eqz v0, :cond_a

    .line 244
    .line 245
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 246
    .line 247
    if-nez v2, :cond_4

    .line 248
    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/measurement/t6;

    .line 252
    .line 253
    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 254
    .line 255
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Ljava/lang/Long;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 260
    .line 261
    .line 262
    move-result-wide v13

    .line 263
    iput-wide v13, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 264
    .line 265
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 266
    .line 267
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 270
    .line 271
    .line 272
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 273
    .line 274
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/td;->u(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/lang/Long;

    .line 279
    .line 280
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/Long;

    .line 281
    .line 282
    :cond_5
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 283
    .line 284
    const-wide/16 v13, -0x1

    .line 285
    .line 286
    add-long/2addr v4, v13

    .line 287
    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 288
    .line 289
    cmp-long v0, v4, v10

    .line 290
    .line 291
    if-gtz v0, :cond_6

    .line 292
    .line 293
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 302
    .line 303
    .line 304
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const-string v4, "Clearing complex main event info. appId"

    .line 315
    .line 316
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    const-string v4, "delete from main_event_params where app_id=?"

    .line 324
    .line 325
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :catch_3
    move-exception v0

    .line 334
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    const-string v3, "Error clearing complex main event"

    .line 345
    .line 346
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 351
    .line 352
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 359
    .line 360
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 361
    .line 362
    move-object/from16 v3, p1

    .line 363
    .line 364
    move-object v4, v6

    .line 365
    move-wide v5, v10

    .line 366
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/u;->F(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/t6;)Z

    .line 367
    .line 368
    .line 369
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .line 373
    .line 374
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 375
    .line 376
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/t6;->C()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-eqz v3, :cond_8

    .line 389
    .line 390
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    check-cast v3, Lcom/google/android/gms/internal/measurement/x6;

    .line 395
    .line 396
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 397
    .line 398
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 399
    .line 400
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/td;->r(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/x6;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    if-nez v4, :cond_7

    .line 412
    .line 413
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    goto :goto_4

    .line 417
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-nez v2, :cond_9

    .line 422
    .line 423
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    .line 425
    .line 426
    move-object v9, v0

    .line 427
    goto :goto_5

    .line 428
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 429
    .line 430
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const-string v2, "No unique parameters in main event. eventName"

    .line 441
    .line 442
    invoke-virtual {v0, v2, v12}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    :goto_5
    move-object v0, v12

    .line 446
    goto :goto_8

    .line 447
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ie;->d:Lcom/google/android/gms/measurement/internal/e;

    .line 448
    .line 449
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 460
    .line 461
    invoke-virtual {v0, v2, v12, v6}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const/4 v2, 0x0

    .line 465
    return-object v2

    .line 466
    :catchall_1
    move-exception v0

    .line 467
    move-object v7, v4

    .line 468
    :goto_7
    if-eqz v7, :cond_b

    .line 469
    .line 470
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 471
    .line 472
    .line 473
    :cond_b
    throw v0

    .line 474
    :cond_c
    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/ie;->b:Ljava/lang/Long;

    .line 475
    .line 476
    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/ie;->a:Lcom/google/android/gms/internal/measurement/t6;

    .line 477
    .line 478
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 479
    .line 480
    .line 481
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    const-string v7, "_epc"

    .line 486
    .line 487
    invoke-static {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/td;->v(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Ljava/lang/Long;

    .line 492
    .line 493
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 494
    .line 495
    .line 496
    move-result-wide v12

    .line 497
    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 498
    .line 499
    cmp-long v5, v12, v10

    .line 500
    .line 501
    if-gtz v5, :cond_d

    .line 502
    .line 503
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 504
    .line 505
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    const-string v3, "Complex event with zero extra param count. eventName"

    .line 514
    .line 515
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {v6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    check-cast v4, Ljava/lang/Long;

    .line 528
    .line 529
    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/ie;->c:J

    .line 530
    .line 531
    move-object/from16 v3, p1

    .line 532
    .line 533
    move-object/from16 v7, p2

    .line 534
    .line 535
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/u;->F(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/t6;)Z

    .line 536
    .line 537
    .line 538
    :cond_e
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    check-cast v2, Lcom/google/android/gms/internal/measurement/s6;

    .line 543
    .line 544
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/s6;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s6;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/s6;->B()Lcom/google/android/gms/internal/measurement/s6;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/s6;->A(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/s6;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, Lcom/google/android/gms/internal/measurement/t6;

    .line 558
    .line 559
    return-object v0
.end method
