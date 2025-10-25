.class abstract synthetic Ltd/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;)Ltd/s0;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ltd/g0;->k(Ltd/l0;Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Ltd/n0;->f()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ltd/b2;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, Ltd/b2;-><init>(Lad/i;Lid/Function2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ltd/t0;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0}, Ltd/t0;-><init>(Lad/i;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Ltd/a;->R0(Ltd/n0;Ljava/lang/Object;Lid/Function2;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic b(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/s0;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lad/j;->a:Lad/j;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Ltd/n0;->a:Ltd/n0;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ltd/g;->a(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;)Ltd/s0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final c(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;)Ltd/t1;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ltd/g0;->k(Ltd/l0;Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Ltd/n0;->f()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ltd/c2;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, Ltd/c2;-><init>(Lad/i;Lid/Function2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ltd/k2;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0}, Ltd/k2;-><init>(Lad/i;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Ltd/a;->R0(Ltd/n0;Ljava/lang/Object;Lid/Function2;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lad/j;->a:Lad/j;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Ltd/n0;->a:Ltd/n0;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ltd/g;->c(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;)Ltd/t1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final e(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Ltd/g0;->j(Lad/i;Lad/i;)Lad/i;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ltd/w1;->d(Lad/i;)V

    .line 10
    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lyd/b0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2}, Lyd/b0;-><init>(Lad/i;Lad/e;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v0, p1}, Lzd/b;->b(Lyd/b0;Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lad/f;->h0:Lad/f$b;

    .line 25
    .line 26
    invoke-interface {p0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ltd/q2;

    .line 41
    .line 42
    invoke-direct {v0, p0, p2}, Ltd/q2;-><init>(Lad/i;Lad/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ltd/a;->getContext()Lad/i;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-static {v0, v0, p1}, Lzd/b;->b(Lyd/b0;Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {p0, v1}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object p0, p1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    invoke-static {p0, v1}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance v0, Ltd/w0;

    .line 69
    .line 70
    invoke-direct {v0, p0, p2}, Ltd/w0;-><init>(Lad/i;Lad/e;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0, v0}, Lzd/a;->c(Lid/Function2;Ljava/lang/Object;Lad/e;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ltd/w0;->S0()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_0
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p0, p1, :cond_2

    .line 85
    .line 86
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object p0
.end method
