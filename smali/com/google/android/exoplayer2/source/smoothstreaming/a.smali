.class public Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;
    }
.end annotation


# instance fields
.field private final a:Lx4/f0;

.field private final b:I

.field private final c:[Lf4/g;

.field private final d:Lx4/j;

.field private e:Lw4/y;

.field private f:Ll4/a;

.field private g:I

.field private h:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lx4/f0;Ll4/a;ILw4/y;Lx4/j;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Lx4/f0;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 17
    .line 18
    iput v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 19
    .line 20
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Lx4/j;

    .line 25
    .line 26
    iget-object v4, v1, Ll4/a;->f:[Ll4/a$b;

    .line 27
    .line 28
    aget-object v2, v4, v2

    .line 29
    .line 30
    invoke-interface/range {p4 .. p4}, Lw4/b0;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    new-array v4, v4, [Lf4/g;

    .line 35
    .line 36
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lf4/g;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lf4/g;

    .line 40
    .line 41
    array-length v6, v6

    .line 42
    if-ge v5, v6, :cond_2

    .line 43
    .line 44
    invoke-interface {v3, v5}, Lw4/b0;->j(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    iget-object v6, v2, Ll4/a$b;->j:[Lb3/x1;

    .line 49
    .line 50
    aget-object v6, v6, v8

    .line 51
    .line 52
    iget-object v7, v6, Lb3/x1;->o:Lf3/m;

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    iget-object v7, v1, Ll4/a;->e:Ll4/a$a;

    .line 58
    .line 59
    invoke-static {v7}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ll4/a$a;

    .line 64
    .line 65
    iget-object v7, v7, Ll4/a$a;->c:[Lo3/p;

    .line 66
    .line 67
    move-object/from16 v18, v7

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    move-object/from16 v18, v14

    .line 71
    .line 72
    :goto_1
    iget v9, v2, Ll4/a$b;->a:I

    .line 73
    .line 74
    const/4 v7, 0x2

    .line 75
    if-ne v9, v7, :cond_1

    .line 76
    .line 77
    const/4 v7, 0x4

    .line 78
    move/from16 v19, v7

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const/16 v19, 0x0

    .line 82
    .line 83
    :goto_2
    new-instance v15, Lo3/o;

    .line 84
    .line 85
    iget-wide v10, v2, Ll4/a$b;->c:J

    .line 86
    .line 87
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    move/from16 p3, v5

    .line 93
    .line 94
    iget-wide v4, v1, Ll4/a;->g:J

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/16 v21, 0x0

    .line 101
    .line 102
    move-object v7, v15

    .line 103
    move-object/from16 v22, v15

    .line 104
    .line 105
    move-wide v14, v4

    .line 106
    move-object/from16 v16, v6

    .line 107
    .line 108
    invoke-direct/range {v7 .. v21}, Lo3/o;-><init>(IIJJJLb3/x1;I[Lo3/p;I[J[J)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Lo3/g;

    .line 112
    .line 113
    const/4 v5, 0x3

    .line 114
    move-object/from16 v7, v22

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    invoke-direct {v4, v5, v8, v7}, Lo3/g;-><init>(ILy4/m0;Lo3/o;)V

    .line 118
    .line 119
    .line 120
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lf4/g;

    .line 121
    .line 122
    new-instance v7, Lf4/e;

    .line 123
    .line 124
    iget v8, v2, Ll4/a$b;->a:I

    .line 125
    .line 126
    invoke-direct {v7, v4, v8, v6}, Lf4/e;-><init>(Lg3/k;ILb3/x1;)V

    .line 127
    .line 128
    .line 129
    aput-object v7, v5, p3

    .line 130
    .line 131
    add-int/lit8 v5, p3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    return-void
.end method

.method private static k(Lb3/x1;Lx4/j;Landroid/net/Uri;IJJJILjava/lang/Object;Lf4/g;)Lf4/n;
    .locals 21

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v6, p4

    .line 6
    .line 7
    move-wide/from16 v17, p4

    .line 8
    .line 9
    move-wide/from16 v8, p6

    .line 10
    .line 11
    move-wide/from16 v10, p8

    .line 12
    .line 13
    move/from16 v4, p10

    .line 14
    .line 15
    move-object/from16 v5, p11

    .line 16
    .line 17
    move-object/from16 v19, p12

    .line 18
    .line 19
    new-instance v0, Lx4/n;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    move-object/from16 v12, p2

    .line 23
    .line 24
    invoke-direct {v0, v12}, Lx4/n;-><init>(Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    new-instance v20, Lf4/k;

    .line 28
    .line 29
    move-object/from16 v0, v20

    .line 30
    .line 31
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    move/from16 v14, p3

    .line 37
    .line 38
    int-to-long v14, v14

    .line 39
    const/16 v16, 0x1

    .line 40
    .line 41
    invoke-direct/range {v0 .. v19}, Lf4/k;-><init>(Lx4/j;Lx4/n;Lb3/x1;ILjava/lang/Object;JJJJJIJLf4/g;)V

    .line 42
    .line 43
    .line 44
    return-object v20
.end method

.method private l(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 2
    .line 3
    iget-boolean v1, v0, Ll4/a;->d:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide p1

    .line 13
    :cond_0
    iget-object v0, v0, Ll4/a;->f:[Ll4/a$b;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    iget v1, v0, Ll4/a$b;->k:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ll4/a$b;->e(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v0, v1}, Ll4/a$b;->c(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    add-long/2addr v2, v0

    .line 32
    sub-long/2addr v2, p1

    .line 33
    return-wide v2
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Lx4/f0;

    .line 6
    .line 7
    invoke-interface {v0}, Lx4/f0;->a()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public b(Lw4/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 2
    .line 3
    return-void
.end method

.method public d(JLf4/f;Ljava/util/List;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lw4/y;->s(JLf4/f;Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public e(JLb3/x3;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ll4/a;->f:[Ll4/a$b;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 6
    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ll4/a$b;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ll4/a$b;->e(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    cmp-long v2, v5, p1

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    iget v2, v0, Ll4/a$b;->k:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ll4/a$b;->e(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    move-wide v7, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-wide v7, v5

    .line 36
    :goto_0
    move-object v2, p3

    .line 37
    move-wide v3, p1

    .line 38
    invoke-virtual/range {v2 .. v8}, Lb3/x3;->a(JJJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    return-wide p1
.end method

.method public f(Lf4/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ll4/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ll4/a;->f:[Ll4/a$b;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 6
    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    iget v2, v0, Ll4/a$b;->k:I

    .line 10
    .line 11
    iget-object v3, p1, Ll4/a;->f:[Ll4/a$b;

    .line 12
    .line 13
    aget-object v1, v3, v1

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget v3, v1, Ll4/a$b;->k:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ll4/a$b;->e(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3}, Ll4/a$b;->c(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    add-long/2addr v4, v6

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v3}, Ll4/a$b;->e(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    cmp-long v1, v4, v6

    .line 39
    .line 40
    if-gtz v1, :cond_1

    .line 41
    .line 42
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 43
    .line 44
    add-int/2addr v0, v2

    .line 45
    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 49
    .line 50
    invoke-virtual {v0, v6, v7}, Ll4/a$b;->d(J)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 62
    .line 63
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 64
    .line 65
    return-void
.end method

.method public h(Lf4/f;ZLx4/d0$c;Lx4/d0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 2
    .line 3
    invoke-static {v0}, Lw4/g0;->c(Lw4/y;)Lx4/d0$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p4, v0, p3}, Lx4/d0;->b(Lx4/d0$a;Lx4/d0$c;)Lx4/d0$b;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget p2, p3, Lx4/d0$b;->a:I

    .line 16
    .line 17
    const/4 p4, 0x2

    .line 18
    if-ne p2, p4, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 21
    .line 22
    iget-object p1, p1, Lf4/f;->d:Lb3/x1;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Lw4/b0;->m(Lb3/x1;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-wide p3, p3, Lx4/d0$b;->b:J

    .line 29
    .line 30
    invoke-interface {p2, p1, p3, p4}, Lw4/y;->c(IJ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public i(JLjava/util/List;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 6
    .line 7
    invoke-interface {v0}, Lw4/b0;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Lw4/y;->k(JLjava/util/List;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final j(JJLjava/util/List;Lf4/h;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 13
    .line 14
    iget-object v5, v4, Ll4/a;->f:[Ll4/a$b;

    .line 15
    .line 16
    iget v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 17
    .line 18
    aget-object v5, v5, v6

    .line 19
    .line 20
    iget v6, v5, Ll4/a$b;->k:I

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    iget-boolean v1, v4, Ll4/a;->d:Z

    .line 25
    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    iput-boolean v1, v3, Lf4/h;->b:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v5, v1, v2}, Ll4/a$b;->d(J)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    move-object/from16 v15, p5

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    move-object/from16 v15, p5

    .line 51
    .line 52
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lf4/n;

    .line 57
    .line 58
    invoke-virtual {v4}, Lf4/n;->g()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    iget v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 63
    .line 64
    int-to-long v8, v4

    .line 65
    sub-long/2addr v6, v8

    .line 66
    long-to-int v4, v6

    .line 67
    if-gez v4, :cond_3

    .line 68
    .line 69
    new-instance v1, Ld4/b;

    .line 70
    .line 71
    invoke-direct {v1}, Ld4/b;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    :goto_0
    iget v6, v5, Ll4/a$b;->k:I

    .line 78
    .line 79
    if-lt v4, v6, :cond_4

    .line 80
    .line 81
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ll4/a;

    .line 82
    .line 83
    iget-boolean v1, v1, Ll4/a;->d:Z

    .line 84
    .line 85
    xor-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    iput-boolean v1, v3, Lf4/h;->b:Z

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    sub-long v9, v1, p1

    .line 91
    .line 92
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->l(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 97
    .line 98
    invoke-interface {v6}, Lw4/b0;->length()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    new-array v14, v6, [Lf4/o;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    :goto_1
    if-ge v7, v6, :cond_5

    .line 106
    .line 107
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 108
    .line 109
    invoke-interface {v8, v7}, Lw4/b0;->j(I)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    new-instance v13, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;

    .line 114
    .line 115
    invoke-direct {v13, v5, v8, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;-><init>(Ll4/a$b;II)V

    .line 116
    .line 117
    .line 118
    aput-object v13, v14, v7

    .line 119
    .line 120
    add-int/lit8 v7, v7, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 124
    .line 125
    move-wide/from16 v7, p1

    .line 126
    .line 127
    move-object/from16 v13, p5

    .line 128
    .line 129
    invoke-interface/range {v6 .. v14}, Lw4/y;->g(JJJLjava/util/List;[Lf4/o;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ll4/a$b;->e(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v19

    .line 136
    invoke-virtual {v5, v4}, Ll4/a$b;->c(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v6

    .line 140
    add-long v21, v19, v6

    .line 141
    .line 142
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    :goto_2
    move-wide/from16 v23, v1

    .line 155
    .line 156
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 157
    .line 158
    add-int v18, v4, v1

    .line 159
    .line 160
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 161
    .line 162
    invoke-interface {v1}, Lw4/y;->b()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lf4/g;

    .line 167
    .line 168
    aget-object v27, v2, v1

    .line 169
    .line 170
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 171
    .line 172
    invoke-interface {v2, v1}, Lw4/b0;->j(I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v5, v1, v4}, Ll4/a$b;->a(II)Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object v17

    .line 180
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 181
    .line 182
    invoke-interface {v1}, Lw4/y;->n()Lb3/x1;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Lx4/j;

    .line 187
    .line 188
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 189
    .line 190
    invoke-interface {v2}, Lw4/y;->o()I

    .line 191
    .line 192
    .line 193
    move-result v25

    .line 194
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lw4/y;

    .line 195
    .line 196
    invoke-interface {v2}, Lw4/y;->q()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v26

    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    invoke-static/range {v15 .. v27}, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->k(Lb3/x1;Lx4/j;Landroid/net/Uri;IJJJILjava/lang/Object;Lf4/g;)Lf4/n;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-object v1, v3, Lf4/h;->a:Lf4/f;

    .line 207
    .line 208
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lf4/g;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lf4/g;->release()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method
