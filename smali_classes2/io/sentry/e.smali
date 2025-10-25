.class public final Lio/sentry/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lio/sentry/j5;

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/e;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e;->a:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/sentry/e;->b:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Lio/sentry/e;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 11
    iget-object v0, p1, Lio/sentry/e;->b:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/e;->b:Ljava/util/Date;

    .line 12
    iget-object v0, p1, Lio/sentry/e;->a:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/e;->a:Ljava/lang/Long;

    .line 13
    iget-object v0, p1, Lio/sentry/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lio/sentry/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lio/sentry/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lio/sentry/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lio/sentry/e;->e:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iput-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 19
    :cond_0
    iget-object v0, p1, Lio/sentry/e;->i:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/e;->i:Ljava/util/Map;

    .line 20
    iget-object p1, p1, Lio/sentry/e;->h:Lio/sentry/j5;

    iput-object p1, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lio/sentry/e;->b:Ljava/util/Date;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/e;->a:Ljava/lang/Long;

    return-void
.end method

.method static synthetic a(Lio/sentry/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lio/sentry/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lio/sentry/e;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lio/sentry/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lio/sentry/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lio/sentry/e;Lio/sentry/j5;)Lio/sentry/j5;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 2
    .line 3
    return-object p1
.end method

.method public static g(Ljava/util/Map;Lio/sentry/s5;)Lio/sentry/e;
    .locals 16

    .line 1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, v3

    .line 20
    move-object v5, v4

    .line 21
    move-object v6, v5

    .line 22
    move-object v7, v6

    .line 23
    move-object v8, v7

    .line 24
    move-object v9, v8

    .line 25
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-eqz v10, :cond_10

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    check-cast v10, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    check-cast v12, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, -0x1

    .line 56
    sparse-switch v13, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :sswitch_0
    const-string v13, "message"

    .line 61
    .line 62
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-nez v12, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v15, 0x6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_1
    const-string v13, "level"

    .line 72
    .line 73
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-nez v12, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v15, 0x5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_2
    const-string v13, "timestamp"

    .line 83
    .line 84
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-nez v12, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 v15, 0x4

    .line 92
    goto :goto_1

    .line 93
    :sswitch_3
    const-string v13, "category"

    .line 94
    .line 95
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-nez v12, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v15, 0x3

    .line 103
    goto :goto_1

    .line 104
    :sswitch_4
    const-string v13, "type"

    .line 105
    .line 106
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-nez v12, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const/4 v15, 0x2

    .line 114
    goto :goto_1

    .line 115
    :sswitch_5
    const-string v13, "data"

    .line 116
    .line 117
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-nez v12, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    const/4 v15, 0x1

    .line 125
    goto :goto_1

    .line 126
    :sswitch_6
    const-string v13, "origin"

    .line 127
    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-nez v12, :cond_7

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    move v15, v14

    .line 136
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    if-nez v9, :cond_8

    .line 140
    .line 141
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_8
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Ljava/lang/String;

    .line 151
    .line 152
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_0
    instance-of v4, v11, Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v4, :cond_9

    .line 164
    .line 165
    check-cast v11, Ljava/lang/String;

    .line 166
    .line 167
    move-object v4, v11

    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_9
    move-object v4, v3

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :pswitch_1
    instance-of v10, v11, Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v10, :cond_a

    .line 176
    .line 177
    check-cast v11, Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_a
    move-object v11, v3

    .line 181
    :goto_2
    if-eqz v11, :cond_0

    .line 182
    .line 183
    :try_start_0
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 184
    .line 185
    invoke-virtual {v11, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-static {v10}, Lio/sentry/j5;->valueOf(Ljava/lang/String;)Lio/sentry/j5;

    .line 190
    .line 191
    .line 192
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_2
    instance-of v10, v11, Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v10, :cond_0

    .line 198
    .line 199
    check-cast v11, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-static {v11, v10}, Lio/sentry/l2;->I0(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    if-eqz v10, :cond_0

    .line 210
    .line 211
    move-object v0, v10

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_3
    instance-of v6, v11, Ljava/lang/String;

    .line 215
    .line 216
    if-eqz v6, :cond_b

    .line 217
    .line 218
    check-cast v11, Ljava/lang/String;

    .line 219
    .line 220
    move-object v6, v11

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_b
    move-object v6, v3

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :pswitch_4
    instance-of v5, v11, Ljava/lang/String;

    .line 227
    .line 228
    if-eqz v5, :cond_c

    .line 229
    .line 230
    check-cast v11, Ljava/lang/String;

    .line 231
    .line 232
    move-object v5, v11

    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_c
    move-object v5, v3

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :pswitch_5
    instance-of v10, v11, Ljava/util/Map;

    .line 239
    .line 240
    if-eqz v10, :cond_d

    .line 241
    .line 242
    check-cast v11, Ljava/util/Map;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_d
    move-object v11, v3

    .line 246
    :goto_3
    if-eqz v11, :cond_0

    .line 247
    .line 248
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_0

    .line 261
    .line 262
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    check-cast v11, Ljava/util/Map$Entry;

    .line 267
    .line 268
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    instance-of v12, v12, Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v12, :cond_e

    .line 275
    .line 276
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    if-eqz v12, :cond_e

    .line 281
    .line 282
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    check-cast v12, Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    sget-object v12, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 301
    .line 302
    const-string v13, "Invalid key or null value in data map."

    .line 303
    .line 304
    new-array v15, v14, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-interface {v11, v12, v13, v15}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :pswitch_6
    instance-of v7, v11, Ljava/lang/String;

    .line 311
    .line 312
    if-eqz v7, :cond_f

    .line 313
    .line 314
    check-cast v11, Ljava/lang/String;

    .line 315
    .line 316
    move-object v7, v11

    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_f
    move-object v7, v3

    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_10
    new-instance v2, Lio/sentry/e;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Lio/sentry/e;-><init>(Ljava/util/Date;)V

    .line 325
    .line 326
    .line 327
    iput-object v4, v2, Lio/sentry/e;->c:Ljava/lang/String;

    .line 328
    .line 329
    iput-object v5, v2, Lio/sentry/e;->d:Ljava/lang/String;

    .line 330
    .line 331
    iput-object v1, v2, Lio/sentry/e;->e:Ljava/util/Map;

    .line 332
    .line 333
    iput-object v6, v2, Lio/sentry/e;->f:Ljava/lang/String;

    .line 334
    .line 335
    iput-object v7, v2, Lio/sentry/e;->g:Ljava/lang/String;

    .line 336
    .line 337
    iput-object v8, v2, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 338
    .line 339
    invoke-virtual {v2, v9}, Lio/sentry/e;->s(Ljava/util/Map;)V

    .line 340
    .line 341
    .line 342
    return-object v2

    .line 343
    :sswitch_data_0
    .sparse-switch
        -0x3c1e50da -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/e;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "user"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "ui."

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const-string p0, "view.id"

    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const-string p0, "view.class"

    .line 41
    .line 42
    invoke-virtual {v0, p0, p2}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz p3, :cond_2

    .line 46
    .line 47
    const-string p0, "view.tag"

    .line 48
    .line 49
    invoke-virtual {v0, p0, p3}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-virtual {v0}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/sentry/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lio/sentry/e;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lio/sentry/e;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lio/sentry/e;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lio/sentry/e;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Lio/sentry/e;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 80
    .line 81
    iget-object p1, p1, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 82
    .line 83
    if-ne v2, p1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 88
    :cond_3
    :goto_1
    return v1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/e;->b:Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lio/sentry/util/q;->b([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/sentry/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/e;->b:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Date;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/e;->a:Ljava/lang/Long;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {v0, v1}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lio/sentry/e;->b:Ljava/util/Date;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "No timestamp set for breadcrumb"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lio/sentry/j5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/e;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    const-string v0, "timestamp"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "message"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lio/sentry/e;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "type"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lio/sentry/e;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 45
    .line 46
    .line 47
    :cond_1
    const-string v0, "data"

    .line 48
    .line 49
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lio/sentry/e;->e:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string v0, "category"

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lio/sentry/e;->f:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const-string v0, "origin"

    .line 78
    .line 79
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lio/sentry/e;->g:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string v0, "level"

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lio/sentry/e;->h:Lio/sentry/j5;

    .line 99
    .line 100
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lio/sentry/e;->i:Ljava/util/Map;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v2, p0, Lio/sentry/e;->i:Ljava/util/Map;

    .line 128
    .line 129
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 141
    .line 142
    .line 143
    return-void
.end method
