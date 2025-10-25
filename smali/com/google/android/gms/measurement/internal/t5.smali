.class final Lcom/google/android/gms/measurement/internal/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:[B

.field private final c:Lcom/google/android/gms/measurement/internal/r5;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/r5;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/t5;->a:Ljava/net/URL;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/t5;->b:[B

    .line 21
    .line 22
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/r5;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/t5;->e:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->g()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/t5;->a:Ljava/net/URL;

    .line 11
    .line 12
    sget v5, Lcom/google/android/gms/internal/measurement/l1;->a:I

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    if-eqz v5, :cond_4

    .line 21
    .line 22
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 30
    .line 31
    .line 32
    const v6, 0xea60

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 39
    .line 40
    .line 41
    const v6, 0xee48

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/t5;->e:Ljava/util/Map;

    .line 55
    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_0

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v9, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/t5;->b:[B

    .line 95
    .line 96
    if-eqz v7, :cond_1

    .line 97
    .line 98
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/td;->V([B)[B

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v7, "Uploading data. size"

    .line 117
    .line 118
    array-length v8, v1

    .line 119
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 127
    .line 128
    .line 129
    const-string v5, "Content-Encoding"

    .line 130
    .line 131
    const-string v6, "gzip"

    .line 132
    .line 133
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 143
    .line 144
    .line 145
    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 146
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    move-object v8, v3

    .line 155
    move-object v3, v5

    .line 156
    move v5, v2

    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :catch_0
    move-exception v1

    .line 160
    move-object v8, v1

    .line 161
    move v7, v2

    .line 162
    move-object v10, v3

    .line 163
    move-object v3, v5

    .line 164
    goto/16 :goto_9

    .line 165
    .line 166
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 167
    .line 168
    .line 169
    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 170
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 174
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 180
    .line 181
    .line 182
    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    const/16 v6, 0x400

    .line 184
    .line 185
    :try_start_6
    new-array v6, v6, [B

    .line 186
    .line 187
    :goto_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-lez v7, :cond_2

    .line 192
    .line 193
    invoke-virtual {v1, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 198
    .line 199
    .line 200
    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 201
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 208
    .line 209
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/r5;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Lcom/google/android/gms/measurement/internal/s5;

    .line 220
    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v12, 0x0

    .line 223
    move-object v5, v1

    .line 224
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;ILjava/lang/Throwable;[BLjava/util/Map;[B)V

    .line 225
    .line 226
    .line 227
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catchall_1
    move-exception v1

    .line 232
    goto :goto_4

    .line 233
    :catchall_2
    move-exception v1

    .line 234
    move-object v5, v3

    .line 235
    :goto_4
    if-eqz v5, :cond_3

    .line 236
    .line 237
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 238
    .line 239
    .line 240
    :cond_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 241
    :catchall_3
    move-exception v1

    .line 242
    move v5, v8

    .line 243
    move-object v8, v11

    .line 244
    goto :goto_7

    .line 245
    :catch_1
    move-exception v1

    .line 246
    move v7, v8

    .line 247
    move-object v10, v11

    .line 248
    goto :goto_5

    .line 249
    :catchall_4
    move-exception v1

    .line 250
    move v5, v8

    .line 251
    goto :goto_6

    .line 252
    :catch_2
    move-exception v1

    .line 253
    move-object v10, v3

    .line 254
    move v7, v8

    .line 255
    :goto_5
    move-object v8, v1

    .line 256
    goto :goto_9

    .line 257
    :catchall_5
    move-exception v1

    .line 258
    move v5, v2

    .line 259
    :goto_6
    move-object v8, v3

    .line 260
    goto :goto_7

    .line 261
    :catch_3
    move-exception v1

    .line 262
    move-object v8, v1

    .line 263
    move v7, v2

    .line 264
    move-object v10, v3

    .line 265
    goto :goto_9

    .line 266
    :cond_4
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    .line 267
    .line 268
    const-string v4, "Failed to obtain HTTP connection"

    .line 269
    .line 270
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 274
    :catchall_6
    move-exception v1

    .line 275
    move v5, v2

    .line 276
    move-object v4, v3

    .line 277
    move-object v8, v4

    .line 278
    :goto_7
    if-eqz v3, :cond_5

    .line 279
    .line 280
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :catch_4
    move-exception v2

    .line 285
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 286
    .line 287
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v3, v0, v6, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_5
    :goto_8
    if-eqz v4, :cond_6

    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 309
    .line 310
    .line 311
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 312
    .line 313
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/r5;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-instance v10, Lcom/google/android/gms/measurement/internal/s5;

    .line 324
    .line 325
    const/4 v6, 0x0

    .line 326
    const/4 v7, 0x0

    .line 327
    const/4 v9, 0x0

    .line 328
    move-object v2, v10

    .line 329
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;ILjava/lang/Throwable;[BLjava/util/Map;[B)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 333
    .line 334
    .line 335
    throw v1

    .line 336
    :catch_5
    move-exception v1

    .line 337
    move-object v8, v1

    .line 338
    move v7, v2

    .line 339
    move-object v4, v3

    .line 340
    move-object v10, v4

    .line 341
    :goto_9
    if-eqz v3, :cond_7

    .line 342
    .line 343
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 344
    .line 345
    .line 346
    goto :goto_a

    .line 347
    :catch_6
    move-exception v1

    .line 348
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 349
    .line 350
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :cond_7
    :goto_a
    if-eqz v4, :cond_8

    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 372
    .line 373
    .line 374
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/u5;

    .line 375
    .line 376
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/t5;->d:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/r5;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v1, Lcom/google/android/gms/measurement/internal/s5;

    .line 387
    .line 388
    const/4 v9, 0x0

    .line 389
    const/4 v11, 0x0

    .line 390
    move-object v4, v1

    .line 391
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;ILjava/lang/Throwable;[BLjava/util/Map;[B)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_3
.end method
