.class public final Lq3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/p$b;
    }
.end annotation


# instance fields
.field private final a:Lq3/d0;

.field private final b:Z

.field private final c:Z

.field private final d:Lq3/u;

.field private final e:Lq3/u;

.field private final f:Lq3/u;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lg3/b0;

.field private k:Lq3/p$b;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Ly4/e0;


# direct methods
.method public constructor <init>(Lq3/d0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq3/p;->a:Lq3/d0;

    .line 5
    .line 6
    iput-boolean p2, p0, Lq3/p;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lq3/p;->c:Z

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Z

    .line 12
    .line 13
    iput-object p1, p0, Lq3/p;->h:[Z

    .line 14
    .line 15
    new-instance p1, Lq3/u;

    .line 16
    .line 17
    const/4 p2, 0x7

    .line 18
    const/16 p3, 0x80

    .line 19
    .line 20
    invoke-direct {p1, p2, p3}, Lq3/u;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lq3/p;->d:Lq3/u;

    .line 24
    .line 25
    new-instance p1, Lq3/u;

    .line 26
    .line 27
    const/16 p2, 0x8

    .line 28
    .line 29
    invoke-direct {p1, p2, p3}, Lq3/u;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lq3/p;->e:Lq3/u;

    .line 33
    .line 34
    new-instance p1, Lq3/u;

    .line 35
    .line 36
    const/4 p2, 0x6

    .line 37
    invoke-direct {p1, p2, p3}, Lq3/u;-><init>(II)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lq3/p;->f:Lq3/u;

    .line 41
    .line 42
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Lq3/p;->m:J

    .line 48
    .line 49
    new-instance p1, Ly4/e0;

    .line 50
    .line 51
    invoke-direct {p1}, Ly4/e0;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lq3/p;->o:Ly4/e0;

    .line 55
    .line 56
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/p;->j:Lg3/b0;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private g(JIIJ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lq3/p;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lq3/u;->b(I)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 19
    .line 20
    invoke-virtual {v0, p4}, Lq3/u;->b(I)Z

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lq3/p;->l:Z

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 29
    .line 30
    invoke-virtual {v0}, Lq3/u;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 37
    .line 38
    invoke-virtual {v0}, Lq3/u;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lq3/p;->d:Lq3/u;

    .line 50
    .line 51
    iget-object v3, v2, Lq3/u;->d:[B

    .line 52
    .line 53
    iget v2, v2, Lq3/u;->e:I

    .line 54
    .line 55
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lq3/p;->e:Lq3/u;

    .line 63
    .line 64
    iget-object v3, v2, Lq3/u;->d:[B

    .line 65
    .line 66
    iget v2, v2, Lq3/u;->e:I

    .line 67
    .line 68
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lq3/p;->d:Lq3/u;

    .line 76
    .line 77
    iget-object v3, v2, Lq3/u;->d:[B

    .line 78
    .line 79
    iget v2, v2, Lq3/u;->e:I

    .line 80
    .line 81
    invoke-static {v3, v1, v2}, Ly4/w;->l([BII)Ly4/w$c;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p0, Lq3/p;->e:Lq3/u;

    .line 86
    .line 87
    iget-object v4, v3, Lq3/u;->d:[B

    .line 88
    .line 89
    iget v3, v3, Lq3/u;->e:I

    .line 90
    .line 91
    invoke-static {v4, v1, v3}, Ly4/w;->j([BII)Ly4/w$b;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget v3, v2, Ly4/w$c;->a:I

    .line 96
    .line 97
    iget v4, v2, Ly4/w$c;->b:I

    .line 98
    .line 99
    iget v5, v2, Ly4/w$c;->c:I

    .line 100
    .line 101
    invoke-static {v3, v4, v5}, Ly4/e;->a(III)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v4, p0, Lq3/p;->j:Lg3/b0;

    .line 106
    .line 107
    new-instance v5, Lb3/x1$b;

    .line 108
    .line 109
    invoke-direct {v5}, Lb3/x1$b;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lq3/p;->i:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string v6, "video/avc"

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5, v3}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget v5, v2, Ly4/w$c;->f:I

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Lb3/x1$b;->n0(I)Lb3/x1$b;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget v5, v2, Ly4/w$c;->g:I

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Lb3/x1$b;->S(I)Lb3/x1$b;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v5, v2, Ly4/w$c;->h:F

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Lb3/x1$b;->c0(F)Lb3/x1$b;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3, v0}, Lb3/x1$b;->V(Ljava/util/List;)Lb3/x1$b;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lb3/x1$b;->G()Lb3/x1;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v4, v0}, Lg3/b0;->c(Lb3/x1;)V

    .line 155
    .line 156
    .line 157
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lq3/p;->l:Z

    .line 159
    .line 160
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lq3/p$b;->f(Ly4/w$c;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lq3/p$b;->e(Ly4/w$b;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 171
    .line 172
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 176
    .line 177
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 182
    .line 183
    invoke-virtual {v0}, Lq3/u;->c()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_2

    .line 188
    .line 189
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 190
    .line 191
    iget-object v2, v0, Lq3/u;->d:[B

    .line 192
    .line 193
    iget v0, v0, Lq3/u;->e:I

    .line 194
    .line 195
    invoke-static {v2, v1, v0}, Ly4/w;->l([BII)Ly4/w$c;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v1, p0, Lq3/p;->k:Lq3/p$b;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Lq3/p$b;->f(Ly4/w$c;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 205
    .line 206
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 211
    .line 212
    invoke-virtual {v0}, Lq3/u;->c()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 219
    .line 220
    iget-object v2, v0, Lq3/u;->d:[B

    .line 221
    .line 222
    iget v0, v0, Lq3/u;->e:I

    .line 223
    .line 224
    invoke-static {v2, v1, v0}, Ly4/w;->j([BII)Ly4/w$b;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v1, p0, Lq3/p;->k:Lq3/p$b;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Lq3/p$b;->e(Ly4/w$b;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 234
    .line 235
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 236
    .line 237
    .line 238
    :cond_3
    :goto_0
    iget-object v0, p0, Lq3/p;->f:Lq3/u;

    .line 239
    .line 240
    invoke-virtual {v0, p4}, Lq3/u;->b(I)Z

    .line 241
    .line 242
    .line 243
    move-result p4

    .line 244
    if-eqz p4, :cond_4

    .line 245
    .line 246
    iget-object p4, p0, Lq3/p;->f:Lq3/u;

    .line 247
    .line 248
    iget-object v0, p4, Lq3/u;->d:[B

    .line 249
    .line 250
    iget p4, p4, Lq3/u;->e:I

    .line 251
    .line 252
    invoke-static {v0, p4}, Ly4/w;->q([BI)I

    .line 253
    .line 254
    .line 255
    move-result p4

    .line 256
    iget-object v0, p0, Lq3/p;->o:Ly4/e0;

    .line 257
    .line 258
    iget-object v1, p0, Lq3/p;->f:Lq3/u;

    .line 259
    .line 260
    iget-object v1, v1, Lq3/u;->d:[B

    .line 261
    .line 262
    invoke-virtual {v0, v1, p4}, Ly4/e0;->R([BI)V

    .line 263
    .line 264
    .line 265
    iget-object p4, p0, Lq3/p;->o:Ly4/e0;

    .line 266
    .line 267
    const/4 v0, 0x4

    .line 268
    invoke-virtual {p4, v0}, Ly4/e0;->T(I)V

    .line 269
    .line 270
    .line 271
    iget-object p4, p0, Lq3/p;->a:Lq3/d0;

    .line 272
    .line 273
    iget-object v0, p0, Lq3/p;->o:Ly4/e0;

    .line 274
    .line 275
    invoke-virtual {p4, p5, p6, v0}, Lq3/d0;->a(JLy4/e0;)V

    .line 276
    .line 277
    .line 278
    :cond_4
    iget-object v1, p0, Lq3/p;->k:Lq3/p$b;

    .line 279
    .line 280
    iget-boolean v5, p0, Lq3/p;->l:Z

    .line 281
    .line 282
    iget-boolean v6, p0, Lq3/p;->n:Z

    .line 283
    .line 284
    move-wide v2, p1

    .line 285
    move v4, p3

    .line 286
    invoke-virtual/range {v1 .. v6}, Lq3/p$b;->b(JIZZ)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_5

    .line 291
    .line 292
    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lq3/p;->n:Z

    .line 294
    .line 295
    :cond_5
    return-void
.end method

.method private h([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/p;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lq3/u;->a([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lq3/u;->a([BII)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lq3/p;->f:Lq3/u;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Lq3/u;->a([BII)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lq3/p$b;->a([BII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private i(JIJ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lq3/p;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lq3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lq3/u;->e(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lq3/u;->e(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lq3/p;->f:Lq3/u;

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Lq3/u;->e(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lq3/p;->k:Lq3/p$b;

    .line 29
    .line 30
    move-wide v2, p1

    .line 31
    move v4, p3

    .line 32
    move-wide v5, p4

    .line 33
    invoke-virtual/range {v1 .. v6}, Lq3/p$b;->h(JIJ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public b(Ly4/e0;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lq3/p;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ly4/e0;->f()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Ly4/e0;->g()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Ly4/e0;->e()[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-wide v3, p0, Lq3/p;->g:J

    .line 17
    .line 18
    invoke-virtual {p1}, Ly4/e0;->a()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    int-to-long v5, v5

    .line 23
    add-long/2addr v3, v5

    .line 24
    iput-wide v3, p0, Lq3/p;->g:J

    .line 25
    .line 26
    iget-object v3, p0, Lq3/p;->j:Lg3/b0;

    .line 27
    .line 28
    invoke-virtual {p1}, Ly4/e0;->a()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-interface {v3, p1, v4}, Lg3/b0;->b(Ly4/e0;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lq3/p;->h:[Z

    .line 36
    .line 37
    invoke-static {v2, v0, v1, p1}, Ly4/w;->c([BII[Z)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ne p1, v1, :cond_0

    .line 42
    .line 43
    invoke-direct {p0, v2, v0, v1}, Lq3/p;->h([BII)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {v2, p1}, Ly4/w;->f([BI)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int v3, p1, v0

    .line 52
    .line 53
    if-lez v3, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v2, v0, p1}, Lq3/p;->h([BII)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sub-int v10, v1, p1

    .line 59
    .line 60
    iget-wide v4, p0, Lq3/p;->g:J

    .line 61
    .line 62
    int-to-long v7, v10

    .line 63
    sub-long/2addr v4, v7

    .line 64
    if-gez v3, :cond_2

    .line 65
    .line 66
    neg-int v0, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_1
    move v11, v0

    .line 70
    iget-wide v12, p0, Lq3/p;->m:J

    .line 71
    .line 72
    move-object v7, p0

    .line 73
    move-wide v8, v4

    .line 74
    invoke-direct/range {v7 .. v13}, Lq3/p;->g(JIIJ)V

    .line 75
    .line 76
    .line 77
    iget-wide v7, p0, Lq3/p;->m:J

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-direct/range {v3 .. v8}, Lq3/p;->i(JIJ)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v0, p1, 0x3

    .line 84
    .line 85
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lq3/p;->g:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lq3/p;->n:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lq3/p;->m:J

    .line 14
    .line 15
    iget-object v0, p0, Lq3/p;->h:[Z

    .line 16
    .line 17
    invoke-static {v0}, Ly4/w;->a([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lq3/p;->d:Lq3/u;

    .line 21
    .line 22
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lq3/p;->e:Lq3/u;

    .line 26
    .line 27
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lq3/p;->f:Lq3/u;

    .line 31
    .line 32
    invoke-virtual {v0}, Lq3/u;->d()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lq3/p;->k:Lq3/p$b;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lq3/p$b;->g()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Lq3/p;->m:J

    .line 11
    .line 12
    :cond_0
    iget-boolean p1, p0, Lq3/p;->n:Z

    .line 13
    .line 14
    and-int/lit8 p2, p3, 0x2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p2, 0x0

    .line 21
    :goto_0
    or-int/2addr p1, p2

    .line 22
    iput-boolean p1, p0, Lq3/p;->n:Z

    .line 23
    .line 24
    return-void
.end method

.method public f(Lg3/m;Lq3/i0$d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lq3/i0$d;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lq3/i0$d;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq3/p;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lq3/i0$d;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lg3/m;->a(II)Lg3/b0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lq3/p;->j:Lg3/b0;

    .line 20
    .line 21
    new-instance v1, Lq3/p$b;

    .line 22
    .line 23
    iget-boolean v2, p0, Lq3/p;->b:Z

    .line 24
    .line 25
    iget-boolean v3, p0, Lq3/p;->c:Z

    .line 26
    .line 27
    invoke-direct {v1, v0, v2, v3}, Lq3/p$b;-><init>(Lg3/b0;ZZ)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lq3/p;->k:Lq3/p$b;

    .line 31
    .line 32
    iget-object v0, p0, Lq3/p;->a:Lq3/d0;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lq3/d0;->b(Lg3/m;Lq3/i0$d;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
