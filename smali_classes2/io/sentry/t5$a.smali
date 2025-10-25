.class public final Lio/sentry/t5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/t5$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/t5;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/t5;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lio/sentry/t3$a;

    .line 6
    .line 7
    invoke-direct {v2}, Lio/sentry/t3$a;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lio/sentry/t5;

    .line 11
    .line 12
    invoke-direct {v3}, Lio/sentry/t5;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->t()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v5, v4

    .line 20
    move-object v6, v5

    .line 21
    move-object v7, v6

    .line 22
    move-object v8, v7

    .line 23
    move-object v9, v8

    .line 24
    move-object v10, v9

    .line 25
    move-object v11, v10

    .line 26
    move-object v12, v11

    .line 27
    move-object v13, v12

    .line 28
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    sget-object v15, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 33
    .line 34
    if-ne v14, v15, :cond_b

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    const/16 v16, -0x1

    .line 48
    .line 49
    sparse-switch v15, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_0
    const-string v15, "segment_id"

    .line 55
    .line 56
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    if-nez v15, :cond_1

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_1
    const/16 v16, 0x8

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_1
    const-string v15, "replay_type"

    .line 69
    .line 70
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    if-nez v15, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/16 v16, 0x7

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :sswitch_2
    const-string v15, "trace_ids"

    .line 81
    .line 82
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-nez v15, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/16 v16, 0x6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :sswitch_3
    const-string v15, "error_ids"

    .line 93
    .line 94
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-nez v15, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/16 v16, 0x5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :sswitch_4
    const-string v15, "timestamp"

    .line 105
    .line 106
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-nez v15, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const/16 v16, 0x4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :sswitch_5
    const-string v15, "urls"

    .line 117
    .line 118
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    if-nez v15, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    const/16 v16, 0x3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :sswitch_6
    const-string v15, "type"

    .line 129
    .line 130
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-nez v15, :cond_7

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_7
    const/16 v16, 0x2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :sswitch_7
    const-string v15, "replay_start_timestamp"

    .line 141
    .line 142
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-nez v15, :cond_8

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    const/16 v16, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :sswitch_8
    const-string v15, "replay_id"

    .line 153
    .line 154
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_9

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_9
    const/16 v16, 0x0

    .line 162
    .line 163
    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3, v14, v0, v1}, Lio/sentry/t3$a;->a(Lio/sentry/t3;Ljava/lang/String;Lio/sentry/l2;Lio/sentry/ILogger;)Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-nez v15, :cond_0

    .line 171
    .line 172
    if-nez v8, :cond_a

    .line 173
    .line 174
    new-instance v8, Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 177
    .line 178
    .line 179
    :cond_a
    invoke-interface {v0, v1, v8, v14}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->J()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_1
    new-instance v5, Lio/sentry/t5$b$a;

    .line 191
    .line 192
    invoke-direct {v5}, Lio/sentry/t5$b$a;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v1, v5}, Lio/sentry/l2;->u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Lio/sentry/t5$b;

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    check-cast v13, Ljava/util/List;

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    check-cast v12, Ljava/util/List;

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_4
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    check-cast v11, Ljava/util/List;

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_7
    invoke-interface/range {p1 .. p2}, Lio/sentry/l2;->i0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_8
    new-instance v9, Lio/sentry/protocol/r$a;

    .line 246
    .line 247
    invoke-direct {v9}, Lio/sentry/protocol/r$a;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v1, v9}, Lio/sentry/l2;->u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, Lio/sentry/protocol/r;

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_b
    invoke-interface/range {p1 .. p1}, Lio/sentry/l2;->r()V

    .line 259
    .line 260
    .line 261
    if-eqz v4, :cond_c

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Lio/sentry/t5;->p0(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_c
    if-eqz v5, :cond_d

    .line 267
    .line 268
    invoke-virtual {v3, v5}, Lio/sentry/t5;->l0(Lio/sentry/t5$b;)V

    .line 269
    .line 270
    .line 271
    :cond_d
    if-eqz v6, :cond_e

    .line 272
    .line 273
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-virtual {v3, v0}, Lio/sentry/t5;->m0(I)V

    .line 278
    .line 279
    .line 280
    :cond_e
    if-eqz v7, :cond_f

    .line 281
    .line 282
    invoke-virtual {v3, v7}, Lio/sentry/t5;->n0(Ljava/util/Date;)V

    .line 283
    .line 284
    .line 285
    :cond_f
    invoke-virtual {v3, v9}, Lio/sentry/t5;->j0(Lio/sentry/protocol/r;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v10}, Lio/sentry/t5;->k0(Ljava/util/Date;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v11}, Lio/sentry/t5;->r0(Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v12}, Lio/sentry/t5;->i0(Ljava/util/List;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v13}, Lio/sentry/t5;->o0(Ljava/util/List;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v8}, Lio/sentry/t5;->q0(Ljava/util/Map;)V

    .line 301
    .line 302
    .line 303
    return-object v3

    .line 304
    nop

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x1b1b338d -> :sswitch_8
        -0xfbcbadf -> :sswitch_7
        0x368f3a -> :sswitch_6
        0x36e8e4 -> :sswitch_5
        0x3492916 -> :sswitch_4
        0x13a95401 -> :sswitch_3
        0x2b308cbe -> :sswitch_2
        0x3ee8d892 -> :sswitch_1
        0x403ba1a7 -> :sswitch_0
    .end sparse-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_0
    .packed-switch 0x0
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
