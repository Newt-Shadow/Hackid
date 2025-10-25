.class public abstract Lof/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmf/c;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    instance-of v1, p5, Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    move-object v7, p5

    .line 10
    check-cast v7, Ljava/lang/Throwable;

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    invoke-virtual/range {v2 .. v7}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    filled-new-array {p4, p5}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    move-object v3, p3

    .line 29
    invoke-virtual/range {v0 .. v5}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private B(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static/range {p4 .. p4}, Lof/e;->a([Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-eqz v5, :cond_0

    .line 6
    .line 7
    invoke-static/range {p4 .. p4}, Lof/e;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v11, 0x0

    .line 20
    move-object v6, p0

    .line 21
    move-object v7, p1

    .line 22
    move-object v8, p2

    .line 23
    move-object v9, p3

    .line 24
    move-object/from16 v10, p4

    .line 25
    .line 26
    invoke-virtual/range {v6 .. v11}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 1
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lof/a;->C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected abstract C(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->e:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->d:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lnf/b;->f:Lnf/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lof/a;->A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->g:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->c:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lmf/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lnf/b;->g:Lnf/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lof/a;->A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->d:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->B(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lnf/b;->d:Lnf/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lof/a;->A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->f:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, v1}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lmf/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lnf/b;->c:Lnf/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lof/a;->A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public varargs p(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->c:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->B(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->f:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->c:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->E(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public varargs t(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->f:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->B(Lnf/b;Lmf/g;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->d:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->f:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, p2}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->e:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, v1}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->d:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, v1}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lmf/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnf/b;->g:Lnf/b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1, p1, v1}, Lof/a;->D(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lmf/c;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lnf/b;->e:Lnf/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lof/a;->A(Lnf/b;Lmf/g;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
