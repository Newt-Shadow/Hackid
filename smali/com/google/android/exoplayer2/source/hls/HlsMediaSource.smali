.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Ld4/a;
.source "SourceFile"

# interfaces
.implements Lj4/l$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Li4/h;

.field private final i:Lb3/f2$h;

.field private final j:Li4/g;

.field private final k:Ld4/h;

.field private final l:Lf3/v;

.field private final m:Lx4/d0;

.field private final n:Z

.field private final o:I

.field private final p:Z

.field private final q:Lj4/l;

.field private final r:J

.field private final s:Lb3/f2;

.field private t:Lb3/f2$g;

.field private u:Lx4/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.hls"

    .line 2
    .line 3
    invoke-static {v0}, Lb3/u1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lb3/f2;Li4/g;Li4/h;Ld4/h;Lf3/v;Lx4/d0;Lj4/l;JZIZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ld4/a;-><init>()V

    .line 3
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f2$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lb3/f2$h;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lb3/f2;

    .line 5
    iget-object p1, p1, Lb3/f2;->d:Lb3/f2$g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Li4/g;

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Li4/h;

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Ld4/h;

    .line 9
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lf3/v;

    .line 10
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lx4/d0;

    .line 11
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 12
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    .line 13
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    .line 14
    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    .line 15
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2;Li4/g;Li4/h;Ld4/h;Lf3/v;Lx4/d0;Lj4/l;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lb3/f2;Li4/g;Li4/h;Ld4/h;Lf3/v;Lx4/d0;Lj4/l;JZIZ)V

    return-void
.end method

.method private F(Lj4/g;JJLcom/google/android/exoplayer2/source/hls/a;)Ld4/p0;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v1, Lj4/g;->h:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 8
    .line 9
    invoke-interface {v4}, Lj4/l;->e()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    sub-long v17, v2, v4

    .line 14
    .line 15
    iget-boolean v2, v1, Lj4/g;->o:Z

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-wide v5, v1, Lj4/g;->u:J

    .line 25
    .line 26
    add-long v5, v17, v5

    .line 27
    .line 28
    move-wide v13, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-wide v13, v3

    .line 31
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J(Lj4/g;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 36
    .line 37
    iget-wide v5, v2, Lb3/f2$g;->a:J

    .line 38
    .line 39
    cmp-long v2, v5, v3

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v5, v6}, Ly4/q0;->A0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->L(Lj4/g;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    :goto_1
    move-wide v5, v2

    .line 53
    iget-wide v2, v1, Lj4/g;->u:J

    .line 54
    .line 55
    add-long v9, v2, v11

    .line 56
    .line 57
    move-wide v7, v11

    .line 58
    invoke-static/range {v5 .. v10}, Ly4/q0;->r(JJJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->M(Lj4/g;J)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->K(Lj4/g;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v19

    .line 69
    iget v2, v1, Lj4/g;->d:I

    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    const/4 v4, 0x1

    .line 73
    if-ne v2, v3, :cond_2

    .line 74
    .line 75
    iget-boolean v2, v1, Lj4/g;->f:Z

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    move/from16 v23, v4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 83
    move/from16 v23, v2

    .line 84
    .line 85
    :goto_2
    new-instance v2, Ld4/p0;

    .line 86
    .line 87
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget-wide v9, v1, Lj4/g;->u:J

    .line 93
    .line 94
    const/16 v21, 0x1

    .line 95
    .line 96
    iget-boolean v1, v1, Lj4/g;->o:Z

    .line 97
    .line 98
    xor-int/lit8 v22, v1, 0x1

    .line 99
    .line 100
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lb3/f2;

    .line 101
    .line 102
    move-object/from16 v25, v1

    .line 103
    .line 104
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 105
    .line 106
    move-object/from16 v26, v1

    .line 107
    .line 108
    move-object v6, v2

    .line 109
    move-wide/from16 v7, p2

    .line 110
    .line 111
    move-wide v3, v9

    .line 112
    move-wide/from16 v9, p4

    .line 113
    .line 114
    move-wide v15, v3

    .line 115
    move-object/from16 v24, p6

    .line 116
    .line 117
    invoke-direct/range {v6 .. v26}, Ld4/p0;-><init>(JJJJJJJZZZLjava/lang/Object;Lb3/f2;Lb3/f2$g;)V

    .line 118
    .line 119
    .line 120
    return-object v2
.end method

.method private G(Lj4/g;JJLcom/google/android/exoplayer2/source/hls/a;)Ld4/p0;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-wide v1, v0, Lj4/g;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Lj4/g;->r:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v1, v0, Lj4/g;->g:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-wide v1, v0, Lj4/g;->e:J

    .line 28
    .line 29
    iget-wide v3, v0, Lj4/g;->u:J

    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, v0, Lj4/g;->r:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I(Ljava/util/List;J)Lj4/g$d;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v1, v1, Lj4/g$e;->e:J

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_0
    iget-wide v1, v0, Lj4/g;->e:J

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    .line 49
    .line 50
    :goto_2
    move-wide/from16 v16, v1

    .line 51
    .line 52
    new-instance v1, Ld4/p0;

    .line 53
    .line 54
    move-object v3, v1

    .line 55
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    iget-wide v10, v0, Lj4/g;->u:J

    .line 61
    .line 62
    move-wide v12, v10

    .line 63
    const-wide/16 v14, 0x0

    .line 64
    .line 65
    const/16 v18, 0x1

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/16 v20, 0x1

    .line 70
    .line 71
    move-object/from16 v0, p0

    .line 72
    .line 73
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lb3/f2;

    .line 74
    .line 75
    move-object/from16 v22, v2

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    move-wide/from16 v4, p2

    .line 80
    .line 81
    move-wide/from16 v6, p4

    .line 82
    .line 83
    move-object/from16 v21, p6

    .line 84
    .line 85
    invoke-direct/range {v3 .. v23}, Ld4/p0;-><init>(JJJJJJJZZZLjava/lang/Object;Lb3/f2;Lb3/f2$g;)V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method private static H(Ljava/util/List;J)Lj4/g$b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lj4/g$b;

    .line 14
    .line 15
    iget-wide v3, v2, Lj4/g$e;->e:J

    .line 16
    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-gtz v5, :cond_0

    .line 20
    .line 21
    iget-boolean v5, v2, Lj4/g$b;->l:Z

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    cmp-long v2, v3, p1

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static I(Ljava/util/List;J)Lj4/g$d;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p1, p2, p2}, Ly4/q0;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lj4/g$d;

    .line 15
    .line 16
    return-object p0
.end method

.method private J(Lj4/g;)J
    .locals 4

    .line 1
    iget-boolean v0, p1, Lj4/g;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Ly4/q0;->a0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ly4/q0;->A0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lj4/g;->e()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method private K(Lj4/g;J)J
    .locals 4

    .line 1
    iget-wide v0, p1, Lj4/g;->e:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p1, Lj4/g;->u:J

    .line 14
    .line 15
    add-long/2addr v0, p2

    .line 16
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 17
    .line 18
    iget-wide p2, p2, Lb3/f2$g;->a:J

    .line 19
    .line 20
    invoke-static {p2, p3}, Ly4/q0;->A0(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    sub-long/2addr v0, p2

    .line 25
    :goto_0
    iget-boolean p2, p1, Lj4/g;->g:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    return-wide v0

    .line 30
    :cond_1
    iget-object p2, p1, Lj4/g;->s:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H(Ljava/util/List;J)Lj4/g$b;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-wide p1, p2, Lj4/g$e;->e:J

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_2
    iget-object p2, p1, Lj4/g;->r:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    const-wide/16 p1, 0x0

    .line 50
    .line 51
    return-wide p1

    .line 52
    :cond_3
    iget-object p1, p1, Lj4/g;->r:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I(Ljava/util/List;J)Lj4/g$d;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p1, Lj4/g$d;->m:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H(Ljava/util/List;J)Lj4/g$b;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-wide p1, p2, Lj4/g$e;->e:J

    .line 67
    .line 68
    return-wide p1

    .line 69
    :cond_4
    iget-wide p1, p1, Lj4/g$e;->e:J

    .line 70
    .line 71
    return-wide p1
.end method

.method private static L(Lj4/g;J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lj4/g;->v:Lj4/g$f;

    .line 2
    .line 3
    iget-wide v1, p0, Lj4/g;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v3, p0, Lj4/g;->u:J

    .line 15
    .line 16
    sub-long/2addr v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v1, v0, Lj4/g$f;->d:J

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-wide v5, p0, Lj4/g;->n:J

    .line 25
    .line 26
    cmp-long v5, v5, v3

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-wide v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v0, v0, Lj4/g$f;->c:J

    .line 33
    .line 34
    cmp-long v2, v0, v3

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    move-wide v3, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v0, 0x3

    .line 41
    .line 42
    iget-wide v2, p0, Lj4/g;->m:J

    .line 43
    .line 44
    mul-long v3, v2, v0

    .line 45
    .line 46
    :goto_0
    add-long/2addr v3, p1

    .line 47
    return-wide v3
.end method

.method private M(Lj4/g;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lb3/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lb3/f2;->d:Lb3/f2$g;

    .line 4
    .line 5
    iget v1, v0, Lb3/f2$g;->d:F

    .line 6
    .line 7
    const v2, -0x800001

    .line 8
    .line 9
    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget v0, v0, Lb3/f2$g;->e:F

    .line 15
    .line 16
    cmpl-float v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lj4/g;->v:Lj4/g$f;

    .line 21
    .line 22
    iget-wide v0, p1, Lj4/g$f;->c:J

    .line 23
    .line 24
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-wide v0, p1, Lj4/g$f;->d:J

    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    new-instance v0, Lb3/f2$g$a;

    .line 43
    .line 44
    invoke-direct {v0}, Lb3/f2$g$a;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Ly4/q0;->X0(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    invoke-virtual {v0, p2, p3}, Lb3/f2$g$a;->k(J)Lb3/f2$g$a;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/high16 p3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    move v0, p3

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 62
    .line 63
    iget v0, v0, Lb3/f2$g;->d:F

    .line 64
    .line 65
    :goto_1
    invoke-virtual {p2, v0}, Lb3/f2$g$a;->j(F)Lb3/f2$g$a;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 73
    .line 74
    iget p3, p1, Lb3/f2$g;->e:F

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p2, p3}, Lb3/f2$g$a;->h(F)Lb3/f2$g$a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lb3/f2$g$a;->f()Lb3/f2$g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lb3/f2$g;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method protected C(Lx4/m0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lx4/m0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lf3/v;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Looper;

    .line 14
    .line 15
    invoke-virtual {p0}, Ld4/a;->A()Lc3/t3;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v0, v1}, Lf3/v;->d(Landroid/os/Looper;Lc3/t3;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lf3/v;

    .line 23
    .line 24
    invoke-interface {p1}, Lf3/v;->b()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lb3/f2$h;

    .line 35
    .line 36
    iget-object v1, v1, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-interface {v0, v1, p1, p0}, Lj4/l;->a(Landroid/net/Uri;Ld4/a0$a;Lj4/l$e;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lj4/l;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lf3/v;

    .line 7
    .line 8
    invoke-interface {v0}, Lf3/v;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(Ld4/t$b;Lx4/b;J)Ld4/r;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    invoke-virtual/range {p0 .. p1}, Ld4/a;->u(Ld4/t$b;)Lf3/u$a;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    new-instance v16, Li4/k;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Li4/h;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Li4/g;

    .line 18
    .line 19
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lx4/m0;

    .line 20
    .line 21
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lf3/v;

    .line 22
    .line 23
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lx4/d0;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Ld4/h;

    .line 26
    .line 27
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    .line 28
    .line 29
    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    .line 30
    .line 31
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Ld4/a;->A()Lc3/t3;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    move-object/from16 v1, v16

    .line 38
    .line 39
    move-object/from16 v10, p2

    .line 40
    .line 41
    invoke-direct/range {v1 .. v15}, Li4/k;-><init>(Li4/h;Lj4/l;Li4/g;Lx4/m0;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;Lx4/b;Ld4/h;ZIZLc3/t3;)V

    .line 42
    .line 43
    .line 44
    return-object v16
.end method

.method public g(Ld4/r;)V
    .locals 0

    .line 1
    check-cast p1, Li4/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Li4/k;->A()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lb3/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lb3/f2;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lj4/l;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lj4/g;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lj4/g;->p:Z

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v3, p1, Lj4/g;->h:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Ly4/q0;->X0(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    move-wide v9, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v9, v1

    .line 19
    :goto_0
    iget v0, p1, Lj4/g;->d:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-wide v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move-wide v7, v9

    .line 31
    :goto_2
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/a;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 34
    .line 35
    invoke-interface {v0}, Lj4/l;->g()Lj4/h;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lj4/h;

    .line 44
    .line 45
    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/a;-><init>(Lj4/h;Lj4/g;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lj4/l;

    .line 49
    .line 50
    invoke-interface {v0}, Lj4/l;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move-object v5, p0

    .line 57
    move-object v6, p1

    .line 58
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->F(Lj4/g;JJLcom/google/android/exoplayer2/source/hls/a;)Ld4/p0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move-object v5, p0

    .line 64
    move-object v6, p1

    .line 65
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G(Lj4/g;JJLcom/google/android/exoplayer2/source/hls/a;)Ld4/p0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_3
    invoke-virtual {p0, p1}, Ld4/a;->D(Lb3/g4;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
