.class public final Lio/sentry/v6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/v6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Missing required field \""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\""

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 29
    .line 30
    invoke-interface {p2, v1, p1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/v6$b;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/v6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/v6;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v4, v3

    .line 12
    move-object v5, v4

    .line 13
    move-object v6, v5

    .line 14
    move-object v7, v6

    .line 15
    move-object v8, v7

    .line 16
    move-object v9, v8

    .line 17
    move-object v11, v9

    .line 18
    move-object v12, v11

    .line 19
    move-object v13, v12

    .line 20
    move-object v14, v13

    .line 21
    move-object v15, v14

    .line 22
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    sget-object v0, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 27
    .line 28
    move-object/from16 v16, v14

    .line 29
    .line 30
    const-string v14, "public_key"

    .line 31
    .line 32
    move-object/from16 v17, v13

    .line 33
    .line 34
    const-string v13, "trace_id"

    .line 35
    .line 36
    if-ne v10, v0, :cond_c

    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    const/16 v18, -0x1

    .line 50
    .line 51
    sparse-switch v10, :sswitch_data_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_0
    const-string v10, "transaction"

    .line 57
    .line 58
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-nez v10, :cond_0

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_0
    const/16 v18, 0xa

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :sswitch_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-nez v10, :cond_1

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_1
    const/16 v18, 0x9

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_2
    const-string v10, "sampled"

    .line 83
    .line 84
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-nez v10, :cond_2

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    const/16 v18, 0x8

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/16 v18, 0x7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :sswitch_4
    const-string v10, "release"

    .line 107
    .line 108
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/16 v18, 0x6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :sswitch_5
    const-string v10, "sample_rate"

    .line 119
    .line 120
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-nez v10, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const/16 v18, 0x5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :sswitch_6
    const-string v10, "user"

    .line 131
    .line 132
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-nez v10, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    const/16 v18, 0x4

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :sswitch_7
    const-string v10, "environment"

    .line 143
    .line 144
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-nez v10, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    const/16 v18, 0x3

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :sswitch_8
    const-string v10, "user_id"

    .line 155
    .line 156
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-nez v10, :cond_8

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    const/16 v18, 0x2

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :sswitch_9
    const-string v10, "replay_id"

    .line 167
    .line 168
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_9

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_9
    const/16 v18, 0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :sswitch_a
    const-string v10, "user_segment"

    .line 179
    .line 180
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_a

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_a
    const/16 v18, 0x0

    .line 188
    .line 189
    :goto_1
    packed-switch v18, :pswitch_data_0

    .line 190
    .line 191
    .line 192
    if-nez v15, :cond_b

    .line 193
    .line 194
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    .line 196
    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 197
    .line 198
    .line 199
    :cond_b
    invoke-interface {v1, v2, v15, v0}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    move-object v11, v0

    .line 208
    goto :goto_2

    .line 209
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->C()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v7, v0

    .line 214
    goto :goto_2

    .line 215
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object v13, v0

    .line 220
    move-object/from16 v14, v16

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :pswitch_3
    new-instance v0, Lio/sentry/protocol/r$a;

    .line 224
    .line 225
    invoke-direct {v0}, Lio/sentry/protocol/r$a;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/r$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/r;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    move-object v5, v0

    .line 233
    :goto_2
    move-object/from16 v14, v16

    .line 234
    .line 235
    :goto_3
    move-object/from16 v13, v17

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move-object v8, v0

    .line 243
    goto :goto_2

    .line 244
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    move-object v12, v0

    .line 249
    goto :goto_2

    .line 250
    :pswitch_6
    new-instance v0, Lio/sentry/v6$c$a;

    .line 251
    .line 252
    invoke-direct {v0}, Lio/sentry/v6$c$a;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-interface {v1, v2, v0}, Lio/sentry/l2;->u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Lio/sentry/v6$c;

    .line 260
    .line 261
    move-object v3, v0

    .line 262
    goto :goto_2

    .line 263
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move-object v9, v0

    .line 268
    goto :goto_2

    .line 269
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    move-object v4, v0

    .line 274
    goto :goto_2

    .line 275
    :pswitch_9
    new-instance v0, Lio/sentry/protocol/r$a;

    .line 276
    .line 277
    invoke-direct {v0}, Lio/sentry/protocol/r$a;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/r$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/r;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v14, v0

    .line 285
    goto :goto_3

    .line 286
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    move-object v6, v0

    .line 291
    goto :goto_2

    .line 292
    :goto_4
    move-object/from16 v0, p0

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_c
    if-eqz v5, :cond_10

    .line 297
    .line 298
    if-eqz v7, :cond_f

    .line 299
    .line 300
    if-eqz v3, :cond_e

    .line 301
    .line 302
    if-nez v4, :cond_d

    .line 303
    .line 304
    invoke-virtual {v3}, Lio/sentry/v6$c;->a()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    :cond_d
    if-nez v6, :cond_e

    .line 309
    .line 310
    invoke-virtual {v3}, Lio/sentry/v6$c;->b()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    move-object v10, v0

    .line 315
    move-object v0, v4

    .line 316
    goto :goto_5

    .line 317
    :cond_e
    move-object v0, v4

    .line 318
    move-object v10, v6

    .line 319
    :goto_5
    new-instance v2, Lio/sentry/v6;

    .line 320
    .line 321
    move-object v4, v2

    .line 322
    move-object v6, v7

    .line 323
    move-object v7, v8

    .line 324
    move-object v8, v9

    .line 325
    move-object v9, v0

    .line 326
    move-object/from16 v13, v17

    .line 327
    .line 328
    move-object/from16 v14, v16

    .line 329
    .line 330
    invoke-direct/range {v4 .. v14}, Lio/sentry/v6;-><init>(Lio/sentry/protocol/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/r;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v15}, Lio/sentry/v6;->b(Ljava/util/Map;)V

    .line 334
    .line 335
    .line 336
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 337
    .line 338
    .line 339
    return-object v2

    .line 340
    :cond_f
    move-object/from16 v0, p0

    .line 341
    .line 342
    invoke-direct {v0, v14, v2}, Lio/sentry/v6$b;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    throw v1

    .line 347
    :cond_10
    move-object/from16 v0, p0

    .line 348
    .line 349
    invoke-direct {v0, v13, v2}, Lio/sentry/v6$b;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    throw v1

    .line 354
    nop

    .line 355
    :sswitch_data_0
    .sparse-switch
        -0x2f6bc941 -> :sswitch_a
        -0x1b1b338d -> :sswitch_9
        -0x8c511f1 -> :sswitch_8
        -0x51ecded -> :sswitch_7
        0x36ebcb -> :sswitch_6
        0x9218a55 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6f273ffa -> :sswitch_2
        0x71892389 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

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
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
