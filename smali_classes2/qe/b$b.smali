.class public final Lqe/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lne/y;

.field private final c:Lne/a0;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLne/y;Lne/a0;)V
    .locals 4

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lqe/b$b;->a:J

    .line 10
    .line 11
    iput-object p3, p0, Lqe/b$b;->b:Lne/y;

    .line 12
    .line 13
    iput-object p4, p0, Lqe/b$b;->c:Lne/a0;

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lqe/b$b;->l:I

    .line 17
    .line 18
    if-eqz p4, :cond_5

    .line 19
    .line 20
    invoke-virtual {p4}, Lne/a0;->P()J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    iput-wide p2, p0, Lqe/b$b;->i:J

    .line 25
    .line 26
    invoke-virtual {p4}, Lne/a0;->E()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    iput-wide p2, p0, Lqe/b$b;->j:J

    .line 31
    .line 32
    invoke-virtual {p4}, Lne/a0;->q()Lne/s;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lne/s;->size()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/4 p4, 0x0

    .line 41
    :goto_0
    if-ge p4, p3, :cond_5

    .line 42
    .line 43
    add-int/lit8 v0, p4, 0x1

    .line 44
    .line 45
    invoke-virtual {p2, p4}, Lne/s;->i(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2, p4}, Lne/s;->m(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    const-string v2, "Date"

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {v1, v2, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-static {p4}, Lte/c;->a(Ljava/lang/String;)Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lqe/b$b;->d:Ljava/util/Date;

    .line 67
    .line 68
    iput-object p4, p0, Lqe/b$b;->e:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const-string v2, "Expires"

    .line 72
    .line 73
    invoke-static {v1, v2, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-static {p4}, Lte/c;->a(Ljava/lang/String;)Ljava/util/Date;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    iput-object p4, p0, Lqe/b$b;->h:Ljava/util/Date;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string v2, "Last-Modified"

    .line 87
    .line 88
    invoke-static {v1, v2, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-static {p4}, Lte/c;->a(Ljava/lang/String;)Ljava/util/Date;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, p0, Lqe/b$b;->f:Ljava/util/Date;

    .line 99
    .line 100
    iput-object p4, p0, Lqe/b$b;->g:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string v2, "ETag"

    .line 104
    .line 105
    invoke-static {v1, v2, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    iput-object p4, p0, Lqe/b$b;->k:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string v2, "Age"

    .line 115
    .line 116
    invoke-static {v1, v2, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-static {p4, p1}, Loe/d;->U(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    iput p4, p0, Lqe/b$b;->l:I

    .line 127
    .line 128
    :cond_4
    :goto_1
    move p4, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    return-void
.end method

.method private final a()J
    .locals 9

    .line 1
    iget-object v0, p0, Lqe/b$b;->d:Ljava/util/Date;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, p0, Lqe/b$b;->j:J

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    sub-long/2addr v3, v5

    .line 14
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :cond_0
    iget v0, p0, Lqe/b$b;->l:I

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    int-to-long v4, v0

    .line 26
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    :cond_1
    iget-wide v3, p0, Lqe/b$b;->j:J

    .line 35
    .line 36
    iget-wide v5, p0, Lqe/b$b;->i:J

    .line 37
    .line 38
    sub-long v5, v3, v5

    .line 39
    .line 40
    iget-wide v7, p0, Lqe/b$b;->a:J

    .line 41
    .line 42
    sub-long/2addr v7, v3

    .line 43
    add-long/2addr v1, v5

    .line 44
    add-long/2addr v1, v7

    .line 45
    return-wide v1
.end method

.method private final c()Lqe/b;
    .locals 13

    .line 1
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lqe/b;

    .line 7
    .line 8
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lqe/b$b;->b:Lne/y;

    .line 15
    .line 16
    invoke-virtual {v0}, Lne/y;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lne/a0;->h()Lne/r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Lqe/b;

    .line 31
    .line 32
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    sget-object v0, Lqe/b;->c:Lqe/b$a;

    .line 39
    .line 40
    iget-object v2, p0, Lqe/b$b;->c:Lne/a0;

    .line 41
    .line 42
    iget-object v3, p0, Lqe/b$b;->b:Lne/y;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Lqe/b$a;->a(Lne/a0;Lne/y;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Lqe/b;

    .line 51
    .line 52
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 53
    .line 54
    invoke-direct {v0, v2, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    iget-object v0, p0, Lqe/b$b;->b:Lne/y;

    .line 59
    .line 60
    invoke-virtual {v0}, Lne/y;->b()Lne/d;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lne/d;->h()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_d

    .line 69
    .line 70
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 71
    .line 72
    invoke-direct {p0, v2}, Lqe/b$b;->e(Lne/y;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_3
    iget-object v2, p0, Lqe/b$b;->c:Lne/a0;

    .line 81
    .line 82
    invoke-virtual {v2}, Lne/a0;->b()Lne/d;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {p0}, Lqe/b$b;->a()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    invoke-direct {p0}, Lqe/b$b;->d()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-virtual {v0}, Lne/d;->d()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const/4 v8, -0x1

    .line 99
    if-eq v7, v8, :cond_4

    .line 100
    .line 101
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    invoke-virtual {v0}, Lne/d;->d()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    int-to-long v9, v9

    .line 108
    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    :cond_4
    invoke-virtual {v0}, Lne/d;->f()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    const-wide/16 v9, 0x0

    .line 121
    .line 122
    if-eq v7, v8, :cond_5

    .line 123
    .line 124
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 125
    .line 126
    invoke-virtual {v0}, Lne/d;->f()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    int-to-long v11, v11

    .line 131
    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    move-wide v11, v9

    .line 137
    :goto_0
    invoke-virtual {v2}, Lne/d;->g()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-nez v7, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Lne/d;->e()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eq v7, v8, :cond_6

    .line 148
    .line 149
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 150
    .line 151
    invoke-virtual {v0}, Lne/d;->e()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    int-to-long v8, v0

    .line 156
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v9

    .line 160
    :cond_6
    invoke-virtual {v2}, Lne/d;->h()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_9

    .line 165
    .line 166
    add-long/2addr v11, v3

    .line 167
    add-long/2addr v9, v5

    .line 168
    cmp-long v0, v11, v9

    .line 169
    .line 170
    if-gez v0, :cond_9

    .line 171
    .line 172
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 173
    .line 174
    invoke-virtual {v0}, Lne/a0;->w()Lne/a0$a;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    cmp-long v2, v11, v5

    .line 179
    .line 180
    const-string v5, "Warning"

    .line 181
    .line 182
    if-ltz v2, :cond_7

    .line 183
    .line 184
    const-string v2, "110 HttpURLConnection \"Response is stale\""

    .line 185
    .line 186
    invoke-virtual {v0, v5, v2}, Lne/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lne/a0$a;

    .line 187
    .line 188
    .line 189
    :cond_7
    const-wide/32 v6, 0x5265c00

    .line 190
    .line 191
    .line 192
    cmp-long v2, v3, v6

    .line 193
    .line 194
    if-lez v2, :cond_8

    .line 195
    .line 196
    invoke-direct {p0}, Lqe/b$b;->f()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    .line 203
    .line 204
    invoke-virtual {v0, v5, v2}, Lne/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lne/a0$a;

    .line 205
    .line 206
    .line 207
    :cond_8
    new-instance v2, Lqe/b;

    .line 208
    .line 209
    invoke-virtual {v0}, Lne/a0$a;->c()Lne/a0;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {v2, v1, v0}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 214
    .line 215
    .line 216
    return-object v2

    .line 217
    :cond_9
    iget-object v0, p0, Lqe/b$b;->k:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    const-string v1, "If-None-Match"

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_a
    iget-object v0, p0, Lqe/b$b;->f:Ljava/util/Date;

    .line 225
    .line 226
    const-string v2, "If-Modified-Since"

    .line 227
    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    iget-object v0, p0, Lqe/b$b;->g:Ljava/lang/String;

    .line 231
    .line 232
    :goto_1
    move-object v1, v2

    .line 233
    goto :goto_2

    .line 234
    :cond_b
    iget-object v0, p0, Lqe/b$b;->d:Ljava/util/Date;

    .line 235
    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    iget-object v0, p0, Lqe/b$b;->e:Ljava/lang/String;

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :goto_2
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 242
    .line 243
    invoke-virtual {v2}, Lne/y;->e()Lne/s;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lne/s;->l()Lne/s$a;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1, v0}, Lne/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lne/s$a;

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lqe/b$b;->b:Lne/y;

    .line 258
    .line 259
    invoke-virtual {v0}, Lne/y;->h()Lne/y$a;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v2}, Lne/s$a;->d()Lne/s;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Lne/y$a;->e(Lne/s;)Lne/y$a;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lne/y$a;->a()Lne/y;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    new-instance v1, Lqe/b;

    .line 276
    .line 277
    iget-object v2, p0, Lqe/b$b;->c:Lne/a0;

    .line 278
    .line 279
    invoke-direct {v1, v0, v2}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 280
    .line 281
    .line 282
    return-object v1

    .line 283
    :cond_c
    new-instance v0, Lqe/b;

    .line 284
    .line 285
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 286
    .line 287
    invoke-direct {v0, v2, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_d
    :goto_3
    new-instance v0, Lqe/b;

    .line 292
    .line 293
    iget-object v2, p0, Lqe/b$b;->b:Lne/y;

    .line 294
    .line 295
    invoke-direct {v0, v2, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 296
    .line 297
    .line 298
    return-object v0
.end method

.method private final d()J
    .locals 6

    .line 1
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lne/a0;->b()Lne/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lne/d;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    invoke-virtual {v0}, Lne/d;->d()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v2, v0

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_0
    iget-object v0, p0, Lqe/b$b;->h:Ljava/util/Date;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Lqe/b$b;->d:Ljava/util/Date;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-wide v4, p0, Lqe/b$b;->j:J

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    sub-long/2addr v0, v4

    .line 63
    cmp-long v4, v0, v2

    .line 64
    .line 65
    if-lez v4, :cond_3

    .line 66
    .line 67
    move-wide v2, v0

    .line 68
    :cond_3
    return-wide v2

    .line 69
    :cond_4
    iget-object v0, p0, Lqe/b$b;->f:Ljava/util/Date;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 74
    .line 75
    invoke-virtual {v0}, Lne/a0;->H()Lne/y;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lne/y;->i()Lne/t;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lne/t;->m()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lqe/b$b;->d:Ljava/util/Date;

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_2
    if-nez v1, :cond_6

    .line 103
    .line 104
    iget-wide v0, p0, Lqe/b$b;->i:J

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    :goto_3
    iget-object v4, p0, Lqe/b$b;->f:Ljava/util/Date;

    .line 112
    .line 113
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    sub-long/2addr v0, v4

    .line 121
    cmp-long v4, v0, v2

    .line 122
    .line 123
    if-lez v4, :cond_7

    .line 124
    .line 125
    const/16 v2, 0xa

    .line 126
    .line 127
    int-to-long v2, v2

    .line 128
    div-long v2, v0, v2

    .line 129
    .line 130
    :cond_7
    return-wide v2
.end method

.method private final e(Lne/y;)Z
    .locals 1

    .line 1
    const-string v0, "If-Modified-Since"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "If-None-Match"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lqe/b$b;->c:Lne/a0;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lne/a0;->b()Lne/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lne/d;->d()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqe/b$b;->h:Ljava/util/Date;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public final b()Lqe/b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lqe/b$b;->c()Lqe/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqe/b;->b()Lne/y;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lqe/b$b;->b:Lne/y;

    .line 12
    .line 13
    invoke-virtual {v1}, Lne/y;->b()Lne/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lne/d;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Lqe/b;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1, v1}, Lqe/b;-><init>(Lne/y;Lne/a0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method
