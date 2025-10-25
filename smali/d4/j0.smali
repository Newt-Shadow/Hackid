.class Ld4/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/j0$a;
    }
.end annotation


# instance fields
.field private final a:Lx4/b;

.field private final b:I

.field private final c:Ly4/e0;

.field private d:Ld4/j0$a;

.field private e:Ld4/j0$a;

.field private f:Ld4/j0$a;

.field private g:J


# direct methods
.method public constructor <init>(Lx4/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/j0;->a:Lx4/b;

    .line 5
    .line 6
    invoke-interface {p1}, Lx4/b;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Ld4/j0;->b:I

    .line 11
    .line 12
    new-instance v0, Ly4/e0;

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ld4/j0;->c:Ly4/e0;

    .line 20
    .line 21
    new-instance v0, Ld4/j0$a;

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, p1}, Ld4/j0$a;-><init>(JI)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 29
    .line 30
    iput-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 31
    .line 32
    iput-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 33
    .line 34
    return-void
.end method

.method private a(Ld4/j0$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ld4/j0$a;->c:Lx4/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ld4/j0;->a:Lx4/b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx4/b;->d(Lx4/b$a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ld4/j0$a;->b()Ld4/j0$a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static d(Ld4/j0$a;J)Ld4/j0$a;
    .locals 2

    .line 1
    :goto_0
    iget-wide v0, p0, Ld4/j0$a;->b:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0
.end method

.method private g(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Ld4/j0;->g:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Ld4/j0;->g:J

    .line 6
    .line 7
    iget-object p1, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 8
    .line 9
    iget-wide v2, p1, Ld4/j0$a;->b:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Ld4/j0$a;->d:Ld4/j0$a;

    .line 16
    .line 17
    iput-object p1, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private h(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 2
    .line 3
    iget-object v1, v0, Ld4/j0$a;->c:Lx4/a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Ld4/j0;->a:Lx4/b;

    .line 8
    .line 9
    invoke-interface {v1}, Lx4/b;->a()Lx4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ld4/j0$a;

    .line 14
    .line 15
    iget-object v3, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 16
    .line 17
    iget-wide v3, v3, Ld4/j0$a;->b:J

    .line 18
    .line 19
    iget v5, p0, Ld4/j0;->b:I

    .line 20
    .line 21
    invoke-direct {v2, v3, v4, v5}, Ld4/j0$a;-><init>(JI)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ld4/j0$a;->c(Lx4/a;Ld4/j0$a;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 28
    .line 29
    iget-wide v0, v0, Ld4/j0$a;->b:J

    .line 30
    .line 31
    iget-wide v2, p0, Ld4/j0;->g:J

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    long-to-int v0, v0

    .line 35
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private static i(Ld4/j0$a;JLjava/nio/ByteBuffer;I)Ld4/j0$a;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Ld4/j0;->d(Ld4/j0$a;J)Ld4/j0$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Ld4/j0$a;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, p1

    .line 10
    long-to-int v0, v0

    .line 11
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Ld4/j0$a;->c:Lx4/a;

    .line 16
    .line 17
    iget-object v1, v1, Lx4/a;->a:[B

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Ld4/j0$a;->e(J)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    sub-int/2addr p4, v0

    .line 27
    int-to-long v0, v0

    .line 28
    add-long/2addr p1, v0

    .line 29
    iget-wide v0, p0, Ld4/j0$a;->b:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object p0
.end method

.method private static j(Ld4/j0$a;J[BI)Ld4/j0$a;
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Ld4/j0;->d(Ld4/j0$a;J)Ld4/j0$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    move v0, p4

    .line 6
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-wide v1, p0, Ld4/j0$a;->b:J

    .line 9
    .line 10
    sub-long/2addr v1, p1

    .line 11
    long-to-int v1, v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Ld4/j0$a;->c:Lx4/a;

    .line 17
    .line 18
    iget-object v2, v2, Lx4/a;->a:[B

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Ld4/j0$a;->e(J)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int v4, p4, v0

    .line 25
    .line 26
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    int-to-long v1, v1

    .line 31
    add-long/2addr p1, v1

    .line 32
    iget-wide v1, p0, Ld4/j0$a;->b:J

    .line 33
    .line 34
    cmp-long v1, p1, v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object p0
.end method

.method private static k(Ld4/j0$a;Le3/g;Ld4/l0$b;Ly4/e0;)Ld4/j0$a;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-wide v2, v0, Ld4/l0$b;->b:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ly4/e0;->P(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    move-object/from16 v6, p0

    .line 16
    .line 17
    invoke-static {v6, v2, v3, v5, v4}, Ld4/j0;->j(Ld4/j0$a;J[BI)Ld4/j0$a;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-wide/16 v6, 0x1

    .line 22
    .line 23
    add-long/2addr v2, v6

    .line 24
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->e()[B

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x0

    .line 29
    aget-byte v6, v6, v7

    .line 30
    .line 31
    and-int/lit16 v8, v6, 0x80

    .line 32
    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    move v8, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v8, v7

    .line 38
    :goto_0
    and-int/lit8 v6, v6, 0x7f

    .line 39
    .line 40
    move-object/from16 v9, p1

    .line 41
    .line 42
    iget-object v9, v9, Le3/g;->b:Le3/c;

    .line 43
    .line 44
    iget-object v10, v9, Le3/c;->a:[B

    .line 45
    .line 46
    if-nez v10, :cond_1

    .line 47
    .line 48
    const/16 v10, 0x10

    .line 49
    .line 50
    new-array v10, v10, [B

    .line 51
    .line 52
    iput-object v10, v9, Le3/c;->a:[B

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object v10, v9, Le3/c;->a:[B

    .line 59
    .line 60
    invoke-static {v5, v2, v3, v10, v6}, Ld4/j0;->j(Ld4/j0$a;J[BI)Ld4/j0$a;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    int-to-long v10, v6

    .line 65
    add-long/2addr v2, v10

    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-virtual {v1, v4}, Ly4/e0;->P(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->e()[B

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v5, v2, v3, v6, v4}, Ld4/j0;->j(Ld4/j0$a;J[BI)Ld4/j0$a;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-wide/16 v10, 0x2

    .line 81
    .line 82
    add-long/2addr v2, v10

    .line 83
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->M()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    :cond_2
    move v10, v4

    .line 88
    iget-object v4, v9, Le3/c;->d:[I

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    array-length v6, v4

    .line 93
    if-ge v6, v10, :cond_4

    .line 94
    .line 95
    :cond_3
    new-array v4, v10, [I

    .line 96
    .line 97
    :cond_4
    move-object v11, v4

    .line 98
    iget-object v4, v9, Le3/c;->e:[I

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    array-length v6, v4

    .line 103
    if-ge v6, v10, :cond_6

    .line 104
    .line 105
    :cond_5
    new-array v4, v10, [I

    .line 106
    .line 107
    :cond_6
    move-object v12, v4

    .line 108
    if-eqz v8, :cond_7

    .line 109
    .line 110
    mul-int/lit8 v4, v10, 0x6

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ly4/e0;->P(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->e()[B

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v5, v2, v3, v6, v4}, Ld4/j0;->j(Ld4/j0$a;J[BI)Ld4/j0$a;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    int-to-long v13, v4

    .line 124
    add-long/2addr v2, v13

    .line 125
    invoke-virtual {v1, v7}, Ly4/e0;->T(I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    if-ge v7, v10, :cond_8

    .line 129
    .line 130
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->M()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    aput v4, v11, v7

    .line 135
    .line 136
    invoke-virtual/range {p3 .. p3}, Ly4/e0;->K()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    aput v4, v12, v7

    .line 141
    .line 142
    add-int/lit8 v7, v7, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    aput v7, v11, v7

    .line 146
    .line 147
    iget v1, v0, Ld4/l0$b;->a:I

    .line 148
    .line 149
    iget-wide v13, v0, Ld4/l0$b;->b:J

    .line 150
    .line 151
    sub-long v13, v2, v13

    .line 152
    .line 153
    long-to-int v4, v13

    .line 154
    sub-int/2addr v1, v4

    .line 155
    aput v1, v12, v7

    .line 156
    .line 157
    :cond_8
    iget-object v1, v0, Ld4/l0$b;->c:Lg3/b0$a;

    .line 158
    .line 159
    invoke-static {v1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lg3/b0$a;

    .line 164
    .line 165
    iget-object v13, v1, Lg3/b0$a;->b:[B

    .line 166
    .line 167
    iget-object v14, v9, Le3/c;->a:[B

    .line 168
    .line 169
    iget v15, v1, Lg3/b0$a;->a:I

    .line 170
    .line 171
    iget v4, v1, Lg3/b0$a;->c:I

    .line 172
    .line 173
    iget v1, v1, Lg3/b0$a;->d:I

    .line 174
    .line 175
    move/from16 v16, v4

    .line 176
    .line 177
    move/from16 v17, v1

    .line 178
    .line 179
    invoke-virtual/range {v9 .. v17}, Le3/c;->c(I[I[I[B[BIII)V

    .line 180
    .line 181
    .line 182
    iget-wide v6, v0, Ld4/l0$b;->b:J

    .line 183
    .line 184
    sub-long/2addr v2, v6

    .line 185
    long-to-int v1, v2

    .line 186
    int-to-long v2, v1

    .line 187
    add-long/2addr v6, v2

    .line 188
    iput-wide v6, v0, Ld4/l0$b;->b:J

    .line 189
    .line 190
    iget v2, v0, Ld4/l0$b;->a:I

    .line 191
    .line 192
    sub-int/2addr v2, v1

    .line 193
    iput v2, v0, Ld4/l0$b;->a:I

    .line 194
    .line 195
    return-object v5
.end method

.method private static l(Ld4/j0$a;Le3/g;Ld4/l0$b;Ly4/e0;)Ld4/j0$a;
    .locals 5

    .line 1
    invoke-virtual {p1}, Le3/g;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Ld4/j0;->k(Ld4/j0$a;Le3/g;Ld4/l0$b;Ly4/e0;)Ld4/j0$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Le3/a;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p3, v0}, Ly4/e0;->P(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p2, Ld4/l0$b;->b:J

    .line 22
    .line 23
    invoke-virtual {p3}, Ly4/e0;->e()[B

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {p0, v1, v2, v3, v0}, Ld4/j0;->j(Ld4/j0$a;J[BI)Ld4/j0$a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p3}, Ly4/e0;->K()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-wide v1, p2, Ld4/l0$b;->b:J

    .line 36
    .line 37
    const-wide/16 v3, 0x4

    .line 38
    .line 39
    add-long/2addr v1, v3

    .line 40
    iput-wide v1, p2, Ld4/l0$b;->b:J

    .line 41
    .line 42
    iget v1, p2, Ld4/l0$b;->a:I

    .line 43
    .line 44
    sub-int/2addr v1, v0

    .line 45
    iput v1, p2, Ld4/l0$b;->a:I

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Le3/g;->w(I)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, p2, Ld4/l0$b;->b:J

    .line 51
    .line 52
    iget-object v2, p1, Le3/g;->c:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-static {p0, v0, v1, v2, p3}, Ld4/j0;->i(Ld4/j0$a;JLjava/nio/ByteBuffer;I)Ld4/j0$a;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-wide v0, p2, Ld4/l0$b;->b:J

    .line 59
    .line 60
    int-to-long v2, p3

    .line 61
    add-long/2addr v0, v2

    .line 62
    iput-wide v0, p2, Ld4/l0$b;->b:J

    .line 63
    .line 64
    iget v0, p2, Ld4/l0$b;->a:I

    .line 65
    .line 66
    sub-int/2addr v0, p3

    .line 67
    iput v0, p2, Ld4/l0$b;->a:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Le3/g;->A(I)V

    .line 70
    .line 71
    .line 72
    iget-wide v0, p2, Ld4/l0$b;->b:J

    .line 73
    .line 74
    iget-object p1, p1, Le3/g;->f:Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    iget p2, p2, Ld4/l0$b;->a:I

    .line 77
    .line 78
    invoke-static {p0, v0, v1, p1, p2}, Ld4/j0;->i(Ld4/j0$a;JLjava/nio/ByteBuffer;I)Ld4/j0$a;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget p3, p2, Ld4/l0$b;->a:I

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Le3/g;->w(I)V

    .line 86
    .line 87
    .line 88
    iget-wide v0, p2, Ld4/l0$b;->b:J

    .line 89
    .line 90
    iget-object p1, p1, Le3/g;->c:Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    iget p2, p2, Ld4/l0$b;->a:I

    .line 93
    .line 94
    invoke-static {p0, v0, v1, p1, p2}, Ld4/j0;->i(Ld4/j0$a;JLjava/nio/ByteBuffer;I)Ld4/j0$a;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_0
    return-object p0
.end method


# virtual methods
.method public b(J)V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 9
    .line 10
    iget-wide v1, v0, Ld4/j0$a;->b:J

    .line 11
    .line 12
    cmp-long v1, p1, v1

    .line 13
    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Ld4/j0;->a:Lx4/b;

    .line 17
    .line 18
    iget-object v0, v0, Ld4/j0$a;->c:Lx4/a;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lx4/b;->b(Lx4/a;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 24
    .line 25
    invoke-virtual {v0}, Ld4/j0$a;->b()Ld4/j0$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 33
    .line 34
    iget-wide p1, p1, Ld4/j0$a;->a:J

    .line 35
    .line 36
    iget-wide v1, v0, Ld4/j0$a;->a:J

    .line 37
    .line 38
    cmp-long p1, p1, v1

    .line 39
    .line 40
    if-gez p1, :cond_2

    .line 41
    .line 42
    iput-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Ld4/j0;->g:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

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
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Ld4/j0;->g:J

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v0, p1, v0

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 22
    .line 23
    iget-wide v1, v0, Ld4/j0$a;->a:J

    .line 24
    .line 25
    cmp-long p1, p1, v1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    iget-wide p1, p0, Ld4/j0;->g:J

    .line 31
    .line 32
    iget-wide v1, v0, Ld4/j0$a;->b:J

    .line 33
    .line 34
    cmp-long p1, p1, v1

    .line 35
    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, v0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 42
    .line 43
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ld4/j0$a;

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ld4/j0;->a(Ld4/j0$a;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Ld4/j0$a;

    .line 53
    .line 54
    iget-wide v1, v0, Ld4/j0$a;->b:J

    .line 55
    .line 56
    iget v3, p0, Ld4/j0;->b:I

    .line 57
    .line 58
    invoke-direct {p2, v1, v2, v3}, Ld4/j0$a;-><init>(JI)V

    .line 59
    .line 60
    .line 61
    iput-object p2, v0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 62
    .line 63
    iget-wide v1, p0, Ld4/j0;->g:J

    .line 64
    .line 65
    iget-wide v3, v0, Ld4/j0$a;->b:J

    .line 66
    .line 67
    cmp-long v1, v1, v3

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    move-object v0, p2

    .line 72
    :cond_3
    iput-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 73
    .line 74
    iget-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 75
    .line 76
    if-ne v0, p1, :cond_5

    .line 77
    .line 78
    iput-object p2, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_2
    iget-object p1, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ld4/j0;->a(Ld4/j0$a;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ld4/j0$a;

    .line 87
    .line 88
    iget-wide v0, p0, Ld4/j0;->g:J

    .line 89
    .line 90
    iget p2, p0, Ld4/j0;->b:I

    .line 91
    .line 92
    invoke-direct {p1, v0, v1, p2}, Ld4/j0$a;-><init>(JI)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 96
    .line 97
    iput-object p1, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 98
    .line 99
    iput-object p1, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 100
    .line 101
    :cond_5
    :goto_3
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/j0;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f(Le3/g;Ld4/l0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/j0;->c:Ly4/e0;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Ld4/j0;->l(Ld4/j0$a;Le3/g;Ld4/l0$b;Ly4/e0;)Ld4/j0$a;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(Le3/g;Ld4/l0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/j0;->c:Ly4/e0;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Ld4/j0;->l(Ld4/j0$a;Le3/g;Ld4/l0$b;Ly4/e0;)Ld4/j0$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 10
    .line 11
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ld4/j0;->a(Ld4/j0$a;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 7
    .line 8
    iget v1, p0, Ld4/j0;->b:I

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Ld4/j0$a;->d(JI)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 16
    .line 17
    iput-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 18
    .line 19
    iput-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 20
    .line 21
    iput-wide v2, p0, Ld4/j0;->g:J

    .line 22
    .line 23
    iget-object v0, p0, Ld4/j0;->a:Lx4/b;

    .line 24
    .line 25
    invoke-interface {v0}, Lx4/b;->c()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/j0;->d:Ld4/j0$a;

    .line 2
    .line 3
    iput-object v0, p0, Ld4/j0;->e:Ld4/j0$a;

    .line 4
    .line 5
    return-void
.end method

.method public p(Lx4/h;IZ)I
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Ld4/j0;->h(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 6
    .line 7
    iget-object v1, v0, Ld4/j0$a;->c:Lx4/a;

    .line 8
    .line 9
    iget-object v1, v1, Lx4/a;->a:[B

    .line 10
    .line 11
    iget-wide v2, p0, Ld4/j0;->g:J

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Ld4/j0$a;->e(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p1, v1, v0, p2}, Lx4/h;->read([BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, -0x1

    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    return p2

    .line 27
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Ld4/j0;->g(I)V

    .line 34
    .line 35
    .line 36
    return p1
.end method

.method public q(Ly4/e0;I)V
    .locals 5

    .line 1
    :goto_0
    if-lez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ld4/j0;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ld4/j0;->f:Ld4/j0$a;

    .line 8
    .line 9
    iget-object v2, v1, Ld4/j0$a;->c:Lx4/a;

    .line 10
    .line 11
    iget-object v2, v2, Lx4/a;->a:[B

    .line 12
    .line 13
    iget-wide v3, p0, Ld4/j0;->g:J

    .line 14
    .line 15
    invoke-virtual {v1, v3, v4}, Ld4/j0$a;->e(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v2, v1, v0}, Ly4/e0;->l([BII)V

    .line 20
    .line 21
    .line 22
    sub-int/2addr p2, v0

    .line 23
    invoke-direct {p0, v0}, Ld4/j0;->g(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
