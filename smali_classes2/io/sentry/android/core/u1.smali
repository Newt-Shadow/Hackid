.class final Lio/sentry/android/core/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/y;


# instance fields
.field private a:Z

.field private final b:Lio/sentry/android/core/h;

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/u1;->a:Z

    .line 6
    .line 7
    const-string v0, "SentryAndroidOptions is required"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/android/core/u1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    const-string p1, "ActivityFramesTracker is required"

    .line 18
    .line 19
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lio/sentry/android/core/h;

    .line 24
    .line 25
    iput-object p1, p0, Lio/sentry/android/core/u1;->b:Lio/sentry/android/core/h;

    .line 26
    .line 27
    return-void
.end method

.method private d(Lio/sentry/android/core/performance/g;Lio/sentry/protocol/y;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/sentry/android/core/performance/g$a;->UNKNOWN:Lio/sentry/android/core/performance/g$a;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lio/sentry/protocol/u;

    .line 44
    .line 45
    invoke-virtual {v2}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "app.start.cold"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "app.start.warm"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    :cond_3
    invoke-virtual {v2}, Lio/sentry/protocol/u;->e()Lio/sentry/n6;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v3, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 80
    .line 81
    if-ne v2, v3, :cond_7

    .line 82
    .line 83
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->n()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->s()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->p()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    sub-long v5, v2, v5

    .line 102
    .line 103
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    const-wide/16 v7, 0x2710

    .line 108
    .line 109
    cmp-long v5, v5, v7

    .line 110
    .line 111
    if-gtz v5, :cond_5

    .line 112
    .line 113
    new-instance v5, Lio/sentry/android/core/performance/h;

    .line 114
    .line 115
    invoke-direct {v5}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->p()J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    invoke-virtual {v5, v6, v7}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->n()J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    invoke-virtual {v5, v6, v7}, Lio/sentry/android/core/performance/h;->w(J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2, v3}, Lio/sentry/android/core/performance/h;->y(J)V

    .line 133
    .line 134
    .line 135
    const-string v2, "Process Initialization"

    .line 136
    .line 137
    invoke-virtual {v5, v2}, Lio/sentry/android/core/performance/h;->v(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "process.load"

    .line 145
    .line 146
    invoke-static {v5, v1, v0, v3}, Lio/sentry/android/core/u1;->h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->o()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_6

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_6

    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lio/sentry/android/core/performance/h;

    .line 178
    .line 179
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const-string v5, "contentprovider.load"

    .line 184
    .line 185
    invoke-static {v3, v1, v0, v5}, Lio/sentry/android/core/u1;->h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->m()Lio/sentry/android/core/performance/h;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->t()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_7

    .line 202
    .line 203
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const-string v4, "application.load"

    .line 208
    .line 209
    invoke-static {v2, v1, v0, v4}, Lio/sentry/android/core/u1;->h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-virtual {p1}, Lio/sentry/android/core/performance/g;->g()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lio/sentry/android/core/performance/b;

    .line 235
    .line 236
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lio/sentry/android/core/performance/h;->s()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const-string v4, "activity.load"

    .line 245
    .line 246
    if-eqz v3, :cond_9

    .line 247
    .line 248
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lio/sentry/android/core/performance/h;->t()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_9

    .line 257
    .line 258
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v5, v1, v0, v4}, Lio/sentry/android/core/u1;->h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_9
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lio/sentry/android/core/performance/h;->s()Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_8

    .line 282
    .line 283
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lio/sentry/android/core/performance/h;->t()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_8

    .line 292
    .line 293
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v2, v1, v0, v4}, Lio/sentry/android/core/u1;->h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_a
    return-void
.end method

.method private e(Lio/sentry/protocol/y;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "app.start.warm"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "app.start.cold"

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lio/sentry/protocol/u;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    :cond_1
    return v3

    .line 47
    :cond_2
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lio/sentry/l6;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Lio/sentry/l6;->b()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v3, 0x0

    .line 79
    :cond_4
    :goto_0
    return v3
.end method

.method private static f(DLio/sentry/protocol/u;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/sentry/protocol/u;->f()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    cmpl-double v0, p0, v0

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lio/sentry/protocol/u;->g()Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lio/sentry/protocol/u;->g()Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmpg-double p0, p0, v0

    .line 28
    .line 29
    if-gtz p0, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method private g(Lio/sentry/protocol/y;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lio/sentry/protocol/u;

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "ui.load.initial_display"

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    move-object v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v4, "ui.load.full_display"

    .line 38
    .line 39
    invoke-virtual {v3}, Lio/sentry/protocol/u;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    move-object v2, v3

    .line 50
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    :cond_3
    if-nez v1, :cond_4

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_e

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lio/sentry/protocol/u;

    .line 78
    .line 79
    if-eq v0, v1, :cond_5

    .line 80
    .line 81
    if-ne v0, v2, :cond_6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    invoke-virtual {v0}, Lio/sentry/protocol/u;->b()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x1

    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    const-string v6, "thread.name"

    .line 93
    .line 94
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const-string v6, "main"

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    move v3, v4

    .line 110
    goto :goto_3

    .line 111
    :cond_8
    :goto_2
    move v3, v5

    .line 112
    :goto_3
    if-eqz v1, :cond_9

    .line 113
    .line 114
    invoke-virtual {v0}, Lio/sentry/protocol/u;->f()Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    invoke-static {v6, v7, v1}, Lio/sentry/android/core/u1;->f(DLio/sentry/protocol/u;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_9

    .line 127
    .line 128
    if-eqz v3, :cond_9

    .line 129
    .line 130
    move v3, v5

    .line 131
    goto :goto_4

    .line 132
    :cond_9
    move v3, v4

    .line 133
    :goto_4
    if-eqz v2, :cond_a

    .line 134
    .line 135
    invoke-virtual {v0}, Lio/sentry/protocol/u;->f()Ljava/lang/Double;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 140
    .line 141
    .line 142
    move-result-wide v6

    .line 143
    invoke-static {v6, v7, v2}, Lio/sentry/android/core/u1;->f(DLio/sentry/protocol/u;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_a

    .line 148
    .line 149
    move v4, v5

    .line 150
    :cond_a
    if-nez v3, :cond_b

    .line 151
    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    :cond_b
    invoke-virtual {v0}, Lio/sentry/protocol/u;->b()Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    if-nez v5, :cond_c

    .line 159
    .line 160
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Lio/sentry/protocol/u;->h(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    :cond_c
    if-eqz v3, :cond_d

    .line 169
    .line 170
    const-string v0, "ui.contributes_to_ttid"

    .line 171
    .line 172
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_d
    if-eqz v4, :cond_5

    .line 178
    .line 179
    const-string v0, "ui.contributes_to_ttfd"

    .line 180
    .line 181
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_e
    return-void
.end method

.method private static h(Lio/sentry/android/core/performance/h;Lio/sentry/n6;Lio/sentry/protocol/r;Ljava/lang/String;)Lio/sentry/protocol/u;
    .locals 15

    .line 1
    new-instance v13, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "thread.id"

    .line 24
    .line 25
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v0, "thread.name"

    .line 29
    .line 30
    const-string v1, "main"

    .line 31
    .line 32
    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    const-string v1, "ui.contributes_to_ttid"

    .line 38
    .line 39
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "ui.contributes_to_ttfd"

    .line 43
    .line 44
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v14, Lio/sentry/protocol/u;

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/android/core/performance/h;->o()D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lio/sentry/android/core/performance/h;->l()D

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v4, Lio/sentry/n6;

    .line 66
    .line 67
    invoke-direct {v4}, Lio/sentry/n6;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lio/sentry/android/core/performance/h;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Lio/sentry/p6;->OK:Lio/sentry/p6;

    .line 75
    .line 76
    const-string v9, "auto.ui"

    .line 77
    .line 78
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    move-object v0, v14

    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    move-object/from16 v5, p1

    .line 93
    .line 94
    move-object/from16 v6, p3

    .line 95
    .line 96
    invoke-direct/range {v0 .. v13}, Lio/sentry/protocol/u;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/p6;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    return-object v14
.end method


# virtual methods
.method public b(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 0

    .line 1
    return-object p1
.end method

.method public declared-synchronized c(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/u1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    .line 4
    invoke-virtual {p2}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :cond_0
    :try_start_1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p0, p1}, Lio/sentry/android/core/u1;->e(Lio/sentry/protocol/y;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->B()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/android/core/u1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lio/sentry/android/core/performance/g;->k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->f()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    cmp-long v2, v0, v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    new-instance v2, Lio/sentry/protocol/h;

    .line 45
    .line 46
    long-to-float v0, v0

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lio/sentry/t1$a;->MILLISECOND:Lio/sentry/t1$a;

    .line 52
    .line 53
    invoke-virtual {v1}, Lio/sentry/t1$a;->apiName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v2, v0, v1}, Lio/sentry/protocol/h;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 65
    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    const-string v0, "app_start_cold"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "app_start_warm"

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/y;->o0()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p2, p1}, Lio/sentry/android/core/u1;->d(Lio/sentry/android/core/performance/g;Lio/sentry/protocol/y;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->w()V

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lio/sentry/protocol/c;->a()Lio/sentry/protocol/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    new-instance v0, Lio/sentry/protocol/a;

    .line 97
    .line 98
    invoke-direct {v0}, Lio/sentry/protocol/a;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Lio/sentry/protocol/c;->g(Lio/sentry/protocol/a;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p2}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    sget-object v1, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 113
    .line 114
    if-ne p2, v1, :cond_4

    .line 115
    .line 116
    const-string p2, "cold"

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const-string p2, "warm"

    .line 120
    .line 121
    :goto_1
    invoke-virtual {v0, p2}, Lio/sentry/protocol/a;->s(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-direct {p0, p1}, Lio/sentry/android/core/u1;->g(Lio/sentry/protocol/y;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz p2, :cond_6

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Lio/sentry/l6;->b()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "ui.load"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-object v0, p0, Lio/sentry/android/core/u1;->b:Lio/sentry/android/core/h;

    .line 156
    .line 157
    invoke-virtual {v0, p2}, Lio/sentry/android/core/h;->q(Lio/sentry/protocol/r;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_6

    .line 162
    .line 163
    invoke-virtual {p1}, Lio/sentry/protocol/y;->o0()Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_6
    monitor-exit p0

    .line 171
    return-object p1

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    .line 174
    throw p1
.end method
