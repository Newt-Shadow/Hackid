.class public final Ld4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/r;
.implements Ld4/r$a;


# instance fields
.field public final a:Ld4/t$b;

.field private final b:J

.field private final c:Lx4/b;

.field private d:Ld4/t;

.field private e:Ld4/r;

.field private f:Ld4/r$a;

.field private g:J


# direct methods
.method public constructor <init>(Ld4/t$b;Lx4/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/o;->a:Ld4/t$b;

    .line 5
    .line 6
    iput-object p2, p0, Ld4/o;->c:Lx4/b;

    .line 7
    .line 8
    iput-wide p3, p0, Ld4/o;->b:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Ld4/o;->g:J

    .line 16
    .line 17
    return-void
.end method

.method private s(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ld4/o;->g:J

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
    move-wide p1, v0

    .line 13
    :cond_0
    return-wide p1
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0}, Ld4/r;->b()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ld4/r;->c(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0}, Ld4/r;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public e(JLb3/x3;)J
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Ld4/r;->e(JLb3/x3;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ld4/r;->f(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Ld4/r;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld4/o;->f:Ld4/r$a;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ld4/r$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Ld4/r$a;->g(Ld4/r;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic h(Ld4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Ld4/r;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld4/o;->u(Ld4/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ld4/r;->i()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ld4/o;->d:Ld4/t;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ld4/t;->k()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ld4/r;->isLoading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

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

.method public k(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ld4/r;->k(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public l(Ld4/t$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Ld4/o;->b:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Ld4/o;->s(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Ld4/o;->d:Ld4/t;

    .line 8
    .line 9
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ld4/t;

    .line 14
    .line 15
    iget-object v3, p0, Ld4/o;->c:Lx4/b;

    .line 16
    .line 17
    invoke-interface {v2, p1, v3, v0, v1}, Ld4/t;->d(Ld4/t$b;Lx4/b;J)Ld4/r;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ld4/o;->e:Ld4/r;

    .line 22
    .line 23
    iget-object v2, p0, Ld4/o;->f:Ld4/r$a;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, p0, v0, v1}, Ld4/r;->t(Ld4/r$a;J)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public m([Lw4/y;[Z[Ld4/m0;[ZJ)J
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, Ld4/o;->g:J

    .line 3
    .line 4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    iget-wide v5, v0, Ld4/o;->b:J

    .line 14
    .line 15
    cmp-long v5, p5, v5

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    iput-wide v3, v0, Ld4/o;->g:J

    .line 20
    .line 21
    move-wide v11, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide/from16 v11, p5

    .line 24
    .line 25
    :goto_0
    iget-object v1, v0, Ld4/o;->e:Ld4/r;

    .line 26
    .line 27
    invoke-static {v1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    check-cast v6, Ld4/r;

    .line 33
    .line 34
    move-object v7, p1

    .line 35
    move-object v8, p2

    .line 36
    move-object/from16 v9, p3

    .line 37
    .line 38
    move-object/from16 v10, p4

    .line 39
    .line 40
    invoke-interface/range {v6 .. v12}, Ld4/r;->m([Lw4/y;[Z[Ld4/m0;[ZJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    return-wide v1
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/o;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/o;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public p()J
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0}, Ld4/r;->p()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public q()Ld4/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0}, Ld4/r;->q()Ld4/u0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public r(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/r;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Ld4/r;->r(JZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(Ld4/r$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/o;->f:Ld4/r$a;

    .line 2
    .line 3
    iget-object p1, p0, Ld4/o;->e:Ld4/r;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-wide p2, p0, Ld4/o;->b:J

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Ld4/o;->s(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    invoke-interface {p1, p0, p2, p3}, Ld4/r;->t(Ld4/r$a;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public u(Ld4/r;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld4/o;->f:Ld4/r$a;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ld4/r$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld4/o;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/o;->e:Ld4/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld4/o;->d:Ld4/t;

    .line 6
    .line 7
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ld4/t;

    .line 12
    .line 13
    iget-object v1, p0, Ld4/o;->e:Ld4/r;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ld4/t;->g(Ld4/r;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public x(Ld4/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->d:Ld4/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ld4/o;->d:Ld4/t;

    .line 12
    .line 13
    return-void
.end method
