.class final Lcom/google/android/gms/measurement/internal/z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:[B

.field private final c:Lcom/google/android/gms/measurement/internal/x9;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/aa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/x9;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

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
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/z9;->a:Ljava/net/URL;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/z9;->b:[B

    .line 21
    .line 22
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/z9;->c:Lcom/google/android/gms/measurement/internal/x9;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z9;->d:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/z9;->e:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method

.method private final b(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v7, Lcom/google/android/gms/measurement/internal/y9;

    .line 10
    .line 11
    move-object v1, v7

    .line 12
    move-object v2, p0

    .line 13
    move v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/y9;-><init>(Lcom/google/android/gms/measurement/internal/z9;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method final synthetic a(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z9;->c:Lcom/google/android/gms/measurement/internal/x9;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z9;->d:Ljava/lang/String;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/x9;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final run()V
    .locals 11

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

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
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/z9;->a:Ljava/net/URL;

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
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 30
    .line 31
    .line 32
    const v5, 0xea60

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 39
    .line 40
    .line 41
    const v5, 0xee48

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z9;->e:Ljava/util/Map;

    .line 55
    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v8, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z9;->b:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 95
    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    .line 107
    .line 108
    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 124
    :try_start_3
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 125
    .line 126
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-string v7, "Uploading data. size"

    .line 137
    .line 138
    array-length v8, v1

    .line 139
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 147
    .line 148
    .line 149
    const-string v5, "Content-Encoding"

    .line 150
    .line 151
    const-string v6, "gzip"

    .line 152
    .line 153
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 163
    .line 164
    .line 165
    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 166
    :try_start_4
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    move-object v6, v3

    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :catch_0
    move-exception v1

    .line 178
    move-object v6, v3

    .line 179
    goto/16 :goto_a

    .line 180
    .line 181
    :catch_1
    move-exception v1

    .line 182
    :try_start_5
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 183
    .line 184
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const-string v6, "Failed to gzip post request content"

    .line 195
    .line 196
    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    throw v1

    .line 200
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 201
    .line 202
    .line 203
    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 204
    :try_start_6
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 208
    :try_start_7
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 214
    .line 215
    .line 216
    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 217
    const/16 v8, 0x400

    .line 218
    .line 219
    :try_start_8
    new-array v8, v8, [B

    .line 220
    .line 221
    :goto_2
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-lez v9, :cond_2

    .line 226
    .line 227
    invoke-virtual {v6, v8, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 232
    .line 233
    .line 234
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 235
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/z9;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :catchall_1
    move-exception v2

    .line 246
    goto :goto_3

    .line 247
    :catchall_2
    move-exception v2

    .line 248
    move-object v7, v3

    .line 249
    :goto_3
    if-eqz v7, :cond_3

    .line 250
    .line 251
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 252
    .line 253
    .line 254
    :cond_3
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 255
    :catchall_3
    move-exception v2

    .line 256
    move-object v6, v5

    .line 257
    move-object v5, v3

    .line 258
    goto :goto_4

    .line 259
    :catch_2
    move-exception v2

    .line 260
    move-object v6, v5

    .line 261
    move-object v5, v3

    .line 262
    goto :goto_5

    .line 263
    :catchall_4
    move-exception v2

    .line 264
    move-object v5, v3

    .line 265
    move-object v6, v5

    .line 266
    :goto_4
    move-object v10, v2

    .line 267
    move v2, v1

    .line 268
    move-object v1, v10

    .line 269
    goto :goto_7

    .line 270
    :catch_3
    move-exception v2

    .line 271
    move-object v5, v3

    .line 272
    move-object v6, v5

    .line 273
    :goto_5
    move-object v10, v2

    .line 274
    move v2, v1

    .line 275
    move-object v1, v10

    .line 276
    goto :goto_a

    .line 277
    :catchall_5
    move-exception v1

    .line 278
    move-object v5, v3

    .line 279
    goto :goto_6

    .line 280
    :catch_4
    move-exception v1

    .line 281
    move-object v5, v3

    .line 282
    goto :goto_9

    .line 283
    :cond_4
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    .line 284
    .line 285
    const-string v4, "Failed to obtain HTTP connection"

    .line 286
    .line 287
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 291
    :catchall_6
    move-exception v1

    .line 292
    move-object v4, v3

    .line 293
    move-object v5, v4

    .line 294
    :goto_6
    move-object v6, v5

    .line 295
    :goto_7
    if-eqz v5, :cond_5

    .line 296
    .line 297
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 298
    .line 299
    .line 300
    goto :goto_8

    .line 301
    :catch_5
    move-exception v5

    .line 302
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 303
    .line 304
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 305
    .line 306
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/z9;->d:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_5
    :goto_8
    if-eqz v4, :cond_6

    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 326
    .line 327
    .line 328
    :cond_6
    invoke-direct {p0, v2, v3, v3, v6}, Lcom/google/android/gms/measurement/internal/z9;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 329
    .line 330
    .line 331
    throw v1

    .line 332
    :catch_6
    move-exception v1

    .line 333
    move-object v4, v3

    .line 334
    move-object v5, v4

    .line 335
    :goto_9
    move-object v6, v5

    .line 336
    :goto_a
    if-eqz v5, :cond_7

    .line 337
    .line 338
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 339
    .line 340
    .line 341
    goto :goto_b

    .line 342
    :catch_7
    move-exception v5

    .line 343
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/z9;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 344
    .line 345
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 346
    .line 347
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/z9;->d:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :cond_7
    :goto_b
    if-eqz v4, :cond_8

    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 367
    .line 368
    .line 369
    :cond_8
    invoke-direct {p0, v2, v1, v3, v6}, Lcom/google/android/gms/measurement/internal/z9;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method
