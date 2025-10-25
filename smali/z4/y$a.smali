.class public final Lz4/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lz4/y;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lz4/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Handler;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-object p1, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p2, p0, Lz4/y$a;->b:Lz4/y;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lz4/y$a;Le3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/y$a;->s(Le3/e;)V

    return-void
.end method

.method public static synthetic b(Lz4/y$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/y$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lz4/y$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/y$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lz4/y$a;Le3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/y$a;->u(Le3/e;)V

    return-void
.end method

.method public static synthetic e(Lz4/y$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lz4/y$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic f(Lz4/y$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lz4/y$a;->t(IJ)V

    return-void
.end method

.method public static synthetic g(Lz4/y$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lz4/y$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic h(Lz4/y$a;Lz4/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/y$a;->z(Lz4/a0;)V

    return-void
.end method

.method public static synthetic i(Lz4/y$a;Lb3/x1;Le3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz4/y$a;->v(Lb3/x1;Le3/i;)V

    return-void
.end method

.method public static synthetic j(Lz4/y$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lz4/y$a;->x(JI)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lz4/y;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-wide v5, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lz4/y;->c(Ljava/lang/String;JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz4/y;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic s(Le3/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Le3/e;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 5
    .line 6
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lz4/y;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lz4/y;->p(Le3/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lz4/y;->g(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic u(Le3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz4/y;->i(Le3/e;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic v(Lb3/x1;Le3/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz4/y;->y(Lb3/x1;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 13
    .line 14
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lz4/y;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Lz4/y;->h(Lb3/x1;Le3/i;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lz4/y;->j(Ljava/lang/Object;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lz4/y;->r(JI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz4/y;->o(Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic z(Lz4/a0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y$a;->b:Lz4/y;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/y;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz4/y;->onVideoSizeChanged(Lz4/a0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lz4/v;

    .line 12
    .line 13
    invoke-direct {v3, p0, p1, v0, v1}, Lz4/v;-><init>(Lz4/y$a;Ljava/lang/Object;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/s;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lz4/s;-><init>(Lz4/y$a;JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/u;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lz4/u;-><init>(Lz4/y$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public D(Lz4/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/r;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lz4/r;-><init>(Lz4/y$a;Lz4/a0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lz4/x;

    .line 6
    .line 7
    move-object v1, v8

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-wide v6, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lz4/x;-><init>(Lz4/y$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/q;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lz4/q;-><init>(Lz4/y$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public m(Le3/e;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le3/e;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lz4/o;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lz4/o;-><init>(Lz4/y$a;Le3/e;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/w;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lz4/w;-><init>(Lz4/y$a;IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o(Le3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/p;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lz4/p;-><init>(Lz4/y$a;Le3/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public p(Lb3/x1;Le3/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lz4/t;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lz4/t;-><init>(Lz4/y$a;Lb3/x1;Le3/i;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
