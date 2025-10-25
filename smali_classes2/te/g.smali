.class public final Lte/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u$a;


# instance fields
.field private final a:Lse/e;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lse/c;

.field private final e:Lne/y;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Lse/e;Ljava/util/List;ILse/c;Lne/y;III)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "interceptors"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "request"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lte/g;->a:Lse/e;

    .line 20
    .line 21
    iput-object p2, p0, Lte/g;->b:Ljava/util/List;

    .line 22
    .line 23
    iput p3, p0, Lte/g;->c:I

    .line 24
    .line 25
    iput-object p4, p0, Lte/g;->d:Lse/c;

    .line 26
    .line 27
    iput-object p5, p0, Lte/g;->e:Lne/y;

    .line 28
    .line 29
    iput p6, p0, Lte/g;->f:I

    .line 30
    .line 31
    iput p7, p0, Lte/g;->g:I

    .line 32
    .line 33
    iput p8, p0, Lte/g;->h:I

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic d(Lte/g;ILse/c;Lne/y;IIIILjava/lang/Object;)Lte/g;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lte/g;->c:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lte/g;->d:Lse/c;

    .line 12
    .line 13
    :cond_1
    move-object p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lte/g;->e:Lne/y;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lte/g;->f:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lte/g;->g:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget p6, p0, Lte/g;->h:I

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    move-object p2, p0

    .line 43
    move p3, p1

    .line 44
    move-object p4, p8

    .line 45
    move-object p5, v0

    .line 46
    move p6, v1

    .line 47
    move p7, v2

    .line 48
    move p8, v3

    .line 49
    invoke-virtual/range {p2 .. p8}, Lte/g;->c(ILse/c;Lne/y;III)Lte/g;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public a(Lne/y;)Lne/a0;
    .locals 14

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lte/g;->c:I

    .line 7
    .line 8
    iget-object v1, p0, Lte/g;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    if-eqz v0, :cond_c

    .line 22
    .line 23
    iget v0, p0, Lte/g;->i:I

    .line 24
    .line 25
    add-int/2addr v0, v3

    .line 26
    iput v0, p0, Lte/g;->i:I

    .line 27
    .line 28
    iget-object v0, p0, Lte/g;->d:Lse/c;

    .line 29
    .line 30
    const-string v1, " must call proceed() exactly once"

    .line 31
    .line 32
    const-string v4, "network interceptor "

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Lse/c;->j()Lse/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v0, v5}, Lse/d;->g(Lne/t;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lte/g;->i:I

    .line 51
    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    move v0, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v0, v2

    .line 57
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lte/g;->b:Ljava/util/List;

    .line 69
    .line 70
    iget v2, p0, Lte/g;->c:I

    .line 71
    .line 72
    sub-int/2addr v2, v3

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lte/g;->b:Ljava/util/List;

    .line 106
    .line 107
    iget v1, p0, Lte/g;->c:I

    .line 108
    .line 109
    sub-int/2addr v1, v3

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, " must retain the same host and port"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    :goto_2
    iget v0, p0, Lte/g;->c:I

    .line 137
    .line 138
    add-int/lit8 v6, v0, 0x1

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v9, 0x0

    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    const/16 v12, 0x3a

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    move-object v5, p0

    .line 148
    move-object v8, p1

    .line 149
    invoke-static/range {v5 .. v13}, Lte/g;->d(Lte/g;ILse/c;Lne/y;IIIILjava/lang/Object;)Lte/g;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v0, p0, Lte/g;->b:Ljava/util/List;

    .line 154
    .line 155
    iget v5, p0, Lte/g;->c:I

    .line 156
    .line 157
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lne/u;

    .line 162
    .line 163
    invoke-interface {v0, p1}, Lne/u;->a(Lne/u$a;)Lne/a0;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    const-string v6, "interceptor "

    .line 168
    .line 169
    if-eqz v5, :cond_b

    .line 170
    .line 171
    iget-object v7, p0, Lte/g;->d:Lse/c;

    .line 172
    .line 173
    if-eqz v7, :cond_8

    .line 174
    .line 175
    iget v7, p0, Lte/g;->c:I

    .line 176
    .line 177
    add-int/2addr v7, v3

    .line 178
    iget-object v8, p0, Lte/g;->b:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-ge v7, v8, :cond_6

    .line 185
    .line 186
    iget p1, p1, Lte/g;->i:I

    .line 187
    .line 188
    if-ne p1, v3, :cond_5

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    move p1, v2

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    :goto_3
    move p1, v3

    .line 194
    :goto_4
    if-eqz p1, :cond_7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_8
    :goto_5
    invoke-virtual {v5}, Lne/a0;->a()Lne/b0;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    move v2, v3

    .line 232
    :cond_9
    if-eqz v2, :cond_a

    .line 233
    .line 234
    return-object v5

    .line 235
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v0, " returned a response with no body"

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 266
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, " returned null"

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    const-string v0, "Check failed."

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p1
.end method

.method public b()Lne/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/g;->e:Lne/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ILse/c;Lne/y;III)Lte/g;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "request"

    .line 3
    .line 4
    move-object v7, p3

    .line 5
    invoke-static {p3, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lte/g;

    .line 9
    .line 10
    iget-object v3, v0, Lte/g;->a:Lse/e;

    .line 11
    .line 12
    iget-object v4, v0, Lte/g;->b:Ljava/util/List;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    move v5, p1

    .line 16
    move-object v6, p2

    .line 17
    move v8, p4

    .line 18
    move/from16 v9, p5

    .line 19
    .line 20
    move/from16 v10, p6

    .line 21
    .line 22
    invoke-direct/range {v2 .. v10}, Lte/g;-><init>(Lse/e;Ljava/util/List;ILse/c;Lne/y;III)V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method public call()Lne/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/g;->a:Lse/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lse/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/g;->a:Lse/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lte/g;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Lse/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/g;->d:Lse/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lte/g;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lne/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/g;->e:Lne/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lte/g;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lte/g;->g:I

    .line 2
    .line 3
    return v0
.end method
