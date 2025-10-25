.class public final Lo3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/k;
.implements Lg3/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/k$a;
    }
.end annotation


# static fields
.field public static final y:Lg3/p;


# instance fields
.field private final a:I

.field private final b:Ly4/e0;

.field private final c:Ly4/e0;

.field private final d:Ly4/e0;

.field private final e:Ly4/e0;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Lo3/m;

.field private final h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:Ly4/e0;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lg3/m;

.field private s:[Lo3/k$a;

.field private t:[[J

.field private u:I

.field private v:J

.field private w:I

.field private x:Lz3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo3/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lo3/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo3/k;->y:Lg3/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lo3/k;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    iput p1, p0, Lo3/k;->i:I

    .line 5
    new-instance p1, Lo3/m;

    invoke-direct {p1}, Lo3/m;-><init>()V

    iput-object p1, p0, Lo3/k;->g:Lo3/m;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo3/k;->h:Ljava/util/List;

    .line 7
    new-instance p1, Ly4/e0;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Ly4/e0;-><init>(I)V

    iput-object p1, p0, Lo3/k;->e:Ly4/e0;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Ly4/e0;

    sget-object v2, Ly4/w;->a:[B

    invoke-direct {p1, v2}, Ly4/e0;-><init>([B)V

    iput-object p1, p0, Lo3/k;->b:Ly4/e0;

    .line 10
    new-instance p1, Ly4/e0;

    invoke-direct {p1, v0}, Ly4/e0;-><init>(I)V

    iput-object p1, p0, Lo3/k;->c:Ly4/e0;

    .line 11
    new-instance p1, Ly4/e0;

    invoke-direct {p1}, Ly4/e0;-><init>()V

    iput-object p1, p0, Lo3/k;->d:Ly4/e0;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lo3/k;->n:I

    .line 13
    sget-object p1, Lg3/m;->r0:Lg3/m;

    iput-object p1, p0, Lo3/k;->r:Lg3/m;

    new-array p1, v1, [Lo3/k$a;

    .line 14
    iput-object p1, p0, Lo3/k;->s:[Lo3/k$a;

    return-void
.end method

.method private A(Lg3/l;)Z
    .locals 8

    .line 1
    iget v0, p0, Lo3/k;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0, v3, v2, v1}, Lg3/l;->e([BIIZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lo3/k;->w()V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    iput v2, p0, Lo3/k;->l:I

    .line 26
    .line 27
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ly4/e0;->T(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 33
    .line 34
    invoke-virtual {v0}, Ly4/e0;->I()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    iput-wide v4, p0, Lo3/k;->k:J

    .line 39
    .line 40
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 41
    .line 42
    invoke-virtual {v0}, Ly4/e0;->p()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lo3/k;->j:I

    .line 47
    .line 48
    :cond_1
    iget-wide v4, p0, Lo3/k;->k:J

    .line 49
    .line 50
    const-wide/16 v6, 0x1

    .line 51
    .line 52
    cmp-long v0, v4, v6

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0, v2, v2}, Lg3/l;->readFully([BII)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lo3/k;->l:I

    .line 66
    .line 67
    add-int/2addr v0, v2

    .line 68
    iput v0, p0, Lo3/k;->l:I

    .line 69
    .line 70
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 71
    .line 72
    invoke-virtual {v0}, Ly4/e0;->L()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    iput-wide v4, p0, Lo3/k;->k:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long v0, v4, v6

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Lg3/l;->b()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-wide/16 v6, -0x1

    .line 90
    .line 91
    cmp-long v0, v4, v6

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lo3/a$a;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-wide v4, v0, Lo3/a$a;->b:J

    .line 106
    .line 107
    :cond_3
    cmp-long v0, v4, v6

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Lg3/l;->c()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    sub-long/2addr v4, v6

    .line 116
    iget v0, p0, Lo3/k;->l:I

    .line 117
    .line 118
    int-to-long v6, v0

    .line 119
    add-long/2addr v4, v6

    .line 120
    iput-wide v4, p0, Lo3/k;->k:J

    .line 121
    .line 122
    :cond_4
    :goto_0
    iget-wide v4, p0, Lo3/k;->k:J

    .line 123
    .line 124
    iget v0, p0, Lo3/k;->l:I

    .line 125
    .line 126
    int-to-long v6, v0

    .line 127
    cmp-long v0, v4, v6

    .line 128
    .line 129
    if-ltz v0, :cond_b

    .line 130
    .line 131
    iget v0, p0, Lo3/k;->j:I

    .line 132
    .line 133
    invoke-static {v0}, Lo3/k;->E(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-interface {p1}, Lg3/l;->c()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    iget-wide v4, p0, Lo3/k;->k:J

    .line 144
    .line 145
    add-long/2addr v2, v4

    .line 146
    iget v0, p0, Lo3/k;->l:I

    .line 147
    .line 148
    int-to-long v6, v0

    .line 149
    sub-long/2addr v2, v6

    .line 150
    int-to-long v6, v0

    .line 151
    cmp-long v0, v4, v6

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget v0, p0, Lo3/k;->j:I

    .line 156
    .line 157
    const v4, 0x6d657461

    .line 158
    .line 159
    .line 160
    if-ne v0, v4, :cond_5

    .line 161
    .line 162
    invoke-direct {p0, p1}, Lo3/k;->u(Lg3/l;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object p1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 166
    .line 167
    new-instance v0, Lo3/a$a;

    .line 168
    .line 169
    iget v4, p0, Lo3/k;->j:I

    .line 170
    .line 171
    invoke-direct {v0, v4, v2, v3}, Lo3/a$a;-><init>(IJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-wide v4, p0, Lo3/k;->k:J

    .line 178
    .line 179
    iget p1, p0, Lo3/k;->l:I

    .line 180
    .line 181
    int-to-long v6, p1

    .line 182
    cmp-long p1, v4, v6

    .line 183
    .line 184
    if-nez p1, :cond_6

    .line 185
    .line 186
    invoke-direct {p0, v2, v3}, Lo3/k;->v(J)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-direct {p0}, Lo3/k;->n()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    iget v0, p0, Lo3/k;->j:I

    .line 195
    .line 196
    invoke-static {v0}, Lo3/k;->F(I)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    iget p1, p0, Lo3/k;->l:I

    .line 203
    .line 204
    if-ne p1, v2, :cond_8

    .line 205
    .line 206
    move p1, v1

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    move p1, v3

    .line 209
    :goto_1
    invoke-static {p1}, Ly4/a;->f(Z)V

    .line 210
    .line 211
    .line 212
    iget-wide v4, p0, Lo3/k;->k:J

    .line 213
    .line 214
    const-wide/32 v6, 0x7fffffff

    .line 215
    .line 216
    .line 217
    cmp-long p1, v4, v6

    .line 218
    .line 219
    if-gtz p1, :cond_9

    .line 220
    .line 221
    move p1, v1

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    move p1, v3

    .line 224
    :goto_2
    invoke-static {p1}, Ly4/a;->f(Z)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Ly4/e0;

    .line 228
    .line 229
    iget-wide v4, p0, Lo3/k;->k:J

    .line 230
    .line 231
    long-to-int v0, v4

    .line 232
    invoke-direct {p1, v0}, Ly4/e0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lo3/k;->e:Ly4/e0;

    .line 236
    .line 237
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1}, Ly4/e0;->e()[B

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    .line 247
    .line 248
    iput-object p1, p0, Lo3/k;->m:Ly4/e0;

    .line 249
    .line 250
    iput v1, p0, Lo3/k;->i:I

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_a
    invoke-interface {p1}, Lg3/l;->c()J

    .line 254
    .line 255
    .line 256
    move-result-wide v2

    .line 257
    iget p1, p0, Lo3/k;->l:I

    .line 258
    .line 259
    int-to-long v4, p1

    .line 260
    sub-long/2addr v2, v4

    .line 261
    invoke-direct {p0, v2, v3}, Lo3/k;->z(J)V

    .line 262
    .line 263
    .line 264
    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lo3/k;->m:Ly4/e0;

    .line 266
    .line 267
    iput v1, p0, Lo3/k;->i:I

    .line 268
    .line 269
    :goto_3
    return v1

    .line 270
    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    .line 271
    .line 272
    invoke-static {p1}, Lb3/e3;->d(Ljava/lang/String;)Lb3/e3;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    throw p1
.end method

.method private B(Lg3/l;Lg3/y;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lo3/k;->k:J

    .line 2
    .line 3
    iget v2, p0, Lo3/k;->l:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    sub-long/2addr v0, v2

    .line 7
    invoke-interface {p1}, Lg3/l;->c()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-object v4, p0, Lo3/k;->m:Ly4/e0;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Ly4/e0;->e()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget v7, p0, Lo3/k;->l:I

    .line 23
    .line 24
    long-to-int v0, v0

    .line 25
    invoke-interface {p1, p2, v7, v0}, Lg3/l;->readFully([BII)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lo3/k;->j:I

    .line 29
    .line 30
    const p2, 0x66747970

    .line 31
    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    invoke-static {v4}, Lo3/k;->x(Ly4/e0;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lo3/k;->w:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lo3/a$a;

    .line 57
    .line 58
    new-instance p2, Lo3/a$b;

    .line 59
    .line 60
    iget v0, p0, Lo3/k;->j:I

    .line 61
    .line 62
    invoke-direct {p2, v0, v4}, Lo3/a$b;-><init>(ILy4/e0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lo3/a$a;->e(Lo3/a$b;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-wide/32 v7, 0x40000

    .line 70
    .line 71
    .line 72
    cmp-long v4, v0, v7

    .line 73
    .line 74
    if-gez v4, :cond_3

    .line 75
    .line 76
    long-to-int p2, v0

    .line 77
    invoke-interface {p1, p2}, Lg3/l;->m(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    move p1, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {p1}, Lg3/l;->c()J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    add-long/2addr v7, v0

    .line 87
    iput-wide v7, p2, Lg3/y;->a:J

    .line 88
    .line 89
    move p1, v5

    .line 90
    :goto_1
    invoke-direct {p0, v2, v3}, Lo3/k;->v(J)V

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget p1, p0, Lo3/k;->i:I

    .line 96
    .line 97
    const/4 p2, 0x2

    .line 98
    if-eq p1, p2, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v5, v6

    .line 102
    :goto_2
    return v5
.end method

.method private C(Lg3/l;Lg3/y;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lg3/l;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget v4, v0, Lo3/k;->n:I

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Lo3/k;->q(J)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iput v4, v0, Lo3/k;->n:I

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    return v5

    .line 23
    :cond_0
    iget-object v4, v0, Lo3/k;->s:[Lo3/k$a;

    .line 24
    .line 25
    iget v6, v0, Lo3/k;->n:I

    .line 26
    .line 27
    aget-object v4, v4, v6

    .line 28
    .line 29
    iget-object v14, v4, Lo3/k$a;->c:Lg3/b0;

    .line 30
    .line 31
    iget v15, v4, Lo3/k$a;->e:I

    .line 32
    .line 33
    iget-object v6, v4, Lo3/k$a;->b:Lo3/r;

    .line 34
    .line 35
    iget-object v7, v6, Lo3/r;->c:[J

    .line 36
    .line 37
    aget-wide v8, v7, v15

    .line 38
    .line 39
    iget-object v6, v6, Lo3/r;->d:[I

    .line 40
    .line 41
    aget v6, v6, v15

    .line 42
    .line 43
    iget-object v13, v4, Lo3/k$a;->d:Lg3/c0;

    .line 44
    .line 45
    sub-long v2, v8, v2

    .line 46
    .line 47
    iget v7, v0, Lo3/k;->o:I

    .line 48
    .line 49
    int-to-long v10, v7

    .line 50
    add-long/2addr v2, v10

    .line 51
    const-wide/16 v10, 0x0

    .line 52
    .line 53
    cmp-long v7, v2, v10

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    if-ltz v7, :cond_c

    .line 57
    .line 58
    const-wide/32 v10, 0x40000

    .line 59
    .line 60
    .line 61
    cmp-long v7, v2, v10

    .line 62
    .line 63
    if-ltz v7, :cond_1

    .line 64
    .line 65
    move-object/from16 v1, p2

    .line 66
    .line 67
    move/from16 v17, v12

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_1
    iget-object v7, v4, Lo3/k$a;->a:Lo3/o;

    .line 72
    .line 73
    iget v7, v7, Lo3/o;->g:I

    .line 74
    .line 75
    if-ne v7, v12, :cond_2

    .line 76
    .line 77
    const-wide/16 v7, 0x8

    .line 78
    .line 79
    add-long/2addr v2, v7

    .line 80
    add-int/lit8 v6, v6, -0x8

    .line 81
    .line 82
    :cond_2
    long-to-int v2, v2

    .line 83
    invoke-interface {v1, v2}, Lg3/l;->m(I)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v4, Lo3/k$a;->a:Lo3/o;

    .line 87
    .line 88
    iget v3, v2, Lo3/o;->j:I

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    iget-object v2, v0, Lo3/k;->c:Ly4/e0;

    .line 95
    .line 96
    invoke-virtual {v2}, Ly4/e0;->e()[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    aput-byte v10, v2, v10

    .line 101
    .line 102
    aput-byte v10, v2, v12

    .line 103
    .line 104
    const/4 v3, 0x2

    .line 105
    aput-byte v10, v2, v3

    .line 106
    .line 107
    iget-object v3, v4, Lo3/k$a;->a:Lo3/o;

    .line 108
    .line 109
    iget v3, v3, Lo3/o;->j:I

    .line 110
    .line 111
    rsub-int/lit8 v7, v3, 0x4

    .line 112
    .line 113
    :goto_0
    iget v8, v0, Lo3/k;->p:I

    .line 114
    .line 115
    if-ge v8, v6, :cond_9

    .line 116
    .line 117
    iget v8, v0, Lo3/k;->q:I

    .line 118
    .line 119
    if-nez v8, :cond_4

    .line 120
    .line 121
    invoke-interface {v1, v2, v7, v3}, Lg3/l;->readFully([BII)V

    .line 122
    .line 123
    .line 124
    iget v8, v0, Lo3/k;->o:I

    .line 125
    .line 126
    add-int/2addr v8, v3

    .line 127
    iput v8, v0, Lo3/k;->o:I

    .line 128
    .line 129
    iget-object v8, v0, Lo3/k;->c:Ly4/e0;

    .line 130
    .line 131
    invoke-virtual {v8, v10}, Ly4/e0;->T(I)V

    .line 132
    .line 133
    .line 134
    iget-object v8, v0, Lo3/k;->c:Ly4/e0;

    .line 135
    .line 136
    invoke-virtual {v8}, Ly4/e0;->p()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-ltz v8, :cond_3

    .line 141
    .line 142
    iput v8, v0, Lo3/k;->q:I

    .line 143
    .line 144
    iget-object v8, v0, Lo3/k;->b:Ly4/e0;

    .line 145
    .line 146
    invoke-virtual {v8, v10}, Ly4/e0;->T(I)V

    .line 147
    .line 148
    .line 149
    iget-object v8, v0, Lo3/k;->b:Ly4/e0;

    .line 150
    .line 151
    const/4 v9, 0x4

    .line 152
    invoke-interface {v14, v8, v9}, Lg3/b0;->b(Ly4/e0;I)V

    .line 153
    .line 154
    .line 155
    iget v8, v0, Lo3/k;->p:I

    .line 156
    .line 157
    add-int/2addr v8, v9

    .line 158
    iput v8, v0, Lo3/k;->p:I

    .line 159
    .line 160
    add-int/2addr v6, v7

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "Invalid NAL length"

    .line 163
    .line 164
    invoke-static {v1, v11}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    throw v1

    .line 169
    :cond_4
    invoke-interface {v14, v1, v8, v10}, Lg3/b0;->e(Lx4/h;IZ)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget v9, v0, Lo3/k;->o:I

    .line 174
    .line 175
    add-int/2addr v9, v8

    .line 176
    iput v9, v0, Lo3/k;->o:I

    .line 177
    .line 178
    iget v9, v0, Lo3/k;->p:I

    .line 179
    .line 180
    add-int/2addr v9, v8

    .line 181
    iput v9, v0, Lo3/k;->p:I

    .line 182
    .line 183
    iget v9, v0, Lo3/k;->q:I

    .line 184
    .line 185
    sub-int/2addr v9, v8

    .line 186
    iput v9, v0, Lo3/k;->q:I

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_5
    iget-object v2, v2, Lo3/o;->f:Lb3/x1;

    .line 190
    .line 191
    iget-object v2, v2, Lb3/x1;->l:Ljava/lang/String;

    .line 192
    .line 193
    const-string v3, "audio/ac4"

    .line 194
    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_7

    .line 200
    .line 201
    iget v2, v0, Lo3/k;->p:I

    .line 202
    .line 203
    if-nez v2, :cond_6

    .line 204
    .line 205
    iget-object v2, v0, Lo3/k;->d:Ly4/e0;

    .line 206
    .line 207
    invoke-static {v6, v2}, Ld3/c;->a(ILy4/e0;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lo3/k;->d:Ly4/e0;

    .line 211
    .line 212
    const/4 v3, 0x7

    .line 213
    invoke-interface {v14, v2, v3}, Lg3/b0;->b(Ly4/e0;I)V

    .line 214
    .line 215
    .line 216
    iget v2, v0, Lo3/k;->p:I

    .line 217
    .line 218
    add-int/2addr v2, v3

    .line 219
    iput v2, v0, Lo3/k;->p:I

    .line 220
    .line 221
    :cond_6
    add-int/lit8 v6, v6, 0x7

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    if-eqz v13, :cond_8

    .line 225
    .line 226
    invoke-virtual {v13, v1}, Lg3/c0;->d(Lg3/l;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    :goto_1
    iget v2, v0, Lo3/k;->p:I

    .line 230
    .line 231
    if-ge v2, v6, :cond_9

    .line 232
    .line 233
    sub-int v2, v6, v2

    .line 234
    .line 235
    invoke-interface {v14, v1, v2, v10}, Lg3/b0;->e(Lx4/h;IZ)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iget v3, v0, Lo3/k;->o:I

    .line 240
    .line 241
    add-int/2addr v3, v2

    .line 242
    iput v3, v0, Lo3/k;->o:I

    .line 243
    .line 244
    iget v3, v0, Lo3/k;->p:I

    .line 245
    .line 246
    add-int/2addr v3, v2

    .line 247
    iput v3, v0, Lo3/k;->p:I

    .line 248
    .line 249
    iget v3, v0, Lo3/k;->q:I

    .line 250
    .line 251
    sub-int/2addr v3, v2

    .line 252
    iput v3, v0, Lo3/k;->q:I

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_9
    move v1, v6

    .line 256
    iget-object v2, v4, Lo3/k$a;->b:Lo3/r;

    .line 257
    .line 258
    iget-object v3, v2, Lo3/r;->f:[J

    .line 259
    .line 260
    aget-wide v8, v3, v15

    .line 261
    .line 262
    iget-object v2, v2, Lo3/r;->g:[I

    .line 263
    .line 264
    aget v2, v2, v15

    .line 265
    .line 266
    if-eqz v13, :cond_a

    .line 267
    .line 268
    const/4 v3, 0x0

    .line 269
    const/16 v16, 0x0

    .line 270
    .line 271
    move-object v6, v13

    .line 272
    move-object v7, v14

    .line 273
    move v10, v2

    .line 274
    move-object v2, v11

    .line 275
    move v11, v1

    .line 276
    move/from16 v17, v12

    .line 277
    .line 278
    move v12, v3

    .line 279
    move-object v1, v13

    .line 280
    move-object/from16 v13, v16

    .line 281
    .line 282
    invoke-virtual/range {v6 .. v13}, Lg3/c0;->c(Lg3/b0;JIIILg3/b0$a;)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v15, v15, 0x1

    .line 286
    .line 287
    iget-object v3, v4, Lo3/k$a;->b:Lo3/r;

    .line 288
    .line 289
    iget v3, v3, Lo3/r;->b:I

    .line 290
    .line 291
    if-ne v15, v3, :cond_b

    .line 292
    .line 293
    invoke-virtual {v1, v14, v2}, Lg3/c0;->a(Lg3/b0;Lg3/b0$a;)V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_a
    move/from16 v17, v12

    .line 298
    .line 299
    const/4 v11, 0x0

    .line 300
    const/4 v12, 0x0

    .line 301
    move-object v6, v14

    .line 302
    move-wide v7, v8

    .line 303
    move v9, v2

    .line 304
    move v10, v1

    .line 305
    invoke-interface/range {v6 .. v12}, Lg3/b0;->f(JIIILg3/b0$a;)V

    .line 306
    .line 307
    .line 308
    :cond_b
    :goto_2
    iget v1, v4, Lo3/k$a;->e:I

    .line 309
    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 311
    .line 312
    iput v1, v4, Lo3/k$a;->e:I

    .line 313
    .line 314
    iput v5, v0, Lo3/k;->n:I

    .line 315
    .line 316
    const/4 v1, 0x0

    .line 317
    iput v1, v0, Lo3/k;->o:I

    .line 318
    .line 319
    iput v1, v0, Lo3/k;->p:I

    .line 320
    .line 321
    iput v1, v0, Lo3/k;->q:I

    .line 322
    .line 323
    return v1

    .line 324
    :cond_c
    move/from16 v17, v12

    .line 325
    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    :goto_3
    iput-wide v8, v1, Lg3/y;->a:J

    .line 329
    .line 330
    return v17
.end method

.method private D(Lg3/l;Lg3/y;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lo3/k;->g:Lo3/m;

    .line 2
    .line 3
    iget-object v1, p0, Lo3/k;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lo3/m;->c(Lg3/l;Lg3/y;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p2, Lg3/y;->a:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p2, v0, v2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lo3/k;->n()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return p1
.end method

.method private static E(I)Z
    .locals 1

    .line 1
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static F(I)Z
    .locals 1

    .line 1
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private G(Lo3/k$a;J)V
    .locals 3

    .line 1
    iget-object v0, p1, Lo3/k$a;->b:Lo3/r;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lo3/r;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lo3/r;->b(J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    iput v1, p1, Lo3/k$a;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic j(Lo3/o;)Lo3/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lo3/k;->r(Lo3/o;)Lo3/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k()[Lg3/k;
    .locals 1

    .line 1
    invoke-static {}, Lo3/k;->s()[Lg3/k;

    move-result-object v0

    return-object v0
.end method

.method private static l(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static m([Lo3/k$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [[J

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    new-array v1, v1, [I

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    array-length v3, p0

    .line 11
    new-array v3, v3, [Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    array-length v6, p0

    .line 16
    if-ge v5, v6, :cond_0

    .line 17
    .line 18
    aget-object v6, p0, v5

    .line 19
    .line 20
    iget-object v6, v6, Lo3/k$a;->b:Lo3/r;

    .line 21
    .line 22
    iget v6, v6, Lo3/r;->b:I

    .line 23
    .line 24
    new-array v6, v6, [J

    .line 25
    .line 26
    aput-object v6, v0, v5

    .line 27
    .line 28
    aget-object v6, p0, v5

    .line 29
    .line 30
    iget-object v6, v6, Lo3/k$a;->b:Lo3/r;

    .line 31
    .line 32
    iget-object v6, v6, Lo3/r;->f:[J

    .line 33
    .line 34
    aget-wide v7, v6, v4

    .line 35
    .line 36
    aput-wide v7, v2, v5

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    move v7, v4

    .line 44
    :goto_1
    array-length v8, p0

    .line 45
    if-ge v7, v8, :cond_4

    .line 46
    .line 47
    const-wide v8, 0x7fffffffffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v10, -0x1

    .line 53
    move v11, v4

    .line 54
    :goto_2
    array-length v12, p0

    .line 55
    if-ge v11, v12, :cond_2

    .line 56
    .line 57
    aget-boolean v12, v3, v11

    .line 58
    .line 59
    if-nez v12, :cond_1

    .line 60
    .line 61
    aget-wide v12, v2, v11

    .line 62
    .line 63
    cmp-long v14, v12, v8

    .line 64
    .line 65
    if-gtz v14, :cond_1

    .line 66
    .line 67
    move v10, v11

    .line 68
    move-wide v8, v12

    .line 69
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    aget v8, v1, v10

    .line 73
    .line 74
    aget-object v9, v0, v10

    .line 75
    .line 76
    aput-wide v5, v9, v8

    .line 77
    .line 78
    aget-object v11, p0, v10

    .line 79
    .line 80
    iget-object v11, v11, Lo3/k$a;->b:Lo3/r;

    .line 81
    .line 82
    iget-object v12, v11, Lo3/r;->d:[I

    .line 83
    .line 84
    aget v12, v12, v8

    .line 85
    .line 86
    int-to-long v12, v12

    .line 87
    add-long/2addr v5, v12

    .line 88
    const/4 v12, 0x1

    .line 89
    add-int/2addr v8, v12

    .line 90
    aput v8, v1, v10

    .line 91
    .line 92
    array-length v9, v9

    .line 93
    if-ge v8, v9, :cond_3

    .line 94
    .line 95
    iget-object v9, v11, Lo3/r;->f:[J

    .line 96
    .line 97
    aget-wide v8, v9, v8

    .line 98
    .line 99
    aput-wide v8, v2, v10

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    aput-boolean v12, v3, v10

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-object v0
.end method

.method private n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo3/k;->i:I

    .line 3
    .line 4
    iput v0, p0, Lo3/k;->l:I

    .line 5
    .line 6
    return-void
.end method

.method private static p(Lo3/r;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r;->a(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lo3/r;->b(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method private q(J)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    move v6, v4

    .line 5
    const/4 v7, 0x0

    .line 6
    const-wide v8, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    const-wide v11, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v13, 0x1

    .line 18
    const-wide v14, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v3, v0, Lo3/k;->s:[Lo3/k$a;

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    if-ge v7, v5, :cond_7

    .line 27
    .line 28
    aget-object v3, v3, v7

    .line 29
    .line 30
    iget v5, v3, Lo3/k$a;->e:I

    .line 31
    .line 32
    iget-object v3, v3, Lo3/k$a;->b:Lo3/r;

    .line 33
    .line 34
    iget v1, v3, Lo3/r;->b:I

    .line 35
    .line 36
    if-ne v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    iget-object v1, v3, Lo3/r;->c:[J

    .line 40
    .line 41
    aget-wide v2, v1, v5

    .line 42
    .line 43
    iget-object v1, v0, Lo3/k;->t:[[J

    .line 44
    .line 45
    invoke-static {v1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, [[J

    .line 50
    .line 51
    aget-object v1, v1, v7

    .line 52
    .line 53
    aget-wide v16, v1, v5

    .line 54
    .line 55
    sub-long v2, v2, p1

    .line 56
    .line 57
    const-wide/16 v18, 0x0

    .line 58
    .line 59
    cmp-long v1, v2, v18

    .line 60
    .line 61
    if-ltz v1, :cond_2

    .line 62
    .line 63
    const-wide/32 v18, 0x40000

    .line 64
    .line 65
    .line 66
    cmp-long v1, v2, v18

    .line 67
    .line 68
    if-ltz v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 74
    :goto_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    if-nez v13, :cond_4

    .line 77
    .line 78
    :cond_3
    if-ne v1, v13, :cond_5

    .line 79
    .line 80
    cmp-long v5, v2, v14

    .line 81
    .line 82
    if-gez v5, :cond_5

    .line 83
    .line 84
    :cond_4
    move v13, v1

    .line 85
    move-wide v14, v2

    .line 86
    move v6, v7

    .line 87
    move-wide/from16 v11, v16

    .line 88
    .line 89
    :cond_5
    cmp-long v2, v16, v8

    .line 90
    .line 91
    if-gez v2, :cond_6

    .line 92
    .line 93
    move v10, v1

    .line 94
    move v4, v7

    .line 95
    move-wide/from16 v8, v16

    .line 96
    .line 97
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v1, v8, v1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    if-eqz v10, :cond_8

    .line 110
    .line 111
    const-wide/32 v1, 0xa00000

    .line 112
    .line 113
    .line 114
    add-long/2addr v8, v1

    .line 115
    cmp-long v1, v11, v8

    .line 116
    .line 117
    if-gez v1, :cond_9

    .line 118
    .line 119
    :cond_8
    move v4, v6

    .line 120
    :cond_9
    return v4
.end method

.method private static synthetic r(Lo3/o;)Lo3/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic s()[Lg3/k;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lg3/k;

    .line 3
    .line 4
    new-instance v1, Lo3/k;

    .line 5
    .line 6
    invoke-direct {v1}, Lo3/k;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    return-object v0
.end method

.method private static t(Lo3/r;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo3/k;->p(Lo3/r;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Lo3/r;->c:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private u(Lg3/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/k;->d:Ly4/e0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo3/k;->d:Ly4/e0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lo3/k;->d:Ly4/e0;

    .line 19
    .line 20
    invoke-static {v0}, Lo3/b;->e(Ly4/e0;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lo3/k;->d:Ly4/e0;

    .line 24
    .line 25
    invoke-virtual {v0}, Ly4/e0;->f()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v0}, Lg3/l;->m(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lg3/l;->l()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private v(J)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lo3/a$a;

    .line 17
    .line 18
    iget-wide v2, v0, Lo3/a$a;->b:J

    .line 19
    .line 20
    cmp-long v0, v2, p1

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lo3/a$a;

    .line 31
    .line 32
    iget v2, v0, Lo3/a;->a:I

    .line 33
    .line 34
    const v3, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lo3/k;->y(Lo3/a$a;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lo3/k;->i:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lo3/a$a;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lo3/a$a;->d(Lo3/a$a;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget p1, p0, Lo3/k;->i:I

    .line 71
    .line 72
    if-eq p1, v1, :cond_3

    .line 73
    .line 74
    invoke-direct {p0}, Lo3/k;->n()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    iget v0, p0, Lo3/k;->w:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lo3/k;->a:I

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lo3/k;->r:Lg3/m;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2, v1}, Lg3/m;->a(II)Lg3/b0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lo3/k;->x:Lz3/b;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lt3/a;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    new-array v3, v3, [Lt3/a$b;

    .line 29
    .line 30
    iget-object v4, p0, Lo3/k;->x:Lz3/b;

    .line 31
    .line 32
    aput-object v4, v3, v2

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v2, Lb3/x1$b;

    .line 38
    .line 39
    invoke-direct {v2}, Lb3/x1$b;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lb3/x1$b;->G()Lb3/x1;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lg3/b0;->c(Lb3/x1;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lo3/k;->r:Lg3/m;

    .line 54
    .line 55
    invoke-interface {v0}, Lg3/m;->n()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lo3/k;->r:Lg3/m;

    .line 59
    .line 60
    new-instance v1, Lg3/z$b;

    .line 61
    .line 62
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v3}, Lg3/z$b;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Lg3/m;->l(Lg3/z;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method private static x(Ly4/e0;)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lo3/k;->l(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Ly4/e0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lo3/k;->l(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private y(Lo3/a$a;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v9, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lo3/k;->w:I

    .line 11
    .line 12
    const/4 v11, 0x1

    .line 13
    if-ne v2, v11, :cond_0

    .line 14
    .line 15
    move v7, v11

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v7, 0x0

    .line 18
    :goto_0
    new-instance v12, Lg3/v;

    .line 19
    .line 20
    invoke-direct {v12}, Lg3/v;-><init>()V

    .line 21
    .line 22
    .line 23
    const v2, 0x75647461

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-static {v2}, Lo3/b;->B(Lo3/a$b;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lt3/a;

    .line 39
    .line 40
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lt3/a;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v12, v3}, Lg3/v;->c(Lt3/a;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    move-object v14, v2

    .line 50
    move-object v15, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v14, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    :goto_1
    const v2, 0x6d657461

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-static {v2}, Lo3/b;->n(Lo3/a$a;)Lt3/a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v8, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v8, 0x0

    .line 70
    :goto_2
    iget v2, v0, Lo3/k;->a:I

    .line 71
    .line 72
    and-int/2addr v2, v11

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    move v6, v11

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/4 v6, 0x0

    .line 78
    :goto_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    new-instance v16, Lo3/j;

    .line 85
    .line 86
    invoke-direct/range {v16 .. v16}, Lo3/j;-><init>()V

    .line 87
    .line 88
    .line 89
    move-object/from16 v1, p1

    .line 90
    .line 91
    move-object v2, v12

    .line 92
    move-object v13, v8

    .line 93
    move-object/from16 v8, v16

    .line 94
    .line 95
    invoke-static/range {v1 .. v8}, Lo3/b;->A(Lo3/a$a;Lg3/v;JLf3/m;ZZLn6/g;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    move-wide v10, v4

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, -0x1

    .line 111
    :goto_4
    if-ge v6, v2, :cond_c

    .line 112
    .line 113
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v17

    .line 117
    move-object/from16 v8, v17

    .line 118
    .line 119
    check-cast v8, Lo3/r;

    .line 120
    .line 121
    iget v3, v8, Lo3/r;->b:I

    .line 122
    .line 123
    if-nez v3, :cond_5

    .line 124
    .line 125
    move-object/from16 v18, v1

    .line 126
    .line 127
    move/from16 v19, v2

    .line 128
    .line 129
    const/4 v1, -0x1

    .line 130
    const/4 v8, 0x1

    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_5
    iget-object v3, v8, Lo3/r;->a:Lo3/o;

    .line 134
    .line 135
    move-object/from16 v18, v1

    .line 136
    .line 137
    move/from16 v19, v2

    .line 138
    .line 139
    iget-wide v1, v3, Lo3/o;->e:J

    .line 140
    .line 141
    cmp-long v20, v1, v4

    .line 142
    .line 143
    if-eqz v20, :cond_6

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_6
    iget-wide v1, v8, Lo3/r;->h:J

    .line 147
    .line 148
    :goto_5
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide v10

    .line 152
    new-instance v4, Lo3/k$a;

    .line 153
    .line 154
    iget-object v5, v0, Lo3/k;->r:Lg3/m;

    .line 155
    .line 156
    move-wide/from16 v21, v10

    .line 157
    .line 158
    iget v10, v3, Lo3/o;->b:I

    .line 159
    .line 160
    invoke-interface {v5, v6, v10}, Lg3/m;->a(II)Lg3/b0;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {v4, v3, v8, v5}, Lo3/k$a;-><init>(Lo3/o;Lo3/r;Lg3/b0;)V

    .line 165
    .line 166
    .line 167
    iget-object v5, v3, Lo3/o;->f:Lb3/x1;

    .line 168
    .line 169
    iget-object v5, v5, Lb3/x1;->l:Ljava/lang/String;

    .line 170
    .line 171
    const-string v10, "audio/true-hd"

    .line 172
    .line 173
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_7

    .line 178
    .line 179
    iget v5, v8, Lo3/r;->e:I

    .line 180
    .line 181
    mul-int/lit8 v5, v5, 0x10

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_7
    iget v5, v8, Lo3/r;->e:I

    .line 185
    .line 186
    add-int/lit8 v5, v5, 0x1e

    .line 187
    .line 188
    :goto_6
    iget-object v10, v3, Lo3/o;->f:Lb3/x1;

    .line 189
    .line 190
    invoke-virtual {v10}, Lb3/x1;->b()Lb3/x1$b;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-virtual {v10, v5}, Lb3/x1$b;->Y(I)Lb3/x1$b;

    .line 195
    .line 196
    .line 197
    iget v5, v3, Lo3/o;->b:I

    .line 198
    .line 199
    const/4 v11, 0x2

    .line 200
    if-ne v5, v11, :cond_8

    .line 201
    .line 202
    const-wide/16 v23, 0x0

    .line 203
    .line 204
    cmp-long v5, v1, v23

    .line 205
    .line 206
    if-lez v5, :cond_8

    .line 207
    .line 208
    iget v5, v8, Lo3/r;->b:I

    .line 209
    .line 210
    const/4 v8, 0x1

    .line 211
    if-le v5, v8, :cond_8

    .line 212
    .line 213
    int-to-float v5, v5

    .line 214
    long-to-float v1, v1

    .line 215
    const v2, 0x49742400    # 1000000.0f

    .line 216
    .line 217
    .line 218
    div-float/2addr v1, v2

    .line 219
    div-float/2addr v5, v1

    .line 220
    invoke-virtual {v10, v5}, Lb3/x1$b;->R(F)Lb3/x1$b;

    .line 221
    .line 222
    .line 223
    :cond_8
    iget v1, v3, Lo3/o;->b:I

    .line 224
    .line 225
    invoke-static {v1, v12, v10}, Lo3/h;->k(ILg3/v;Lb3/x1$b;)V

    .line 226
    .line 227
    .line 228
    iget v1, v3, Lo3/o;->b:I

    .line 229
    .line 230
    new-array v2, v11, [Lt3/a;

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    aput-object v14, v2, v5

    .line 234
    .line 235
    iget-object v5, v0, Lo3/k;->h:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_9

    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    goto :goto_7

    .line 245
    :cond_9
    new-instance v5, Lt3/a;

    .line 246
    .line 247
    iget-object v8, v0, Lo3/k;->h:Ljava/util/List;

    .line 248
    .line 249
    invoke-direct {v5, v8}, Lt3/a;-><init>(Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    :goto_7
    const/4 v8, 0x1

    .line 253
    aput-object v5, v2, v8

    .line 254
    .line 255
    invoke-static {v1, v15, v13, v10, v2}, Lo3/h;->l(ILt3/a;Lt3/a;Lb3/x1$b;[Lt3/a;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v4, Lo3/k$a;->c:Lg3/b0;

    .line 259
    .line 260
    invoke-virtual {v10}, Lb3/x1$b;->G()Lb3/x1;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-interface {v1, v2}, Lg3/b0;->c(Lb3/x1;)V

    .line 265
    .line 266
    .line 267
    iget v1, v3, Lo3/o;->b:I

    .line 268
    .line 269
    if-ne v1, v11, :cond_a

    .line 270
    .line 271
    const/4 v1, -0x1

    .line 272
    if-ne v7, v1, :cond_b

    .line 273
    .line 274
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    move v7, v2

    .line 279
    goto :goto_8

    .line 280
    :cond_a
    const/4 v1, -0x1

    .line 281
    :cond_b
    :goto_8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-wide/from16 v10, v21

    .line 285
    .line 286
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 287
    .line 288
    move-object/from16 v1, v18

    .line 289
    .line 290
    move/from16 v2, v19

    .line 291
    .line 292
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    goto/16 :goto_4

    .line 298
    .line 299
    :cond_c
    iput v7, v0, Lo3/k;->u:I

    .line 300
    .line 301
    iput-wide v10, v0, Lo3/k;->v:J

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    new-array v1, v1, [Lo3/k$a;

    .line 305
    .line 306
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, [Lo3/k$a;

    .line 311
    .line 312
    iput-object v1, v0, Lo3/k;->s:[Lo3/k$a;

    .line 313
    .line 314
    invoke-static {v1}, Lo3/k;->m([Lo3/k$a;)[[J

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    iput-object v1, v0, Lo3/k;->t:[[J

    .line 319
    .line 320
    iget-object v1, v0, Lo3/k;->r:Lg3/m;

    .line 321
    .line 322
    invoke-interface {v1}, Lg3/m;->n()V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lo3/k;->r:Lg3/m;

    .line 326
    .line 327
    invoke-interface {v1, v0}, Lg3/m;->l(Lg3/z;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method private z(J)V
    .locals 13

    .line 1
    iget v0, p0, Lo3/k;->j:I

    .line 2
    .line 3
    const v1, 0x6d707664

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lz3/b;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iget v1, p0, Lo3/k;->l:I

    .line 18
    .line 19
    int-to-long v5, v1

    .line 20
    add-long v9, p1, v5

    .line 21
    .line 22
    iget-wide v5, p0, Lo3/k;->k:J

    .line 23
    .line 24
    int-to-long v1, v1

    .line 25
    sub-long v11, v5, v1

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move-wide v5, p1

    .line 29
    invoke-direct/range {v2 .. v12}, Lz3/b;-><init>(JJJJJ)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lo3/k;->x:Lz3/b;

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/k;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lo3/k;->l:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lo3/k;->n:I

    .line 11
    .line 12
    iput v0, p0, Lo3/k;->o:I

    .line 13
    .line 14
    iput v0, p0, Lo3/k;->p:I

    .line 15
    .line 16
    iput v0, p0, Lo3/k;->q:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    cmp-long p1, p1, v1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lo3/k;->i:I

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    if-eq p1, p2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lo3/k;->n()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p0, Lo3/k;->g:Lo3/m;

    .line 34
    .line 35
    invoke-virtual {p1}, Lo3/m;->g()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lo3/k;->h:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, p0, Lo3/k;->s:[Lo3/k$a;

    .line 45
    .line 46
    array-length p2, p1

    .line 47
    :goto_0
    if-ge v0, p2, :cond_3

    .line 48
    .line 49
    aget-object v1, p1, v0

    .line 50
    .line 51
    invoke-direct {p0, v1, p3, p4}, Lo3/k;->G(Lo3/k$a;J)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lo3/k$a;->d:Lg3/c0;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lg3/c0;->b()V

    .line 59
    .line 60
    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lg3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo3/k;->r:Lg3/m;

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public f(Lg3/l;)Z
    .locals 1

    .line 1
    iget v0, p0, Lo3/k;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {p1, v0}, Lo3/n;->d(Lg3/l;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public g(Lg3/l;Lg3/y;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lo3/k;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lo3/k;->D(Lg3/l;Lg3/y;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2}, Lo3/k;->C(Lg3/l;Lg3/y;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2}, Lo3/k;->B(Lg3/l;Lg3/y;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    invoke-direct {p0, p1}, Lo3/k;->A(Lg3/l;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    return p1
.end method

.method public h(J)Lg3/z$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lo3/k;->o(JI)Lg3/z$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo3/k;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o(JI)Lg3/z$a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v0, Lo3/k;->s:[Lo3/k$a;

    .line 8
    .line 9
    array-length v5, v4

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    new-instance v1, Lg3/z$a;

    .line 13
    .line 14
    sget-object v2, Lg3/a0;->c:Lg3/a0;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lg3/z$a;-><init>(Lg3/a0;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const/4 v5, -0x1

    .line 21
    if-eq v3, v5, :cond_1

    .line 22
    .line 23
    move v6, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v6, v0, Lo3/k;->u:I

    .line 26
    .line 27
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide/16 v9, -0x1

    .line 33
    .line 34
    if-eq v6, v5, :cond_3

    .line 35
    .line 36
    aget-object v4, v4, v6

    .line 37
    .line 38
    iget-object v4, v4, Lo3/k$a;->b:Lo3/r;

    .line 39
    .line 40
    invoke-static {v4, v1, v2}, Lo3/k;->p(Lo3/r;J)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v5, :cond_2

    .line 45
    .line 46
    new-instance v1, Lg3/z$a;

    .line 47
    .line 48
    sget-object v2, Lg3/a0;->c:Lg3/a0;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lg3/z$a;-><init>(Lg3/a0;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    iget-object v11, v4, Lo3/r;->f:[J

    .line 55
    .line 56
    aget-wide v12, v11, v6

    .line 57
    .line 58
    iget-object v11, v4, Lo3/r;->c:[J

    .line 59
    .line 60
    aget-wide v14, v11, v6

    .line 61
    .line 62
    cmp-long v11, v12, v1

    .line 63
    .line 64
    if-gez v11, :cond_4

    .line 65
    .line 66
    iget v11, v4, Lo3/r;->b:I

    .line 67
    .line 68
    add-int/lit8 v11, v11, -0x1

    .line 69
    .line 70
    if-ge v6, v11, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v1, v2}, Lo3/r;->b(J)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v1, v5, :cond_4

    .line 77
    .line 78
    if-eq v1, v6, :cond_4

    .line 79
    .line 80
    iget-object v2, v4, Lo3/r;->f:[J

    .line 81
    .line 82
    aget-wide v9, v2, v1

    .line 83
    .line 84
    iget-object v2, v4, Lo3/r;->c:[J

    .line 85
    .line 86
    aget-wide v1, v2, v1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move-wide v12, v1

    .line 95
    :cond_4
    move-wide v1, v9

    .line 96
    move-wide v9, v7

    .line 97
    :goto_1
    if-ne v3, v5, :cond_6

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_2
    iget-object v4, v0, Lo3/k;->s:[Lo3/k$a;

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    if-ge v3, v5, :cond_6

    .line 104
    .line 105
    iget v5, v0, Lo3/k;->u:I

    .line 106
    .line 107
    if-eq v3, v5, :cond_5

    .line 108
    .line 109
    aget-object v4, v4, v3

    .line 110
    .line 111
    iget-object v4, v4, Lo3/k$a;->b:Lo3/r;

    .line 112
    .line 113
    invoke-static {v4, v12, v13, v14, v15}, Lo3/k;->t(Lo3/r;JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v14

    .line 117
    cmp-long v5, v9, v7

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    invoke-static {v4, v9, v10, v1, v2}, Lo3/k;->t(Lo3/r;JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    new-instance v3, Lg3/a0;

    .line 129
    .line 130
    invoke-direct {v3, v12, v13, v14, v15}, Lg3/a0;-><init>(JJ)V

    .line 131
    .line 132
    .line 133
    cmp-long v4, v9, v7

    .line 134
    .line 135
    if-nez v4, :cond_7

    .line 136
    .line 137
    new-instance v1, Lg3/z$a;

    .line 138
    .line 139
    invoke-direct {v1, v3}, Lg3/z$a;-><init>(Lg3/a0;)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_7
    new-instance v4, Lg3/a0;

    .line 144
    .line 145
    invoke-direct {v4, v9, v10, v1, v2}, Lg3/a0;-><init>(JJ)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lg3/z$a;

    .line 149
    .line 150
    invoke-direct {v1, v3, v4}, Lg3/z$a;-><init>(Lg3/a0;Lg3/a0;)V

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method
