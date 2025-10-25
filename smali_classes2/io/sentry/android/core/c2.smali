.class public Lio/sentry/android/core/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/s0;
.implements Lio/sentry/android/core/internal/util/t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/c2$a;
    }
.end annotation


# static fields
.field private static final h:J

.field private static final i:Lio/sentry/m5;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Object;

.field private final c:Lio/sentry/android/core/internal/util/t;

.field private volatile d:Ljava/lang/String;

.field private final e:Ljava/util/SortedSet;

.field private final f:Ljava/util/concurrent/ConcurrentSkipListSet;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/sentry/android/core/c2;->h:J

    .line 10
    .line 11
    new-instance v0, Lio/sentry/m5;

    .line 12
    .line 13
    new-instance v1, Ljava/util/Date;

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/m5;-><init>(Ljava/util/Date;J)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/sentry/android/core/c2;->i:Lio/sentry/m5;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/t;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/TreeSet;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/android/core/b2;

    .line 14
    .line 15
    invoke-direct {v1}, Lio/sentry/android/core/b2;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 29
    .line 30
    const-wide/32 v0, 0xfe502a

    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, Lio/sentry/android/core/c2;->g:J

    .line 34
    .line 35
    iput-object p2, p0, Lio/sentry/android/core/c2;->c:Lio/sentry/android/core/internal/util/t;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lio/sentry/android/core/c2;->a:Z

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic f(Lio/sentry/z0;Lio/sentry/z0;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/c2;->j(Lio/sentry/z0;Lio/sentry/z0;)I

    move-result p0

    return p0
.end method

.method private static g(Lio/sentry/android/core/a2;JJJ)I
    .locals 7

    .line 1
    sub-long/2addr p3, p5

    .line 2
    const-wide/16 p5, 0x0

    .line 3
    .line 4
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    invoke-static {v1, v2, p1, p2}, Lio/sentry/android/core/internal/util/t;->h(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-static {v1, v2}, Lio/sentry/android/core/internal/util/t;->g(J)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    sub-long p1, v1, p1

    .line 19
    .line 20
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/4 v5, 0x1

    .line 25
    move-object v0, p0

    .line 26
    invoke-virtual/range {v0 .. v6}, Lio/sentry/android/core/a2;->a(JJZZ)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method private h(Lio/sentry/z0;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v1, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 9
    .line 10
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    monitor-exit v2

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/z0;->p()Lio/sentry/y3;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    monitor-exit v2

    .line 25
    return-void

    .line 26
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Lio/sentry/android/core/c2;->k(Lio/sentry/y3;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v3}, Lio/sentry/android/core/c2;->k(Lio/sentry/y3;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    sub-long v13, v9, v4

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v3, v13, v6

    .line 43
    .line 44
    if-gtz v3, :cond_2

    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v3, Lio/sentry/android/core/a2;

    .line 49
    .line 50
    invoke-direct {v3}, Lio/sentry/android/core/a2;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-wide v11, v1, Lio/sentry/android/core/c2;->g:J

    .line 54
    .line 55
    iget-object v8, v1, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_8

    .line 62
    .line 63
    iget-object v8, v1, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 64
    .line 65
    new-instance v15, Lio/sentry/android/core/c2$a;

    .line 66
    .line 67
    invoke-direct {v15, v4, v5}, Lio/sentry/android/core/c2$a;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v15}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v8}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    if-eqz v15, :cond_8

    .line 83
    .line 84
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    move-object/from16 v22, v15

    .line 89
    .line 90
    check-cast v22, Lio/sentry/android/core/c2$a;

    .line 91
    .line 92
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v15

    .line 96
    cmp-long v15, v15, v9

    .line 97
    .line 98
    if-lez v15, :cond_3

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_3
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    cmp-long v11, v11, v4

    .line 107
    .line 108
    if-ltz v11, :cond_4

    .line 109
    .line 110
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->b(Lio/sentry/android/core/c2$a;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v11

    .line 114
    cmp-long v11, v11, v9

    .line 115
    .line 116
    if-gtz v11, :cond_4

    .line 117
    .line 118
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->f(Lio/sentry/android/core/c2$a;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v16

    .line 122
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->i(Lio/sentry/android/core/c2$a;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v18

    .line 126
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->j(Lio/sentry/android/core/c2$a;)Z

    .line 127
    .line 128
    .line 129
    move-result v20

    .line 130
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->l(Lio/sentry/android/core/c2$a;)Z

    .line 131
    .line 132
    .line 133
    move-result v21

    .line 134
    move-object v15, v3

    .line 135
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/a2;->a(JJZZ)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    cmp-long v11, v4, v11

    .line 144
    .line 145
    if-lez v11, :cond_5

    .line 146
    .line 147
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->b(Lio/sentry/android/core/c2$a;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v11

    .line 151
    cmp-long v11, v4, v11

    .line 152
    .line 153
    if-ltz v11, :cond_6

    .line 154
    .line 155
    :cond_5
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v11

    .line 159
    cmp-long v11, v9, v11

    .line 160
    .line 161
    if-lez v11, :cond_7

    .line 162
    .line 163
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->b(Lio/sentry/android/core/c2$a;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v11

    .line 167
    cmp-long v11, v9, v11

    .line 168
    .line 169
    if-gez v11, :cond_7

    .line 170
    .line 171
    :cond_6
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    sub-long v11, v4, v11

    .line 176
    .line 177
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v11

    .line 181
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->m(Lio/sentry/android/core/c2$a;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v15

    .line 185
    sub-long/2addr v11, v15

    .line 186
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 187
    .line 188
    .line 189
    move-result-wide v11

    .line 190
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->i(Lio/sentry/android/core/c2$a;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v15

    .line 194
    sub-long v11, v15, v11

    .line 195
    .line 196
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v18

    .line 200
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->a(Lio/sentry/android/core/c2$a;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v11

    .line 204
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 205
    .line 206
    .line 207
    move-result-wide v11

    .line 208
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->b(Lio/sentry/android/core/c2$a;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 213
    .line 214
    .line 215
    move-result-wide v6

    .line 216
    sub-long/2addr v6, v11

    .line 217
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->m(Lio/sentry/android/core/c2$a;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v11

    .line 221
    invoke-static {v6, v7, v11, v12}, Lio/sentry/android/core/internal/util/t;->h(JJ)Z

    .line 222
    .line 223
    .line 224
    move-result v20

    .line 225
    invoke-static {v6, v7}, Lio/sentry/android/core/internal/util/t;->g(J)Z

    .line 226
    .line 227
    .line 228
    move-result v21

    .line 229
    move-object v15, v3

    .line 230
    move-wide/from16 v16, v6

    .line 231
    .line 232
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/a2;->a(JJZZ)V

    .line 233
    .line 234
    .line 235
    :cond_7
    :goto_1
    invoke-static/range {v22 .. v22}, Lio/sentry/android/core/c2$a;->m(Lio/sentry/android/core/c2$a;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v11

    .line 239
    const-wide/16 v6, 0x0

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_8
    :goto_2
    move-wide v4, v11

    .line 244
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->f()I

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    iget-object v6, v1, Lio/sentry/android/core/c2;->c:Lio/sentry/android/core/internal/util/t;

    .line 249
    .line 250
    invoke-virtual {v6}, Lio/sentry/android/core/internal/util/t;->f()J

    .line 251
    .line 252
    .line 253
    move-result-wide v11

    .line 254
    const-wide/16 v6, -0x1

    .line 255
    .line 256
    cmp-long v6, v11, v6

    .line 257
    .line 258
    if-eqz v6, :cond_9

    .line 259
    .line 260
    move-object v6, v3

    .line 261
    move-wide v7, v4

    .line 262
    invoke-static/range {v6 .. v12}, Lio/sentry/android/core/c2;->g(Lio/sentry/android/core/a2;JJJ)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    add-int/2addr v15, v6

    .line 267
    invoke-static {v3, v4, v5, v13, v14}, Lio/sentry/android/core/c2;->i(Lio/sentry/android/core/a2;JJ)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    add-int/2addr v15, v4

    .line 272
    :cond_9
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->e()J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->c()J

    .line 277
    .line 278
    .line 279
    move-result-wide v6

    .line 280
    add-long/2addr v4, v6

    .line 281
    long-to-double v4, v4

    .line 282
    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    div-double/2addr v4, v6

    .line 288
    const-string v6, "frames.total"

    .line 289
    .line 290
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    const-string v6, "frames.slow"

    .line 298
    .line 299
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->d()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "frames.frozen"

    .line 311
    .line 312
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->b()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    const-string v6, "frames.delay"

    .line 324
    .line 325
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    instance-of v6, v0, Lio/sentry/a1;

    .line 333
    .line 334
    if-eqz v6, :cond_a

    .line 335
    .line 336
    const-string v6, "frames_total"

    .line 337
    .line 338
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 343
    .line 344
    .line 345
    const-string v6, "frames_slow"

    .line 346
    .line 347
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->d()I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-interface {v0, v6, v7}, Lio/sentry/z0;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 356
    .line 357
    .line 358
    const-string v6, "frames_frozen"

    .line 359
    .line 360
    invoke-virtual {v3}, Lio/sentry/android/core/a2;->b()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-interface {v0, v6, v3}, Lio/sentry/z0;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 369
    .line 370
    .line 371
    const-string v3, "frames_delay"

    .line 372
    .line 373
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-interface {v0, v3, v4}, Lio/sentry/z0;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 378
    .line 379
    .line 380
    :cond_a
    monitor-exit v2

    .line 381
    return-void

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    throw v0
.end method

.method private static i(Lio/sentry/android/core/a2;JJ)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/a2;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p3, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p0, p3, v0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    long-to-double p3, p3

    .line 13
    long-to-double p0, p1

    .line 14
    div-double/2addr p3, p0

    .line 15
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    double-to-int p0, p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private static synthetic j(Lio/sentry/z0;Lio/sentry/z0;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lio/sentry/y3;->a(Lio/sentry/y3;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-interface {p0}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lio/sentry/l6;->h()Lio/sentry/n6;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lio/sentry/n6;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lio/sentry/l6;->h()Lio/sentry/n6;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lio/sentry/n6;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method private static k(Lio/sentry/y3;)J
    .locals 4

    .line 1
    instance-of v0, p0, Lio/sentry/m5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/sentry/android/core/c2;->i:Lio/sentry/m5;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/sentry/y3;->b(Lio/sentry/y3;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Lio/sentry/j;->h(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lio/sentry/y3;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v2, v0

    .line 30
    return-wide v2
.end method


# virtual methods
.method public a(Lio/sentry/z0;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/c2;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lio/sentry/g2;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    instance-of v0, p1, Lio/sentry/h2;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    invoke-direct {p0, p1}, Lio/sentry/android/core/c2;->h(Lio/sentry/z0;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p1

    .line 36
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/sentry/android/core/c2;->clear()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lio/sentry/z0;

    .line 55
    .line 56
    iget-object v1, p0, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 57
    .line 58
    new-instance v2, Lio/sentry/android/core/c2$a;

    .line 59
    .line 60
    invoke-interface {v0}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lio/sentry/android/core/c2;->k(Lio/sentry/y3;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-direct {v2, v3, v4}, Lio/sentry/android/core/c2$a;-><init>(J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 76
    .line 77
    .line 78
    :goto_0
    monitor-exit p1

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    throw p1
.end method

.method public b(Lio/sentry/z0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/c2;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lio/sentry/g2;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    instance-of v0, p1, Lio/sentry/h2;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lio/sentry/android/core/c2;->d:Ljava/lang/String;

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lio/sentry/android/core/c2;->c:Lio/sentry/android/core/internal/util/t;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/t;->m(Lio/sentry/android/core/internal/util/t$b;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/sentry/android/core/c2;->d:Ljava/lang/String;

    .line 35
    .line 36
    :cond_3
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/c2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/c2;->d:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/android/core/c2;->c:Lio/sentry/android/core/internal/util/t;

    .line 9
    .line 10
    iget-object v2, p0, Lio/sentry/android/core/c2;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/util/t;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lio/sentry/android/core/c2;->d:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/sentry/android/core/c2;->e:Ljava/util/SortedSet;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method

.method public d(JJJJZZF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xe10

    .line 10
    .line 11
    if-le v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-wide v1, Lio/sentry/android/core/c2;->h:J

    .line 15
    .line 16
    long-to-double v1, v1

    .line 17
    move/from16 v3, p11

    .line 18
    .line 19
    float-to-double v3, v3

    .line 20
    div-double/2addr v1, v3

    .line 21
    double-to-long v14, v1

    .line 22
    iput-wide v14, v0, Lio/sentry/android/core/c2;->g:J

    .line 23
    .line 24
    if-nez p9, :cond_1

    .line 25
    .line 26
    if-eqz p10, :cond_2

    .line 27
    .line 28
    :cond_1
    iget-object v1, v0, Lio/sentry/android/core/c2;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 29
    .line 30
    new-instance v2, Lio/sentry/android/core/c2$a;

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    move-wide/from16 v4, p1

    .line 34
    .line 35
    move-wide/from16 v6, p3

    .line 36
    .line 37
    move-wide/from16 v8, p5

    .line 38
    .line 39
    move-wide/from16 v10, p7

    .line 40
    .line 41
    move/from16 v12, p9

    .line 42
    .line 43
    move/from16 v13, p10

    .line 44
    .line 45
    invoke-direct/range {v3 .. v15}, Lio/sentry/android/core/c2$a;-><init>(JJJJZZJ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method
