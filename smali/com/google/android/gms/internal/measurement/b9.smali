.class public abstract Lcom/google/android/gms/internal/measurement/b9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ln6/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ln6/l;
    .locals 16

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b9;->a:Ln6/l;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const-class v1, Lcom/google/android/gms/internal/measurement/b9;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/b9;->a:Ln6/l;

    .line 9
    .line 10
    if-nez v0, :cond_b

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 15
    .line 16
    sget v3, Lcom/google/android/gms/internal/measurement/e9;->b:I

    .line 17
    .line 18
    const-string v3, "eng"

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "userdebug"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :cond_0
    const-string v0, "dev-keys"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string v0, "test-keys"

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Ln6/l;->a()Ln6/l;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v2, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object/from16 v2, p0

    .line 76
    .line 77
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 81
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 86
    .line 87
    const-string v5, "phenotype_hermetic"

    .line 88
    .line 89
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v6, "overrides.txt"

    .line 94
    .line 95
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    invoke-static {v0}, Ln6/l;->d(Ljava/lang/Object;)Ln6/l;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-static {}, Ln6/l;->a()Ln6/l;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v5, "HermeticFileOverrides"

    .line 116
    .line 117
    const-string v6, "no data dir"

    .line 118
    .line 119
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ln6/l;->a()Ln6/l;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :goto_2
    invoke-virtual {v0}, Ln6/l;->c()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_a

    .line 131
    .line 132
    invoke-virtual {v0}, Ln6/l;->b()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/io/File;

    .line 137
    .line 138
    const-string v5, "Parsed "

    .line 139
    .line 140
    const-string v6, " for Android package "

    .line 141
    .line 142
    const-string v7, "Invalid: "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 143
    .line 144
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    .line 145
    .line 146
    new-instance v9, Ljava/io/InputStreamReader;

    .line 147
    .line 148
    new-instance v10, Ljava/io/FileInputStream;

    .line 149
    .line 150
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    .line 158
    .line 159
    :try_start_5
    new-instance v9, Lr/i;

    .line 160
    .line 161
    invoke-direct {v9}, Lr/i;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v10, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 167
    .line 168
    .line 169
    :goto_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-eqz v11, :cond_9

    .line 174
    .line 175
    const-string v12, " "

    .line 176
    .line 177
    const/4 v13, 0x3

    .line 178
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    array-length v14, v12

    .line 183
    if-eq v14, v13, :cond_5

    .line 184
    .line 185
    const-string v12, "HermeticFileOverrides"

    .line 186
    .line 187
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    add-int/lit8 v13, v13, 0x9

    .line 192
    .line 193
    new-instance v14, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    aget-object v11, v12, v4

    .line 213
    .line 214
    new-instance v13, Ljava/lang/String;

    .line 215
    .line 216
    invoke-direct {v13, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 v11, 0x1

    .line 220
    aget-object v11, v12, v11

    .line 221
    .line 222
    new-instance v14, Ljava/lang/String;

    .line 223
    .line 224
    invoke-direct {v14, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    const/4 v14, 0x2

    .line 232
    aget-object v15, v12, v14

    .line 233
    .line 234
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    check-cast v15, Ljava/lang/String;

    .line 239
    .line 240
    if-nez v15, :cond_7

    .line 241
    .line 242
    aget-object v12, v12, v14

    .line 243
    .line 244
    new-instance v14, Ljava/lang/String;

    .line 245
    .line 246
    invoke-direct {v14, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    const/16 v4, 0x400

    .line 258
    .line 259
    if-lt v12, v4, :cond_6

    .line 260
    .line 261
    if-ne v15, v14, :cond_7

    .line 262
    .line 263
    :cond_6
    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-virtual {v9, v13}, Lr/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Lr/i;

    .line 271
    .line 272
    if-nez v4, :cond_8

    .line 273
    .line 274
    new-instance v4, Lr/i;

    .line 275
    .line 276
    invoke-direct {v4}, Lr/i;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v13, v4}, Lr/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_8
    invoke-virtual {v4, v11, v15}, Lr/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    goto :goto_3

    .line 287
    :cond_9
    const-string v4, "HermeticFileOverrides"

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    add-int/lit8 v7, v7, 0x1c

    .line 302
    .line 303
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    add-int/2addr v7, v10

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    new-instance v0, Lcom/google/android/gms/internal/measurement/v8;

    .line 337
    .line 338
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/measurement/v8;-><init>(Lr/i;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    .line 340
    .line 341
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 342
    .line 343
    .line 344
    :try_start_7
    invoke-static {v0}, Ln6/l;->d(Ljava/lang/Object;)Ln6/l;

    .line 345
    .line 346
    .line 347
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 348
    goto :goto_5

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    move-object v2, v0

    .line 351
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    move-object v4, v0

    .line 357
    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    :goto_4
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 361
    :catch_1
    move-exception v0

    .line 362
    :try_start_a
    new-instance v2, Ljava/lang/RuntimeException;

    .line 363
    .line 364
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    throw v2

    .line 368
    :cond_a
    invoke-static {}, Ln6/l;->a()Ln6/l;

    .line 369
    .line 370
    .line 371
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 372
    :goto_5
    :try_start_b
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 373
    .line 374
    .line 375
    :goto_6
    sput-object v0, Lcom/google/android/gms/internal/measurement/b9;->a:Ln6/l;

    .line 376
    .line 377
    goto :goto_7

    .line 378
    :catchall_2
    move-exception v0

    .line 379
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_b
    :goto_7
    monitor-exit v1

    .line 384
    goto :goto_8

    .line 385
    :catchall_3
    move-exception v0

    .line 386
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 387
    throw v0

    .line 388
    :cond_c
    :goto_8
    return-object v0
.end method
