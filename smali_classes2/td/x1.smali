.class abstract synthetic Ltd/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltd/t1;)Ltd/y;
    .locals 1

    .line 1
    new-instance v0, Ltd/v1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltd/v1;-><init>(Ltd/t1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(Ltd/t1;ILjava/lang/Object;)Ltd/y;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Ltd/w1;->a(Ltd/t1;)Ltd/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Lad/i;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Ltd/t1;->t0:Ltd/t1$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltd/t1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ltd/t1;->b(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final d(Lad/i;)V
    .locals 1

    .line 1
    sget-object v0, Ltd/t1;->t0:Ltd/t1$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltd/t1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Ltd/w1;->e(Ltd/t1;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final e(Ltd/t1;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ltd/t1;->isActive()Z

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
    invoke-interface {p0}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public static final f(Ltd/t1;ZLtd/y1;)Ltd/a1;
    .locals 2

    .line 1
    instance-of v0, p0, Ltd/z1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ltd/z1;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Ltd/z1;->n0(ZLtd/y1;)Ltd/a1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Ltd/y1;->u()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Ltd/x1$a;

    .line 17
    .line 18
    invoke-direct {v1, p2}, Ltd/x1$a;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0, p1, v1}, Ltd/t1;->o0(ZZLid/l;)Ltd/a1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static synthetic g(Ltd/t1;ZLtd/y1;ILjava/lang/Object;)Ltd/a1;
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Ltd/w1;->f(Ltd/t1;ZLtd/y1;)Ltd/a1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
