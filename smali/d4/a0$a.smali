.class public Ld4/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/a0$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ld4/t$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ld4/a0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Ld4/a0$a;->a:I

    .line 5
    iput-object p3, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 6
    iput-wide p4, p0, Ld4/a0$a;->d:J

    return-void
.end method

.method public static synthetic a(Ld4/a0$a;Ld4/a0;Ld4/t$b;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld4/a0$a;->p(Ld4/a0;Ld4/t$b;Ld4/q;)V

    return-void
.end method

.method public static synthetic b(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ld4/a0$a;->n(Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic c(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld4/a0$a;->m(Ld4/a0;Ld4/n;Ld4/q;)V

    return-void
.end method

.method public static synthetic d(Ld4/a0$a;Ld4/a0;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld4/a0$a;->k(Ld4/a0;Ld4/q;)V

    return-void
.end method

.method public static synthetic e(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld4/a0$a;->o(Ld4/a0;Ld4/n;Ld4/q;)V

    return-void
.end method

.method public static synthetic f(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld4/a0$a;->l(Ld4/a0;Ld4/n;Ld4/q;)V

    return-void
.end method

.method private h(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ly4/q0;->X0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Ld4/a0$a;->d:J

    .line 16
    .line 17
    add-long/2addr v0, p1

    .line 18
    :goto_0
    return-wide v0
.end method

.method private synthetic k(Ld4/a0;Ld4/q;)V
    .locals 2

    .line 1
    iget v0, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Ld4/a0;->E(ILd4/t$b;Ld4/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic l(Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 2

    .line 1
    iget v0, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Ld4/a0;->J(ILd4/t$b;Ld4/n;Ld4/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic m(Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 2

    .line 1
    iget v0, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Ld4/a0;->y(ILd4/t$b;Ld4/n;Ld4/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic n(Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    iget v1, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    invoke-interface/range {v0 .. v6}, Ld4/a0;->s(ILd4/t$b;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic o(Ld4/a0;Ld4/n;Ld4/q;)V
    .locals 2

    .line 1
    iget v0, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Ld4/a0;->C(ILd4/t$b;Ld4/n;Ld4/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Ld4/a0;Ld4/t$b;Ld4/q;)V
    .locals 1

    .line 1
    iget v0, p0, Ld4/a0$a;->a:I

    .line 2
    .line 3
    invoke-interface {p1, v0, p2, p3}, Ld4/a0;->t(ILd4/t$b;Ld4/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Ld4/a0$a;->B(Ld4/n;Ld4/q;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public B(Ld4/n;Ld4/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    iget-object v1, v1, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ld4/u;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ld4/u;-><init>(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public C(Ld4/a0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public D(IJJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x3

    .line 7
    const/4 v6, 0x0

    .line 8
    move-wide v7, p2

    .line 9
    invoke-direct {p0, p2, p3}, Ld4/a0$a;->h(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v7

    .line 13
    move-wide/from16 v9, p4

    .line 14
    .line 15
    invoke-direct {p0, v9, v10}, Ld4/a0$a;->h(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    move-object v1, v11

    .line 20
    move v3, p1

    .line 21
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v11}, Ld4/a0$a;->E(Ld4/q;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public E(Ld4/q;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld4/a0$a;->b:Ld4/t$b;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/t$b;

    .line 8
    .line 9
    iget-object v1, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ld4/a0$a$a;

    .line 26
    .line 27
    iget-object v3, v2, Ld4/a0$a$a;->b:Ld4/a0;

    .line 28
    .line 29
    iget-object v2, v2, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v4, Ld4/z;

    .line 32
    .line 33
    invoke-direct {v4, p0, v3, v0, p1}, Ld4/z;-><init>(Ld4/a0$a;Ld4/a0;Ld4/t$b;Ld4/q;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v4}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public F(ILd4/t$b;J)Ld4/a0$a;
    .locals 7

    .line 1
    new-instance v6, Ld4/a0$a;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Ld4/a0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;J)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public g(Landroid/os/Handler;Ld4/a0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Ld4/a0$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Ld4/a0$a$a;-><init>(Landroid/os/Handler;Ld4/a0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i(ILb3/x1;ILjava/lang/Object;J)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    invoke-direct {p0, v3, v4}, Ld4/a0$a;->h(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    move-object v1, v11

    .line 17
    move v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move v5, p3

    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v11}, Ld4/a0$a;->j(Ld4/q;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public j(Ld4/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    iget-object v1, v1, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ld4/v;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Ld4/v;-><init>(Ld4/a0$a;Ld4/a0;Ld4/q;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public q(Ld4/n;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Ld4/a0$a;->r(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public r(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Ld4/a0$a;->s(Ld4/n;Ld4/q;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public s(Ld4/n;Ld4/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    iget-object v1, v1, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ld4/y;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ld4/y;-><init>(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Ld4/n;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Ld4/a0$a;->u(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public u(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Ld4/a0$a;->v(Ld4/n;Ld4/q;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public v(Ld4/n;Ld4/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    iget-object v1, v1, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ld4/x;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ld4/x;-><init>(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public w(Ld4/n;IILb3/x1;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ld4/q;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Ld4/a0$a;->h(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    move-object/from16 v2, p11

    .line 30
    .line 31
    move/from16 v3, p12

    .line 32
    .line 33
    invoke-virtual {p0, p1, v11, v2, v3}, Ld4/a0$a;->y(Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public x(Ld4/n;ILjava/io/IOException;Z)V
    .locals 13

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move-object/from16 v11, p3

    .line 19
    .line 20
    move/from16 v12, p4

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v12}, Ld4/a0$a;->w(Ld4/n;IILb3/x1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public y(Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Ld4/a0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ld4/a0$a$a;

    .line 18
    .line 19
    iget-object v4, v1, Ld4/a0$a$a;->b:Ld4/a0;

    .line 20
    .line 21
    iget-object v1, v1, Ld4/a0$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v9, Ld4/w;

    .line 24
    .line 25
    move-object v2, v9

    .line 26
    move-object v3, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-object v7, p3

    .line 30
    move v8, p4

    .line 31
    invoke-direct/range {v2 .. v8}, Ld4/w;-><init>(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v9}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public z(Ld4/n;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Ld4/a0$a;->A(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
