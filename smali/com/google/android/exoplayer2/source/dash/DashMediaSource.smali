.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Ld4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field private A:Lx4/e0;

.field private B:Lx4/m0;

.field private C:Ljava/io/IOException;

.field private D:Landroid/os/Handler;

.field private E:Lb3/f2$g;

.field private F:Landroid/net/Uri;

.field private G:Landroid/net/Uri;

.field private H:Lh4/c;

.field private I:Z

.field private J:J

.field private K:J

.field private L:J

.field private M:I

.field private N:J

.field private O:I

.field private final h:Lb3/f2;

.field private final i:Z

.field private final j:Lx4/j$a;

.field private final k:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final l:Ld4/h;

.field private final m:Lf3/v;

.field private final n:Lx4/d0;

.field private final o:Lg4/b;

.field private final p:J

.field private final q:Ld4/a0$a;

.field private final r:Lx4/g0$a;

.field private final s:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

.field private final t:Ljava/lang/Object;

.field private final u:Landroid/util/SparseArray;

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Lcom/google/android/exoplayer2/source/dash/e$b;

.field private final y:Lx4/f0;

.field private z:Lx4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.dash"

    .line 2
    .line 3
    invoke-static {v0}, Lb3/u1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lb3/f2;Lh4/c;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Ld4/h;Lf3/v;Lx4/d0;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ld4/a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 4
    iget-object v0, p1, Lb3/f2;->d:Lb3/f2$g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lb3/f2$g;

    .line 5
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f2$h;

    iget-object v0, v0, Lb3/f2$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 6
    iget-object p1, p1, Lb3/f2;->b:Lb3/f2$h;

    iget-object p1, p1, Lb3/f2$h;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lx4/j$a;

    .line 9
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lx4/g0$a;

    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 11
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf3/v;

    .line 12
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 13
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:J

    .line 14
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ld4/h;

    .line 15
    new-instance p1, Lg4/b;

    invoke-direct {p1}, Lg4/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lg4/b;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 16
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Z

    const/4 p4, 0x0

    .line 17
    invoke-virtual {p0, p4}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

    .line 18
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 19
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 20
    new-instance p5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    invoke-direct {p5, p0, p4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/google/android/exoplayer2/source/dash/e$b;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

    .line 22
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    if-eqz p3, :cond_1

    .line 23
    iget-boolean p2, p2, Lh4/c;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Ly4/a;->f(Z)V

    .line 24
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 25
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 26
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 27
    new-instance p1, Lx4/f0$a;

    invoke-direct {p1}, Lx4/f0$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lx4/f0;

    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    invoke-direct {p1, p0, p4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 29
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lx4/f0;

    .line 30
    new-instance p1, Lg4/d;

    invoke-direct {p1, p0}, Lg4/d;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 31
    new-instance p1, Lg4/e;

    invoke-direct {p1, p0}, Lg4/e;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lb3/f2;Lh4/c;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Ld4/h;Lf3/v;Lx4/d0;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lb3/f2;Lh4/c;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Ld4/h;Lf3/v;Lx4/d0;J)V

    return-void
.end method

.method public static synthetic F(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i0()V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R()V

    return-void
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lx4/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p0
.end method

.method private static L(Lh4/g;JJ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lh4/g;->b:J

    .line 8
    .line 9
    invoke-static {v5, v6}, Ly4/q0;->A0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P(Lh4/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const-wide v8, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    move v11, v10

    .line 24
    :goto_0
    iget-object v12, v0, Lh4/g;->c:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v12

    .line 30
    if-ge v11, v12, :cond_6

    .line 31
    .line 32
    iget-object v12, v0, Lh4/g;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lh4/a;

    .line 39
    .line 40
    iget-object v13, v12, Lh4/a;->c:Ljava/util/List;

    .line 41
    .line 42
    iget v12, v12, Lh4/a;->b:I

    .line 43
    .line 44
    const/4 v14, 0x1

    .line 45
    if-eq v12, v14, :cond_0

    .line 46
    .line 47
    const/4 v15, 0x2

    .line 48
    if-eq v12, v15, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move v14, v10

    .line 52
    :goto_1
    if-eqz v7, :cond_1

    .line 53
    .line 54
    if-nez v14, :cond_5

    .line 55
    .line 56
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Lh4/j;

    .line 68
    .line 69
    invoke-virtual {v12}, Lh4/j;->l()Lg4/f;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    if-nez v12, :cond_3

    .line 74
    .line 75
    add-long/2addr v5, v1

    .line 76
    return-wide v5

    .line 77
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lg4/f;->j(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v13

    .line 81
    const-wide/16 v15, 0x0

    .line 82
    .line 83
    cmp-long v15, v13, v15

    .line 84
    .line 85
    if-nez v15, :cond_4

    .line 86
    .line 87
    return-wide v5

    .line 88
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Lg4/f;->c(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v15

    .line 92
    add-long/2addr v15, v13

    .line 93
    const-wide/16 v13, 0x1

    .line 94
    .line 95
    sub-long v13, v15, v13

    .line 96
    .line 97
    invoke-interface {v12, v13, v14}, Lg4/f;->a(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    add-long/2addr v15, v5

    .line 102
    invoke-interface {v12, v13, v14, v1, v2}, Lg4/f;->b(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    add-long/2addr v12, v15

    .line 107
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    return-wide v8
.end method

.method private static M(Lh4/g;JJ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lh4/g;->b:J

    .line 8
    .line 9
    invoke-static {v5, v6}, Ly4/q0;->A0(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P(Lh4/g;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/4 v8, 0x0

    .line 18
    move-wide v10, v5

    .line 19
    move v9, v8

    .line 20
    :goto_0
    iget-object v12, v0, Lh4/g;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v12

    .line 26
    if-ge v9, v12, :cond_6

    .line 27
    .line 28
    iget-object v12, v0, Lh4/g;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    check-cast v12, Lh4/a;

    .line 35
    .line 36
    iget-object v13, v12, Lh4/a;->c:Ljava/util/List;

    .line 37
    .line 38
    iget v12, v12, Lh4/a;->b:I

    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    if-eq v12, v14, :cond_0

    .line 42
    .line 43
    const/4 v15, 0x2

    .line 44
    if-eq v12, v15, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v14, v8

    .line 48
    :goto_1
    if-eqz v7, :cond_1

    .line 49
    .line 50
    if-nez v14, :cond_5

    .line 51
    .line 52
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    check-cast v12, Lh4/j;

    .line 64
    .line 65
    invoke-virtual {v12}, Lh4/j;->l()Lg4/f;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    if-nez v12, :cond_3

    .line 70
    .line 71
    return-wide v5

    .line 72
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lg4/f;->j(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v13

    .line 76
    const-wide/16 v15, 0x0

    .line 77
    .line 78
    cmp-long v13, v13, v15

    .line 79
    .line 80
    if-nez v13, :cond_4

    .line 81
    .line 82
    return-wide v5

    .line 83
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Lg4/f;->c(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    invoke-interface {v12, v13, v14}, Lg4/f;->a(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v12

    .line 91
    add-long/2addr v12, v5

    .line 92
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-wide v10
.end method

.method private static N(Lh4/c;J)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lh4/c;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lh4/c;->d(I)Lh4/g;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-wide v3, v2, Lh4/g;->b:J

    .line 14
    .line 15
    invoke-static {v3, v4}, Ly4/q0;->A0(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v1}, Lh4/c;->g(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-static/range {p1 .. p2}, Ly4/q0;->A0(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    iget-wide v0, v0, Lh4/c;->a:J

    .line 28
    .line 29
    invoke-static {v0, v1}, Ly4/q0;->A0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v9, 0x1388

    .line 34
    .line 35
    invoke-static {v9, v10}, Ly4/q0;->A0(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    const/4 v11, 0x0

    .line 40
    move v12, v11

    .line 41
    :goto_0
    iget-object v13, v2, Lh4/g;->c:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-ge v12, v13, :cond_3

    .line 48
    .line 49
    iget-object v13, v2, Lh4/g;->c:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    check-cast v13, Lh4/a;

    .line 56
    .line 57
    iget-object v13, v13, Lh4/a;->c:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-eqz v14, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    check-cast v13, Lh4/j;

    .line 71
    .line 72
    invoke-virtual {v13}, Lh4/j;->l()Lg4/f;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    if-eqz v13, :cond_2

    .line 77
    .line 78
    add-long v14, v0, v3

    .line 79
    .line 80
    invoke-interface {v13, v5, v6, v7, v8}, Lg4/f;->d(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v16

    .line 84
    add-long v14, v14, v16

    .line 85
    .line 86
    sub-long/2addr v14, v7

    .line 87
    const-wide/32 v16, 0x186a0

    .line 88
    .line 89
    .line 90
    sub-long v18, v9, v16

    .line 91
    .line 92
    cmp-long v13, v14, v18

    .line 93
    .line 94
    if-ltz v13, :cond_1

    .line 95
    .line 96
    cmp-long v13, v14, v9

    .line 97
    .line 98
    if-lez v13, :cond_2

    .line 99
    .line 100
    add-long v16, v9, v16

    .line 101
    .line 102
    cmp-long v13, v14, v16

    .line 103
    .line 104
    if-gez v13, :cond_2

    .line 105
    .line 106
    :cond_1
    move-wide v9, v14

    .line 107
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const-wide/16 v0, 0x3e8

    .line 111
    .line 112
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 113
    .line 114
    invoke-static {v9, v10, v0, v1, v2}, Lp6/c;->a(JJLjava/math/RoundingMode;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    return-wide v0
.end method

.method private O()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    mul-int/lit16 v0, v0, 0x3e8

    .line 6
    .line 7
    const/16 v1, 0x1388

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    return-wide v0
.end method

.method private static P(Lh4/g;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lh4/g;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lh4/g;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lh4/a;

    .line 18
    .line 19
    iget v2, v2, Lh4/a;->b:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v2, v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return v3

    .line 32
    :cond_2
    return v0
.end method

.method private static Q(Lh4/g;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lh4/g;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lh4/g;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lh4/a;

    .line 18
    .line 19
    iget-object v2, v2, Lh4/a;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lh4/j;

    .line 26
    .line 27
    invoke-virtual {v2}, Lh4/j;->l()Lg4/f;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Lg4/f;->g()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    return v0
.end method

.method private synthetic R()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ly4/h0;->j(Lx4/e0;Ly4/h0$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private a0(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "DashMediaSource"

    .line 2
    .line 3
    const-string v1, "Failed to resolve time offset."

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private b0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private c0(Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 20
    .line 21
    if-lt v3, v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/google/android/exoplayer2/source/dash/b;

    .line 30
    .line 31
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 32
    .line 33
    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 34
    .line 35
    sub-int/2addr v3, v6

    .line 36
    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/source/dash/b;->L(Lh4/c;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lh4/c;->d(I)Lh4/g;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 49
    .line 50
    invoke-virtual {v3}, Lh4/c;->e()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    sub-int/2addr v3, v4

    .line 56
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Lh4/c;->d(I)Lh4/g;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 63
    .line 64
    invoke-virtual {v6, v3}, Lh4/c;->g(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 69
    .line 70
    invoke-static {v8, v9}, Ly4/q0;->a0(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    invoke-static {v8, v9}, Ly4/q0;->A0(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Lh4/c;->g(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    invoke-static {v2, v10, v11, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M(Lh4/g;JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L(Lh4/g;JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 93
    .line 94
    iget-boolean v3, v3, Lh4/c;->d:Z

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q(Lh4/g;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    .line 104
    move v3, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move v3, v1

    .line 107
    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 115
    .line 116
    iget-wide v14, v5, Lh4/c;->f:J

    .line 117
    .line 118
    cmp-long v5, v14, v12

    .line 119
    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-static {v14, v15}, Ly4/q0;->A0(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v14

    .line 126
    sub-long v14, v6, v14

    .line 127
    .line 128
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    :cond_3
    sub-long v5, v6, v10

    .line 133
    .line 134
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 135
    .line 136
    iget-boolean v14, v7, Lh4/c;->d:Z

    .line 137
    .line 138
    move-object/from16 v16, v2

    .line 139
    .line 140
    if-eqz v14, :cond_6

    .line 141
    .line 142
    iget-wide v1, v7, Lh4/c;->a:J

    .line 143
    .line 144
    cmp-long v1, v1, v12

    .line 145
    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    move v1, v4

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v1, 0x0

    .line 151
    :goto_2
    invoke-static {v1}, Ly4/a;->f(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 155
    .line 156
    iget-wide v1, v1, Lh4/c;->a:J

    .line 157
    .line 158
    invoke-static {v1, v2}, Ly4/q0;->A0(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    sub-long/2addr v8, v1

    .line 163
    sub-long/2addr v8, v10

    .line 164
    invoke-direct {v0, v8, v9, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j0(JJ)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 168
    .line 169
    iget-wide v1, v1, Lh4/c;->a:J

    .line 170
    .line 171
    invoke-static {v10, v11}, Ly4/q0;->X0(J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v14

    .line 175
    add-long/2addr v1, v14

    .line 176
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lb3/f2$g;

    .line 177
    .line 178
    iget-wide v14, v4, Lb3/f2$g;->a:J

    .line 179
    .line 180
    invoke-static {v14, v15}, Ly4/q0;->A0(J)J

    .line 181
    .line 182
    .line 183
    move-result-wide v14

    .line 184
    sub-long/2addr v8, v14

    .line 185
    const-wide/16 v14, 0x2

    .line 186
    .line 187
    div-long v14, v5, v14

    .line 188
    .line 189
    const-wide/32 v12, 0x4c4b40

    .line 190
    .line 191
    .line 192
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 193
    .line 194
    .line 195
    move-result-wide v12

    .line 196
    cmp-long v4, v8, v12

    .line 197
    .line 198
    move-wide/from16 v17, v1

    .line 199
    .line 200
    if-gez v4, :cond_5

    .line 201
    .line 202
    move-wide/from16 v26, v12

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_5
    move-wide/from16 v26, v8

    .line 206
    .line 207
    :goto_3
    move-object/from16 v1, v16

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_6
    move-object/from16 v1, v16

    .line 211
    .line 212
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    const-wide/16 v26, 0x0

    .line 218
    .line 219
    :goto_4
    iget-wide v1, v1, Lh4/g;->b:J

    .line 220
    .line 221
    invoke-static {v1, v2}, Ly4/q0;->A0(J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    sub-long v22, v10, v1

    .line 226
    .line 227
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;

    .line 228
    .line 229
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 230
    .line 231
    iget-wide v7, v2, Lh4/c;->a:J

    .line 232
    .line 233
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 234
    .line 235
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 236
    .line 237
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 238
    .line 239
    iget-boolean v12, v2, Lh4/c;->d:Z

    .line 240
    .line 241
    if-eqz v12, :cond_7

    .line 242
    .line 243
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lb3/f2$g;

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_7
    const/4 v12, 0x0

    .line 247
    :goto_5
    move-object/from16 v30, v12

    .line 248
    .line 249
    move-object v14, v1

    .line 250
    move-wide v15, v7

    .line 251
    move-wide/from16 v19, v9

    .line 252
    .line 253
    move/from16 v21, v4

    .line 254
    .line 255
    move-wide/from16 v24, v5

    .line 256
    .line 257
    move-object/from16 v28, v2

    .line 258
    .line 259
    move-object/from16 v29, v11

    .line 260
    .line 261
    invoke-direct/range {v14 .. v30}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;-><init>(JJJIJJJLh4/c;Lb3/f2;Lb3/f2$g;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ld4/a;->D(Lb3/g4;)V

    .line 265
    .line 266
    .line 267
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Z

    .line 268
    .line 269
    if-nez v1, :cond_b

    .line 270
    .line 271
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 272
    .line 273
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    .line 277
    .line 278
    if-eqz v3, :cond_8

    .line 279
    .line 280
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 281
    .line 282
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 283
    .line 284
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 285
    .line 286
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 287
    .line 288
    invoke-static {v4, v5}, Ly4/q0;->a0(J)J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N(Lh4/c;J)J

    .line 293
    .line 294
    .line 295
    move-result-wide v3

    .line 296
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    .line 298
    .line 299
    :cond_8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 300
    .line 301
    if-eqz v1, :cond_9

    .line 302
    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i0()V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_9
    if-eqz p1, :cond_b

    .line 308
    .line 309
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 310
    .line 311
    iget-boolean v2, v1, Lh4/c;->d:Z

    .line 312
    .line 313
    if-eqz v2, :cond_b

    .line 314
    .line 315
    iget-wide v1, v1, Lh4/c;->e:J

    .line 316
    .line 317
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    cmp-long v3, v1, v3

    .line 323
    .line 324
    if-eqz v3, :cond_b

    .line 325
    .line 326
    const-wide/16 v3, 0x0

    .line 327
    .line 328
    cmp-long v5, v1, v3

    .line 329
    .line 330
    if-nez v5, :cond_a

    .line 331
    .line 332
    const-wide/16 v1, 0x1388

    .line 333
    .line 334
    :cond_a
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    .line 335
    .line 336
    add-long/2addr v5, v1

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 338
    .line 339
    .line 340
    move-result-wide v1

    .line 341
    sub-long/2addr v5, v1

    .line 342
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 343
    .line 344
    .line 345
    move-result-wide v1

    .line 346
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g0(J)V

    .line 347
    .line 348
    .line 349
    :cond_b
    :goto_6
    return-void
.end method

.method private d0(Lh4/o;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lh4/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_7

    .line 10
    .line 11
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_6

    .line 27
    .line 28
    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 38
    .line 39
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 46
    .line 47
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string p1, "urn:mpeg:dash:utc:ntp:2014"

    .line 55
    .line 56
    invoke-static {v0, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    const-string p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 63
    .line 64
    invoke-static {v0, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string v0, "Unsupported UTC timing scheme"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0(Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S()V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f0(Lh4/o;Lx4/g0$a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;

    .line 97
    .line 98
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f0(Lh4/o;Lx4/g0$a;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0(Lh4/o;)V

    .line 106
    .line 107
    .line 108
    :goto_4
    return-void
.end method

.method private e0(Lh4/o;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p1, Lh4/o;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/q0;->H0(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0(J)V
    :try_end_0
    .catch Lb3/e3; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private f0(Lh4/o;Lx4/g0$a;)V
    .locals 3

    .line 1
    new-instance v0, Lx4/g0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lx4/j;

    .line 4
    .line 5
    iget-object p1, p1, Lh4/o;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-direct {v0, v1, p1, v2, p2}, Lx4/g0;-><init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h0(Lx4/g0;Lx4/e0$b;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private g0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private h0(Lx4/g0;Lx4/e0$b;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

    .line 8
    .line 9
    new-instance p3, Ld4/n;

    .line 10
    .line 11
    iget-wide v2, p1, Lx4/g0;->a:J

    .line 12
    .line 13
    iget-object v4, p1, Lx4/g0;->b:Lx4/n;

    .line 14
    .line 15
    move-object v1, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Ld4/n;-><init>(JLx4/n;J)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lx4/g0;->c:I

    .line 20
    .line 21
    invoke-virtual {p2, p3, p1}, Ld4/a0$a;->z(Ld4/n;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private i0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lx4/e0;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 37
    .line 38
    new-instance v0, Lx4/g0;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lx4/j;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lx4/g0$a;

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-direct {v0, v2, v1, v4, v3}, Lx4/g0;-><init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 51
    .line 52
    invoke-interface {v2, v4}, Lx4/d0;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h0(Lx4/g0;Lx4/e0$b;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v1
.end method

.method private j0(JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Ly4/q0;->X0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 8
    .line 9
    iget-object v1, v1, Lb3/f2;->d:Lb3/f2$g;

    .line 10
    .line 11
    iget-wide v1, v1, Lb3/f2$g;->c:J

    .line 12
    .line 13
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v3, v1, v7

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :goto_0
    move-wide v9, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 29
    .line 30
    iget-object v1, v1, Lh4/c;->j:Lh4/l;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-wide v1, v1, Lh4/l;->c:J

    .line 35
    .line 36
    cmp-long v3, v1, v7

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-wide v9, v5

    .line 46
    :goto_1
    sub-long v1, p1, p3

    .line 47
    .line 48
    invoke-static {v1, v2}, Ly4/q0;->X0(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    cmp-long v11, v1, v3

    .line 55
    .line 56
    if-gez v11, :cond_2

    .line 57
    .line 58
    cmp-long v11, v9, v3

    .line 59
    .line 60
    if-lez v11, :cond_2

    .line 61
    .line 62
    move-wide v1, v3

    .line 63
    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 64
    .line 65
    iget-wide v3, v3, Lh4/c;->c:J

    .line 66
    .line 67
    cmp-long v11, v3, v7

    .line 68
    .line 69
    if-eqz v11, :cond_3

    .line 70
    .line 71
    add-long/2addr v1, v3

    .line 72
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    :cond_3
    move-wide v3, v1

    .line 77
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 78
    .line 79
    iget-object v1, v1, Lb3/f2;->d:Lb3/f2$g;

    .line 80
    .line 81
    iget-wide v1, v1, Lb3/f2$g;->b:J

    .line 82
    .line 83
    cmp-long v11, v1, v7

    .line 84
    .line 85
    if-eqz v11, :cond_4

    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Ly4/q0;->r(JJJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 93
    .line 94
    iget-object v1, v1, Lh4/c;->j:Lh4/l;

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    iget-wide v1, v1, Lh4/l;->b:J

    .line 99
    .line 100
    cmp-long v11, v1, v7

    .line 101
    .line 102
    if-eqz v11, :cond_5

    .line 103
    .line 104
    invoke-static/range {v1 .. v6}, Ly4/q0;->r(JJJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    :cond_5
    :goto_2
    cmp-long v1, v3, v9

    .line 109
    .line 110
    if-lez v1, :cond_6

    .line 111
    .line 112
    move-wide v9, v3

    .line 113
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lb3/f2$g;

    .line 114
    .line 115
    iget-wide v1, v1, Lb3/f2$g;->a:J

    .line 116
    .line 117
    cmp-long v5, v1, v7

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 123
    .line 124
    iget-object v2, v1, Lh4/c;->j:Lh4/l;

    .line 125
    .line 126
    if-eqz v2, :cond_8

    .line 127
    .line 128
    iget-wide v5, v2, Lh4/l;->a:J

    .line 129
    .line 130
    cmp-long v2, v5, v7

    .line 131
    .line 132
    if-eqz v2, :cond_8

    .line 133
    .line 134
    move-wide v1, v5

    .line 135
    goto :goto_3

    .line 136
    :cond_8
    iget-wide v1, v1, Lh4/c;->g:J

    .line 137
    .line 138
    cmp-long v5, v1, v7

    .line 139
    .line 140
    if-eqz v5, :cond_9

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:J

    .line 144
    .line 145
    :goto_3
    cmp-long v5, v1, v3

    .line 146
    .line 147
    if-gez v5, :cond_a

    .line 148
    .line 149
    move-wide v1, v3

    .line 150
    :cond_a
    cmp-long v5, v1, v9

    .line 151
    .line 152
    if-lez v5, :cond_b

    .line 153
    .line 154
    const-wide/16 v1, 0x2

    .line 155
    .line 156
    div-long v1, p3, v1

    .line 157
    .line 158
    const-wide/32 v5, 0x4c4b40

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    sub-long v1, p1, v1

    .line 166
    .line 167
    invoke-static {v1, v2}, Ly4/q0;->X0(J)J

    .line 168
    .line 169
    .line 170
    move-result-wide v11

    .line 171
    move-wide v13, v3

    .line 172
    move-wide v15, v9

    .line 173
    invoke-static/range {v11 .. v16}, Ly4/q0;->r(JJJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    :cond_b
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 178
    .line 179
    iget-object v5, v5, Lb3/f2;->d:Lb3/f2$g;

    .line 180
    .line 181
    iget v6, v5, Lb3/f2$g;->d:F

    .line 182
    .line 183
    const v11, -0x800001

    .line 184
    .line 185
    .line 186
    cmpl-float v12, v6, v11

    .line 187
    .line 188
    if-eqz v12, :cond_c

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 192
    .line 193
    iget-object v6, v6, Lh4/c;->j:Lh4/l;

    .line 194
    .line 195
    if-eqz v6, :cond_d

    .line 196
    .line 197
    iget v6, v6, Lh4/l;->d:F

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_d
    move v6, v11

    .line 201
    :goto_4
    iget v5, v5, Lb3/f2$g;->e:F

    .line 202
    .line 203
    cmpl-float v12, v5, v11

    .line 204
    .line 205
    if-eqz v12, :cond_e

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_e
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 209
    .line 210
    iget-object v5, v5, Lh4/c;->j:Lh4/l;

    .line 211
    .line 212
    if-eqz v5, :cond_f

    .line 213
    .line 214
    iget v5, v5, Lh4/l;->e:F

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_f
    move v5, v11

    .line 218
    :goto_5
    cmpl-float v12, v6, v11

    .line 219
    .line 220
    if-nez v12, :cond_11

    .line 221
    .line 222
    cmpl-float v11, v5, v11

    .line 223
    .line 224
    if-nez v11, :cond_11

    .line 225
    .line 226
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 227
    .line 228
    iget-object v11, v11, Lh4/c;->j:Lh4/l;

    .line 229
    .line 230
    if-eqz v11, :cond_10

    .line 231
    .line 232
    iget-wide v11, v11, Lh4/l;->a:J

    .line 233
    .line 234
    cmp-long v7, v11, v7

    .line 235
    .line 236
    if-nez v7, :cond_11

    .line 237
    .line 238
    :cond_10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 239
    .line 240
    move v5, v6

    .line 241
    :cond_11
    new-instance v7, Lb3/f2$g$a;

    .line 242
    .line 243
    invoke-direct {v7}, Lb3/f2$g$a;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v1, v2}, Lb3/f2$g$a;->k(J)Lb3/f2$g$a;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1, v3, v4}, Lb3/f2$g$a;->i(J)Lb3/f2$g$a;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1, v9, v10}, Lb3/f2$g$a;->g(J)Lb3/f2$g$a;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1, v6}, Lb3/f2$g$a;->j(F)Lb3/f2$g$a;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1, v5}, Lb3/f2$g$a;->h(F)Lb3/f2$g$a;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lb3/f2$g$a;->f()Lb3/f2$g;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lb3/f2$g;

    .line 271
    .line 272
    return-void
.end method


# virtual methods
.method protected C(Lx4/m0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Lx4/m0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf3/v;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf3/v;

    .line 17
    .line 18
    invoke-interface {p1}, Lf3/v;->b()V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lx4/j$a;

    .line 31
    .line 32
    invoke-interface {p1}, Lx4/j$a;->a()Lx4/j;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lx4/j;

    .line 37
    .line 38
    new-instance p1, Lx4/e0;

    .line 39
    .line 40
    const-string v0, "DashMediaSource"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 46
    .line 47
    invoke-static {}, Ly4/q0;->w()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i0()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method protected E()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lx4/j;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lx4/e0;->l()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lx4/e0;

    .line 15
    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    .line 19
    .line 20
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:J

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Landroid/net/Uri;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 46
    .line 47
    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 53
    .line 54
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:I

    .line 55
    .line 56
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

    .line 57
    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lg4/b;

    .line 66
    .line 67
    invoke-virtual {v0}, Lg4/b;->i()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf3/v;

    .line 71
    .line 72
    invoke-interface {v0}, Lf3/v;->release()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method T(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

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
    cmp-long v0, v0, p1

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method V(Lx4/g0;JJ)V
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
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 31
    .line 32
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

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

.method W(Lx4/g0;JJ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    new-instance v12, Ld4/n;

    .line 8
    .line 9
    iget-wide v3, v0, Lx4/g0;->a:J

    .line 10
    .line 11
    iget-object v5, v0, Lx4/g0;->b:Lx4/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v16

    .line 25
    move-object v2, v12

    .line 26
    move-wide/from16 v8, p2

    .line 27
    .line 28
    move-wide/from16 v10, p4

    .line 29
    .line 30
    move-object v14, v12

    .line 31
    move-wide/from16 v12, v16

    .line 32
    .line 33
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 37
    .line 38
    iget-wide v3, v0, Lx4/g0;->a:J

    .line 39
    .line 40
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

    .line 44
    .line 45
    iget v3, v0, Lx4/g0;->c:I

    .line 46
    .line 47
    invoke-virtual {v2, v14, v3}, Ld4/a0$a;->t(Ld4/n;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->e()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lh4/c;

    .line 55
    .line 56
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    move v3, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v3}, Lh4/c;->e()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :goto_0
    invoke-virtual {v2, v4}, Lh4/c;->d(I)Lh4/g;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-wide v5, v5, Lh4/g;->b:J

    .line 72
    .line 73
    move v7, v4

    .line 74
    :goto_1
    if-ge v7, v3, :cond_1

    .line 75
    .line 76
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 77
    .line 78
    invoke-virtual {v8, v7}, Lh4/c;->d(I)Lh4/g;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget-wide v8, v8, Lh4/g;->b:J

    .line 83
    .line 84
    cmp-long v8, v8, v5

    .line 85
    .line 86
    if-gez v8, :cond_1

    .line 87
    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-boolean v5, v2, Lh4/c;->d:Z

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    if-eqz v5, :cond_6

    .line 95
    .line 96
    sub-int v5, v3, v7

    .line 97
    .line 98
    invoke-virtual {v2}, Lh4/c;->e()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-le v5, v8, :cond_2

    .line 103
    .line 104
    const-string v5, "DashMediaSource"

    .line 105
    .line 106
    const-string v8, "Loaded out of sync manifest"

    .line 107
    .line 108
    invoke-static {v5, v8}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    move v5, v6

    .line 112
    goto :goto_3

    .line 113
    :cond_2
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

    .line 114
    .line 115
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    cmp-long v5, v8, v10

    .line 121
    .line 122
    if-eqz v5, :cond_3

    .line 123
    .line 124
    iget-wide v10, v2, Lh4/c;->h:J

    .line 125
    .line 126
    const-wide/16 v12, 0x3e8

    .line 127
    .line 128
    mul-long/2addr v10, v12

    .line 129
    cmp-long v5, v10, v8

    .line 130
    .line 131
    if-gtz v5, :cond_3

    .line 132
    .line 133
    const-string v5, "DashMediaSource"

    .line 134
    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v9, "Loaded stale dynamic manifest: "

    .line 141
    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-wide v9, v2, Lh4/c;->h:J

    .line 146
    .line 147
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v9, ", "

    .line 151
    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:J

    .line 156
    .line 157
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-static {v5, v8}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    move v5, v4

    .line 169
    :goto_3
    if-eqz v5, :cond_5

    .line 170
    .line 171
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:I

    .line 172
    .line 173
    add-int/lit8 v3, v2, 0x1

    .line 174
    .line 175
    iput v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:I

    .line 176
    .line 177
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 178
    .line 179
    iget v0, v0, Lx4/g0;->c:I

    .line 180
    .line 181
    invoke-interface {v3, v0}, Lx4/d0;->d(I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ge v2, v0, :cond_4

    .line 186
    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g0(J)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_4
    new-instance v0, Lg4/c;

    .line 196
    .line 197
    invoke-direct {v0}, Lg4/c;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Ljava/io/IOException;

    .line 201
    .line 202
    :goto_4
    return-void

    .line 203
    :cond_5
    iput v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:I

    .line 204
    .line 205
    :cond_6
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 206
    .line 207
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 208
    .line 209
    iget-boolean v2, v2, Lh4/c;->d:Z

    .line 210
    .line 211
    and-int/2addr v2, v5

    .line 212
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Z

    .line 213
    .line 214
    move-wide/from16 v8, p2

    .line 215
    .line 216
    sub-long v10, v8, p4

    .line 217
    .line 218
    iput-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    .line 219
    .line 220
    iput-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:J

    .line 221
    .line 222
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Ljava/lang/Object;

    .line 223
    .line 224
    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v5, v0, Lx4/g0;->b:Lx4/n;

    .line 226
    .line 227
    iget-object v5, v5, Lx4/n;->a:Landroid/net/Uri;

    .line 228
    .line 229
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 230
    .line 231
    if-ne v5, v8, :cond_7

    .line 232
    .line 233
    move v4, v6

    .line 234
    :cond_7
    if-eqz v4, :cond_9

    .line 235
    .line 236
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 237
    .line 238
    iget-object v4, v4, Lh4/c;->k:Landroid/net/Uri;

    .line 239
    .line 240
    if-eqz v4, :cond_8

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    :goto_5
    iput-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Landroid/net/Uri;

    .line 248
    .line 249
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-nez v3, :cond_c

    .line 251
    .line 252
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 253
    .line 254
    iget-boolean v2, v0, Lh4/c;->d:Z

    .line 255
    .line 256
    if-eqz v2, :cond_b

    .line 257
    .line 258
    iget-object v0, v0, Lh4/c;->i:Lh4/o;

    .line 259
    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0(Lh4/o;)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S()V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_c
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 275
    .line 276
    add-int/2addr v0, v7

    .line 277
    iput v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 278
    .line 279
    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0(Z)V

    .line 280
    .line 281
    .line 282
    :goto_6
    return-void

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    throw v0
.end method

.method X(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;
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
    new-instance v4, Lx4/d0$c;

    .line 41
    .line 42
    move/from16 v5, p7

    .line 43
    .line 44
    invoke-direct {v4, v15, v3, v2, v5}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 48
    .line 49
    invoke-interface {v3, v4}, Lx4/d0;->a(Lx4/d0$c;)J

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
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

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
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

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

.method Y(Lx4/g0;JJ)V
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
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 31
    .line 32
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

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
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    sub-long v1, v1, p2

    .line 55
    .line 56
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0(J)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method Z(Lx4/g0;JJLjava/io/IOException;)Lx4/e0$c;
    .locals 17

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ld4/a0$a;

    .line 8
    .line 9
    new-instance v14, Ld4/n;

    .line 10
    .line 11
    iget-wide v5, v1, Lx4/g0;->a:J

    .line 12
    .line 13
    iget-object v7, v1, Lx4/g0;->b:Lx4/n;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 24
    .line 25
    .line 26
    move-result-wide v15

    .line 27
    move-object v4, v14

    .line 28
    move-wide/from16 v10, p2

    .line 29
    .line 30
    move-wide/from16 v12, p4

    .line 31
    .line 32
    move-object v0, v14

    .line 33
    move-wide v14, v15

    .line 34
    invoke-direct/range {v4 .. v15}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    iget v4, v1, Lx4/g0;->c:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-virtual {v3, v0, v4, v2, v5}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 46
    .line 47
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 48
    .line 49
    invoke-interface {v3, v4, v5}, Lx4/d0;->c(J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0(Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lx4/e0;->f:Lx4/e0$c;

    .line 56
    .line 57
    return-object v1
.end method

.method public d(Ld4/t$b;Lx4/b;J)Ld4/r;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v16, p2

    .line 6
    .line 7
    iget-object v2, v1, Ld4/s;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 16
    .line 17
    sub-int v3, v2, v3

    .line 18
    .line 19
    move v6, v3

    .line 20
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lh4/c;->d(I)Lh4/g;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-wide v4, v2, Lh4/g;->b:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v4, v5}, Ld4/a;->x(Ld4/t$b;J)Ld4/a0$a;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    invoke-virtual/range {p0 .. p1}, Ld4/a;->u(Ld4/t$b;)Lf3/u$a;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:I

    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lh4/c;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lg4/b;

    .line 45
    .line 46
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 47
    .line 48
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Lx4/m0;

    .line 49
    .line 50
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf3/v;

    .line 51
    .line 52
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lx4/d0;

    .line 53
    .line 54
    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:J

    .line 55
    .line 56
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lx4/f0;

    .line 57
    .line 58
    move-object/from16 p1, v1

    .line 59
    .line 60
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ld4/h;

    .line 61
    .line 62
    move-object/from16 v17, v1

    .line 63
    .line 64
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/google/android/exoplayer2/source/dash/e$b;

    .line 65
    .line 66
    move-object/from16 v18, v1

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Ld4/a;->A()Lc3/t3;

    .line 69
    .line 70
    .line 71
    move-result-object v19

    .line 72
    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(ILh4/c;Lg4/b;ILcom/google/android/exoplayer2/source/dash/a$a;Lx4/m0;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;JLx4/f0;Lx4/b;Ld4/h;Lcom/google/android/exoplayer2/source/dash/e$b;Lc3/t3;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 76
    .line 77
    move-object/from16 v2, p1

    .line 78
    .line 79
    iget v3, v2, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    .line 80
    .line 81
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2
.end method

.method public g(Ld4/r;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/b;->H()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/util/SparseArray;

    .line 7
    .line 8
    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public j()Lb3/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lb3/f2;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lx4/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Lx4/f0;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
