.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Ld4/a;
.source "SourceFile"

# interfaces
.implements Lx4/e0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private final h:Z

.field private final i:Landroid/net/Uri;

.field private final j:Lb3/f2$h;

.field private final k:Lb3/f2;

.field private final l:Lx4/j$a;

.field private final m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final n:Ld4/h;

.field private final o:Lf3/v;

.field private final p:Lx4/d0;

.field private final q:J

.field private final r:Ld4/a0$a;

.field private final s:Lx4/g0$a;

.field private final t:Ljava/util/ArrayList;

.field private u:Lx4/j;

.field private v:Lx4/e0;

.field private w:Lx4/f0;

.field private x:Lx4/m0;

.field private y:J

.field private z:Ll4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.smoothstreaming"

    .line 2
    .line 3
    invoke-static {v0}, Lb3/u1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lb3/f2;Ll4/a;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ld4/h;Lf3/v;Lx4/d0;J)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ld4/a;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 3
    iget-boolean v2, p2, Ll4/a;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Ly4/a;->f(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lb3/f2;

    .line 5
    iget-object p1, p1, Lb3/f2;->b:Lb3/f2$h;

    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/f2$h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Lb3/f2$h;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 7
    iget-object v2, p1, Lb3/f2$h;->a:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object p1, v3

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p1, Lb3/f2$h;->a:Landroid/net/Uri;

    invoke-static {p1}, Ly4/q0;->B(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Landroid/net/Uri;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lx4/j$a;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lx4/g0$a;

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 12
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Ld4/h;

    .line 13
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lf3/v;

    .line 14
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 15
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:J

    .line 16
    invoke-virtual {p0, v3}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ld4/a0$a;

    if-eqz p2, :cond_3

    move v0, v1

    .line 17
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2;Ll4/a;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ld4/h;Lf3/v;Lx4/d0;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lb3/f2;Ll4/a;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ld4/h;Lf3/v;Lx4/d0;J)V

    return-void
.end method

.method public static synthetic F(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L()V

    return-void
.end method

.method private J()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->v(Ll4/a;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 30
    .line 31
    iget-object v2, v2, Ll4/a;->f:[Ll4/a$b;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    const-wide v4, 0x7fffffffffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide/high16 v6, -0x8000000000000000L

    .line 40
    .line 41
    move v8, v1

    .line 42
    move-wide v14, v4

    .line 43
    :goto_1
    if-ge v8, v3, :cond_2

    .line 44
    .line 45
    aget-object v9, v2, v8

    .line 46
    .line 47
    iget v10, v9, Ll4/a$b;->k:I

    .line 48
    .line 49
    if-lez v10, :cond_1

    .line 50
    .line 51
    invoke-virtual {v9, v1}, Ll4/a$b;->e(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    iget v10, v9, Ll4/a$b;->k:I

    .line 60
    .line 61
    add-int/lit8 v10, v10, -0x1

    .line 62
    .line 63
    invoke-virtual {v9, v10}, Ll4/a$b;->e(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    iget v12, v9, Ll4/a$b;->k:I

    .line 68
    .line 69
    add-int/lit8 v12, v12, -0x1

    .line 70
    .line 71
    invoke-virtual {v9, v12}, Ll4/a$b;->c(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    add-long/2addr v10, v12

    .line 76
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    cmp-long v1, v14, v4

    .line 84
    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 95
    .line 96
    iget-boolean v1, v1, Ll4/a;->d:Z

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    move-wide v7, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-wide v7, v2

    .line 103
    :goto_2
    new-instance v1, Ld4/p0;

    .line 104
    .line 105
    const-wide/16 v9, 0x0

    .line 106
    .line 107
    const-wide/16 v11, 0x0

    .line 108
    .line 109
    const-wide/16 v13, 0x0

    .line 110
    .line 111
    const/4 v15, 0x1

    .line 112
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 113
    .line 114
    iget-boolean v3, v2, Ll4/a;->d:Z

    .line 115
    .line 116
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lb3/f2;

    .line 117
    .line 118
    move-object v6, v1

    .line 119
    move/from16 v16, v3

    .line 120
    .line 121
    move/from16 v17, v3

    .line 122
    .line 123
    move-object/from16 v18, v2

    .line 124
    .line 125
    move-object/from16 v19, v4

    .line 126
    .line 127
    invoke-direct/range {v6 .. v19}, Ld4/p0;-><init>(JJJJZZZLjava/lang/Object;Lb3/f2;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 133
    .line 134
    iget-boolean v8, v1, Ll4/a;->d:Z

    .line 135
    .line 136
    if-eqz v8, :cond_7

    .line 137
    .line 138
    iget-wide v8, v1, Ll4/a;->h:J

    .line 139
    .line 140
    cmp-long v1, v8, v4

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    cmp-long v1, v8, v2

    .line 145
    .line 146
    if-lez v1, :cond_5

    .line 147
    .line 148
    sub-long v1, v6, v8

    .line 149
    .line 150
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v14

    .line 154
    :cond_5
    move-wide/from16 v21, v14

    .line 155
    .line 156
    sub-long v19, v6, v21

    .line 157
    .line 158
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:J

    .line 159
    .line 160
    invoke-static {v1, v2}, Ly4/q0;->A0(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    sub-long v1, v19, v1

    .line 165
    .line 166
    const-wide/32 v3, 0x4c4b40

    .line 167
    .line 168
    .line 169
    cmp-long v5, v1, v3

    .line 170
    .line 171
    if-gez v5, :cond_6

    .line 172
    .line 173
    const-wide/16 v1, 0x2

    .line 174
    .line 175
    div-long v1, v19, v1

    .line 176
    .line 177
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    :cond_6
    move-wide/from16 v23, v1

    .line 182
    .line 183
    new-instance v1, Ld4/p0;

    .line 184
    .line 185
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    const/16 v25, 0x1

    .line 191
    .line 192
    const/16 v26, 0x1

    .line 193
    .line 194
    const/16 v27, 0x1

    .line 195
    .line 196
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 197
    .line 198
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lb3/f2;

    .line 199
    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    move-object/from16 v28, v2

    .line 203
    .line 204
    move-object/from16 v29, v3

    .line 205
    .line 206
    invoke-direct/range {v16 .. v29}, Ld4/p0;-><init>(JJJJZZZLjava/lang/Object;Lb3/f2;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_7
    iget-wide v1, v1, Ll4/a;->g:J

    .line 211
    .line 212
    cmp-long v3, v1, v4

    .line 213
    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    move-wide v12, v1

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    sub-long/2addr v6, v14

    .line 219
    move-wide v12, v6

    .line 220
    :goto_3
    new-instance v1, Ld4/p0;

    .line 221
    .line 222
    add-long v10, v14, v12

    .line 223
    .line 224
    const-wide/16 v16, 0x0

    .line 225
    .line 226
    const/16 v18, 0x1

    .line 227
    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    const/16 v20, 0x0

    .line 231
    .line 232
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 233
    .line 234
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lb3/f2;

    .line 235
    .line 236
    move-object v9, v1

    .line 237
    move-object/from16 v21, v2

    .line 238
    .line 239
    move-object/from16 v22, v3

    .line 240
    .line 241
    invoke-direct/range {v9 .. v22}, Ld4/p0;-><init>(JJJJZZZLjava/lang/Object;Lb3/f2;)V

    .line 242
    .line 243
    .line 244
    :goto_4
    invoke-virtual {v0, v1}, Ld4/a;->D(Lb3/g4;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Ll4/a;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1388

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v3, Lk4/a;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lk4/a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private L()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lx4/g0;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lx4/j;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Landroid/net/Uri;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lx4/g0$a;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lx4/g0;-><init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lx4/e0;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 25
    .line 26
    iget v3, v0, Lx4/g0;->c:I

    .line 27
    .line 28
    invoke-interface {v2, v3}, Lx4/d0;->d(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v0, p0, v2}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ld4/a0$a;

    .line 37
    .line 38
    new-instance v2, Ld4/n;

    .line 39
    .line 40
    iget-wide v4, v0, Lx4/g0;->a:J

    .line 41
    .line 42
    iget-object v6, v0, Lx4/g0;->b:Lx4/n;

    .line 43
    .line 44
    move-object v3, v2

    .line 45
    invoke-direct/range {v3 .. v8}, Ld4/n;-><init>(JLx4/n;J)V

    .line 46
    .line 47
    .line 48
    iget v0, v0, Lx4/g0;->c:I

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Ld4/a0$a;->z(Ld4/n;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method protected C(Lx4/m0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Lx4/m0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lf3/v;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ld4/a;->A()Lc3/t3;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v0, v1}, Lf3/v;->d(Landroid/os/Looper;Lc3/t3;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lf3/v;

    .line 17
    .line 18
    invoke-interface {p1}, Lf3/v;->b()V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lx4/f0$a;

    .line 26
    .line 27
    invoke-direct {p1}, Lx4/f0$a;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lx4/f0;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lx4/j$a;

    .line 37
    .line 38
    invoke-interface {p1}, Lx4/j$a;->a()Lx4/j;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lx4/j;

    .line 43
    .line 44
    new-instance p1, Lx4/e0;

    .line 45
    .line 46
    const-string v0, "SsMediaSource"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lx4/e0;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lx4/f0;

    .line 54
    .line 55
    invoke-static {}, Ly4/q0;->w()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method protected E()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lx4/j;

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lx4/e0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lx4/e0;->l()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lx4/e0;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lf3/v;

    .line 37
    .line 38
    invoke-interface {v0}, Lf3/v;->release()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public G(Lx4/g0;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Ld4/n;

    .line 5
    .line 6
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lx4/g0;->b:Lx4/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 31
    .line 32
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ld4/a0$a;

    .line 38
    .line 39
    iget v1, v1, Lx4/g0;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v1}, Ld4/a0$a;->q(Ld4/n;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public H(Lx4/g0;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Ld4/n;

    .line 5
    .line 6
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lx4/g0;->b:Lx4/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 31
    .line 32
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ld4/a0$a;

    .line 38
    .line 39
    iget v3, v1, Lx4/g0;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v3}, Ld4/a0$a;->t(Ld4/n;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->e()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ll4/a;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 51
    .line 52
    sub-long v1, p2, p4

    .line 53
    .line 54
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public I(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Ld4/n;

    .line 8
    .line 9
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lx4/g0;->b:Lx4/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ld4/q;

    .line 34
    .line 35
    iget v4, v1, Lx4/g0;->c:I

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ld4/q;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 41
    .line 42
    new-instance v5, Lx4/d0$c;

    .line 43
    .line 44
    move/from16 v6, p7

    .line 45
    .line 46
    invoke-direct {v5, v15, v3, v2, v6}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v5}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v5, v3, v5

    .line 59
    .line 60
    if-nez v5, :cond_0

    .line 61
    .line 62
    sget-object v3, Lx4/e0;->g:Lx4/e0$c;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    invoke-static {v5, v3, v4}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-virtual {v3}, Lx4/e0$c;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    xor-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ld4/a0$a;

    .line 77
    .line 78
    iget v6, v1, Lx4/g0;->c:I

    .line 79
    .line 80
    invoke-virtual {v5, v15, v6, v2, v4}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 81
    .line 82
    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 86
    .line 87
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 88
    .line 89
    invoke-interface {v2, v4, v5}, Lx4/d0;->c(J)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-object v3
.end method

.method public d(Ld4/t$b;Lx4/b;J)Ld4/r;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    invoke-virtual {p0, p1}, Ld4/a;->u(Ld4/t$b;)Lf3/u$a;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll4/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Lx4/m0;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Ld4/h;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lf3/v;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lx4/d0;

    .line 22
    .line 23
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lx4/f0;

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    move-object v10, p2

    .line 27
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;-><init>(Ll4/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lx4/m0;Ld4/h;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;Lx4/f0;Lx4/b;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public g(Ld4/r;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic h(Lx4/e0$e;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j()Lb3/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lb3/f2;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lx4/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Lx4/f0;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic o(Lx4/e0$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H(Lx4/g0;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic s(Lx4/e0$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G(Lx4/g0;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
