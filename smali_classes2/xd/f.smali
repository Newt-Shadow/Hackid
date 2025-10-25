.class public abstract Lxd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lwd/e;Lad/i;)Lwd/e;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxd/f;->d(Lwd/e;Lad/i;)Lwd/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lad/i;Ljava/lang/Object;Ljava/lang/Object;Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0, p2}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    new-instance v0, Lxd/t;

    .line 6
    .line 7
    invoke-direct {v0, p4, p0}, Lxd/t;-><init>(Lad/e;Lad/i;)V

    .line 8
    .line 9
    .line 10
    instance-of v1, p3, Lkotlin/coroutines/jvm/internal/a;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {p3, p1, v0}, Lbd/b;->d(Lid/Function2;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    invoke-static {p3, v1}, Lkotlin/jvm/internal/g0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lid/Function2;

    .line 25
    .line 26
    invoke-interface {p3, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    invoke-static {p0, p2}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-ne p1, p0, :cond_1

    .line 38
    .line 39
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-static {p0, p2}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public static synthetic c(Lad/i;Ljava/lang/Object;Ljava/lang/Object;Lid/Function2;Lad/e;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lyd/m0;->g(Lad/i;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lxd/f;->b(Lad/i;Ljava/lang/Object;Ljava/lang/Object;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final d(Lwd/e;Lad/i;)Lwd/e;
    .locals 1

    .line 1
    instance-of v0, p0, Lxd/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxd/u;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lxd/u;-><init>(Lwd/e;Lad/i;)V

    .line 8
    .line 9
    .line 10
    move-object p0, v0

    .line 11
    :cond_0
    return-object p0
.end method
