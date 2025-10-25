.class public final Lio/sentry/protocol/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/b0;
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
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/b0$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/b0;
    .locals 5

    .line 1
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/protocol/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 15
    .line 16
    if-ne v2, v3, :cond_c

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string v3, "segment"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    const/16 v4, 0x8

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v3, "ip_address"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v4, 0x7

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v3, "other"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v4, 0x6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string v3, "email"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v4, 0x5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_4
    const-string v3, "name"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/4 v4, 0x4

    .line 92
    goto :goto_1

    .line 93
    :sswitch_5
    const-string v3, "data"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    const/4 v4, 0x3

    .line 103
    goto :goto_1

    .line 104
    :sswitch_6
    const-string v3, "geo"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_7

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    const/4 v4, 0x2

    .line 114
    goto :goto_1

    .line 115
    :sswitch_7
    const-string v3, "id"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_8

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_8
    const/4 v4, 0x1

    .line 125
    goto :goto_1

    .line 126
    :sswitch_8
    const-string v3, "username"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_9

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_9
    const/4 v4, 0x0

    .line 136
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    if-nez v1, :cond_a

    .line 140
    .line 141
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_a
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->d(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->e(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_2
    invoke-static {v0}, Lio/sentry/protocol/b0;->h(Lio/sentry/protocol/b0;)Ljava/util/Map;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_b

    .line 174
    .line 175
    invoke-static {v0}, Lio/sentry/protocol/b0;->h(Lio/sentry/protocol/b0;)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_0

    .line 184
    .line 185
    :cond_b
    invoke-interface {p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/util/Map;

    .line 190
    .line 191
    invoke-static {v2}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->i(Lio/sentry/protocol/b0;Ljava/util/Map;)Ljava/util/Map;

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->a(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->f(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/l2;->B0()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/util/Map;

    .line 223
    .line 224
    invoke-static {v2}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->i(Lio/sentry/protocol/b0;Ljava/util/Map;)Ljava/util/Map;

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_6
    new-instance v2, Lio/sentry/protocol/f$a;

    .line 234
    .line 235
    invoke-direct {v2}, Lio/sentry/protocol/f$a;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/f$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/protocol/f;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->g(Lio/sentry/protocol/b0;Lio/sentry/protocol/f;)Lio/sentry/protocol/f;

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->b(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-static {v0, v2}, Lio/sentry/protocol/b0;->c(Lio/sentry/protocol/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_c
    invoke-virtual {v0, v1}, Lio/sentry/protocol/b0;->s(Ljava/util/Map;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    nop

    .line 273
    :sswitch_data_0
    .sparse-switch
        -0xfd6772a -> :sswitch_8
        0xd1b -> :sswitch_7
        0x18f51 -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x6527f10 -> :sswitch_2
        0x583738dc -> :sswitch_1
        0x75a49f33 -> :sswitch_0
    .end sparse-switch

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
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
