.class final Lb3/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ld4/r$a;
.implements Lw4/h0$a;
.implements Lb3/d3$d;
.implements Lb3/v$a;
.implements Lb3/p3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/t1$c;,
        Lb3/t1$b;,
        Lb3/t1$d;,
        Lb3/t1$g;,
        Lb3/t1$h;,
        Lb3/t1$f;,
        Lb3/t1$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lb3/t1$h;

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lb3/a0;

.field private P:J

.field private Q:J

.field private final a:[Lb3/t3;

.field private final b:Ljava/util/Set;

.field private final c:[Lb3/u3;

.field private final d:Lw4/h0;

.field private final e:Lw4/i0;

.field private final f:Lb3/d2;

.field private final g:Lx4/e;

.field private final h:Ly4/n;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Looper;

.field private final k:Lb3/g4$d;

.field private final l:Lb3/g4$b;

.field private final m:J

.field private final n:Z

.field private final o:Lb3/v;

.field private final p:Ljava/util/ArrayList;

.field private final q:Ly4/d;

.field private final r:Lb3/t1$f;

.field private final s:Lb3/o2;

.field private final t:Lb3/d3;

.field private final u:Lb3/c2;

.field private final v:J

.field private w:Lb3/x3;

.field private x:Lb3/j3;

.field private y:Lb3/t1$e;

.field private z:Z


# direct methods
.method public constructor <init>([Lb3/t3;Lw4/h0;Lw4/i0;Lb3/d2;Lx4/e;IZLc3/a;Lb3/x3;Lb3/c2;JZLandroid/os/Looper;Ly4/d;Lb3/t1$f;Lc3/t3;Landroid/os/Looper;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    move-object/from16 v9, p18

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v10, p16

    .line 2
    iput-object v10, v0, Lb3/t1;->r:Lb3/t1$f;

    .line 3
    iput-object v1, v0, Lb3/t1;->a:[Lb3/t3;

    .line 4
    iput-object v2, v0, Lb3/t1;->d:Lw4/h0;

    move-object/from16 v10, p3

    .line 5
    iput-object v10, v0, Lb3/t1;->e:Lw4/i0;

    move-object/from16 v11, p4

    .line 6
    iput-object v11, v0, Lb3/t1;->f:Lb3/d2;

    .line 7
    iput-object v3, v0, Lb3/t1;->g:Lx4/e;

    move/from16 v12, p6

    .line 8
    iput v12, v0, Lb3/t1;->E:I

    move/from16 v12, p7

    .line 9
    iput-boolean v12, v0, Lb3/t1;->F:Z

    move-object/from16 v12, p9

    .line 10
    iput-object v12, v0, Lb3/t1;->w:Lb3/x3;

    move-object/from16 v12, p10

    .line 11
    iput-object v12, v0, Lb3/t1;->u:Lb3/c2;

    .line 12
    iput-wide v5, v0, Lb3/t1;->v:J

    .line 13
    iput-wide v5, v0, Lb3/t1;->P:J

    move/from16 v5, p13

    .line 14
    iput-boolean v5, v0, Lb3/t1;->A:Z

    .line 15
    iput-object v7, v0, Lb3/t1;->q:Ly4/d;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v5, v0, Lb3/t1;->Q:J

    .line 17
    invoke-interface/range {p4 .. p4}, Lb3/d2;->c()J

    move-result-wide v5

    iput-wide v5, v0, Lb3/t1;->m:J

    .line 18
    invoke-interface/range {p4 .. p4}, Lb3/d2;->b()Z

    move-result v5

    iput-boolean v5, v0, Lb3/t1;->n:Z

    .line 19
    invoke-static/range {p3 .. p3}, Lb3/j3;->j(Lw4/i0;)Lb3/j3;

    move-result-object v5

    iput-object v5, v0, Lb3/t1;->x:Lb3/j3;

    .line 20
    new-instance v6, Lb3/t1$e;

    invoke-direct {v6, v5}, Lb3/t1$e;-><init>(Lb3/j3;)V

    iput-object v6, v0, Lb3/t1;->y:Lb3/t1$e;

    .line 21
    array-length v5, v1

    new-array v5, v5, [Lb3/u3;

    iput-object v5, v0, Lb3/t1;->c:[Lb3/u3;

    const/4 v5, 0x0

    .line 22
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 23
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lb3/t3;->l(ILc3/t3;)V

    .line 24
    iget-object v6, v0, Lb3/t1;->c:[Lb3/u3;

    aget-object v10, v1, v5

    invoke-interface {v10}, Lb3/t3;->q()Lb3/u3;

    move-result-object v10

    aput-object v10, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lb3/v;

    invoke-direct {v1, p0, v7}, Lb3/v;-><init>(Lb3/v$a;Ly4/d;)V

    iput-object v1, v0, Lb3/t1;->o:Lb3/v;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lo6/o0;->h()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lb3/t1;->b:Ljava/util/Set;

    .line 28
    new-instance v1, Lb3/g4$d;

    invoke-direct {v1}, Lb3/g4$d;-><init>()V

    iput-object v1, v0, Lb3/t1;->k:Lb3/g4$d;

    .line 29
    new-instance v1, Lb3/g4$b;

    invoke-direct {v1}, Lb3/g4$b;-><init>()V

    iput-object v1, v0, Lb3/t1;->l:Lb3/g4$b;

    .line 30
    invoke-virtual {p2, p0, v3}, Lw4/h0;->b(Lw4/h0$a;Lx4/e;)V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lb3/t1;->N:Z

    const/4 v1, 0x0

    move-object/from16 v2, p14

    .line 32
    invoke-interface {v7, v2, v1}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    move-result-object v2

    .line 33
    new-instance v3, Lb3/o2;

    invoke-direct {v3, v4, v2}, Lb3/o2;-><init>(Lc3/a;Ly4/n;)V

    iput-object v3, v0, Lb3/t1;->s:Lb3/o2;

    .line 34
    new-instance v3, Lb3/d3;

    invoke-direct {v3, p0, v4, v2, v8}, Lb3/d3;-><init>(Lb3/d3$d;Lc3/a;Ly4/n;Lc3/t3;)V

    iput-object v3, v0, Lb3/t1;->t:Lb3/d3;

    if-eqz v9, :cond_1

    .line 35
    iput-object v1, v0, Lb3/t1;->i:Landroid/os/HandlerThread;

    .line 36
    iput-object v9, v0, Lb3/t1;->j:Landroid/os/Looper;

    goto :goto_1

    .line 37
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lb3/t1;->i:Landroid/os/HandlerThread;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lb3/t1;->j:Landroid/os/Looper;

    .line 40
    :goto_1
    iget-object v1, v0, Lb3/t1;->j:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    move-result-object v1

    iput-object v1, v0, Lb3/t1;->h:Ly4/n;

    return-void
.end method

.method private A(Lb3/g4;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lb3/j3;->k()Ld4/t$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lb3/t1;->F:Z

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lb3/g4;->e(Z)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v4, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 29
    .line 30
    iget-object v5, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 31
    .line 32
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    move-object v3, p1

    .line 38
    invoke-virtual/range {v3 .. v8}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v3, p0, Lb3/t1;->s:Lb3/o2;

    .line 43
    .line 44
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v4, v1, v2}, Lb3/o2;->B(Lb3/g4;Ljava/lang/Object;J)Ld4/t$b;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-virtual {v3}, Ld4/s;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v4, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v4}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 69
    .line 70
    .line 71
    iget p1, v3, Ld4/s;->c:I

    .line 72
    .line 73
    iget-object v0, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 74
    .line 75
    iget v4, v3, Ld4/s;->b:I

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lb3/g4$b;->n(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p1, v0, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 84
    .line 85
    invoke-virtual {p1}, Lb3/g4$b;->j()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    :cond_1
    move-wide v4, v1

    .line 90
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method private B0(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lb3/l2;->f:Lb3/m2;

    .line 8
    .line 9
    iget-object v0, v0, Lb3/m2;->a:Ld4/t$b;

    .line 10
    .line 11
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 12
    .line 13
    iget-wide v3, v1, Lb3/j3;->r:J

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lb3/t1;->E0(Ld4/t$b;JZZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 24
    .line 25
    iget-wide v1, v1, Lb3/j3;->r:J

    .line 26
    .line 27
    cmp-long v1, v3, v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 32
    .line 33
    iget-wide v5, v1, Lb3/j3;->c:J

    .line 34
    .line 35
    iget-wide v7, v1, Lb3/j3;->d:J

    .line 36
    .line 37
    const/4 v10, 0x5

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, v0

    .line 40
    move v9, p1

    .line 41
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private C()J
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 2
    .line 3
    iget-wide v0, v0, Lb3/j3;->p:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lb3/t1;->D(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private C0(Lb3/t1$h;)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v11, Lb3/t1;->y:Lb3/t1$e;

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    invoke-virtual {v1, v8}, Lb3/t1$e;->b(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 12
    .line 13
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    iget v4, v11, Lb3/t1;->E:I

    .line 17
    .line 18
    iget-boolean v5, v11, Lb3/t1;->F:Z

    .line 19
    .line 20
    iget-object v6, v11, Lb3/t1;->k:Lb3/g4$d;

    .line 21
    .line 22
    iget-object v7, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 23
    .line 24
    move-object/from16 v2, p1

    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Lb3/t1;->x0(Lb3/g4;Lb3/t1$h;ZIZLb3/g4$d;Lb3/g4$b;)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-object v7, v11, Lb3/t1;->x:Lb3/j3;

    .line 41
    .line 42
    iget-object v7, v7, Lb3/j3;->a:Lb3/g4;

    .line 43
    .line 44
    invoke-direct {v11, v7}, Lb3/t1;->A(Lb3/g4;)Landroid/util/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Ld4/t$b;

    .line 51
    .line 52
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v12

    .line 60
    iget-object v7, v11, Lb3/t1;->x:Lb3/j3;

    .line 61
    .line 62
    iget-object v7, v7, Lb3/j3;->a:Lb3/g4;

    .line 63
    .line 64
    invoke-virtual {v7}, Lb3/g4;->u()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    xor-int/2addr v7, v8

    .line 69
    move v10, v7

    .line 70
    move-wide/from16 v16, v4

    .line 71
    .line 72
    :goto_0
    move-wide v4, v12

    .line 73
    move-wide/from16 v12, v16

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v12

    .line 87
    iget-wide v9, v0, Lb3/t1$h;->c:J

    .line 88
    .line 89
    cmp-long v9, v9, v4

    .line 90
    .line 91
    if-nez v9, :cond_1

    .line 92
    .line 93
    move-wide v9, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-wide v9, v12

    .line 96
    :goto_1
    iget-object v14, v11, Lb3/t1;->s:Lb3/o2;

    .line 97
    .line 98
    iget-object v15, v11, Lb3/t1;->x:Lb3/j3;

    .line 99
    .line 100
    iget-object v15, v15, Lb3/j3;->a:Lb3/g4;

    .line 101
    .line 102
    invoke-virtual {v14, v15, v7, v12, v13}, Lb3/o2;->B(Lb3/g4;Ljava/lang/Object;J)Ld4/t$b;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ld4/s;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_3

    .line 111
    .line 112
    iget-object v4, v11, Lb3/t1;->x:Lb3/j3;

    .line 113
    .line 114
    iget-object v4, v4, Lb3/j3;->a:Lb3/g4;

    .line 115
    .line 116
    iget-object v5, v7, Ld4/s;->a:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v12, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 119
    .line 120
    invoke-virtual {v4, v5, v12}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 121
    .line 122
    .line 123
    iget-object v4, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 124
    .line 125
    iget v5, v7, Ld4/s;->b:I

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Lb3/g4$b;->n(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget v5, v7, Ld4/s;->c:I

    .line 132
    .line 133
    if-ne v4, v5, :cond_2

    .line 134
    .line 135
    iget-object v4, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 136
    .line 137
    invoke-virtual {v4}, Lb3/g4$b;->j()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    move-wide v12, v4

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-wide v12, v2

    .line 144
    :goto_2
    move-wide v4, v12

    .line 145
    move-wide v12, v9

    .line 146
    move-object v9, v7

    .line 147
    move v10, v8

    .line 148
    goto :goto_4

    .line 149
    :cond_3
    iget-wide v14, v0, Lb3/t1$h;->c:J

    .line 150
    .line 151
    cmp-long v4, v14, v4

    .line 152
    .line 153
    if-nez v4, :cond_4

    .line 154
    .line 155
    move v4, v8

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move v4, v6

    .line 158
    :goto_3
    move-wide/from16 v16, v9

    .line 159
    .line 160
    move v10, v4

    .line 161
    move-object v9, v7

    .line 162
    goto :goto_0

    .line 163
    :goto_4
    :try_start_0
    iget-object v7, v11, Lb3/t1;->x:Lb3/j3;

    .line 164
    .line 165
    iget-object v7, v7, Lb3/j3;->a:Lb3/g4;

    .line 166
    .line 167
    invoke-virtual {v7}, Lb3/g4;->u()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_5

    .line 172
    .line 173
    iput-object v0, v11, Lb3/t1;->K:Lb3/t1$h;

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_5
    const/4 v0, 0x4

    .line 177
    if-nez v1, :cond_7

    .line 178
    .line 179
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 180
    .line 181
    iget v1, v1, Lb3/j3;->e:I

    .line 182
    .line 183
    if-eq v1, v8, :cond_6

    .line 184
    .line 185
    invoke-direct {v11, v0}, Lb3/t1;->Z0(I)V

    .line 186
    .line 187
    .line 188
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lb3/t1;->q0(ZZZZ)V

    .line 189
    .line 190
    .line 191
    :goto_5
    move-wide v7, v4

    .line 192
    goto/16 :goto_9

    .line 193
    .line 194
    :cond_7
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 195
    .line 196
    iget-object v1, v1, Lb3/j3;->b:Ld4/t$b;

    .line 197
    .line 198
    invoke-virtual {v9, v1}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    iget-object v1, v11, Lb3/t1;->s:Lb3/o2;

    .line 205
    .line 206
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_8

    .line 211
    .line 212
    iget-boolean v7, v1, Lb3/l2;->d:Z

    .line 213
    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    cmp-long v2, v4, v2

    .line 217
    .line 218
    if-eqz v2, :cond_8

    .line 219
    .line 220
    iget-object v1, v1, Lb3/l2;->a:Ld4/r;

    .line 221
    .line 222
    iget-object v2, v11, Lb3/t1;->w:Lb3/x3;

    .line 223
    .line 224
    invoke-interface {v1, v4, v5, v2}, Ld4/r;->e(JLb3/x3;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v1

    .line 228
    goto :goto_6

    .line 229
    :cond_8
    move-wide v1, v4

    .line 230
    :goto_6
    invoke-static {v1, v2}, Ly4/q0;->X0(J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v14

    .line 234
    iget-object v3, v11, Lb3/t1;->x:Lb3/j3;

    .line 235
    .line 236
    iget-wide v6, v3, Lb3/j3;->r:J

    .line 237
    .line 238
    invoke-static {v6, v7}, Ly4/q0;->X0(J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    cmp-long v3, v14, v6

    .line 243
    .line 244
    if-nez v3, :cond_b

    .line 245
    .line 246
    iget-object v3, v11, Lb3/t1;->x:Lb3/j3;

    .line 247
    .line 248
    iget v6, v3, Lb3/j3;->e:I

    .line 249
    .line 250
    const/4 v7, 0x2

    .line 251
    if-eq v6, v7, :cond_9

    .line 252
    .line 253
    const/4 v7, 0x3

    .line 254
    if-ne v6, v7, :cond_b

    .line 255
    .line 256
    :cond_9
    iget-wide v7, v3, Lb3/j3;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    .line 258
    const/4 v0, 0x2

    .line 259
    move-object/from16 v1, p0

    .line 260
    .line 261
    move-object v2, v9

    .line 262
    move-wide v3, v7

    .line 263
    move-wide v5, v12

    .line 264
    move v9, v10

    .line 265
    move v10, v0

    .line 266
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 271
    .line 272
    return-void

    .line 273
    :cond_a
    move-wide v1, v4

    .line 274
    :cond_b
    :try_start_1
    iget-object v3, v11, Lb3/t1;->x:Lb3/j3;

    .line 275
    .line 276
    iget v3, v3, Lb3/j3;->e:I

    .line 277
    .line 278
    if-ne v3, v0, :cond_c

    .line 279
    .line 280
    move v0, v8

    .line 281
    goto :goto_7

    .line 282
    :cond_c
    const/4 v0, 0x0

    .line 283
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Lb3/t1;->D0(Ld4/t$b;JZ)J

    .line 284
    .line 285
    .line 286
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    cmp-long v0, v4, v14

    .line 288
    .line 289
    if-eqz v0, :cond_d

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_d
    const/4 v8, 0x0

    .line 293
    :goto_8
    or-int/2addr v10, v8

    .line 294
    :try_start_2
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 295
    .line 296
    iget-object v4, v0, Lb3/j3;->a:Lb3/g4;

    .line 297
    .line 298
    iget-object v5, v0, Lb3/j3;->b:Ld4/t$b;

    .line 299
    .line 300
    const/4 v8, 0x1

    .line 301
    move-object/from16 v1, p0

    .line 302
    .line 303
    move-object v2, v4

    .line 304
    move-object v3, v9

    .line 305
    move-wide v6, v12

    .line 306
    invoke-direct/range {v1 .. v8}, Lb3/t1;->n1(Lb3/g4;Ld4/t$b;Lb3/g4;Ld4/t$b;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .line 308
    .line 309
    move-wide v7, v14

    .line 310
    :goto_9
    const/4 v0, 0x2

    .line 311
    move-object/from16 v1, p0

    .line 312
    .line 313
    move-object v2, v9

    .line 314
    move-wide v3, v7

    .line 315
    move-wide v5, v12

    .line 316
    move v9, v10

    .line 317
    move v10, v0

    .line 318
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 323
    .line 324
    return-void

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    move-wide v7, v14

    .line 327
    goto :goto_a

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    move-wide v7, v4

    .line 330
    :goto_a
    const/4 v14, 0x2

    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    move-object v2, v9

    .line 334
    move-wide v3, v7

    .line 335
    move-wide v5, v12

    .line 336
    move v9, v10

    .line 337
    move v10, v14

    .line 338
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    iput-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 343
    .line 344
    throw v0
.end method

.method private D(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-wide v3, p0, Lb3/t1;->L:J

    .line 13
    .line 14
    invoke-virtual {v0, v3, v4}, Lb3/l2;->y(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p1, v3

    .line 19
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method private D0(Ld4/t$b;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lb3/t1;->s:Lb3/o2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lb3/o2;->q()Lb3/l2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    move v5, v0

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-wide v3, p2

    .line 22
    move v6, p4

    .line 23
    invoke-direct/range {v1 .. v6}, Lb3/t1;->E0(Ld4/t$b;JZZ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    return-wide p1
.end method

.method private E(Ld4/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb3/o2;->v(Ld4/r;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 11
    .line 12
    iget-wide v0, p0, Lb3/t1;->L:J

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lb3/o2;->y(J)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lb3/t1;->V()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private E0(Ld4/t$b;JZZ)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lb3/t1;->i1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb3/t1;->C:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    iget-object p5, p0, Lb3/t1;->x:Lb3/j3;

    .line 11
    .line 12
    iget p5, p5, Lb3/j3;->e:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne p5, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, v1}, Lb3/t1;->Z0(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p5, p0, Lb3/t1;->s:Lb3/o2;

    .line 21
    .line 22
    invoke-virtual {p5}, Lb3/o2;->p()Lb3/l2;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    move-object v2, p5

    .line 27
    :goto_0
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v3, v2, Lb3/l2;->f:Lb3/m2;

    .line 30
    .line 31
    iget-object v3, v3, Lb3/m2;->a:Ld4/t$b;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v2}, Lb3/l2;->j()Lb3/l2;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    .line 46
    .line 47
    if-ne p5, v2, :cond_4

    .line 48
    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    invoke-virtual {v2, p2, p3}, Lb3/l2;->z(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p4

    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p1, p4, v3

    .line 58
    .line 59
    if-gez p1, :cond_7

    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 62
    .line 63
    array-length p4, p1

    .line 64
    move p5, v0

    .line 65
    :goto_2
    if-ge p5, p4, :cond_5

    .line 66
    .line 67
    aget-object v3, p1, p5

    .line 68
    .line 69
    invoke-direct {p0, v3}, Lb3/t1;->o(Lb3/t3;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p5, p5, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-eqz v2, :cond_7

    .line 76
    .line 77
    :goto_3
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 78
    .line 79
    invoke-virtual {p1}, Lb3/o2;->p()Lb3/l2;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eq p1, v2, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 86
    .line 87
    invoke-virtual {p1}, Lb3/o2;->b()Lb3/l2;

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lb3/o2;->z(Lb3/l2;)Z

    .line 94
    .line 95
    .line 96
    const-wide p4, 0xe8d4a51000L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p4, p5}, Lb3/l2;->x(J)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lb3/t1;->r()V

    .line 105
    .line 106
    .line 107
    :cond_7
    if-eqz v2, :cond_a

    .line 108
    .line 109
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lb3/o2;->z(Lb3/l2;)Z

    .line 112
    .line 113
    .line 114
    iget-boolean p1, v2, Lb3/l2;->d:Z

    .line 115
    .line 116
    if-nez p1, :cond_8

    .line 117
    .line 118
    iget-object p1, v2, Lb3/l2;->f:Lb3/m2;

    .line 119
    .line 120
    invoke-virtual {p1, p2, p3}, Lb3/m2;->b(J)Lb3/m2;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, v2, Lb3/l2;->f:Lb3/m2;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    iget-boolean p1, v2, Lb3/l2;->e:Z

    .line 128
    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    iget-object p1, v2, Lb3/l2;->a:Ld4/r;

    .line 132
    .line 133
    invoke-interface {p1, p2, p3}, Ld4/r;->k(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide p1

    .line 137
    iget-object p3, v2, Lb3/l2;->a:Ld4/r;

    .line 138
    .line 139
    iget-wide p4, p0, Lb3/t1;->m:J

    .line 140
    .line 141
    sub-long p4, p1, p4

    .line 142
    .line 143
    iget-boolean v2, p0, Lb3/t1;->n:Z

    .line 144
    .line 145
    invoke-interface {p3, p4, p5, v2}, Ld4/r;->r(JZ)V

    .line 146
    .line 147
    .line 148
    move-wide p2, p1

    .line 149
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lb3/t1;->s0(J)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lb3/t1;->V()V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_a
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 157
    .line 158
    invoke-virtual {p1}, Lb3/o2;->f()V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p2, p3}, Lb3/t1;->s0(J)V

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-direct {p0, v0}, Lb3/t1;->G(Z)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lb3/t1;->h:Ly4/n;

    .line 168
    .line 169
    invoke-interface {p1, v1}, Ly4/n;->e(I)Z

    .line 170
    .line 171
    .line 172
    return-wide p2
.end method

.method private F(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lb3/a0;->g(Ljava/io/IOException;I)Lb3/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lb3/t1;->s:Lb3/o2;

    .line 6
    .line 7
    invoke-virtual {p2}, Lb3/o2;->p()Lb3/l2;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Lb3/l2;->f:Lb3/m2;

    .line 14
    .line 15
    iget-object p2, p2, Lb3/m2;->a:Ld4/t$b;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lb3/a0;->e(Ld4/s;)Lb3/a0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    .line 22
    .line 23
    const-string v0, "Playback error"

    .line 24
    .line 25
    invoke-static {p2, v0, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p2, p2}, Lb3/t1;->h1(ZZ)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lb3/t1;->x:Lb3/j3;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 39
    .line 40
    return-void
.end method

.method private F0(Lb3/p3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lb3/p3;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lb3/t1;->G0(Lb3/p3;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 19
    .line 20
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 21
    .line 22
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Lb3/t1$d;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lb3/t1$d;-><init>(Lb3/p3;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lb3/t1$d;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lb3/t1$d;-><init>(Lb3/p3;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 45
    .line 46
    iget-object v4, v1, Lb3/j3;->a:Lb3/g4;

    .line 47
    .line 48
    iget v5, p0, Lb3/t1;->E:I

    .line 49
    .line 50
    iget-boolean v6, p0, Lb3/t1;->F:Z

    .line 51
    .line 52
    iget-object v7, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 53
    .line 54
    iget-object v8, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    move-object v3, v4

    .line 58
    invoke-static/range {v2 .. v8}, Lb3/t1;->u0(Lb3/t1$d;Lb3/g4;Lb3/g4;IZLb3/g4$d;Lb3/g4$b;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lb3/p3;->k(Z)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method private G(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 10
    .line 11
    iget-object v1, v1, Lb3/j3;->b:Ld4/t$b;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lb3/l2;->f:Lb3/m2;

    .line 15
    .line 16
    iget-object v1, v1, Lb3/m2;->a:Ld4/t$b;

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lb3/t1;->x:Lb3/j3;

    .line 19
    .line 20
    iget-object v2, v2, Lb3/j3;->k:Ld4/t$b;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    xor-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Lb3/t1;->x:Lb3/j3;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lb3/j3;->b(Ld4/t$b;)Lb3/j3;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-wide v3, v1, Lb3/j3;->r:J

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0}, Lb3/l2;->i()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    :goto_1
    iput-wide v3, v1, Lb3/j3;->p:J

    .line 50
    .line 51
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 52
    .line 53
    invoke-direct {p0}, Lb3/t1;->C()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    iput-wide v3, v1, Lb3/j3;->q:J

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    :cond_3
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-boolean p1, v0, Lb3/l2;->d:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lb3/l2;->n()Ld4/u0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p0, p1, v0}, Lb3/t1;->k1(Ld4/u0;Lw4/i0;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method private G0(Lb3/p3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb3/p3;->c()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lb3/t1;->j:Landroid/os/Looper;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lb3/t1;->n(Lb3/p3;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 13
    .line 14
    iget p1, p1, Lb3/j3;->e:I

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lb3/t1;->h:Ly4/n;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ly4/n;->e(I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 29
    .line 30
    const/16 v1, 0xf

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private H(Lb3/g4;Z)V
    .locals 27

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v2, v11, Lb3/t1;->x:Lb3/j3;

    .line 6
    .line 7
    iget-object v3, v11, Lb3/t1;->K:Lb3/t1$h;

    .line 8
    .line 9
    iget-object v4, v11, Lb3/t1;->s:Lb3/o2;

    .line 10
    .line 11
    iget v5, v11, Lb3/t1;->E:I

    .line 12
    .line 13
    iget-boolean v6, v11, Lb3/t1;->F:Z

    .line 14
    .line 15
    iget-object v7, v11, Lb3/t1;->k:Lb3/g4$d;

    .line 16
    .line 17
    iget-object v8, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    invoke-static/range {v1 .. v8}, Lb3/t1;->w0(Lb3/g4;Lb3/j3;Lb3/t1$h;Lb3/o2;IZLb3/g4$d;Lb3/g4$b;)Lb3/t1$g;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-object v9, v7, Lb3/t1$g;->a:Ld4/t$b;

    .line 26
    .line 27
    iget-wide v13, v7, Lb3/t1$g;->c:J

    .line 28
    .line 29
    iget-boolean v0, v7, Lb3/t1$g;->d:Z

    .line 30
    .line 31
    iget-wide v5, v7, Lb3/t1$g;->b:J

    .line 32
    .line 33
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 34
    .line 35
    iget-object v1, v1, Lb3/j3;->b:Ld4/t$b;

    .line 36
    .line 37
    invoke-virtual {v1, v9}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 46
    .line 47
    iget-wide v1, v1, Lb3/j3;->r:J

    .line 48
    .line 49
    cmp-long v1, v5, v1

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move/from16 v16, v15

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    move/from16 v16, v10

    .line 58
    .line 59
    :goto_1
    const/16 v17, 0x3

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    :try_start_0
    iget-boolean v1, v7, Lb3/t1$g;->e:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 73
    .line 74
    iget v1, v1, Lb3/j3;->e:I

    .line 75
    .line 76
    if-eq v1, v10, :cond_2

    .line 77
    .line 78
    invoke-direct {v11, v4}, Lb3/t1;->Z0(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-direct {v11, v15, v15, v15, v10}, Lb3/t1;->q0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 82
    .line 83
    .line 84
    :cond_3
    if-nez v16, :cond_4

    .line 85
    .line 86
    :try_start_1
    iget-object v1, v11, Lb3/t1;->s:Lb3/o2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    :try_start_2
    iget-wide v3, v11, Lb3/t1;->L:J

    .line 89
    .line 90
    invoke-direct/range {p0 .. p0}, Lb3/t1;->z()J

    .line 91
    .line 92
    .line 93
    move-result-wide v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    move-object/from16 v2, p1

    .line 95
    .line 96
    const/4 v10, -0x1

    .line 97
    const/16 v20, 0x4

    .line 98
    .line 99
    move-wide/from16 v25, v5

    .line 100
    .line 101
    move-wide/from16 v5, v22

    .line 102
    .line 103
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lb3/o2;->F(Lb3/g4;JJ)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    .line 109
    invoke-direct {v11, v15}, Lb3/t1;->B0(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    const/4 v10, -0x1

    .line 115
    const/16 v20, 0x4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move/from16 v20, v4

    .line 120
    .line 121
    const/4 v10, -0x1

    .line 122
    :goto_2
    move-object v15, v8

    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_4
    move/from16 v20, v4

    .line 126
    .line 127
    move-wide/from16 v25, v5

    .line 128
    .line 129
    const/4 v10, -0x1

    .line 130
    invoke-virtual/range {p1 .. p1}, Lb3/g4;->u()Z

    .line 131
    .line 132
    .line 133
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 134
    if-nez v1, :cond_7

    .line 135
    .line 136
    :try_start_4
    iget-object v1, v11, Lb3/t1;->s:Lb3/o2;

    .line 137
    .line 138
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 139
    .line 140
    .line 141
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 142
    :goto_3
    if-eqz v1, :cond_6

    .line 143
    .line 144
    :try_start_5
    iget-object v2, v1, Lb3/l2;->f:Lb3/m2;

    .line 145
    .line 146
    iget-object v2, v2, Lb3/m2;->a:Ld4/t$b;

    .line 147
    .line 148
    invoke-virtual {v2, v9}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    iget-object v2, v11, Lb3/t1;->s:Lb3/o2;

    .line 155
    .line 156
    iget-object v3, v1, Lb3/l2;->f:Lb3/m2;

    .line 157
    .line 158
    invoke-virtual {v2, v12, v3}, Lb3/o2;->r(Lb3/g4;Lb3/m2;)Lb3/m2;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v1, Lb3/l2;->f:Lb3/m2;

    .line 163
    .line 164
    invoke-virtual {v1}, Lb3/l2;->A()V

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-virtual {v1}, Lb3/l2;->j()Lb3/l2;

    .line 168
    .line 169
    .line 170
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    move-wide/from16 v5, v25

    .line 173
    .line 174
    :try_start_6
    invoke-direct {v11, v9, v5, v6, v0}, Lb3/t1;->D0(Ld4/t$b;JZ)J

    .line 175
    .line 176
    .line 177
    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 178
    move-wide/from16 v21, v0

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    goto :goto_2

    .line 183
    :catchall_3
    move-exception v0

    .line 184
    move-wide/from16 v5, v25

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    :goto_4
    move-wide/from16 v5, v25

    .line 188
    .line 189
    move-wide/from16 v21, v5

    .line 190
    .line 191
    :goto_5
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 192
    .line 193
    iget-object v4, v0, Lb3/j3;->a:Lb3/g4;

    .line 194
    .line 195
    iget-object v5, v0, Lb3/j3;->b:Ld4/t$b;

    .line 196
    .line 197
    iget-boolean v0, v7, Lb3/t1$g;->f:Z

    .line 198
    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    move-wide/from16 v6, v21

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    move-wide/from16 v6, v18

    .line 205
    .line 206
    :goto_6
    const/4 v0, 0x0

    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    .line 211
    move-object v3, v9

    .line 212
    move-object v15, v8

    .line 213
    move v8, v0

    .line 214
    invoke-direct/range {v1 .. v8}, Lb3/t1;->n1(Lb3/g4;Ld4/t$b;Lb3/g4;Ld4/t$b;JZ)V

    .line 215
    .line 216
    .line 217
    if-nez v16, :cond_9

    .line 218
    .line 219
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 220
    .line 221
    iget-wide v0, v0, Lb3/j3;->c:J

    .line 222
    .line 223
    cmp-long v0, v13, v0

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    :cond_9
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 228
    .line 229
    iget-object v1, v0, Lb3/j3;->b:Ld4/t$b;

    .line 230
    .line 231
    iget-object v1, v1, Ld4/s;->a:Ljava/lang/Object;

    .line 232
    .line 233
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 234
    .line 235
    if-eqz v16, :cond_a

    .line 236
    .line 237
    if-eqz p2, :cond_a

    .line 238
    .line 239
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_a

    .line 244
    .line 245
    iget-object v2, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-boolean v0, v0, Lb3/g4$b;->f:Z

    .line 252
    .line 253
    if-nez v0, :cond_a

    .line 254
    .line 255
    const/16 v24, 0x1

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_a
    const/16 v24, 0x0

    .line 259
    .line 260
    :goto_7
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 261
    .line 262
    iget-wide v7, v0, Lb3/j3;->d:J

    .line 263
    .line 264
    invoke-virtual {v12, v1}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-ne v0, v10, :cond_b

    .line 269
    .line 270
    move/from16 v10, v20

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_b
    move/from16 v10, v17

    .line 274
    .line 275
    :goto_8
    move-object/from16 v1, p0

    .line 276
    .line 277
    move-object v2, v9

    .line 278
    move-wide/from16 v3, v21

    .line 279
    .line 280
    move-wide v5, v13

    .line 281
    move/from16 v9, v24

    .line 282
    .line 283
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iput-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 288
    .line 289
    :cond_c
    invoke-direct/range {p0 .. p0}, Lb3/t1;->r0()V

    .line 290
    .line 291
    .line 292
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 293
    .line 294
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 295
    .line 296
    invoke-direct {v11, v12, v0}, Lb3/t1;->v0(Lb3/g4;Lb3/g4;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 300
    .line 301
    invoke-virtual {v0, v12}, Lb3/j3;->i(Lb3/g4;)Lb3/j3;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, v11, Lb3/t1;->x:Lb3/j3;

    .line 306
    .line 307
    invoke-virtual/range {p1 .. p1}, Lb3/g4;->u()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_d

    .line 312
    .line 313
    iput-object v15, v11, Lb3/t1;->K:Lb3/t1$h;

    .line 314
    .line 315
    :cond_d
    const/4 v1, 0x0

    .line 316
    invoke-direct {v11, v1}, Lb3/t1;->G(Z)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :catchall_4
    move-exception v0

    .line 321
    move-object v15, v8

    .line 322
    move-wide/from16 v5, v25

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :catchall_5
    move-exception v0

    .line 326
    move/from16 v20, v4

    .line 327
    .line 328
    move-object v15, v8

    .line 329
    const/4 v10, -0x1

    .line 330
    :goto_9
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 331
    .line 332
    iget-object v4, v1, Lb3/j3;->a:Lb3/g4;

    .line 333
    .line 334
    iget-object v8, v1, Lb3/j3;->b:Ld4/t$b;

    .line 335
    .line 336
    iget-boolean v1, v7, Lb3/t1$g;->f:Z

    .line 337
    .line 338
    if-eqz v1, :cond_e

    .line 339
    .line 340
    move-wide/from16 v18, v5

    .line 341
    .line 342
    :cond_e
    const/16 v21, 0x0

    .line 343
    .line 344
    move-object/from16 v1, p0

    .line 345
    .line 346
    move-object/from16 v2, p1

    .line 347
    .line 348
    move-object v3, v9

    .line 349
    move-wide/from16 v25, v5

    .line 350
    .line 351
    move-object v5, v8

    .line 352
    move-wide/from16 v6, v18

    .line 353
    .line 354
    move/from16 v8, v21

    .line 355
    .line 356
    invoke-direct/range {v1 .. v8}, Lb3/t1;->n1(Lb3/g4;Ld4/t$b;Lb3/g4;Ld4/t$b;JZ)V

    .line 357
    .line 358
    .line 359
    if-nez v16, :cond_f

    .line 360
    .line 361
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 362
    .line 363
    iget-wide v1, v1, Lb3/j3;->c:J

    .line 364
    .line 365
    cmp-long v1, v13, v1

    .line 366
    .line 367
    if-eqz v1, :cond_12

    .line 368
    .line 369
    :cond_f
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 370
    .line 371
    iget-object v2, v1, Lb3/j3;->b:Ld4/t$b;

    .line 372
    .line 373
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 374
    .line 375
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 376
    .line 377
    if-eqz v16, :cond_10

    .line 378
    .line 379
    if-eqz p2, :cond_10

    .line 380
    .line 381
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-nez v3, :cond_10

    .line 386
    .line 387
    iget-object v3, v11, Lb3/t1;->l:Lb3/g4$b;

    .line 388
    .line 389
    invoke-virtual {v1, v2, v3}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-boolean v1, v1, Lb3/g4$b;->f:Z

    .line 394
    .line 395
    if-nez v1, :cond_10

    .line 396
    .line 397
    const/16 v24, 0x1

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_10
    const/16 v24, 0x0

    .line 401
    .line 402
    :goto_a
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 403
    .line 404
    iget-wide v7, v1, Lb3/j3;->d:J

    .line 405
    .line 406
    invoke-virtual {v12, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-ne v1, v10, :cond_11

    .line 411
    .line 412
    move/from16 v10, v20

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_11
    move/from16 v10, v17

    .line 416
    .line 417
    :goto_b
    move-object/from16 v1, p0

    .line 418
    .line 419
    move-object v2, v9

    .line 420
    move-wide/from16 v3, v25

    .line 421
    .line 422
    move-wide v5, v13

    .line 423
    move/from16 v9, v24

    .line 424
    .line 425
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iput-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 430
    .line 431
    :cond_12
    invoke-direct/range {p0 .. p0}, Lb3/t1;->r0()V

    .line 432
    .line 433
    .line 434
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 435
    .line 436
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 437
    .line 438
    invoke-direct {v11, v12, v1}, Lb3/t1;->v0(Lb3/g4;Lb3/g4;)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 442
    .line 443
    invoke-virtual {v1, v12}, Lb3/j3;->i(Lb3/g4;)Lb3/j3;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    iput-object v1, v11, Lb3/t1;->x:Lb3/j3;

    .line 448
    .line 449
    invoke-virtual/range {p1 .. p1}, Lb3/g4;->u()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-nez v1, :cond_13

    .line 454
    .line 455
    iput-object v15, v11, Lb3/t1;->K:Lb3/t1$h;

    .line 456
    .line 457
    :cond_13
    const/4 v1, 0x0

    .line 458
    invoke-direct {v11, v1}, Lb3/t1;->G(Z)V

    .line 459
    .line 460
    .line 461
    throw v0
.end method

.method private H0(Lb3/p3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lb3/p3;->c()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "TAG"

    .line 16
    .line 17
    const-string v1, "Trying to send message on a dead thread."

    .line 18
    .line 19
    invoke-static {v0, v1}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lb3/p3;->k(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lb3/t1;->q:Ly4/d;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v0, v2}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lb3/s1;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lb3/s1;-><init>(Lb3/t1;Lb3/p3;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Ly4/n;->b(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private I(Ld4/r;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb3/o2;->v(Ld4/r;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lb3/o2;->j()Lb3/l2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 17
    .line 18
    invoke-virtual {v0}, Lb3/v;->g()Lb3/l3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Lb3/l3;->a:F

    .line 23
    .line 24
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 25
    .line 26
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lb3/l2;->p(FLb3/g4;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lb3/l2;->n()Ld4/u0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lb3/l2;->o()Lw4/i0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p0, v0, v1}, Lb3/t1;->k1(Ld4/u0;Lw4/i0;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 43
    .line 44
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p1, Lb3/l2;->f:Lb3/m2;

    .line 51
    .line 52
    iget-wide v0, v0, Lb3/m2;->b:J

    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Lb3/t1;->s0(J)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lb3/t1;->r()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 61
    .line 62
    iget-object v2, v0, Lb3/j3;->b:Ld4/t$b;

    .line 63
    .line 64
    iget-object p1, p1, Lb3/l2;->f:Lb3/m2;

    .line 65
    .line 66
    iget-wide v7, p1, Lb3/m2;->b:J

    .line 67
    .line 68
    iget-wide v5, v0, Lb3/j3;->c:J

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x5

    .line 72
    move-object v1, p0

    .line 73
    move-wide v3, v7

    .line 74
    invoke-direct/range {v1 .. v10}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 79
    .line 80
    :cond_1
    invoke-direct {p0}, Lb3/t1;->V()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private I0(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->a:[Lb3/t3;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lb3/t3;->f()Ld4/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v3, p1, p2}, Lb3/t1;->J0(Lb3/t3;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private J(Lb3/l3;FZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, Lb3/t1$e;->b(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Lb3/t1;->x:Lb3/j3;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Lb3/j3;->f(Lb3/l3;)Lb3/j3;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Lb3/t1;->x:Lb3/j3;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Lb3/l3;->a:F

    .line 20
    .line 21
    invoke-direct {p0, p3}, Lb3/t1;->o1(F)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lb3/t1;->a:[Lb3/t3;

    .line 25
    .line 26
    array-length p4, p3

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p4, :cond_3

    .line 29
    .line 30
    aget-object v1, p3, v0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v2, p1, Lb3/l3;->a:F

    .line 35
    .line 36
    invoke-interface {v1, p2, v2}, Lb3/t3;->t(FF)V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-void
.end method

.method private J0(Lb3/t3;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lb3/t3;->m()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lm4/o;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lm4/o;

    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Lm4/o;->i0(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private K(Lb3/l3;Z)V
    .locals 2

    .line 1
    iget v0, p1, Lb3/l3;->a:F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p1, v0, v1, p2}, Lb3/t1;->J(Lb3/l3;FZZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private K0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb3/t1;->G:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lb3/t1;->G:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-static {v2}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, Lb3/t1;->b:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Lb3/t3;->a()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    .line 39
    monitor-enter p0

    .line 40
    const/4 p1, 0x1

    .line 41
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method private L(Ld4/t$b;JJJZI)Lb3/j3;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-wide/from16 v5, p4

    .line 4
    .line 5
    iget-boolean v1, v0, Lb3/t1;->N:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lb3/t1;->x:Lb3/j3;

    .line 10
    .line 11
    iget-wide v3, v1, Lb3/j3;->r:J

    .line 12
    .line 13
    cmp-long v1, p2, v3

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lb3/t1;->x:Lb3/j3;

    .line 18
    .line 19
    iget-object v1, v1, Lb3/j3;->b:Ld4/t$b;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 31
    :goto_1
    iput-boolean v1, v0, Lb3/t1;->N:Z

    .line 32
    .line 33
    invoke-direct {p0}, Lb3/t1;->r0()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lb3/t1;->x:Lb3/j3;

    .line 37
    .line 38
    iget-object v3, v1, Lb3/j3;->h:Ld4/u0;

    .line 39
    .line 40
    iget-object v4, v1, Lb3/j3;->i:Lw4/i0;

    .line 41
    .line 42
    iget-object v1, v1, Lb3/j3;->j:Ljava/util/List;

    .line 43
    .line 44
    iget-object v7, v0, Lb3/t1;->t:Lb3/d3;

    .line 45
    .line 46
    invoke-virtual {v7}, Lb3/d3;->s()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    iget-object v1, v0, Lb3/t1;->s:Lb3/o2;

    .line 53
    .line 54
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    sget-object v3, Ld4/u0;->d:Ld4/u0;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v1}, Lb3/l2;->n()Ld4/u0;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_2
    if-nez v1, :cond_3

    .line 68
    .line 69
    iget-object v4, v0, Lb3/t1;->e:Lw4/i0;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v1}, Lb3/l2;->o()Lw4/i0;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_3
    iget-object v7, v4, Lw4/i0;->c:[Lw4/y;

    .line 77
    .line 78
    invoke-direct {p0, v7}, Lb3/t1;->v([Lw4/y;)Lo6/q;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v8, v1, Lb3/l2;->f:Lb3/m2;

    .line 85
    .line 86
    iget-wide v9, v8, Lb3/m2;->c:J

    .line 87
    .line 88
    cmp-long v9, v9, v5

    .line 89
    .line 90
    if-eqz v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v8, v5, v6}, Lb3/m2;->a(J)Lb3/m2;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    iput-object v8, v1, Lb3/l2;->f:Lb3/m2;

    .line 97
    .line 98
    :cond_4
    move-object v11, v3

    .line 99
    move-object v12, v4

    .line 100
    move-object v13, v7

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    iget-object v7, v0, Lb3/t1;->x:Lb3/j3;

    .line 103
    .line 104
    iget-object v7, v7, Lb3/j3;->b:Ld4/t$b;

    .line 105
    .line 106
    invoke-virtual {p1, v7}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_6

    .line 111
    .line 112
    sget-object v1, Ld4/u0;->d:Ld4/u0;

    .line 113
    .line 114
    iget-object v3, v0, Lb3/t1;->e:Lw4/i0;

    .line 115
    .line 116
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    move-object v11, v1

    .line 121
    move-object v12, v3

    .line 122
    move-object v13, v4

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move-object v13, v1

    .line 125
    move-object v11, v3

    .line 126
    move-object v12, v4

    .line 127
    :goto_4
    if-eqz p8, :cond_7

    .line 128
    .line 129
    iget-object v1, v0, Lb3/t1;->y:Lb3/t1$e;

    .line 130
    .line 131
    move/from16 v3, p9

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Lb3/t1$e;->e(I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    iget-object v1, v0, Lb3/t1;->x:Lb3/j3;

    .line 137
    .line 138
    invoke-direct {p0}, Lb3/t1;->C()J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    move-object v2, p1

    .line 143
    move-wide/from16 v3, p2

    .line 144
    .line 145
    move-wide/from16 v5, p4

    .line 146
    .line 147
    move-wide/from16 v7, p6

    .line 148
    .line 149
    invoke-virtual/range {v1 .. v13}, Lb3/j3;->c(Ld4/t$b;JJJJLd4/u0;Lw4/i0;Ljava/util/List;)Lb3/j3;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    return-object v1
.end method

.method private L0(Lb3/l3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ly4/n;->i(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lb3/v;->c(Lb3/l3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private M(Lb3/t3;Lb3/l2;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lb3/l2;->j()Lb3/l2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p2, p2, Lb3/l2;->f:Lb3/m2;

    .line 6
    .line 7
    iget-boolean p2, p2, Lb3/m2;->f:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-boolean p2, v0, Lb3/l2;->d:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    instance-of p2, p1, Lm4/o;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    instance-of p2, p1, Lt3/f;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lb3/t3;->B()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {v0}, Lb3/l2;->m()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    cmp-long p1, p1, v0

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private M0(Lb3/t1$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lb3/t1$b;->a(Lb3/t1$b;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lb3/t1$h;

    .line 15
    .line 16
    new-instance v1, Lb3/q3;

    .line 17
    .line 18
    invoke-static {p1}, Lb3/t1$b;->b(Lb3/t1$b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1}, Lb3/t1$b;->c(Lb3/t1$b;)Ld4/o0;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Lb3/q3;-><init>(Ljava/util/Collection;Ld4/o0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lb3/t1$b;->a(Lb3/t1$b;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {p1}, Lb3/t1$b;->d(Lb3/t1$b;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, Lb3/t1$h;-><init>(Lb3/g4;IJ)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lb3/t1;->K:Lb3/t1$h;

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 43
    .line 44
    invoke-static {p1}, Lb3/t1$b;->b(Lb3/t1$b;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1}, Lb3/t1$b;->c(Lb3/t1$b;)Ld4/o0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, v1, p1}, Lb3/d3;->B(Ljava/util/List;Ld4/o0;)Lb3/g4;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lb3/t1;->H(Lb3/g4;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private N()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, v0, Lb3/l2;->d:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lb3/t1;->a:[Lb3/t3;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_3

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    iget-object v4, v0, Lb3/l2;->c:[Ld4/m0;

    .line 22
    .line 23
    aget-object v4, v4, v1

    .line 24
    .line 25
    invoke-interface {v3}, Lb3/t3;->f()Ld4/m0;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-ne v5, v4, :cond_2

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-interface {v3}, Lb3/t3;->j()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v3, v0}, Lb3/t1;->M(Lb3/t3;Lb3/l2;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return v2

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method private static O(ZLd4/t$b;JLd4/t$b;Lb3/g4$b;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_3

    .line 3
    .line 4
    cmp-long p0, p2, p6

    .line 5
    .line 6
    if-nez p0, :cond_3

    .line 7
    .line 8
    iget-object p0, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p2, p4, Ld4/s;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ld4/s;->b()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p2, 0x1

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget p0, p1, Ld4/s;->b:I

    .line 27
    .line 28
    invoke-virtual {p5, p0}, Lb3/g4$b;->t(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget p0, p1, Ld4/s;->b:I

    .line 35
    .line 36
    iget p3, p1, Ld4/s;->c:I

    .line 37
    .line 38
    invoke-virtual {p5, p0, p3}, Lb3/g4$b;->k(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/4 p3, 0x4

    .line 43
    if-eq p0, p3, :cond_1

    .line 44
    .line 45
    iget p0, p1, Ld4/s;->b:I

    .line 46
    .line 47
    iget p1, p1, Ld4/s;->c:I

    .line 48
    .line 49
    invoke-virtual {p5, p0, p1}, Lb3/g4$b;->k(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x2

    .line 54
    if-eq p0, p1, :cond_1

    .line 55
    .line 56
    move v0, p2

    .line 57
    :cond_1
    return v0

    .line 58
    :cond_2
    invoke-virtual {p4}, Ld4/s;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iget p0, p4, Ld4/s;->b:I

    .line 65
    .line 66
    invoke-virtual {p5, p0}, Lb3/g4$b;->t(I)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    move v0, p2

    .line 73
    :cond_3
    :goto_0
    return v0
.end method

.method private O0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/t1;->I:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lb3/t1;->I:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 11
    .line 12
    iget-boolean p1, p1, Lb3/j3;->o:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lb3/t1;->h:Ly4/n;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-interface {p1, v0}, Ly4/n;->e(I)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private P()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lb3/l2;->k()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/high16 v4, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v0, v2, v4

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method private P0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lb3/t1;->A:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lb3/t1;->r0()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lb3/t1;->B:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lb3/o2;->q()Lb3/l2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-direct {p0, p1}, Lb3/t1;->B0(Z)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lb3/t1;->G(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static Q(Lb3/t3;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lb3/t3;->getState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private R()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lb3/l2;->f:Lb3/m2;

    .line 8
    .line 9
    iget-wide v1, v1, Lb3/m2;->e:J

    .line 10
    .line 11
    iget-boolean v0, v0, Lb3/l2;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v0, v1, v3

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 25
    .line 26
    iget-wide v3, v0, Lb3/j3;->r:J

    .line 27
    .line 28
    cmp-long v0, v3, v1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lb3/t1;->c1()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method

.method private R0(ZIZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lb3/t1$e;->b(I)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Lb3/t1$e;->c(I)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lb3/t1;->x:Lb3/j3;

    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Lb3/j3;->d(ZI)Lb3/j3;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lb3/t1;->x:Lb3/j3;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lb3/t1;->C:Z

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lb3/t1;->f0(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lb3/t1;->c1()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lb3/t1;->i1()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lb3/t1;->m1()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 39
    .line 40
    iget p1, p1, Lb3/j3;->e:I

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    const/4 p3, 0x2

    .line 44
    if-ne p1, p2, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lb3/t1;->f1()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lb3/t1;->h:Ly4/n;

    .line 50
    .line 51
    invoke-interface {p1, p3}, Ly4/n;->e(I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-ne p1, p3, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lb3/t1;->h:Ly4/n;

    .line 58
    .line 59
    invoke-interface {p1, p3}, Ly4/n;->e(I)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private static S(Lb3/j3;Lb3/g4$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/j3;->b:Ld4/t$b;

    .line 2
    .line 3
    iget-object p0, p0, Lb3/j3;->a:Lb3/g4;

    .line 4
    .line 5
    invoke-virtual {p0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Lb3/g4$b;->f:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private synthetic T()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/t1;->z:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private T0(Lb3/l3;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb3/t1;->L0(Lb3/l3;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb3/t1;->o:Lb3/v;

    .line 5
    .line 6
    invoke-virtual {p1}, Lb3/v;->g()Lb3/l3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lb3/t1;->K(Lb3/l3;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic U(Lb3/p3;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lb3/t1;->n(Lb3/p3;)V
    :try_end_0
    .catch Lb3/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string v0, "ExoPlayerImplInternal"

    .line 7
    .line 8
    const-string v1, "Unexpected error delivering message on external thread."

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method private V()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb3/t1;->b1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lb3/t1;->D:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lb3/t1;->L:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lb3/l2;->d(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lb3/t1;->j1()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private V0(I)V
    .locals 2

    .line 1
    iput p1, p0, Lb3/t1;->E:I

    .line 2
    .line 3
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 6
    .line 7
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lb3/o2;->G(Lb3/g4;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lb3/t1;->B0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lb3/t1;->G(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lb3/t1$e;->d(Lb3/j3;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 9
    .line 10
    invoke-static {v0}, Lb3/t1$e;->a(Lb3/t1$e;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lb3/t1;->r:Lb3/t1$f;

    .line 17
    .line 18
    iget-object v1, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lb3/t1$f;->a(Lb3/t1$e;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lb3/t1$e;

    .line 24
    .line 25
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lb3/t1$e;-><init>(Lb3/j3;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private W0(Lb3/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/t1;->w:Lb3/x3;

    .line 2
    .line 3
    return-void
.end method

.method private X(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 10
    .line 11
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lb3/t1;->N:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-wide/16 v0, 0x1

    .line 26
    .line 27
    sub-long/2addr p1, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lb3/t1;->N:Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 32
    .line 33
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 34
    .line 35
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 36
    .line 37
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lb3/t1;->M:I

    .line 44
    .line 45
    iget-object v2, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 59
    .line 60
    add-int/lit8 v4, v1, -0x1

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lb3/t1$d;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v3, v2

    .line 70
    :goto_0
    if-eqz v3, :cond_4

    .line 71
    .line 72
    iget v4, v3, Lb3/t1$d;->b:I

    .line 73
    .line 74
    if-gt v4, v0, :cond_3

    .line 75
    .line 76
    if-ne v4, v0, :cond_4

    .line 77
    .line 78
    iget-wide v3, v3, Lb3/t1$d;->c:J

    .line 79
    .line 80
    cmp-long v3, v3, p1

    .line 81
    .line 82
    if-lez v3, :cond_4

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    if-lez v1, :cond_2

    .line 87
    .line 88
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 89
    .line 90
    add-int/lit8 v4, v1, -0x1

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lb3/t1$d;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-ge v1, v3, :cond_5

    .line 106
    .line 107
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lb3/t1$d;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    move-object v3, v2

    .line 117
    :goto_1
    if-eqz v3, :cond_7

    .line 118
    .line 119
    iget-object v4, v3, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 120
    .line 121
    if-eqz v4, :cond_7

    .line 122
    .line 123
    iget v4, v3, Lb3/t1$d;->b:I

    .line 124
    .line 125
    if-lt v4, v0, :cond_6

    .line 126
    .line 127
    if-ne v4, v0, :cond_7

    .line 128
    .line 129
    iget-wide v4, v3, Lb3/t1$d;->c:J

    .line 130
    .line 131
    cmp-long v4, v4, p1

    .line 132
    .line 133
    if-gtz v4, :cond_7

    .line 134
    .line 135
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ge v1, v3, :cond_5

    .line 144
    .line 145
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lb3/t1$d;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 155
    .line 156
    iget-object v4, v3, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 157
    .line 158
    if-eqz v4, :cond_d

    .line 159
    .line 160
    iget v4, v3, Lb3/t1$d;->b:I

    .line 161
    .line 162
    if-ne v4, v0, :cond_d

    .line 163
    .line 164
    iget-wide v4, v3, Lb3/t1$d;->c:J

    .line 165
    .line 166
    cmp-long v6, v4, p1

    .line 167
    .line 168
    if-lez v6, :cond_d

    .line 169
    .line 170
    cmp-long v4, v4, p3

    .line 171
    .line 172
    if-gtz v4, :cond_d

    .line 173
    .line 174
    :try_start_0
    iget-object v4, v3, Lb3/t1$d;->a:Lb3/p3;

    .line 175
    .line 176
    invoke-direct {p0, v4}, Lb3/t1;->G0(Lb3/p3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    iget-object v4, v3, Lb3/t1$d;->a:Lb3/p3;

    .line 180
    .line 181
    invoke-virtual {v4}, Lb3/p3;->b()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_9

    .line 186
    .line 187
    iget-object v3, v3, Lb3/t1$d;->a:Lb3/p3;

    .line 188
    .line 189
    invoke-virtual {v3}, Lb3/p3;->j()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    :goto_3
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :goto_4
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-ge v1, v3, :cond_a

    .line 211
    .line 212
    iget-object v3, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lb3/t1$d;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_a
    move-object v3, v2

    .line 222
    goto :goto_2

    .line 223
    :catchall_0
    move-exception p1

    .line 224
    iget-object p2, v3, Lb3/t1$d;->a:Lb3/p3;

    .line 225
    .line 226
    invoke-virtual {p2}, Lb3/p3;->b()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-nez p2, :cond_b

    .line 231
    .line 232
    iget-object p2, v3, Lb3/t1$d;->a:Lb3/p3;

    .line 233
    .line 234
    invoke-virtual {p2}, Lb3/p3;->j()Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_c

    .line 239
    .line 240
    :cond_b
    iget-object p2, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    :cond_c
    throw p1

    .line 246
    :cond_d
    iput v1, p0, Lb3/t1;->M:I

    .line 247
    .line 248
    :cond_e
    :goto_5
    return-void
.end method

.method private X0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lb3/t1;->F:Z

    .line 2
    .line 3
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 6
    .line 7
    iget-object v1, v1, Lb3/j3;->a:Lb3/g4;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lb3/o2;->H(Lb3/g4;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lb3/t1;->B0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lb3/t1;->G(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private Y()V
    .locals 11

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    iget-wide v1, p0, Lb3/t1;->L:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lb3/o2;->y(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lb3/o2;->D()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 17
    .line 18
    iget-wide v1, p0, Lb3/t1;->L:J

    .line 19
    .line 20
    iget-object v3, p0, Lb3/t1;->x:Lb3/j3;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lb3/o2;->o(JLb3/j3;)Lb3/m2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lb3/t1;->s:Lb3/o2;

    .line 29
    .line 30
    iget-object v5, p0, Lb3/t1;->c:[Lb3/u3;

    .line 31
    .line 32
    iget-object v6, p0, Lb3/t1;->d:Lw4/h0;

    .line 33
    .line 34
    iget-object v1, p0, Lb3/t1;->f:Lb3/d2;

    .line 35
    .line 36
    invoke-interface {v1}, Lb3/d2;->h()Lx4/b;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v8, p0, Lb3/t1;->t:Lb3/d3;

    .line 41
    .line 42
    iget-object v10, p0, Lb3/t1;->e:Lw4/i0;

    .line 43
    .line 44
    move-object v9, v0

    .line 45
    invoke-virtual/range {v4 .. v10}, Lb3/o2;->g([Lb3/u3;Lw4/h0;Lx4/b;Lb3/d3;Lb3/m2;Lw4/i0;)Lb3/l2;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, v1, Lb3/l2;->a:Ld4/r;

    .line 50
    .line 51
    iget-wide v3, v0, Lb3/m2;->b:J

    .line 52
    .line 53
    invoke-interface {v2, p0, v3, v4}, Ld4/r;->t(Ld4/r$a;J)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lb3/t1;->s:Lb3/o2;

    .line 57
    .line 58
    invoke-virtual {v2}, Lb3/o2;->p()Lb3/l2;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-ne v2, v1, :cond_0

    .line 63
    .line 64
    iget-wide v0, v0, Lb3/m2;->b:J

    .line 65
    .line 66
    invoke-direct {p0, v0, v1}, Lb3/t1;->s0(J)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lb3/t1;->G(Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-boolean v0, p0, Lb3/t1;->D:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-direct {p0}, Lb3/t1;->P()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput-boolean v0, p0, Lb3/t1;->D:Z

    .line 82
    .line 83
    invoke-direct {p0}, Lb3/t1;->j1()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0}, Lb3/t1;->V()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method private Y0(Ld4/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lb3/d3;->C(Ld4/o0;)Lb3/g4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lb3/t1;->H(Lb3/g4;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private Z()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-direct {p0}, Lb3/t1;->a1()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lb3/t1;->W()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lb3/t1;->s:Lb3/o2;

    .line 15
    .line 16
    invoke-virtual {v1}, Lb3/o2;->b()Lb3/l2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lb3/l2;

    .line 25
    .line 26
    iget-object v2, p0, Lb3/t1;->x:Lb3/j3;

    .line 27
    .line 28
    iget-object v2, v2, Lb3/j3;->b:Ld4/t$b;

    .line 29
    .line 30
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v3, v1, Lb3/l2;->f:Lb3/m2;

    .line 33
    .line 34
    iget-object v3, v3, Lb3/m2;->a:Ld4/t$b;

    .line 35
    .line 36
    iget-object v3, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lb3/t1;->x:Lb3/j3;

    .line 46
    .line 47
    iget-object v2, v2, Lb3/j3;->b:Ld4/t$b;

    .line 48
    .line 49
    iget v4, v2, Ld4/s;->b:I

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    if-ne v4, v5, :cond_1

    .line 53
    .line 54
    iget-object v4, v1, Lb3/l2;->f:Lb3/m2;

    .line 55
    .line 56
    iget-object v4, v4, Lb3/m2;->a:Ld4/t$b;

    .line 57
    .line 58
    iget v6, v4, Ld4/s;->b:I

    .line 59
    .line 60
    if-ne v6, v5, :cond_1

    .line 61
    .line 62
    iget v2, v2, Ld4/s;->e:I

    .line 63
    .line 64
    iget v4, v4, Ld4/s;->e:I

    .line 65
    .line 66
    if-eq v2, v4, :cond_1

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v0

    .line 71
    :goto_1
    iget-object v1, v1, Lb3/l2;->f:Lb3/m2;

    .line 72
    .line 73
    iget-object v5, v1, Lb3/m2;->a:Ld4/t$b;

    .line 74
    .line 75
    iget-wide v10, v1, Lb3/m2;->b:J

    .line 76
    .line 77
    iget-wide v8, v1, Lb3/m2;->c:J

    .line 78
    .line 79
    xor-int/lit8 v12, v2, 0x1

    .line 80
    .line 81
    const/4 v13, 0x0

    .line 82
    move-object v4, p0

    .line 83
    move-wide v6, v10

    .line 84
    invoke-direct/range {v4 .. v13}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 89
    .line 90
    invoke-direct {p0}, Lb3/t1;->r0()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lb3/t1;->m1()V

    .line 94
    .line 95
    .line 96
    move v1, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method private Z0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 2
    .line 3
    iget v1, v0, Lb3/j3;->e:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v1, p0, Lb3/t1;->Q:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lb3/j3;->g(I)Lb3/j3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private a0()V
    .locals 14

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    iget-boolean v1, p0, Lb3/t1;->B:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lb3/t1;->N()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-boolean v1, v1, Lb3/l2;->d:Z

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iget-wide v1, p0, Lb3/t1;->L:J

    .line 44
    .line 45
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lb3/l2;->m()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    cmp-long v1, v1, v3

    .line 54
    .line 55
    if-gez v1, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    iget-object v1, p0, Lb3/t1;->s:Lb3/o2;

    .line 63
    .line 64
    invoke-virtual {v1}, Lb3/o2;->c()Lb3/l2;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v12}, Lb3/l2;->o()Lw4/i0;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 73
    .line 74
    iget-object v3, v1, Lb3/j3;->a:Lb3/g4;

    .line 75
    .line 76
    iget-object v1, v12, Lb3/l2;->f:Lb3/m2;

    .line 77
    .line 78
    iget-object v2, v1, Lb3/m2;->a:Ld4/t$b;

    .line 79
    .line 80
    iget-object v0, v0, Lb3/l2;->f:Lb3/m2;

    .line 81
    .line 82
    iget-object v4, v0, Lb3/m2;->a:Ld4/t$b;

    .line 83
    .line 84
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    move-object v0, p0

    .line 91
    move-object v1, v3

    .line 92
    invoke-direct/range {v0 .. v7}, Lb3/t1;->n1(Lb3/g4;Ld4/t$b;Lb3/g4;Ld4/t$b;JZ)V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, v12, Lb3/l2;->d:Z

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v0, v12, Lb3/l2;->a:Ld4/r;

    .line 100
    .line 101
    invoke-interface {v0}, Ld4/r;->p()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    cmp-long v0, v0, v8

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v12}, Lb3/l2;->m()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-direct {p0, v0, v1}, Lb3/t1;->I0(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    move v0, v10

    .line 118
    :goto_0
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 119
    .line 120
    array-length v1, v1

    .line 121
    if-ge v0, v1, :cond_8

    .line 122
    .line 123
    invoke-virtual {v11, v0}, Lw4/i0;->c(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v13, v0}, Lw4/i0;->c(I)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 134
    .line 135
    aget-object v1, v1, v0

    .line 136
    .line 137
    invoke-interface {v1}, Lb3/t3;->D()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Lb3/t1;->c:[Lb3/u3;

    .line 144
    .line 145
    aget-object v1, v1, v0

    .line 146
    .line 147
    invoke-interface {v1}, Lb3/u3;->h()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v3, -0x2

    .line 152
    if-ne v1, v3, :cond_5

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move v1, v10

    .line 157
    :goto_1
    iget-object v3, v11, Lw4/i0;->b:[Lb3/v3;

    .line 158
    .line 159
    aget-object v3, v3, v0

    .line 160
    .line 161
    iget-object v4, v13, Lw4/i0;->b:[Lb3/v3;

    .line 162
    .line 163
    aget-object v4, v4, v0

    .line 164
    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    invoke-virtual {v4, v3}, Lb3/v3;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_6

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    :cond_6
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 176
    .line 177
    aget-object v1, v1, v0

    .line 178
    .line 179
    invoke-virtual {v12}, Lb3/l2;->m()J

    .line 180
    .line 181
    .line 182
    move-result-wide v2

    .line 183
    invoke-direct {p0, v1, v2, v3}, Lb3/t1;->J0(Lb3/t3;J)V

    .line 184
    .line 185
    .line 186
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_8
    return-void

    .line 190
    :cond_9
    :goto_2
    iget-object v1, v0, Lb3/l2;->f:Lb3/m2;

    .line 191
    .line 192
    iget-boolean v1, v1, Lb3/m2;->i:Z

    .line 193
    .line 194
    if-nez v1, :cond_a

    .line 195
    .line 196
    iget-boolean v1, p0, Lb3/t1;->B:Z

    .line 197
    .line 198
    if-eqz v1, :cond_d

    .line 199
    .line 200
    :cond_a
    :goto_3
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 201
    .line 202
    array-length v2, v1

    .line 203
    if-ge v10, v2, :cond_d

    .line 204
    .line 205
    aget-object v1, v1, v10

    .line 206
    .line 207
    iget-object v2, v0, Lb3/l2;->c:[Ld4/m0;

    .line 208
    .line 209
    aget-object v2, v2, v10

    .line 210
    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    invoke-interface {v1}, Lb3/t3;->f()Ld4/m0;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-ne v3, v2, :cond_c

    .line 218
    .line 219
    invoke-interface {v1}, Lb3/t3;->j()Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_c

    .line 224
    .line 225
    iget-object v2, v0, Lb3/l2;->f:Lb3/m2;

    .line 226
    .line 227
    iget-wide v2, v2, Lb3/m2;->e:J

    .line 228
    .line 229
    cmp-long v4, v2, v8

    .line 230
    .line 231
    if-eqz v4, :cond_b

    .line 232
    .line 233
    const-wide/high16 v4, -0x8000000000000000L

    .line 234
    .line 235
    cmp-long v2, v2, v4

    .line 236
    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    invoke-virtual {v0}, Lb3/l2;->l()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    iget-object v4, v0, Lb3/l2;->f:Lb3/m2;

    .line 244
    .line 245
    iget-wide v4, v4, Lb3/m2;->e:J

    .line 246
    .line 247
    add-long/2addr v2, v4

    .line 248
    goto :goto_4

    .line 249
    :cond_b
    move-wide v2, v8

    .line 250
    :goto_4
    invoke-direct {p0, v1, v2, v3}, Lb3/t1;->J0(Lb3/t3;J)V

    .line 251
    .line 252
    .line 253
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_d
    return-void
.end method

.method private a1()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lb3/t1;->c1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lb3/t1;->B:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-wide v2, p0, Lb3/t1;->L:J

    .line 30
    .line 31
    invoke-virtual {v0}, Lb3/l2;->m()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-ltz v2, :cond_3

    .line 38
    .line 39
    iget-boolean v0, v0, Lb3/l2;->g:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_3
    return v1
.end method

.method private b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lb3/t1;->s:Lb3/o2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Lb3/l2;->g:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0}, Lb3/t1;->o0()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lb3/t1;->r()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private b1()Z
    .locals 12

    .line 1
    invoke-direct {p0}, Lb3/t1;->P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lb3/l2;->k()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-direct {p0, v2, v3}, Lb3/t1;->D(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v4, p0, Lb3/t1;->s:Lb3/o2;

    .line 24
    .line 25
    invoke-virtual {v4}, Lb3/o2;->p()Lb3/l2;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-ne v0, v4, :cond_1

    .line 30
    .line 31
    iget-wide v4, p0, Lb3/t1;->L:J

    .line 32
    .line 33
    invoke-virtual {v0, v4, v5}, Lb3/l2;->y(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-wide v4, p0, Lb3/t1;->L:J

    .line 39
    .line 40
    invoke-virtual {v0, v4, v5}, Lb3/l2;->y(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    iget-object v0, v0, Lb3/l2;->f:Lb3/m2;

    .line 45
    .line 46
    iget-wide v6, v0, Lb3/m2;->b:J

    .line 47
    .line 48
    sub-long/2addr v4, v6

    .line 49
    :goto_0
    move-wide v10, v4

    .line 50
    iget-object v4, p0, Lb3/t1;->f:Lb3/d2;

    .line 51
    .line 52
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 53
    .line 54
    invoke-virtual {v0}, Lb3/v;->g()Lb3/l3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v9, v0, Lb3/l3;->a:F

    .line 59
    .line 60
    move-wide v5, v10

    .line 61
    move-wide v7, v2

    .line 62
    invoke-interface/range {v4 .. v9}, Lb3/d2;->g(JJF)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const-wide/32 v4, 0x7a120

    .line 69
    .line 70
    .line 71
    cmp-long v4, v2, v4

    .line 72
    .line 73
    if-gez v4, :cond_3

    .line 74
    .line 75
    iget-wide v4, p0, Lb3/t1;->m:J

    .line 76
    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    cmp-long v4, v4, v6

    .line 80
    .line 81
    if-gtz v4, :cond_2

    .line 82
    .line 83
    iget-boolean v4, p0, Lb3/t1;->n:Z

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 88
    .line 89
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lb3/l2;->a:Ld4/r;

    .line 94
    .line 95
    iget-object v4, p0, Lb3/t1;->x:Lb3/j3;

    .line 96
    .line 97
    iget-wide v4, v4, Lb3/j3;->r:J

    .line 98
    .line 99
    invoke-interface {v0, v4, v5, v1}, Ld4/r;->r(JZ)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lb3/t1;->f:Lb3/d2;

    .line 103
    .line 104
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 105
    .line 106
    invoke-virtual {v0}, Lb3/v;->g()Lb3/l3;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v9, v0, Lb3/l3;->a:F

    .line 111
    .line 112
    move-wide v5, v10

    .line 113
    move-wide v7, v2

    .line 114
    invoke-interface/range {v4 .. v9}, Lb3/d2;->g(JJF)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    :cond_3
    return v0
.end method

.method private c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/d3;->i()Lb3/g4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1}, Lb3/t1;->H(Lb3/g4;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private c1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lb3/j3;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lb3/j3;->m:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private d0(Lb3/t1$c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private d1(Z)Z
    .locals 12

    .line 1
    iget v0, p0, Lb3/t1;->J:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lb3/t1;->R()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 15
    .line 16
    iget-boolean v1, p1, Lb3/j3;->g:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object p1, p1, Lb3/j3;->a:Lb3/g4;

    .line 23
    .line 24
    iget-object v1, p0, Lb3/t1;->s:Lb3/o2;

    .line 25
    .line 26
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lb3/l2;->f:Lb3/m2;

    .line 31
    .line 32
    iget-object v1, v1, Lb3/m2;->a:Ld4/t$b;

    .line 33
    .line 34
    invoke-direct {p0, p1, v1}, Lb3/t1;->e1(Lb3/g4;Ld4/t$b;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lb3/t1;->u:Lb3/c2;

    .line 41
    .line 42
    invoke-interface {p1}, Lb3/c2;->c()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :goto_0
    move-wide v10, v3

    .line 53
    iget-object p1, p0, Lb3/t1;->s:Lb3/o2;

    .line 54
    .line 55
    invoke-virtual {p1}, Lb3/o2;->j()Lb3/l2;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lb3/l2;->q()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    iget-object v1, p1, Lb3/l2;->f:Lb3/m2;

    .line 66
    .line 67
    iget-boolean v1, v1, Lb3/m2;->i:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    move v1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v1, v0

    .line 74
    :goto_1
    iget-object v3, p1, Lb3/l2;->f:Lb3/m2;

    .line 75
    .line 76
    iget-object v3, v3, Lb3/m2;->a:Ld4/t$b;

    .line 77
    .line 78
    invoke-virtual {v3}, Ld4/s;->b()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    iget-boolean p1, p1, Lb3/l2;->d:Z

    .line 85
    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    move p1, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move p1, v0

    .line 91
    :goto_2
    if-nez v1, :cond_6

    .line 92
    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    iget-object v5, p0, Lb3/t1;->f:Lb3/d2;

    .line 96
    .line 97
    invoke-direct {p0}, Lb3/t1;->C()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    iget-object p1, p0, Lb3/t1;->o:Lb3/v;

    .line 102
    .line 103
    invoke-virtual {p1}, Lb3/v;->g()Lb3/l3;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget v8, p1, Lb3/l3;->a:F

    .line 108
    .line 109
    iget-boolean v9, p0, Lb3/t1;->C:Z

    .line 110
    .line 111
    invoke-interface/range {v5 .. v11}, Lb3/d2;->e(JFZJ)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    :cond_6
    move v0, v2

    .line 118
    :cond_7
    return v0
.end method

.method public static synthetic e(Lb3/t1;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/t1;->T()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lw4/i0;->c:[Lw4/y;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4}, Lw4/y;->r()V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private e1(Lb3/g4;Ld4/t$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Ld4/s;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p2, Ld4/s;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Lb3/g4$b;->c:I

    .line 24
    .line 25
    iget-object v0, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 31
    .line 32
    invoke-virtual {p1}, Lb3/g4$d;->g()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 39
    .line 40
    iget-boolean p2, p1, Lb3/g4$d;->i:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-wide p1, p1, Lb3/g4$d;->f:J

    .line 45
    .line 46
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long p1, p1, v2

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic f(Lb3/t1;Lb3/p3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/t1;->U(Lb3/p3;)V

    return-void
.end method

.method private f0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lw4/i0;->c:[Lw4/y;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, p1}, Lw4/y;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private f1()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb3/t1;->C:Z

    .line 3
    .line 4
    iget-object v1, p0, Lb3/t1;->o:Lb3/v;

    .line 5
    .line 6
    invoke-virtual {v1}, Lb3/v;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    :goto_0
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    aget-object v3, v1, v0

    .line 15
    .line 16
    invoke-static {v3}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Lb3/t3;->start()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private g0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lw4/i0;->c:[Lw4/y;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4}, Lw4/y;->t()V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private h1(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lb3/t1;->G:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move p1, v1

    .line 13
    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lb3/t1;->q0(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lb3/t1$e;->b(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lb3/t1;->f:Lb3/d2;

    .line 22
    .line 23
    invoke-interface {p1}, Lb3/d2;->i()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1}, Lb3/t1;->Z0(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic i(Lb3/t1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb3/t1;->H:Z

    .line 2
    .line 3
    return p1
.end method

.method private i1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/v;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/t1;->a:[Lb3/t3;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-static {v3}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v3}, Lb3/t1;->t(Lb3/t3;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method private j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0, v0, v1}, Lb3/t1;->q0(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lb3/t1;->f:Lb3/d2;

    .line 12
    .line 13
    invoke-interface {v0}, Lb3/d2;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 17
    .line 18
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 19
    .line 20
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    invoke-direct {p0, v0}, Lb3/t1;->Z0(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 34
    .line 35
    iget-object v2, p0, Lb3/t1;->g:Lx4/e;

    .line 36
    .line 37
    invoke-interface {v2}, Lx4/e;->g()Lx4/m0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lb3/d3;->v(Lx4/m0;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ly4/n;->e(I)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private j1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lb3/t1;->D:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lb3/l2;->a:Ld4/r;

    .line 14
    .line 15
    invoke-interface {v0}, Ld4/r;->isLoading()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 26
    .line 27
    iget-boolean v2, v1, Lb3/j3;->g:Z

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lb3/j3;->a(Z)Lb3/j3;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method static synthetic k(Lb3/t1;)Ly4/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private k1(Ld4/u0;Lw4/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->f:Lb3/d2;

    .line 2
    .line 3
    iget-object v1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 4
    .line 5
    iget-object p2, p2, Lw4/i0;->c:[Lw4/y;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lb3/d2;->f([Lb3/t3;Ld4/u0;[Lw4/y;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private l(Lb3/t1$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lb3/d3;->q()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :cond_0
    invoke-static {p1}, Lb3/t1$b;->b(Lb3/t1$b;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1}, Lb3/t1$b;->c(Lb3/t1$b;)Ld4/o0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p2, v1, p1}, Lb3/d3;->f(ILjava/util/List;Ld4/o0;)Lb3/g4;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lb3/t1;->H(Lb3/g4;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v1, v0, v1, v0}, Lb3/t1;->q0(ZZZZ)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/t1;->f:Lb3/d2;

    .line 7
    .line 8
    invoke-interface {v0}, Lb3/d2;->d()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lb3/t1;->Z0(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lb3/t1;->i:Landroid/os/HandlerThread;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-enter p0

    .line 22
    :try_start_0
    iput-boolean v1, p0, Lb3/t1;->z:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0
.end method

.method private l1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 2
    .line 3
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 4
    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lb3/d3;->s()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lb3/t1;->Y()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lb3/t1;->a0()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lb3/t1;->b0()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lb3/t1;->Z()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lb3/t1;->B0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private m0(IILd4/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->y:Lb3/t1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb3/t1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lb3/t1;->t:Lb3/d3;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lb3/d3;->z(IILd4/o0;)Lb3/g4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Lb3/t1;->H(Lb3/g4;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private m1()V
    .locals 11

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lb3/l2;->d:Z

    .line 11
    .line 12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lb3/l2;->a:Ld4/r;

    .line 20
    .line 21
    invoke-interface {v1}, Ld4/r;->p()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    move-wide v6, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-wide v6, v2

    .line 28
    :goto_0
    cmp-long v1, v6, v2

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, v6, v7}, Lb3/t1;->s0(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 37
    .line 38
    iget-wide v0, v0, Lb3/j3;->r:J

    .line 39
    .line 40
    cmp-long v0, v6, v0

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 45
    .line 46
    iget-object v1, v0, Lb3/j3;->b:Ld4/t$b;

    .line 47
    .line 48
    iget-wide v4, v0, Lb3/j3;->c:J

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x5

    .line 52
    move-object v0, p0

    .line 53
    move-wide v2, v6

    .line 54
    invoke-direct/range {v0 .. v9}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v1, p0, Lb3/t1;->o:Lb3/v;

    .line 62
    .line 63
    iget-object v2, p0, Lb3/t1;->s:Lb3/o2;

    .line 64
    .line 65
    invoke-virtual {v2}, Lb3/o2;->q()Lb3/l2;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v2, v10

    .line 74
    :goto_1
    invoke-virtual {v1, v2}, Lb3/v;->i(Z)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, p0, Lb3/t1;->L:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lb3/l2;->y(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-object v2, p0, Lb3/t1;->x:Lb3/j3;

    .line 85
    .line 86
    iget-wide v2, v2, Lb3/j3;->r:J

    .line 87
    .line 88
    invoke-direct {p0, v2, v3, v0, v1}, Lb3/t1;->X(JJ)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lb3/t1;->x:Lb3/j3;

    .line 92
    .line 93
    iput-wide v0, v2, Lb3/j3;->r:J

    .line 94
    .line 95
    :cond_4
    :goto_2
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 96
    .line 97
    invoke-virtual {v0}, Lb3/o2;->j()Lb3/l2;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 102
    .line 103
    invoke-virtual {v0}, Lb3/l2;->i()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    iput-wide v2, v1, Lb3/j3;->p:J

    .line 108
    .line 109
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 110
    .line 111
    invoke-direct {p0}, Lb3/t1;->C()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    iput-wide v1, v0, Lb3/j3;->q:J

    .line 116
    .line 117
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 118
    .line 119
    iget-boolean v1, v0, Lb3/j3;->l:Z

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget v1, v0, Lb3/j3;->e:I

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    if-ne v1, v2, :cond_5

    .line 127
    .line 128
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 129
    .line 130
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 131
    .line 132
    invoke-direct {p0, v1, v0}, Lb3/t1;->e1(Lb3/g4;Ld4/t$b;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 139
    .line 140
    iget-object v0, v0, Lb3/j3;->n:Lb3/l3;

    .line 141
    .line 142
    iget v0, v0, Lb3/l3;->a:F

    .line 143
    .line 144
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    .line 146
    cmpl-float v0, v0, v1

    .line 147
    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lb3/t1;->u:Lb3/c2;

    .line 151
    .line 152
    invoke-direct {p0}, Lb3/t1;->w()J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    invoke-direct {p0}, Lb3/t1;->C()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-interface {v0, v1, v2, v3, v4}, Lb3/c2;->b(JJ)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lb3/t1;->o:Lb3/v;

    .line 165
    .line 166
    invoke-virtual {v1}, Lb3/v;->g()Lb3/l3;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget v1, v1, Lb3/l3;->a:F

    .line 171
    .line 172
    cmpl-float v1, v1, v0

    .line 173
    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    iget-object v1, p0, Lb3/t1;->x:Lb3/j3;

    .line 177
    .line 178
    iget-object v1, v1, Lb3/j3;->n:Lb3/l3;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lb3/l3;->d(F)Lb3/l3;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lb3/t1;->L0(Lb3/l3;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 188
    .line 189
    iget-object v0, v0, Lb3/j3;->n:Lb3/l3;

    .line 190
    .line 191
    iget-object v1, p0, Lb3/t1;->o:Lb3/v;

    .line 192
    .line 193
    invoke-virtual {v1}, Lb3/v;->g()Lb3/l3;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget v1, v1, Lb3/l3;->a:F

    .line 198
    .line 199
    invoke-direct {p0, v0, v1, v10, v10}, Lb3/t1;->J(Lb3/l3;FZZ)V

    .line 200
    .line 201
    .line 202
    :cond_5
    return-void
.end method

.method private n(Lb3/p3;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lb3/p3;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lb3/p3;->g()Lb3/p3$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lb3/p3;->i()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Lb3/p3;->e()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v1, v2, v3}, Lb3/p3$b;->y(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lb3/p3;->k(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {p1, v0}, Lb3/p3;->k(Z)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method private n1(Lb3/g4;Ld4/t$b;Lb3/g4;Ld4/t$b;JZ)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lb3/t1;->e1(Lb3/g4;Ld4/t$b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Ld4/s;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lb3/l3;->d:Lb3/l3;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 17
    .line 18
    iget-object p1, p1, Lb3/j3;->n:Lb3/l3;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, Lb3/t1;->o:Lb3/v;

    .line 21
    .line 22
    invoke-virtual {p2}, Lb3/v;->g()Lb3/l3;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lb3/l3;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lb3/t1;->L0(Lb3/l3;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lb3/t1;->x:Lb3/j3;

    .line 36
    .line 37
    iget-object p2, p2, Lb3/j3;->n:Lb3/l3;

    .line 38
    .line 39
    iget p1, p1, Lb3/l3;->a:F

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-direct {p0, p2, p1, p3, p3}, Lb3/t1;->J(Lb3/l3;FZZ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :cond_2
    iget-object v0, p2, Ld4/s;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v1, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Lb3/g4$b;->c:I

    .line 55
    .line 56
    iget-object v1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lb3/t1;->u:Lb3/c2;

    .line 62
    .line 63
    iget-object v1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 64
    .line 65
    iget-object v1, v1, Lb3/g4$d;->k:Lb3/f2$g;

    .line 66
    .line 67
    invoke-static {v1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lb3/f2$g;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Lb3/c2;->a(Lb3/f2$g;)V

    .line 74
    .line 75
    .line 76
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v2, p5, v0

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object p3, p0, Lb3/t1;->u:Lb3/c2;

    .line 86
    .line 87
    iget-object p2, p2, Ld4/s;->a:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p0, p1, p2, p5, p6}, Lb3/t1;->y(Lb3/g4;Ljava/lang/Object;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    invoke-interface {p3, p1, p2}, Lb3/c2;->e(J)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object p1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 98
    .line 99
    iget-object p1, p1, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {p3}, Lb3/g4;->u()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_4

    .line 106
    .line 107
    iget-object p2, p4, Ld4/s;->a:Ljava/lang/Object;

    .line 108
    .line 109
    iget-object p4, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 110
    .line 111
    invoke-virtual {p3, p2, p4}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget p2, p2, Lb3/g4$b;->c:I

    .line 116
    .line 117
    iget-object p4, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 118
    .line 119
    invoke-virtual {p3, p2, p4}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object p2, p2, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const/4 p2, 0x0

    .line 127
    :goto_1
    invoke-static {p2, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    if-eqz p7, :cond_6

    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Lb3/t1;->u:Lb3/c2;

    .line 136
    .line 137
    invoke-interface {p1, v0, v1}, Lb3/c2;->e(J)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    return-void
.end method

.method private o(Lb3/t3;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lb3/v;->a(Lb3/t3;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lb3/t1;->t(Lb3/t3;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lb3/t3;->e()V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lb3/t1;->J:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Lb3/t1;->J:I

    .line 24
    .line 25
    return-void
.end method

.method private o0()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    iget-object v5, p0, Lb3/t1;->a:[Lb3/t3;

    .line 15
    .line 16
    array-length v6, v5

    .line 17
    const/4 v7, 0x1

    .line 18
    if-ge v3, v6, :cond_5

    .line 19
    .line 20
    aget-object v8, v5, v3

    .line 21
    .line 22
    invoke-static {v8}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-interface {v8}, Lb3/t3;->f()Ld4/m0;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v0, Lb3/l2;->c:[Ld4/m0;

    .line 34
    .line 35
    aget-object v6, v6, v3

    .line 36
    .line 37
    if-eq v5, v6, :cond_1

    .line 38
    .line 39
    move v5, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v2

    .line 42
    :goto_1
    invoke-virtual {v1, v3}, Lw4/i0;->c(I)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v8}, Lb3/t3;->D()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    iget-object v5, v1, Lw4/i0;->c:[Lw4/y;

    .line 58
    .line 59
    aget-object v5, v5, v3

    .line 60
    .line 61
    invoke-static {v5}, Lb3/t1;->x(Lw4/y;)[Lb3/x1;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v5, v0, Lb3/l2;->c:[Ld4/m0;

    .line 66
    .line 67
    aget-object v10, v5, v3

    .line 68
    .line 69
    invoke-virtual {v0}, Lb3/l2;->m()J

    .line 70
    .line 71
    .line 72
    move-result-wide v11

    .line 73
    invoke-virtual {v0}, Lb3/l2;->l()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    invoke-interface/range {v8 .. v14}, Lb3/t3;->i([Lb3/x1;Ld4/m0;JJ)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {v8}, Lb3/t3;->d()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-direct {p0, v8}, Lb3/t1;->o(Lb3/t3;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v4, v7

    .line 92
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    xor-int/lit8 v0, v4, 0x1

    .line 96
    .line 97
    return v0
.end method

.method private o1(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lw4/i0;->c:[Lw4/y;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, p1}, Lw4/y;->p(F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lb3/l2;->j()Lb3/l2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private p()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb3/t1;->q:Ly4/d;

    .line 4
    .line 5
    invoke-interface {v1}, Ly4/d;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, v0, Lb3/t1;->h:Ly4/n;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-interface {v3, v4}, Ly4/n;->i(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lb3/t1;->l1()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Lb3/t1;->x:Lb3/j3;

    .line 19
    .line 20
    iget v3, v3, Lb3/j3;->e:I

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v3, v5, :cond_22

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-ne v3, v6, :cond_0

    .line 27
    .line 28
    goto/16 :goto_11

    .line 29
    .line 30
    :cond_0
    iget-object v3, v0, Lb3/t1;->s:Lb3/o2;

    .line 31
    .line 32
    invoke-virtual {v3}, Lb3/o2;->p()Lb3/l2;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-wide/16 v7, 0xa

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v7, v8}, Lb3/t1;->z0(JJ)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string v9, "doSomeWork"

    .line 45
    .line 46
    invoke-static {v9}, Ly4/n0;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lb3/t1;->m1()V

    .line 50
    .line 51
    .line 52
    iget-boolean v9, v3, Lb3/l2;->d:Z

    .line 53
    .line 54
    const-wide/16 v10, 0x3e8

    .line 55
    .line 56
    const/4 v12, 0x0

    .line 57
    if-eqz v9, :cond_a

    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v13

    .line 63
    mul-long/2addr v13, v10

    .line 64
    iget-object v9, v3, Lb3/l2;->a:Ld4/r;

    .line 65
    .line 66
    iget-object v15, v0, Lb3/t1;->x:Lb3/j3;

    .line 67
    .line 68
    iget-wide v7, v15, Lb3/j3;->r:J

    .line 69
    .line 70
    iget-wide v10, v0, Lb3/t1;->m:J

    .line 71
    .line 72
    sub-long/2addr v7, v10

    .line 73
    iget-boolean v10, v0, Lb3/t1;->n:Z

    .line 74
    .line 75
    invoke-interface {v9, v7, v8, v10}, Ld4/r;->r(JZ)V

    .line 76
    .line 77
    .line 78
    move v8, v5

    .line 79
    move v9, v8

    .line 80
    move v7, v12

    .line 81
    :goto_0
    iget-object v10, v0, Lb3/t1;->a:[Lb3/t3;

    .line 82
    .line 83
    array-length v11, v10

    .line 84
    if-ge v7, v11, :cond_b

    .line 85
    .line 86
    aget-object v10, v10, v7

    .line 87
    .line 88
    invoke-static {v10}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_2

    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_2
    iget-wide v4, v0, Lb3/t1;->L:J

    .line 96
    .line 97
    invoke-interface {v10, v4, v5, v13, v14}, Lb3/t3;->x(JJ)V

    .line 98
    .line 99
    .line 100
    if-eqz v8, :cond_3

    .line 101
    .line 102
    invoke-interface {v10}, Lb3/t3;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    const/4 v8, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v8, v12

    .line 111
    :goto_1
    iget-object v4, v3, Lb3/l2;->c:[Ld4/m0;

    .line 112
    .line 113
    aget-object v4, v4, v7

    .line 114
    .line 115
    invoke-interface {v10}, Lb3/t3;->f()Ld4/m0;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eq v4, v5, :cond_4

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v4, v12

    .line 124
    :goto_2
    if-nez v4, :cond_5

    .line 125
    .line 126
    invoke-interface {v10}, Lb3/t3;->j()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v5, v12

    .line 135
    :goto_3
    if-nez v4, :cond_7

    .line 136
    .line 137
    if-nez v5, :cond_7

    .line 138
    .line 139
    invoke-interface {v10}, Lb3/t3;->isReady()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_7

    .line 144
    .line 145
    invoke-interface {v10}, Lb3/t3;->d()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move v4, v12

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_4
    const/4 v4, 0x1

    .line 155
    :goto_5
    if-eqz v9, :cond_8

    .line 156
    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    const/4 v9, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_8
    move v9, v12

    .line 162
    :goto_6
    if-nez v4, :cond_9

    .line 163
    .line 164
    invoke-interface {v10}, Lb3/t3;->z()V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    const/4 v5, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_a
    iget-object v4, v3, Lb3/l2;->a:Ld4/r;

    .line 173
    .line 174
    invoke-interface {v4}, Ld4/r;->i()V

    .line 175
    .line 176
    .line 177
    const/4 v8, 0x1

    .line 178
    const/4 v9, 0x1

    .line 179
    :cond_b
    iget-object v4, v3, Lb3/l2;->f:Lb3/m2;

    .line 180
    .line 181
    iget-wide v4, v4, Lb3/m2;->e:J

    .line 182
    .line 183
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    if-eqz v8, :cond_d

    .line 189
    .line 190
    iget-boolean v7, v3, Lb3/l2;->d:Z

    .line 191
    .line 192
    if-eqz v7, :cond_d

    .line 193
    .line 194
    cmp-long v7, v4, v13

    .line 195
    .line 196
    if-eqz v7, :cond_c

    .line 197
    .line 198
    iget-object v7, v0, Lb3/t1;->x:Lb3/j3;

    .line 199
    .line 200
    iget-wide v7, v7, Lb3/j3;->r:J

    .line 201
    .line 202
    cmp-long v4, v4, v7

    .line 203
    .line 204
    if-gtz v4, :cond_d

    .line 205
    .line 206
    :cond_c
    const/4 v4, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_d
    move v4, v12

    .line 209
    :goto_8
    if-eqz v4, :cond_e

    .line 210
    .line 211
    iget-boolean v5, v0, Lb3/t1;->B:Z

    .line 212
    .line 213
    if-eqz v5, :cond_e

    .line 214
    .line 215
    iput-boolean v12, v0, Lb3/t1;->B:Z

    .line 216
    .line 217
    iget-object v5, v0, Lb3/t1;->x:Lb3/j3;

    .line 218
    .line 219
    iget v5, v5, Lb3/j3;->m:I

    .line 220
    .line 221
    const/4 v7, 0x5

    .line 222
    invoke-direct {v0, v12, v5, v12, v7}, Lb3/t1;->R0(ZIZI)V

    .line 223
    .line 224
    .line 225
    :cond_e
    const/4 v5, 0x3

    .line 226
    if-eqz v4, :cond_f

    .line 227
    .line 228
    iget-object v4, v3, Lb3/l2;->f:Lb3/m2;

    .line 229
    .line 230
    iget-boolean v4, v4, Lb3/m2;->i:Z

    .line 231
    .line 232
    if-eqz v4, :cond_f

    .line 233
    .line 234
    invoke-direct {v0, v6}, Lb3/t1;->Z0(I)V

    .line 235
    .line 236
    .line 237
    invoke-direct/range {p0 .. p0}, Lb3/t1;->i1()V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_f
    iget-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 242
    .line 243
    iget v4, v4, Lb3/j3;->e:I

    .line 244
    .line 245
    const/4 v7, 0x2

    .line 246
    if-ne v4, v7, :cond_10

    .line 247
    .line 248
    invoke-direct {v0, v9}, Lb3/t1;->d1(Z)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_10

    .line 253
    .line 254
    invoke-direct {v0, v5}, Lb3/t1;->Z0(I)V

    .line 255
    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    iput-object v4, v0, Lb3/t1;->O:Lb3/a0;

    .line 259
    .line 260
    invoke-direct/range {p0 .. p0}, Lb3/t1;->c1()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_14

    .line 265
    .line 266
    invoke-direct/range {p0 .. p0}, Lb3/t1;->f1()V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_10
    iget-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 271
    .line 272
    iget v4, v4, Lb3/j3;->e:I

    .line 273
    .line 274
    if-ne v4, v5, :cond_14

    .line 275
    .line 276
    iget v4, v0, Lb3/t1;->J:I

    .line 277
    .line 278
    if-nez v4, :cond_11

    .line 279
    .line 280
    invoke-direct/range {p0 .. p0}, Lb3/t1;->R()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_12

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_11
    if-nez v9, :cond_14

    .line 288
    .line 289
    :cond_12
    invoke-direct/range {p0 .. p0}, Lb3/t1;->c1()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    iput-boolean v4, v0, Lb3/t1;->C:Z

    .line 294
    .line 295
    const/4 v4, 0x2

    .line 296
    invoke-direct {v0, v4}, Lb3/t1;->Z0(I)V

    .line 297
    .line 298
    .line 299
    iget-boolean v4, v0, Lb3/t1;->C:Z

    .line 300
    .line 301
    if-eqz v4, :cond_13

    .line 302
    .line 303
    invoke-direct/range {p0 .. p0}, Lb3/t1;->g0()V

    .line 304
    .line 305
    .line 306
    iget-object v4, v0, Lb3/t1;->u:Lb3/c2;

    .line 307
    .line 308
    invoke-interface {v4}, Lb3/c2;->d()V

    .line 309
    .line 310
    .line 311
    :cond_13
    invoke-direct/range {p0 .. p0}, Lb3/t1;->i1()V

    .line 312
    .line 313
    .line 314
    :cond_14
    :goto_9
    iget-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 315
    .line 316
    iget v4, v4, Lb3/j3;->e:I

    .line 317
    .line 318
    const/4 v7, 0x2

    .line 319
    if-ne v4, v7, :cond_17

    .line 320
    .line 321
    move v4, v12

    .line 322
    :goto_a
    iget-object v7, v0, Lb3/t1;->a:[Lb3/t3;

    .line 323
    .line 324
    array-length v8, v7

    .line 325
    if-ge v4, v8, :cond_16

    .line 326
    .line 327
    aget-object v7, v7, v4

    .line 328
    .line 329
    invoke-static {v7}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-eqz v7, :cond_15

    .line 334
    .line 335
    iget-object v7, v0, Lb3/t1;->a:[Lb3/t3;

    .line 336
    .line 337
    aget-object v7, v7, v4

    .line 338
    .line 339
    invoke-interface {v7}, Lb3/t3;->f()Ld4/m0;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    iget-object v8, v3, Lb3/l2;->c:[Ld4/m0;

    .line 344
    .line 345
    aget-object v8, v8, v4

    .line 346
    .line 347
    if-ne v7, v8, :cond_15

    .line 348
    .line 349
    iget-object v7, v0, Lb3/t1;->a:[Lb3/t3;

    .line 350
    .line 351
    aget-object v7, v7, v4

    .line 352
    .line 353
    invoke-interface {v7}, Lb3/t3;->z()V

    .line 354
    .line 355
    .line 356
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_16
    iget-object v3, v0, Lb3/t1;->x:Lb3/j3;

    .line 360
    .line 361
    iget-boolean v4, v3, Lb3/j3;->g:Z

    .line 362
    .line 363
    if-nez v4, :cond_17

    .line 364
    .line 365
    iget-wide v3, v3, Lb3/j3;->q:J

    .line 366
    .line 367
    const-wide/32 v7, 0x7a120

    .line 368
    .line 369
    .line 370
    cmp-long v3, v3, v7

    .line 371
    .line 372
    if-gez v3, :cond_17

    .line 373
    .line 374
    invoke-direct/range {p0 .. p0}, Lb3/t1;->P()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_17

    .line 379
    .line 380
    const/4 v3, 0x1

    .line 381
    goto :goto_b

    .line 382
    :cond_17
    move v3, v12

    .line 383
    :goto_b
    if-nez v3, :cond_18

    .line 384
    .line 385
    iput-wide v13, v0, Lb3/t1;->Q:J

    .line 386
    .line 387
    goto :goto_c

    .line 388
    :cond_18
    iget-wide v3, v0, Lb3/t1;->Q:J

    .line 389
    .line 390
    cmp-long v3, v3, v13

    .line 391
    .line 392
    if-nez v3, :cond_19

    .line 393
    .line 394
    iget-object v3, v0, Lb3/t1;->q:Ly4/d;

    .line 395
    .line 396
    invoke-interface {v3}, Ly4/d;->elapsedRealtime()J

    .line 397
    .line 398
    .line 399
    move-result-wide v3

    .line 400
    iput-wide v3, v0, Lb3/t1;->Q:J

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_19
    iget-object v3, v0, Lb3/t1;->q:Ly4/d;

    .line 404
    .line 405
    invoke-interface {v3}, Ly4/d;->elapsedRealtime()J

    .line 406
    .line 407
    .line 408
    move-result-wide v3

    .line 409
    iget-wide v7, v0, Lb3/t1;->Q:J

    .line 410
    .line 411
    sub-long/2addr v3, v7

    .line 412
    const-wide/16 v7, 0xfa0

    .line 413
    .line 414
    cmp-long v3, v3, v7

    .line 415
    .line 416
    if-gez v3, :cond_21

    .line 417
    .line 418
    :goto_c
    invoke-direct/range {p0 .. p0}, Lb3/t1;->c1()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_1a

    .line 423
    .line 424
    iget-object v3, v0, Lb3/t1;->x:Lb3/j3;

    .line 425
    .line 426
    iget v3, v3, Lb3/j3;->e:I

    .line 427
    .line 428
    if-ne v3, v5, :cond_1a

    .line 429
    .line 430
    const/4 v3, 0x1

    .line 431
    goto :goto_d

    .line 432
    :cond_1a
    move v3, v12

    .line 433
    :goto_d
    iget-boolean v4, v0, Lb3/t1;->I:Z

    .line 434
    .line 435
    if-eqz v4, :cond_1b

    .line 436
    .line 437
    iget-boolean v4, v0, Lb3/t1;->H:Z

    .line 438
    .line 439
    if-eqz v4, :cond_1b

    .line 440
    .line 441
    if-eqz v3, :cond_1b

    .line 442
    .line 443
    const/4 v15, 0x1

    .line 444
    goto :goto_e

    .line 445
    :cond_1b
    move v15, v12

    .line 446
    :goto_e
    iget-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 447
    .line 448
    iget-boolean v7, v4, Lb3/j3;->o:Z

    .line 449
    .line 450
    if-eq v7, v15, :cond_1c

    .line 451
    .line 452
    invoke-virtual {v4, v15}, Lb3/j3;->h(Z)Lb3/j3;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    iput-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 457
    .line 458
    :cond_1c
    iput-boolean v12, v0, Lb3/t1;->H:Z

    .line 459
    .line 460
    if-nez v15, :cond_20

    .line 461
    .line 462
    iget-object v4, v0, Lb3/t1;->x:Lb3/j3;

    .line 463
    .line 464
    iget v4, v4, Lb3/j3;->e:I

    .line 465
    .line 466
    if-ne v4, v6, :cond_1d

    .line 467
    .line 468
    goto :goto_10

    .line 469
    :cond_1d
    if-nez v3, :cond_1f

    .line 470
    .line 471
    const/4 v3, 0x2

    .line 472
    if-ne v4, v3, :cond_1e

    .line 473
    .line 474
    goto :goto_f

    .line 475
    :cond_1e
    if-ne v4, v5, :cond_20

    .line 476
    .line 477
    iget v3, v0, Lb3/t1;->J:I

    .line 478
    .line 479
    if-eqz v3, :cond_20

    .line 480
    .line 481
    const-wide/16 v3, 0x3e8

    .line 482
    .line 483
    invoke-direct {v0, v1, v2, v3, v4}, Lb3/t1;->z0(JJ)V

    .line 484
    .line 485
    .line 486
    goto :goto_10

    .line 487
    :cond_1f
    :goto_f
    const-wide/16 v3, 0xa

    .line 488
    .line 489
    invoke-direct {v0, v1, v2, v3, v4}, Lb3/t1;->z0(JJ)V

    .line 490
    .line 491
    .line 492
    :cond_20
    :goto_10
    invoke-static {}, Ly4/n0;->c()V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 497
    .line 498
    const-string v2, "Playback stuck buffering and not loading"

    .line 499
    .line 500
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v1

    .line 504
    :cond_22
    :goto_11
    return-void
.end method

.method private p0()V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lb3/t1;->o:Lb3/v;

    .line 4
    .line 5
    invoke-virtual {v0}, Lb3/v;->g()Lb3/l3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lb3/l3;->a:F

    .line 10
    .line 11
    iget-object v1, v10, Lb3/t1;->s:Lb3/o2;

    .line 12
    .line 13
    invoke-virtual {v1}, Lb3/o2;->p()Lb3/l2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v10, Lb3/t1;->s:Lb3/o2;

    .line 18
    .line 19
    invoke-virtual {v2}, Lb3/o2;->q()Lb3/l2;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    :goto_0
    if-eqz v1, :cond_b

    .line 25
    .line 26
    iget-boolean v4, v1, Lb3/l2;->d:Z

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    iget-object v4, v10, Lb3/t1;->x:Lb3/j3;

    .line 33
    .line 34
    iget-object v4, v4, Lb3/j3;->a:Lb3/g4;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v4}, Lb3/l2;->v(FLb3/g4;)Lw4/i0;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    invoke-virtual {v1}, Lb3/l2;->o()Lw4/i0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v13, v4}, Lw4/i0;->a(Lw4/i0;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v9, 0x0

    .line 49
    if-nez v4, :cond_9

    .line 50
    .line 51
    const/4 v8, 0x4

    .line 52
    if-eqz v3, :cond_6

    .line 53
    .line 54
    iget-object v0, v10, Lb3/t1;->s:Lb3/o2;

    .line 55
    .line 56
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v0, v10, Lb3/t1;->s:Lb3/o2;

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Lb3/o2;->z(Lb3/l2;)Z

    .line 63
    .line 64
    .line 65
    move-result v16

    .line 66
    iget-object v0, v10, Lb3/t1;->a:[Lb3/t3;

    .line 67
    .line 68
    array-length v0, v0

    .line 69
    new-array v7, v0, [Z

    .line 70
    .line 71
    iget-object v0, v10, Lb3/t1;->x:Lb3/j3;

    .line 72
    .line 73
    iget-wide v14, v0, Lb3/j3;->r:J

    .line 74
    .line 75
    move-object v12, v6

    .line 76
    move-object/from16 v17, v7

    .line 77
    .line 78
    invoke-virtual/range {v12 .. v17}, Lb3/l2;->b(Lw4/i0;JZ[Z)J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    iget-object v0, v10, Lb3/t1;->x:Lb3/j3;

    .line 83
    .line 84
    iget v1, v0, Lb3/j3;->e:I

    .line 85
    .line 86
    if-eq v1, v8, :cond_1

    .line 87
    .line 88
    iget-wide v0, v0, Lb3/j3;->r:J

    .line 89
    .line 90
    cmp-long v0, v12, v0

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    const/4 v14, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v14, v9

    .line 97
    :goto_1
    iget-object v0, v10, Lb3/t1;->x:Lb3/j3;

    .line 98
    .line 99
    iget-object v1, v0, Lb3/j3;->b:Ld4/t$b;

    .line 100
    .line 101
    iget-wide v4, v0, Lb3/j3;->c:J

    .line 102
    .line 103
    iget-wide v2, v0, Lb3/j3;->d:J

    .line 104
    .line 105
    const/4 v15, 0x5

    .line 106
    move-object/from16 v0, p0

    .line 107
    .line 108
    move-wide/from16 v16, v2

    .line 109
    .line 110
    move-wide v2, v12

    .line 111
    move-object v11, v6

    .line 112
    move-object/from16 v18, v7

    .line 113
    .line 114
    move-wide/from16 v6, v16

    .line 115
    .line 116
    move v8, v14

    .line 117
    move v9, v15

    .line 118
    invoke-direct/range {v0 .. v9}, Lb3/t1;->L(Ld4/t$b;JJJZI)Lb3/j3;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, v10, Lb3/t1;->x:Lb3/j3;

    .line 123
    .line 124
    if-eqz v14, :cond_2

    .line 125
    .line 126
    invoke-direct {v10, v12, v13}, Lb3/t1;->s0(J)V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget-object v0, v10, Lb3/t1;->a:[Lb3/t3;

    .line 130
    .line 131
    array-length v0, v0

    .line 132
    new-array v0, v0, [Z

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    :goto_2
    iget-object v1, v10, Lb3/t1;->a:[Lb3/t3;

    .line 136
    .line 137
    array-length v2, v1

    .line 138
    if-ge v9, v2, :cond_5

    .line 139
    .line 140
    aget-object v1, v1, v9

    .line 141
    .line 142
    invoke-static {v1}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    aput-boolean v2, v0, v9

    .line 147
    .line 148
    iget-object v3, v11, Lb3/l2;->c:[Ld4/m0;

    .line 149
    .line 150
    aget-object v3, v3, v9

    .line 151
    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    invoke-interface {v1}, Lb3/t3;->f()Ld4/m0;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eq v3, v2, :cond_3

    .line 159
    .line 160
    invoke-direct {v10, v1}, Lb3/t1;->o(Lb3/t3;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    aget-boolean v2, v18, v9

    .line 165
    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    iget-wide v2, v10, Lb3/t1;->L:J

    .line 169
    .line 170
    invoke-interface {v1, v2, v3}, Lb3/t3;->C(J)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    invoke-direct {v10, v0}, Lb3/t1;->s([Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    iget-object v0, v10, Lb3/t1;->s:Lb3/o2;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lb3/o2;->z(Lb3/l2;)Z

    .line 183
    .line 184
    .line 185
    iget-boolean v0, v1, Lb3/l2;->d:Z

    .line 186
    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    iget-object v0, v1, Lb3/l2;->f:Lb3/m2;

    .line 190
    .line 191
    iget-wide v2, v0, Lb3/m2;->b:J

    .line 192
    .line 193
    iget-wide v4, v10, Lb3/t1;->L:J

    .line 194
    .line 195
    invoke-virtual {v1, v4, v5}, Lb3/l2;->y(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v4

    .line 199
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    const/4 v4, 0x0

    .line 204
    invoke-virtual {v1, v13, v2, v3, v4}, Lb3/l2;->a(Lw4/i0;JZ)J

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 208
    invoke-direct {v10, v5}, Lb3/t1;->G(Z)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v10, Lb3/t1;->x:Lb3/j3;

    .line 212
    .line 213
    iget v0, v0, Lb3/j3;->e:I

    .line 214
    .line 215
    const/4 v1, 0x4

    .line 216
    if-eq v0, v1, :cond_8

    .line 217
    .line 218
    invoke-direct/range {p0 .. p0}, Lb3/t1;->V()V

    .line 219
    .line 220
    .line 221
    invoke-direct/range {p0 .. p0}, Lb3/t1;->m1()V

    .line 222
    .line 223
    .line 224
    iget-object v0, v10, Lb3/t1;->h:Ly4/n;

    .line 225
    .line 226
    const/4 v1, 0x2

    .line 227
    invoke-interface {v0, v1}, Ly4/n;->e(I)Z

    .line 228
    .line 229
    .line 230
    :cond_8
    return-void

    .line 231
    :cond_9
    move v4, v9

    .line 232
    const/4 v5, 0x1

    .line 233
    if-ne v1, v2, :cond_a

    .line 234
    .line 235
    move v3, v4

    .line 236
    :cond_a
    invoke-virtual {v1}, Lb3/l2;->j()Lb3/l2;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_b
    :goto_5
    return-void
.end method

.method private declared-synchronized p1(Ln6/s;J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb3/t1;->q:Ly4/d;

    .line 3
    .line 4
    invoke-interface {v0}, Ly4/d;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    add-long/2addr v0, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ln6/s;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long v3, p2, v3

    .line 25
    .line 26
    if-lez v3, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v3, p0, Lb3/t1;->q:Ly4/d;

    .line 29
    .line 30
    invoke-interface {v3}, Ly4/d;->b()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    const/4 p2, 0x1

    .line 38
    move v2, p2

    .line 39
    :goto_1
    :try_start_2
    iget-object p2, p0, Lb3/t1;->q:Ly4/d;

    .line 40
    .line 41
    invoke-interface {p2}, Ly4/d;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide p2

    .line 45
    sub-long p2, v0, p2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method private q(IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb3/t1;->a:[Lb3/t3;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    invoke-static {v1}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lb3/t1;->s:Lb3/o2;

    .line 15
    .line 16
    invoke-virtual {v2}, Lb3/o2;->q()Lb3/l2;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, v0, Lb3/t1;->s:Lb3/o2;

    .line 21
    .line 22
    invoke-virtual {v3}, Lb3/o2;->p()Lb3/l2;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    move v9, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v9, v4

    .line 33
    :goto_0
    invoke-virtual {v2}, Lb3/l2;->o()Lw4/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v6, v3, Lw4/i0;->b:[Lb3/v3;

    .line 38
    .line 39
    aget-object v6, v6, p1

    .line 40
    .line 41
    iget-object v3, v3, Lw4/i0;->c:[Lw4/y;

    .line 42
    .line 43
    aget-object v3, v3, p1

    .line 44
    .line 45
    invoke-static {v3}, Lb3/t1;->x(Lw4/y;)[Lb3/x1;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-direct/range {p0 .. p0}, Lb3/t1;->c1()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v3, v0, Lb3/t1;->x:Lb3/j3;

    .line 56
    .line 57
    iget v3, v3, Lb3/j3;->e:I

    .line 58
    .line 59
    const/4 v8, 0x3

    .line 60
    if-ne v3, v8, :cond_2

    .line 61
    .line 62
    move v14, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v14, v4

    .line 65
    :goto_1
    if-nez p2, :cond_3

    .line 66
    .line 67
    if-eqz v14, :cond_3

    .line 68
    .line 69
    move v8, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v8, v4

    .line 72
    :goto_2
    iget v3, v0, Lb3/t1;->J:I

    .line 73
    .line 74
    add-int/2addr v3, v5

    .line 75
    iput v3, v0, Lb3/t1;->J:I

    .line 76
    .line 77
    iget-object v3, v0, Lb3/t1;->b:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v3, v2, Lb3/l2;->c:[Ld4/m0;

    .line 83
    .line 84
    aget-object v5, v3, p1

    .line 85
    .line 86
    iget-wide v10, v0, Lb3/t1;->L:J

    .line 87
    .line 88
    invoke-virtual {v2}, Lb3/l2;->m()J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    invoke-virtual {v2}, Lb3/l2;->l()J

    .line 93
    .line 94
    .line 95
    move-result-wide v15

    .line 96
    move-object v2, v1

    .line 97
    move-object v3, v6

    .line 98
    move-object v4, v7

    .line 99
    move-wide v6, v10

    .line 100
    move-wide v10, v12

    .line 101
    move-wide v12, v15

    .line 102
    invoke-interface/range {v2 .. v13}, Lb3/t3;->A(Lb3/v3;[Lb3/x1;Ld4/m0;JZZJJ)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lb3/t1$a;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Lb3/t1$a;-><init>(Lb3/t1;)V

    .line 108
    .line 109
    .line 110
    const/16 v3, 0xb

    .line 111
    .line 112
    invoke-interface {v1, v3, v2}, Lb3/p3$b;->y(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lb3/t1;->o:Lb3/v;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lb3/v;->b(Lb3/t3;)V

    .line 118
    .line 119
    .line 120
    if-eqz v14, :cond_4

    .line 121
    .line 122
    invoke-interface {v1}, Lb3/t3;->start()V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-void
.end method

.method private q0(ZZZZ)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lb3/t1;->h:Ly4/n;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-interface {v0, v2}, Ly4/n;->i(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Lb3/t1;->O:Lb3/a0;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v1, Lb3/t1;->C:Z

    .line 14
    .line 15
    iget-object v0, v1, Lb3/t1;->o:Lb3/v;

    .line 16
    .line 17
    invoke-virtual {v0}, Lb3/v;->h()V

    .line 18
    .line 19
    .line 20
    const-wide v4, 0xe8d4a51000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v4, v1, Lb3/t1;->L:J

    .line 26
    .line 27
    iget-object v4, v1, Lb3/t1;->a:[Lb3/t3;

    .line 28
    .line 29
    array-length v5, v4

    .line 30
    move v6, v3

    .line 31
    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    .line 32
    .line 33
    if-ge v6, v5, :cond_0

    .line 34
    .line 35
    aget-object v0, v4, v6

    .line 36
    .line 37
    :try_start_0
    invoke-direct {v1, v0}, Lb3/t1;->o(Lb3/t3;)V
    :try_end_0
    .catch Lb3/a0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    :goto_1
    const-string v8, "Disable failed."

    .line 45
    .line 46
    invoke-static {v7, v8, v0}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v4, v1, Lb3/t1;->a:[Lb3/t3;

    .line 55
    .line 56
    array-length v5, v4

    .line 57
    move v6, v3

    .line 58
    :goto_3
    if-ge v6, v5, :cond_2

    .line 59
    .line 60
    aget-object v0, v4, v6

    .line 61
    .line 62
    iget-object v8, v1, Lb3/t1;->b:Ljava/util/Set;

    .line 63
    .line 64
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v0}, Lb3/t3;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_2
    move-exception v0

    .line 75
    move-object v8, v0

    .line 76
    const-string v0, "Reset failed."

    .line 77
    .line 78
    invoke-static {v7, v0, v8}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    iput v3, v1, Lb3/t1;->J:I

    .line 85
    .line 86
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 87
    .line 88
    iget-object v4, v0, Lb3/j3;->b:Ld4/t$b;

    .line 89
    .line 90
    iget-wide v5, v0, Lb3/j3;->r:J

    .line 91
    .line 92
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 93
    .line 94
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 95
    .line 96
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 103
    .line 104
    iget-object v7, v1, Lb3/t1;->l:Lb3/g4$b;

    .line 105
    .line 106
    invoke-static {v0, v7}, Lb3/t1;->S(Lb3/j3;Lb3/g4$b;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_3
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 114
    .line 115
    iget-wide v7, v0, Lb3/j3;->r:J

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_4
    :goto_5
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 119
    .line 120
    iget-wide v7, v0, Lb3/j3;->c:J

    .line 121
    .line 122
    :goto_6
    if-eqz p2, :cond_5

    .line 123
    .line 124
    iput-object v2, v1, Lb3/t1;->K:Lb3/t1$h;

    .line 125
    .line 126
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 127
    .line 128
    iget-object v0, v0, Lb3/j3;->a:Lb3/g4;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Lb3/t1;->A(Lb3/g4;)Landroid/util/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, Ld4/t$b;

    .line 137
    .line 138
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 147
    .line 148
    iget-object v0, v0, Lb3/j3;->b:Ld4/t$b;

    .line 149
    .line 150
    invoke-virtual {v4, v0}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    goto :goto_7

    .line 163
    :cond_5
    move v0, v3

    .line 164
    :goto_7
    move-object/from16 v17, v4

    .line 165
    .line 166
    move-wide/from16 v25, v5

    .line 167
    .line 168
    iget-object v4, v1, Lb3/t1;->s:Lb3/o2;

    .line 169
    .line 170
    invoke-virtual {v4}, Lb3/o2;->f()V

    .line 171
    .line 172
    .line 173
    iput-boolean v3, v1, Lb3/t1;->D:Z

    .line 174
    .line 175
    new-instance v3, Lb3/j3;

    .line 176
    .line 177
    iget-object v4, v1, Lb3/t1;->x:Lb3/j3;

    .line 178
    .line 179
    iget-object v5, v4, Lb3/j3;->a:Lb3/g4;

    .line 180
    .line 181
    iget v11, v4, Lb3/j3;->e:I

    .line 182
    .line 183
    if-eqz p4, :cond_6

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_6
    iget-object v2, v4, Lb3/j3;->f:Lb3/a0;

    .line 187
    .line 188
    :goto_8
    move-object v12, v2

    .line 189
    const/4 v13, 0x0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    sget-object v2, Ld4/u0;->d:Ld4/u0;

    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_7
    iget-object v2, v4, Lb3/j3;->h:Ld4/u0;

    .line 196
    .line 197
    :goto_9
    move-object v14, v2

    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    iget-object v2, v1, Lb3/t1;->e:Lw4/i0;

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_8
    iget-object v2, v4, Lb3/j3;->i:Lw4/i0;

    .line 204
    .line 205
    :goto_a
    move-object v15, v2

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    goto :goto_b

    .line 213
    :cond_9
    iget-object v0, v4, Lb3/j3;->j:Ljava/util/List;

    .line 214
    .line 215
    :goto_b
    move-object/from16 v16, v0

    .line 216
    .line 217
    iget-object v0, v1, Lb3/t1;->x:Lb3/j3;

    .line 218
    .line 219
    iget-boolean v2, v0, Lb3/j3;->l:Z

    .line 220
    .line 221
    move/from16 v18, v2

    .line 222
    .line 223
    iget v2, v0, Lb3/j3;->m:I

    .line 224
    .line 225
    move/from16 v19, v2

    .line 226
    .line 227
    iget-object v0, v0, Lb3/j3;->n:Lb3/l3;

    .line 228
    .line 229
    move-object/from16 v20, v0

    .line 230
    .line 231
    const-wide/16 v23, 0x0

    .line 232
    .line 233
    const/16 v27, 0x0

    .line 234
    .line 235
    move-object v4, v3

    .line 236
    move-object/from16 v6, v17

    .line 237
    .line 238
    move-wide/from16 v9, v25

    .line 239
    .line 240
    move-wide/from16 v21, v25

    .line 241
    .line 242
    invoke-direct/range {v4 .. v27}, Lb3/j3;-><init>(Lb3/g4;Ld4/t$b;JJILb3/a0;ZLd4/u0;Lw4/i0;Ljava/util/List;Ld4/t$b;ZILb3/l3;JJJZ)V

    .line 243
    .line 244
    .line 245
    iput-object v3, v1, Lb3/t1;->x:Lb3/j3;

    .line 246
    .line 247
    if-eqz p3, :cond_a

    .line 248
    .line 249
    iget-object v0, v1, Lb3/t1;->t:Lb3/d3;

    .line 250
    .line 251
    invoke-virtual {v0}, Lb3/d3;->x()V

    .line 252
    .line 253
    .line 254
    :cond_a
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/t1;->a:[Lb3/t3;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Z

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lb3/t1;->s([Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lb3/l2;->f:Lb3/m2;

    .line 10
    .line 11
    iget-boolean v0, v0, Lb3/m2;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lb3/t1;->A:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lb3/t1;->B:Z

    .line 23
    .line 24
    return-void
.end method

.method private s([Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lb3/l2;->o()Lw4/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    iget-object v4, p0, Lb3/t1;->a:[Lb3/t3;

    .line 14
    .line 15
    array-length v4, v4

    .line 16
    if-ge v3, v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lw4/i0;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    iget-object v4, p0, Lb3/t1;->b:Ljava/util/Set;

    .line 25
    .line 26
    iget-object v5, p0, Lb3/t1;->a:[Lb3/t3;

    .line 27
    .line 28
    aget-object v5, v5, v3

    .line 29
    .line 30
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v4, p0, Lb3/t1;->a:[Lb3/t3;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    invoke-interface {v4}, Lb3/t3;->a()V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget-object v3, p0, Lb3/t1;->a:[Lb3/t3;

    .line 47
    .line 48
    array-length v3, v3

    .line 49
    if-ge v2, v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lw4/i0;->c(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    aget-boolean v3, p1, v2

    .line 58
    .line 59
    invoke-direct {p0, v2, v3}, Lb3/t1;->q(IZ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, v0, Lb3/l2;->g:Z

    .line 67
    .line 68
    return-void
.end method

.method private s0(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->p()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide v0, 0xe8d4a51000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    add-long/2addr p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lb3/l2;->z(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    :goto_0
    iput-wide p1, p0, Lb3/t1;->L:J

    .line 21
    .line 22
    iget-object v0, p0, Lb3/t1;->o:Lb3/v;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lb3/v;->d(J)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lb3/t1;->a:[Lb3/t3;

    .line 28
    .line 29
    array-length p2, p1

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_1
    if-ge v0, p2, :cond_2

    .line 32
    .line 33
    aget-object v1, p1, v0

    .line 34
    .line 35
    invoke-static {v1}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-wide v2, p0, Lb3/t1;->L:J

    .line 42
    .line 43
    invoke-interface {v1, v2, v3}, Lb3/t3;->C(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-direct {p0}, Lb3/t1;->e0()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private t(Lb3/t3;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lb3/t3;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lb3/t3;->stop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static t0(Lb3/g4;Lb3/t1$d;Lb3/g4$d;Lb3/g4$b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p3}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lb3/g4$b;->c:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Lb3/g4$d;->p:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p2, p3, v0}, Lb3/g4;->k(ILb3/g4$b;Z)Lb3/g4$b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lb3/g4$b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    iget-wide v0, p3, Lb3/g4$b;->d:J

    .line 23
    .line 24
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p3, v0, v2

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lb3/t1$d;->b(IJLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static u0(Lb3/t1$d;Lb3/g4;Lb3/g4;IZLb3/g4$d;Lb3/g4$b;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p6

    .line 9
    .line 10
    iget-object v2, v0, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v11, 0x0

    .line 13
    const/4 v12, 0x1

    .line 14
    const-wide/high16 v13, -0x8000000000000000L

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    iget-object v1, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 19
    .line 20
    invoke-virtual {v1}, Lb3/p3;->f()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    cmp-long v1, v1, v13

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 35
    .line 36
    invoke-virtual {v1}, Lb3/p3;->f()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ly4/q0;->A0(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :goto_0
    new-instance v3, Lb3/t1$h;

    .line 45
    .line 46
    iget-object v4, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 47
    .line 48
    invoke-virtual {v4}, Lb3/p3;->h()Lb3/g4;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 53
    .line 54
    invoke-virtual {v5}, Lb3/p3;->d()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-direct {v3, v4, v5, v1, v2}, Lb3/t1$h;-><init>(Lb3/g4;IJ)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    move-object v2, v3

    .line 65
    move v3, v4

    .line 66
    move/from16 v4, p3

    .line 67
    .line 68
    move/from16 v5, p4

    .line 69
    .line 70
    move-object/from16 v6, p5

    .line 71
    .line 72
    move-object/from16 v7, p6

    .line 73
    .line 74
    invoke-static/range {v1 .. v7}, Lb3/t1;->x0(Lb3/g4;Lb3/t1$h;ZIZLb3/g4$d;Lb3/g4$b;)Landroid/util/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    return v11

    .line 81
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v8, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p0, v2, v3, v4, v1}, Lb3/t1$d;->b(IJLjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 101
    .line 102
    invoke-virtual {v1}, Lb3/p3;->f()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    cmp-long v1, v1, v13

    .line 107
    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    invoke-static {v8, p0, v9, v10}, Lb3/t1;->t0(Lb3/g4;Lb3/t1$d;Lb3/g4$d;Lb3/g4$b;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return v12

    .line 114
    :cond_3
    invoke-virtual {v8, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, -0x1

    .line 119
    if-ne v2, v3, :cond_4

    .line 120
    .line 121
    return v11

    .line 122
    :cond_4
    iget-object v3, v0, Lb3/t1$d;->a:Lb3/p3;

    .line 123
    .line 124
    invoke-virtual {v3}, Lb3/p3;->f()J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    cmp-long v3, v3, v13

    .line 129
    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    invoke-static {v8, p0, v9, v10}, Lb3/t1;->t0(Lb3/g4;Lb3/t1$d;Lb3/g4$d;Lb3/g4$b;)V

    .line 133
    .line 134
    .line 135
    return v12

    .line 136
    :cond_5
    iput v2, v0, Lb3/t1$d;->b:I

    .line 137
    .line 138
    iget-object v2, v0, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v10}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 141
    .line 142
    .line 143
    iget-boolean v2, v10, Lb3/g4$b;->f:Z

    .line 144
    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    iget v2, v10, Lb3/g4$b;->c:I

    .line 148
    .line 149
    invoke-virtual {v1, v2, v9}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget v2, v2, Lb3/g4$d;->o:I

    .line 154
    .line 155
    iget-object v3, v0, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v2, v1, :cond_6

    .line 162
    .line 163
    iget-wide v1, v0, Lb3/t1$d;->c:J

    .line 164
    .line 165
    invoke-virtual/range {p6 .. p6}, Lb3/g4$b;->q()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    add-long v5, v1, v3

    .line 170
    .line 171
    iget-object v1, v0, Lb3/t1$d;->d:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v8, v1, v10}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget v4, v1, Lb3/g4$b;->c:I

    .line 178
    .line 179
    move-object/from16 v1, p1

    .line 180
    .line 181
    move-object/from16 v2, p5

    .line 182
    .line 183
    move-object/from16 v3, p6

    .line 184
    .line 185
    invoke-virtual/range {v1 .. v6}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v8, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v3, Ljava/lang/Long;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-virtual {p0, v2, v3, v4, v1}, Lb3/t1$d;->b(IJLjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    return v12
.end method

.method private v([Lw4/y;)Lo6/q;
    .locals 7

    .line 1
    new-instance v0, Lo6/q$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo6/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    aget-object v5, p1, v3

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    invoke-interface {v5, v2}, Lw4/b0;->h(I)Lb3/x1;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v5, v5, Lb3/x1;->j:Lt3/a;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    new-instance v5, Lt3/a;

    .line 25
    .line 26
    new-array v6, v2, [Lt3/a$b;

    .line 27
    .line 28
    invoke-direct {v5, v6}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Lo6/q$a;->h(Ljava/lang/Object;)Lo6/q$a;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v0, v5}, Lo6/q$a;->h(Ljava/lang/Object;)Lo6/q$a;

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lo6/q$a;->k()Lo6/q;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_2
    return-object p1
.end method

.method private v0(Lb3/g4;Lb3/g4;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lb3/g4;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lb3/g4;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Lb3/t1$d;

    .line 32
    .line 33
    iget v5, p0, Lb3/t1;->E:I

    .line 34
    .line 35
    iget-boolean v6, p0, Lb3/t1;->F:Z

    .line 36
    .line 37
    iget-object v7, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 38
    .line 39
    iget-object v8, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    invoke-static/range {v2 .. v8}, Lb3/t1;->u0(Lb3/t1$d;Lb3/g4;Lb3/g4;IZLb3/g4$d;Lb3/g4$b;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lb3/t1$d;

    .line 56
    .line 57
    iget-object v1, v1, Lb3/t1$d;->a:Lb3/p3;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lb3/p3;->k(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Lb3/t1;->p:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private w()J
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 2
    .line 3
    iget-object v1, v0, Lb3/j3;->a:Lb3/g4;

    .line 4
    .line 5
    iget-object v2, v0, Lb3/j3;->b:Ld4/t$b;

    .line 6
    .line 7
    iget-object v2, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 8
    .line 9
    iget-wide v3, v0, Lb3/j3;->r:J

    .line 10
    .line 11
    invoke-direct {p0, v1, v2, v3, v4}, Lb3/t1;->y(Lb3/g4;Ljava/lang/Object;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private static w0(Lb3/g4;Lb3/j3;Lb3/t1$h;Lb3/o2;IZLb3/g4$d;Lb3/g4$b;)Lb3/t1$g;
    .locals 30

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p5

    .line 8
    .line 9
    move-object/from16 v11, p7

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lb3/g4;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lb3/t1$g;

    .line 18
    .line 19
    invoke-static {}, Lb3/j3;->k()Ld4/t$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v1, v0

    .line 34
    invoke-direct/range {v1 .. v9}, Lb3/t1$g;-><init>(Ld4/t$b;JJZZZ)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object v14, v8, Lb3/j3;->b:Ld4/t$b;

    .line 39
    .line 40
    iget-object v12, v14, Ld4/s;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v8, v11}, Lb3/t1;->S(Lb3/j3;Lb3/g4$b;)Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    iget-object v0, v8, Lb3/j3;->b:Ld4/t$b;

    .line 47
    .line 48
    invoke-virtual {v0}, Ld4/s;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-eqz v13, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-wide v0, v8, Lb3/j3;->r:J

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    iget-wide v0, v8, Lb3/j3;->c:J

    .line 61
    .line 62
    :goto_1
    move-wide v15, v0

    .line 63
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v6, -0x1

    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    const/16 v20, 0x1

    .line 72
    .line 73
    if-eqz v9, :cond_6

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    move-object/from16 v0, p0

    .line 77
    .line 78
    move-object/from16 v1, p2

    .line 79
    .line 80
    move/from16 v3, p4

    .line 81
    .line 82
    move/from16 v4, p5

    .line 83
    .line 84
    move-object/from16 v5, p6

    .line 85
    .line 86
    move-object/from16 v21, v14

    .line 87
    .line 88
    move v14, v6

    .line 89
    move-object/from16 v6, p7

    .line 90
    .line 91
    invoke-static/range {v0 .. v6}, Lb3/t1;->x0(Lb3/g4;Lb3/t1$h;ZIZLb3/g4$d;Lb3/g4$b;)Landroid/util/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v7, v10}, Lb3/g4;->e(Z)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    move v6, v0

    .line 102
    move-wide v0, v15

    .line 103
    move/from16 v2, v19

    .line 104
    .line 105
    move v3, v2

    .line 106
    move/from16 v4, v20

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_3
    iget-wide v1, v9, Lb3/t1$h;->c:J

    .line 110
    .line 111
    cmp-long v1, v1, v17

    .line 112
    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v7, v0, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v6, v0, Lb3/g4$b;->c:I

    .line 122
    .line 123
    move-wide v0, v15

    .line 124
    move/from16 v2, v19

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Ljava/lang/Long;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    move v6, v14

    .line 138
    move/from16 v2, v20

    .line 139
    .line 140
    :goto_2
    iget v3, v8, Lb3/j3;->e:I

    .line 141
    .line 142
    const/4 v4, 0x4

    .line 143
    if-ne v3, v4, :cond_5

    .line 144
    .line 145
    move/from16 v3, v20

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    move/from16 v3, v19

    .line 149
    .line 150
    :goto_3
    move/from16 v4, v19

    .line 151
    .line 152
    :goto_4
    move-object/from16 v9, p6

    .line 153
    .line 154
    move/from16 v29, v2

    .line 155
    .line 156
    move/from16 v27, v3

    .line 157
    .line 158
    move/from16 v28, v4

    .line 159
    .line 160
    move v3, v6

    .line 161
    goto :goto_6

    .line 162
    :cond_6
    move-object/from16 v21, v14

    .line 163
    .line 164
    move v14, v6

    .line 165
    iget-object v0, v8, Lb3/j3;->a:Lb3/g4;

    .line 166
    .line 167
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    invoke-virtual {v7, v10}, Lb3/g4;->e(Z)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    :goto_5
    move-object/from16 v9, p6

    .line 178
    .line 179
    move v3, v0

    .line 180
    move-wide v0, v15

    .line 181
    move/from16 v27, v19

    .line 182
    .line 183
    move/from16 v28, v27

    .line 184
    .line 185
    move/from16 v29, v28

    .line 186
    .line 187
    :goto_6
    move-object/from16 v6, v21

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_7
    invoke-virtual {v7, v12}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-ne v0, v14, :cond_9

    .line 196
    .line 197
    iget-object v5, v8, Lb3/j3;->a:Lb3/g4;

    .line 198
    .line 199
    move-object/from16 v0, p6

    .line 200
    .line 201
    move-object/from16 v1, p7

    .line 202
    .line 203
    move/from16 v2, p4

    .line 204
    .line 205
    move/from16 v3, p5

    .line 206
    .line 207
    move-object v4, v12

    .line 208
    move-object/from16 v6, p0

    .line 209
    .line 210
    invoke-static/range {v0 .. v6}, Lb3/t1;->y0(Lb3/g4$d;Lb3/g4$b;IZLjava/lang/Object;Lb3/g4;Lb3/g4;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-nez v0, :cond_8

    .line 215
    .line 216
    invoke-virtual {v7, v10}, Lb3/g4;->e(Z)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    move/from16 v4, v20

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_8
    invoke-virtual {v7, v0, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget v0, v0, Lb3/g4$b;->c:I

    .line 228
    .line 229
    move/from16 v4, v19

    .line 230
    .line 231
    :goto_7
    move-object/from16 v9, p6

    .line 232
    .line 233
    move v3, v0

    .line 234
    move/from16 v28, v4

    .line 235
    .line 236
    move-wide v0, v15

    .line 237
    move/from16 v27, v19

    .line 238
    .line 239
    move/from16 v29, v27

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    cmp-long v0, v15, v17

    .line 243
    .line 244
    if-nez v0, :cond_a

    .line 245
    .line 246
    invoke-virtual {v7, v12, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget v0, v0, Lb3/g4$b;->c:I

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_a
    if-eqz v13, :cond_c

    .line 254
    .line 255
    iget-object v0, v8, Lb3/j3;->a:Lb3/g4;

    .line 256
    .line 257
    move-object/from16 v6, v21

    .line 258
    .line 259
    iget-object v1, v6, Ld4/s;->a:Ljava/lang/Object;

    .line 260
    .line 261
    invoke-virtual {v0, v1, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 262
    .line 263
    .line 264
    iget-object v0, v8, Lb3/j3;->a:Lb3/g4;

    .line 265
    .line 266
    iget v1, v11, Lb3/g4$b;->c:I

    .line 267
    .line 268
    move-object/from16 v9, p6

    .line 269
    .line 270
    invoke-virtual {v0, v1, v9}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget v0, v0, Lb3/g4$d;->o:I

    .line 275
    .line 276
    iget-object v1, v8, Lb3/j3;->a:Lb3/g4;

    .line 277
    .line 278
    iget-object v2, v6, Ld4/s;->a:Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-ne v0, v1, :cond_b

    .line 285
    .line 286
    invoke-virtual/range {p7 .. p7}, Lb3/g4$b;->q()J

    .line 287
    .line 288
    .line 289
    move-result-wide v0

    .line 290
    add-long v4, v15, v0

    .line 291
    .line 292
    invoke-virtual {v7, v12, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget v3, v0, Lb3/g4$b;->c:I

    .line 297
    .line 298
    move-object/from16 v0, p0

    .line 299
    .line 300
    move-object/from16 v1, p6

    .line 301
    .line 302
    move-object/from16 v2, p7

    .line 303
    .line 304
    invoke-virtual/range {v0 .. v5}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 309
    .line 310
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Ljava/lang/Long;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 315
    .line 316
    .line 317
    move-result-wide v2

    .line 318
    move-object v12, v1

    .line 319
    move-wide v0, v2

    .line 320
    goto :goto_8

    .line 321
    :cond_b
    move-wide v0, v15

    .line 322
    :goto_8
    move v3, v14

    .line 323
    move/from16 v27, v19

    .line 324
    .line 325
    move/from16 v28, v27

    .line 326
    .line 327
    move/from16 v29, v20

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_c
    move-object/from16 v9, p6

    .line 331
    .line 332
    move-object/from16 v6, v21

    .line 333
    .line 334
    move v3, v14

    .line 335
    move-wide v0, v15

    .line 336
    move/from16 v27, v19

    .line 337
    .line 338
    move/from16 v28, v27

    .line 339
    .line 340
    move/from16 v29, v28

    .line 341
    .line 342
    :goto_9
    if-eq v3, v14, :cond_d

    .line 343
    .line 344
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    move-object/from16 v0, p0

    .line 350
    .line 351
    move-object/from16 v1, p6

    .line 352
    .line 353
    move-object/from16 v2, p7

    .line 354
    .line 355
    invoke-virtual/range {v0 .. v5}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 360
    .line 361
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Ljava/lang/Long;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 366
    .line 367
    .line 368
    move-result-wide v0

    .line 369
    move-object/from16 v2, p3

    .line 370
    .line 371
    move-wide/from16 v25, v17

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_d
    move-object/from16 v2, p3

    .line 375
    .line 376
    move-wide/from16 v25, v0

    .line 377
    .line 378
    :goto_a
    invoke-virtual {v2, v7, v12, v0, v1}, Lb3/o2;->B(Lb3/g4;Ljava/lang/Object;J)Ld4/t$b;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    iget v3, v2, Ld4/s;->e:I

    .line 383
    .line 384
    if-eq v3, v14, :cond_f

    .line 385
    .line 386
    iget v4, v6, Ld4/s;->e:I

    .line 387
    .line 388
    if-eq v4, v14, :cond_e

    .line 389
    .line 390
    if-lt v3, v4, :cond_e

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_e
    move/from16 v3, v19

    .line 394
    .line 395
    goto :goto_c

    .line 396
    :cond_f
    :goto_b
    move/from16 v3, v20

    .line 397
    .line 398
    :goto_c
    iget-object v4, v6, Ld4/s;->a:Ljava/lang/Object;

    .line 399
    .line 400
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    if-eqz v4, :cond_10

    .line 405
    .line 406
    invoke-virtual {v6}, Ld4/s;->b()Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-nez v4, :cond_10

    .line 411
    .line 412
    invoke-virtual {v2}, Ld4/s;->b()Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-nez v4, :cond_10

    .line 417
    .line 418
    if-eqz v3, :cond_10

    .line 419
    .line 420
    goto :goto_d

    .line 421
    :cond_10
    move/from16 v20, v19

    .line 422
    .line 423
    :goto_d
    invoke-virtual {v7, v12, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 424
    .line 425
    .line 426
    move-result-object v17

    .line 427
    move v12, v13

    .line 428
    move-object v13, v6

    .line 429
    move-object v3, v6

    .line 430
    move-wide v14, v15

    .line 431
    move-object/from16 v16, v2

    .line 432
    .line 433
    move-wide/from16 v18, v25

    .line 434
    .line 435
    invoke-static/range {v12 .. v19}, Lb3/t1;->O(ZLd4/t$b;JLd4/t$b;Lb3/g4$b;J)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-nez v20, :cond_11

    .line 440
    .line 441
    if-eqz v4, :cond_12

    .line 442
    .line 443
    :cond_11
    move-object v2, v3

    .line 444
    :cond_12
    invoke-virtual {v2}, Ld4/s;->b()Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-eqz v4, :cond_15

    .line 449
    .line 450
    invoke-virtual {v2, v3}, Ld4/s;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_13

    .line 455
    .line 456
    iget-wide v0, v8, Lb3/j3;->r:J

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_13
    iget-object v0, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 460
    .line 461
    invoke-virtual {v7, v0, v11}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 462
    .line 463
    .line 464
    iget v0, v2, Ld4/s;->c:I

    .line 465
    .line 466
    iget v1, v2, Ld4/s;->b:I

    .line 467
    .line 468
    invoke-virtual {v11, v1}, Lb3/g4$b;->n(I)I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-ne v0, v1, :cond_14

    .line 473
    .line 474
    invoke-virtual/range {p7 .. p7}, Lb3/g4$b;->j()J

    .line 475
    .line 476
    .line 477
    move-result-wide v0

    .line 478
    goto :goto_e

    .line 479
    :cond_14
    const-wide/16 v0, 0x0

    .line 480
    .line 481
    :cond_15
    :goto_e
    move-wide/from16 v23, v0

    .line 482
    .line 483
    new-instance v0, Lb3/t1$g;

    .line 484
    .line 485
    move-object/from16 v21, v0

    .line 486
    .line 487
    move-object/from16 v22, v2

    .line 488
    .line 489
    invoke-direct/range {v21 .. v29}, Lb3/t1$g;-><init>(Ld4/t$b;JJZZZ)V

    .line 490
    .line 491
    .line 492
    return-object v0
.end method

.method private static x(Lw4/y;)[Lb3/x1;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Lw4/b0;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    new-array v2, v1, [Lb3/x1;

    .line 11
    .line 12
    :goto_1
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, v0}, Lw4/b0;->h(I)Lb3/x1;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v2, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    return-object v2
.end method

.method private static x0(Lb3/g4;Lb3/t1$h;ZIZLb3/g4$d;Lb3/g4$b;)Landroid/util/Pair;
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    iget-object v1, v0, Lb3/t1$h;->a:Lb3/g4;

    .line 6
    .line 7
    invoke-virtual {p0}, Lb3/g4;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v9

    .line 15
    :cond_0
    invoke-virtual {v1}, Lb3/g4;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v10, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v10, v1

    .line 24
    :goto_0
    :try_start_0
    iget v4, v0, Lb3/t1$h;->b:I

    .line 25
    .line 26
    iget-wide v5, v0, Lb3/t1$h;->c:J

    .line 27
    .line 28
    move-object v1, v10

    .line 29
    move-object/from16 v2, p5

    .line 30
    .line 31
    move-object/from16 v3, p6

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0, v10}, Lb3/g4;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v10, v2, v8}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-boolean v2, v2, Lb3/g4$b;->f:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, v8, Lb3/g4$b;->c:I

    .line 64
    .line 65
    move-object/from16 v11, p5

    .line 66
    .line 67
    invoke-virtual {v10, v2, v11}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v2, v2, Lb3/g4$d;->o:I

    .line 72
    .line 73
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v10, v3}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v2, v3, :cond_3

    .line 80
    .line 81
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v8}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget v3, v1, Lb3/g4$b;->c:I

    .line 88
    .line 89
    iget-wide v4, v0, Lb3/t1$h;->c:J

    .line 90
    .line 91
    move-object v0, p0

    .line 92
    move-object/from16 v1, p5

    .line 93
    .line 94
    move-object/from16 v2, p6

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_3
    return-object v1

    .line 101
    :cond_4
    move-object/from16 v11, p5

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    move-object/from16 v0, p5

    .line 108
    .line 109
    move-object/from16 v1, p6

    .line 110
    .line 111
    move v2, p3

    .line 112
    move/from16 v3, p4

    .line 113
    .line 114
    move-object v5, v10

    .line 115
    move-object v6, p0

    .line 116
    invoke-static/range {v0 .. v6}, Lb3/t1;->y0(Lb3/g4$d;Lb3/g4$b;IZLjava/lang/Object;Lb3/g4;Lb3/g4;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0, v0, v8}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v3, v0, Lb3/g4$b;->c:I

    .line 127
    .line 128
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    move-object v0, p0

    .line 134
    move-object/from16 v1, p5

    .line 135
    .line 136
    move-object/from16 v2, p6

    .line 137
    .line 138
    invoke-virtual/range {v0 .. v5}, Lb3/g4;->n(Lb3/g4$d;Lb3/g4$b;IJ)Landroid/util/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :catch_0
    :cond_5
    return-object v9
.end method

.method private y(Lb3/g4;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Lb3/g4$b;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 15
    .line 16
    iget-wide v0, p1, Lb3/g4$d;->f:J

    .line 17
    .line 18
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p2, v0, v2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lb3/g4$d;->g()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 34
    .line 35
    iget-boolean p2, p1, Lb3/g4$d;->i:Z

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lb3/g4$d;->c()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iget-object v0, p0, Lb3/t1;->k:Lb3/g4$d;

    .line 45
    .line 46
    iget-wide v0, v0, Lb3/g4$d;->f:J

    .line 47
    .line 48
    sub-long/2addr p1, v0

    .line 49
    invoke-static {p1, p2}, Ly4/q0;->A0(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-object v0, p0, Lb3/t1;->l:Lb3/g4$b;

    .line 54
    .line 55
    invoke-virtual {v0}, Lb3/g4$b;->q()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr p3, v0

    .line 60
    sub-long/2addr p1, p3

    .line 61
    return-wide p1

    .line 62
    :cond_1
    :goto_0
    return-wide v2
.end method

.method static y0(Lb3/g4$d;Lb3/g4$b;IZLjava/lang/Object;Lb3/g4;Lb3/g4;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-virtual {p5}, Lb3/g4;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v4, p4

    .line 12
    move p4, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    if-ne p4, v1, :cond_1

    .line 16
    .line 17
    move-object v3, p5

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p0

    .line 20
    move v7, p2

    .line 21
    move v8, p3

    .line 22
    invoke-virtual/range {v3 .. v8}, Lb3/g4;->h(ILb3/g4$b;Lb3/g4$d;IZ)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p5, v4}, Lb3/g4;->q(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p6, p4}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p6, p4}, Lb3/g4;->q(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_2
    return-object p0
.end method

.method private z()J
    .locals 9

    .line 1
    iget-object v0, p0, Lb3/t1;->s:Lb3/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/o2;->q()Lb3/l2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lb3/l2;->l()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-boolean v3, v0, Lb3/l2;->d:Z

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    return-wide v1

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-object v4, p0, Lb3/t1;->a:[Lb3/t3;

    .line 23
    .line 24
    array-length v5, v4

    .line 25
    if-ge v3, v5, :cond_5

    .line 26
    .line 27
    aget-object v4, v4, v3

    .line 28
    .line 29
    invoke-static {v4}, Lb3/t1;->Q(Lb3/t3;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    iget-object v4, p0, Lb3/t1;->a:[Lb3/t3;

    .line 36
    .line 37
    aget-object v4, v4, v3

    .line 38
    .line 39
    invoke-interface {v4}, Lb3/t3;->f()Ld4/m0;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v5, v0, Lb3/l2;->c:[Ld4/m0;

    .line 44
    .line 45
    aget-object v5, v5, v3

    .line 46
    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v4, p0, Lb3/t1;->a:[Lb3/t3;

    .line 51
    .line 52
    aget-object v4, v4, v3

    .line 53
    .line 54
    invoke-interface {v4}, Lb3/t3;->B()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    const-wide/high16 v6, -0x8000000000000000L

    .line 59
    .line 60
    cmp-long v8, v4, v6

    .line 61
    .line 62
    if-nez v8, :cond_3

    .line 63
    .line 64
    return-wide v6

    .line 65
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    return-wide v1
.end method

.method private z0(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    add-long/2addr p1, p3

    .line 5
    invoke-interface {v0, v1, p1, p2}, Ly4/n;->g(IJ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A0(Lb3/g4;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    new-instance v1, Lb3/t1$h;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lb3/t1$h;-><init>(Lb3/g4;IJ)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-interface {v0, p1, v1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public B()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/t1;->j:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public N0(Ljava/util/List;IJLd4/o0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    new-instance v8, Lb3/t1$b;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p5

    .line 9
    move v4, p2

    .line 10
    move-wide v5, p3

    .line 11
    invoke-direct/range {v1 .. v7}, Lb3/t1$b;-><init>(Ljava/util/List;Ld4/o0;IJLb3/t1$a;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x11

    .line 15
    .line 16
    invoke-interface {v0, p1, v8}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public Q0(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Ly4/n;->a(III)Ly4/n$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S0(Lb3/l3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public U0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, p1, v2}, Ly4/n;->a(III)Ly4/n$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ly4/n;->e(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ly4/n;->e(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public declared-synchronized d(Lb3/p3;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lb3/t1;->z:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lb3/t1;->j:Landroid/os/Looper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ly4/n$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    .line 33
    .line 34
    const-string v1, "Ignoring messages sent after release."

    .line 35
    .line 36
    invoke-static {v0, v1}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lb3/p3;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public g(Ld4/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-interface {v0, v1}, Ly4/n;->c(I)Ly4/n$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ly4/n$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic h(Ld4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Ld4/r;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb3/t1;->h0(Ld4/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h0(Ld4/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    const-string v0, "Playback error"

    .line 2
    .line 3
    const-string v1, "ExoPlayerImplInternal"

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return v3

    .line 15
    :pswitch_0
    invoke-direct {p0}, Lb3/t1;->m()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    if-ne p1, v4, :cond_0

    .line 23
    .line 24
    move p1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v3

    .line 27
    :goto_0
    invoke-direct {p0, p1}, Lb3/t1;->O0(Z)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    move p1, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p1, v3

    .line 39
    :goto_1
    invoke-direct {p0, p1}, Lb3/t1;->P0(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :pswitch_3
    invoke-direct {p0}, Lb3/t1;->c0()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_7

    .line 48
    .line 49
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ld4/o0;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lb3/t1;->Y0(Ld4/o0;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 59
    .line 60
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 61
    .line 62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ld4/o0;

    .line 65
    .line 66
    invoke-direct {p0, v5, v6, p1}, Lb3/t1;->m0(IILd4/o0;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lb3/t1;->d0(Lb3/t1$c;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v5, Lb3/t1$b;

    .line 85
    .line 86
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    invoke-direct {p0, v5, p1}, Lb3/t1;->l(Lb3/t1$b;I)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lb3/t1$b;

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lb3/t1;->M0(Lb3/t1$b;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Lb3/l3;

    .line 105
    .line 106
    invoke-direct {p0, p1, v3}, Lb3/t1;->K(Lb3/l3;Z)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_7

    .line 110
    .line 111
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lb3/p3;

    .line 114
    .line 115
    invoke-direct {p0, p1}, Lb3/t1;->H0(Lb3/p3;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lb3/p3;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lb3/t1;->F0(Lb3/p3;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_7

    .line 128
    .line 129
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 130
    .line 131
    if-eqz v5, :cond_2

    .line 132
    .line 133
    move v5, v4

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    move v5, v3

    .line 136
    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    invoke-direct {p0, v5, p1}, Lb3/t1;->K0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_7

    .line 144
    .line 145
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 146
    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    move p1, v4

    .line 150
    goto :goto_3

    .line 151
    :cond_3
    move p1, v3

    .line 152
    :goto_3
    invoke-direct {p0, p1}, Lb3/t1;->X0(Z)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 158
    .line 159
    invoke-direct {p0, p1}, Lb3/t1;->V0(I)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :pswitch_f
    invoke-direct {p0}, Lb3/t1;->p0()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Ld4/r;

    .line 172
    .line 173
    invoke-direct {p0, p1}, Lb3/t1;->E(Ld4/r;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Ld4/r;

    .line 181
    .line 182
    invoke-direct {p0, p1}, Lb3/t1;->I(Ld4/r;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :pswitch_12
    invoke-direct {p0}, Lb3/t1;->l0()V

    .line 188
    .line 189
    .line 190
    return v4

    .line 191
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lb3/t1;->h1(ZZ)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p1, Lb3/x3;

    .line 199
    .line 200
    invoke-direct {p0, p1}, Lb3/t1;->W0(Lb3/x3;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Lb3/l3;

    .line 208
    .line 209
    invoke-direct {p0, p1}, Lb3/t1;->T0(Lb3/l3;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p1, Lb3/t1$h;

    .line 217
    .line 218
    invoke-direct {p0, p1}, Lb3/t1;->C0(Lb3/t1$h;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :pswitch_17
    invoke-direct {p0}, Lb3/t1;->p()V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 229
    .line 230
    if-eqz v5, :cond_4

    .line 231
    .line 232
    move v5, v4

    .line 233
    goto :goto_4

    .line 234
    :cond_4
    move v5, v3

    .line 235
    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 236
    .line 237
    invoke-direct {p0, v5, p1, v4, v4}, Lb3/t1;->R0(ZIZI)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :pswitch_19
    invoke-direct {p0}, Lb3/t1;->j0()V
    :try_end_0
    .catch Lb3/a0; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lf3/n$a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lb3/e3; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lx4/k; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ld4/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto/16 :goto_7

    .line 246
    .line 247
    :catch_0
    move-exception p1

    .line 248
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    if-nez v5, :cond_5

    .line 251
    .line 252
    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    if-eqz v5, :cond_6

    .line 255
    .line 256
    :cond_5
    const/16 v2, 0x3ec

    .line 257
    .line 258
    :cond_6
    invoke-static {p1, v2}, Lb3/a0;->i(Ljava/lang/RuntimeException;I)Lb3/a0;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {v1, v0, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, v4, v3}, Lb3/t1;->h1(ZZ)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 275
    .line 276
    goto/16 :goto_7

    .line 277
    .line 278
    :catch_1
    move-exception p1

    .line 279
    const/16 v0, 0x7d0

    .line 280
    .line 281
    invoke-direct {p0, p1, v0}, Lb3/t1;->F(Ljava/io/IOException;I)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_7

    .line 285
    .line 286
    :catch_2
    move-exception p1

    .line 287
    const/16 v0, 0x3ea

    .line 288
    .line 289
    invoke-direct {p0, p1, v0}, Lb3/t1;->F(Ljava/io/IOException;I)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :catch_3
    move-exception p1

    .line 295
    iget v0, p1, Lx4/k;->a:I

    .line 296
    .line 297
    invoke-direct {p0, p1, v0}, Lb3/t1;->F(Ljava/io/IOException;I)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :catch_4
    move-exception p1

    .line 303
    iget v0, p1, Lb3/e3;->b:I

    .line 304
    .line 305
    if-ne v0, v4, :cond_8

    .line 306
    .line 307
    iget-boolean v0, p1, Lb3/e3;->a:Z

    .line 308
    .line 309
    if-eqz v0, :cond_7

    .line 310
    .line 311
    const/16 v0, 0xbb9

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_7
    const/16 v0, 0xbbb

    .line 315
    .line 316
    :goto_5
    move v2, v0

    .line 317
    goto :goto_6

    .line 318
    :cond_8
    const/4 v1, 0x4

    .line 319
    if-ne v0, v1, :cond_a

    .line 320
    .line 321
    iget-boolean v0, p1, Lb3/e3;->a:Z

    .line 322
    .line 323
    if-eqz v0, :cond_9

    .line 324
    .line 325
    const/16 v0, 0xbba

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_9
    const/16 v0, 0xbbc

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_a
    :goto_6
    invoke-direct {p0, p1, v2}, Lb3/t1;->F(Ljava/io/IOException;I)V

    .line 332
    .line 333
    .line 334
    goto :goto_7

    .line 335
    :catch_5
    move-exception p1

    .line 336
    iget v0, p1, Lf3/n$a;->a:I

    .line 337
    .line 338
    invoke-direct {p0, p1, v0}, Lb3/t1;->F(Ljava/io/IOException;I)V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :catch_6
    move-exception p1

    .line 343
    iget v2, p1, Lb3/a0;->i:I

    .line 344
    .line 345
    if-ne v2, v4, :cond_b

    .line 346
    .line 347
    iget-object v2, p0, Lb3/t1;->s:Lb3/o2;

    .line 348
    .line 349
    invoke-virtual {v2}, Lb3/o2;->q()Lb3/l2;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    if-eqz v2, :cond_b

    .line 354
    .line 355
    iget-object v2, v2, Lb3/l2;->f:Lb3/m2;

    .line 356
    .line 357
    iget-object v2, v2, Lb3/m2;->a:Ld4/t$b;

    .line 358
    .line 359
    invoke-virtual {p1, v2}, Lb3/a0;->e(Ld4/s;)Lb3/a0;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    :cond_b
    iget-boolean v2, p1, Lb3/a0;->o:Z

    .line 364
    .line 365
    if-eqz v2, :cond_c

    .line 366
    .line 367
    iget-object v2, p0, Lb3/t1;->O:Lb3/a0;

    .line 368
    .line 369
    if-nez v2, :cond_c

    .line 370
    .line 371
    const-string v0, "Recoverable renderer error"

    .line 372
    .line 373
    invoke-static {v1, v0, p1}, Ly4/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    iput-object p1, p0, Lb3/t1;->O:Lb3/a0;

    .line 377
    .line 378
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 379
    .line 380
    const/16 v1, 0x19

    .line 381
    .line 382
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-interface {v0, p1}, Ly4/n;->h(Ly4/n$a;)Z

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_c
    iget-object v2, p0, Lb3/t1;->O:Lb3/a0;

    .line 391
    .line 392
    if-eqz v2, :cond_d

    .line 393
    .line 394
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lb3/t1;->O:Lb3/a0;

    .line 398
    .line 399
    :cond_d
    invoke-static {v1, v0, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    invoke-direct {p0, v4, v3}, Lb3/t1;->h1(ZZ)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lb3/t1;->x:Lb3/j3;

    .line 406
    .line 407
    invoke-virtual {v0, p1}, Lb3/j3;->e(Lb3/a0;)Lb3/j3;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iput-object p1, p0, Lb3/t1;->x:Lb3/j3;

    .line 412
    .line 413
    :goto_7
    invoke-direct {p0}, Lb3/t1;->W()V

    .line 414
    .line 415
    .line 416
    return v4

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ly4/n;->c(I)Ly4/n$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ly4/n$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized k0()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lb3/t1;->z:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lb3/t1;->j:Landroid/os/Looper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-interface {v0, v1}, Ly4/n;->e(I)Z

    .line 23
    .line 24
    .line 25
    new-instance v0, Lb3/r1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lb3/r1;-><init>(Lb3/t1;)V

    .line 28
    .line 29
    .line 30
    iget-wide v1, p0, Lb3/t1;->v:J

    .line 31
    .line 32
    invoke-direct {p0, v0, v1, v2}, Lb3/t1;->p1(Ln6/s;J)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lb3/t1;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return v0

    .line 39
    :cond_1
    :goto_0
    monitor-exit p0

    .line 40
    const/4 v0, 0x1

    .line 41
    return v0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public n0(IILd4/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2, p3}, Ly4/n;->f(IIILjava/lang/Object;)Ly4/n$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPlaybackParametersChanged(Lb3/l3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/t1;->h:Ly4/n;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ly4/n;->j(ILjava/lang/Object;)Ly4/n$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ly4/n$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lb3/t1;->P:J

    .line 2
    .line 3
    return-void
.end method
